class CLARG_COUNTER

inherit
	COMMAND_LINE_TYPED_ARGUMENT[INTEGER]
		redefine
			out_in_tagged_out_memory
		end

insert
	ARGUMENTS
		redefine
			out_in_tagged_out_memory
		end
	CLARG_OPTIONS
		redefine
			out_in_tagged_out_memory
		end

create {COMMAND_LINE_ARGUMENT_FACTORY}
	make

feature {ANY}
	item: INTEGER is
		do
			Result := set.count
		end

	usage: FIXED_STRING

	is_mandatory: BOOLEAN is False
	can_be_mandatory: BOOLEAN is False
	is_optional: BOOLEAN is True
	can_be_optional: BOOLEAN is True
	is_positional: BOOLEAN is False

	is_repeatable: BOOLEAN is True

	is_set: BOOLEAN is
		do
			Result := not set.is_empty
		end

	force_index (a_index: INTEGER) is
		do
			check False end
		end

	out_in_tagged_out_memory is
		do
			if long /= Void then
				tagged_out_memory.append(once "--")
				tagged_out_memory.append(long)
			else
				tagged_out_memory.append(once "-")
				tagged_out_memory.append(short)
			end
		end

feature {COMMAND_LINE_ARGUMENTS, COMMAND_LINE_ARGUMENT}
	prepare_parse is
		do
			set.clear_count
		end

	parse_command_line (context: COMMAND_LINE_CONTEXT): COMMAND_LINE_CONTEXT is
		local
			arg: STRING
		do
			Result := context
			if context.is_short then
				if is_short(argument(context.index), context.short_option_index) then
					set.add(context)
					Result.set_index(context.index)
					Result.set_short(context.short_index, context.short_option_index + 1)
				elseif argument_count >= context.short_index and then is_long(argument(context.short_index)) then
					set.add(context)
					Result.set_index(context.short_index + 1)
				end
			elseif argument_count >= context.index then
				arg := argument(context.index)
				if is_short(arg, 1) then
					set.add(context)
					Result.set_index(context.index)
					Result.set_short(context.index + 1, context.short_option_index + 1)
				elseif is_long(arg) then
					set.add(context)
					Result.set_index(context.index + 1)
				end
			end
		end

	usage_summary (stream: OUTPUT_STREAM) is
		do
			if short /= Void then
				if long /= Void then
					stream.put_character('(')
					put_short(stream)
					stream.put_character('|')
					put_long(stream)
					stream.put_character(')')
				else
					put_short(stream)
				end
			elseif long /= Void then
				put_long(stream)
			end
			stream.put_string(once "...")
			detailed := False
		end

	usage_details (stream: OUTPUT_STREAM) is
		do
			if not detailed then
				usage_summary(stream)
				stream.put_character(':')
				stream.put_character(' ')
				if usage /= Void then
					stream.put_line(usage)
				else
					stream.put_line(once "Increment the counter.")
				end
				detailed := True
			end
		end

	set_mandatory (parent_option: like Current; enable: BOOLEAN) is
		do
			check False end
		end

	is_set_at (context: COMMAND_LINE_CONTEXT): BOOLEAN is
		do
			Result := set.has(context)
		end

	undo_parse (context: COMMAND_LINE_CONTEXT) is
		do
			set.remove(context)
		end

feature {}
	make (a_short, a_long, a_usage: ABSTRACT_STRING) is
		require
			a_short /= Void implies a_short.count = 1
			a_short /= Void or else a_long /= Void
		do
			create set.make
			if a_short /= Void then
				short := a_short.intern
			end
			if a_long /= Void then
				long := a_long.intern
			end
			if a_usage /= Void then
				usage := a_usage.intern
			end
		ensure
			a_short /= Void implies short.is_equal(a_short)
			a_long /= Void implies long.is_equal(a_long)
			a_usage /= Void implies usage.is_equal(a_usage)
		end

	parent: like Current

	set: HASHED_SET[COMMAND_LINE_CONTEXT]

	detailed: BOOLEAN

invariant
	parent = Void
	is_optional
	set /= Void

end -- class CLARG_COUNTER
