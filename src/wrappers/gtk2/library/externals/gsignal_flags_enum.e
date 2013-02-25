-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class GSIGNAL_FLAGS_ENUM

-- TODO emit_description(class_descriptions.reference_at(an_enum_name))

insert ENUM

creation default_create
feature -- Validity
	is_valid_value (a_value: INTEGER): BOOLEAN is
		do
			Result := (a_value & (run_first_low_level | 
				run_cleanup_low_level | 
				no_recurse_low_level | 
				detailed_low_level | 
				action_low_level | 
				no_hooks_low_level | 
				must_collect_low_level | 
				deprecated_low_level)).to_boolean
		end

feature -- Setters
	default_create,
	set_run_first is
		do
			value := value.bit_or(run_first_low_level)
		end

	unset_run_first is
		do
			value := value.bit_xor(run_first_low_level)
		end

	set_run_cleanup is
		do
			value := value.bit_or(run_cleanup_low_level)
		end

	unset_run_cleanup is
		do
			value := value.bit_xor(run_cleanup_low_level)
		end

	set_no_recurse is
		do
			value := value.bit_or(no_recurse_low_level)
		end

	unset_no_recurse is
		do
			value := value.bit_xor(no_recurse_low_level)
		end

	set_detailed is
		do
			value := value.bit_or(detailed_low_level)
		end

	unset_detailed is
		do
			value := value.bit_xor(detailed_low_level)
		end

	set_action is
		do
			value := value.bit_or(action_low_level)
		end

	unset_action is
		do
			value := value.bit_xor(action_low_level)
		end

	set_no_hooks is
		do
			value := value.bit_or(no_hooks_low_level)
		end

	unset_no_hooks is
		do
			value := value.bit_xor(no_hooks_low_level)
		end

	set_must_collect is
		do
			value := value.bit_or(must_collect_low_level)
		end

	unset_must_collect is
		do
			value := value.bit_xor(must_collect_low_level)
		end

	set_deprecated is
		do
			value := value.bit_or(deprecated_low_level)
		end

	unset_deprecated is
		do
			value := value.bit_xor(deprecated_low_level)
		end

feature -- Queries
	is_run_first: BOOLEAN is
		do
			Result := (value=run_first_low_level)
		end

	is_run_cleanup: BOOLEAN is
		do
			Result := (value=run_cleanup_low_level)
		end

	is_no_recurse: BOOLEAN is
		do
			Result := (value=no_recurse_low_level)
		end

	is_detailed: BOOLEAN is
		do
			Result := (value=detailed_low_level)
		end

	is_action: BOOLEAN is
		do
			Result := (value=action_low_level)
		end

	is_no_hooks: BOOLEAN is
		do
			Result := (value=no_hooks_low_level)
		end

	is_must_collect: BOOLEAN is
		do
			Result := (value=must_collect_low_level)
		end

	is_deprecated: BOOLEAN is
		do
			Result := (value=deprecated_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	run_first_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_SIGNAL_RUN_FIRST"
 			}"
 		end

	run_cleanup_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_SIGNAL_RUN_CLEANUP"
 			}"
 		end

	no_recurse_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_SIGNAL_NO_RECURSE"
 			}"
 		end

	detailed_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_SIGNAL_DETAILED"
 			}"
 		end

	action_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_SIGNAL_ACTION"
 			}"
 		end

	no_hooks_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_SIGNAL_NO_HOOKS"
 			}"
 		end

	must_collect_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_SIGNAL_MUST_COLLECT"
 			}"
 		end

	deprecated_low_level: INTEGER is
		external "plug_in"
 		alias "{
 			location: "."
 			module: "plugin"
 			feature_name: "G_SIGNAL_DEPRECATED"
 			}"
 		end


end -- class GSIGNAL_FLAGS_ENUM
