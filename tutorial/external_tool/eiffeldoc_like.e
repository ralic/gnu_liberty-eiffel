class EIFFELDOC_LIKE
-- This example illustrats how to make a tool that works like eiffeldoc.
-- It lists all the classes of all clusters

--*** Currently broken. You'll probably want to use CLUSTER.read_classes and then find some way to get at the 
--*** data in CLUSTER.pool . ACE.for_all and ACE.for_all_clusters may be helpful in the process. <FM-30/07/2007>

inherit
	CLUSTER_VISITOR
	VISITOR

insert
	EXTERNAL_TOOL

creation {ANY}
	make

feature {}
	analyse_cluster (cluster: CLUSTER) is
		local
			i: INTEGER
		do
			io.put_string(cluster.name)
			io.put_new_line
			class_files.clear_count
			cluster.read_classes_into(class_files)
			from
				i := class_files.lower
			until
				i > class_files.upper
			loop
				io.put_string(class_files.key(i).to_string)
				io.put_new_line
				i := i + 1
			end
			io.put_new_line
		end

	make is
		do
			root_class_name := as_any
			bootstrap
			load_clusters
		end

	parse_arguments is
		local
			argi: INTEGER; arg: STRING
		do
			-- Only called in non-ace mode
			search_for_verbose_flag
			from
				argi := 1
			until
				argi > argument_count
			loop
				arg := argument(argi)
				-- The `is_xxx_flag' functions have side effects (they are not pure queries)
				if is_help_flag(arg) then
				elseif is_version_flag(arg) then
				elseif is_verbose_flag(arg) then
				elseif is_no_style_warning_flag(arg) then
				elseif is_no_warning_flag(arg) then
				elseif add_loadpath(arg) then
				else
					system_tools.bad_use_exit(command_name, usage)
				end
				argi := argi + 1
			end
		end

	add_loadpath (loadpath: STRING): BOOLEAN is
		do
			if loadpath.has_suffix(once ".ace") or else loadpath.has_suffix(once ".ACE") then
				-- nothing to do: bootstrap takes care of that
				Result := True
			elseif loadpath.has_suffix(once ".se") or else loadpath.has_suffix(once ".SE") then
				system_tools.add_loadpath_file(loadpath)
				Result := True
			end
		end

	is_valid_argument_for_ace_mode (arg: STRING): BOOLEAN is
		do
			-- This is called by smart_eiffel.ace from a loop similar to the one in parse_arguments
			Result := is_version_flag(arg)
				or else is_no_style_warning_flag(arg)
				or else is_no_warning_flag(arg)
				or else is_verbose_flag(arg)
		end

	valid_argument_for_ace_mode: STRING is "Only the flags -verbose, -version and -help are allowed%Nin ACE file mode.%N"

	use_short_mode: BOOLEAN is True

	usage: STRING is "[
	Usage: eiffeldoc_like [options] <LoadPathFileName>.se ...
	   or: eiffeldoc_like [options] <ACEfileName>.ace

    Option summary:

	 Information:
      -help               Display this help information
      -version            Display SmartEiffel version information
      -verbose            Display detailed information about what
                           eiffeldoc_like is doing

    Warning levels:
      -no_style_warning   Don't print warnings about style violations
      -no_warning         Don't print any warnings (implies -no_style_warning)

	]"

	load_clusters is
		local
			i: INTEGER; c: CLUSTER
		do
			from
				i := 0
			until
				i = ace.cluster_count
			loop
				c := ace.cluster_at(i)
				analyse_cluster(c)
				i := i + 1
			end
		end

	class_files: DICTIONARY[TUPLE[CLUSTER, STRING], HASHED_STRING] is
		once
			create {HASHED_DICTIONARY[TUPLE[CLUSTER, STRING], HASHED_STRING]} Result.make
		end

feature {CLUSTER}
	visit_cluster (visited: CLUSTER) is
		do
			check
				False
			end
		end

end -- class EIFFELDOC_LIKE