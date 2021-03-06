-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

expanded class FUNCTION_LOCALNESS_ENUM

insert ENUM

creation {ANY} default_create
feature {ANY} -- Validity
    is_valid_value (a_value: INTEGER): BOOLEAN
        do
            Result := ((a_value = no_low_level)  or else
				(a_value = unknown_low_level)  or else
				(a_value = yes_low_level) )
		end

feature {ANY} -- Setters
	default_create,
	set_no
		do
			value := no_low_level
		end

	set_unknown
		do
			value := unknown_low_level
		end

	set_yes
		do
			value := yes_low_level
		end

feature {ANY} -- Queries
	is_no: BOOLEAN
		do
			Result := (value=no_low_level)
		end

	is_unknown: BOOLEAN
		do
			Result := (value=unknown_low_level)
		end

	is_yes: BOOLEAN
		do
			Result := (value=yes_low_level)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	no_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "FL_No"
 			}"
 		end

	unknown_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "FL_Unknown"
 			}"
 		end

	yes_low_level: INTEGER
		external "plug_in"
 		alias "{
 			location: "."
 			module_name: "plugin"
 			feature_name: "FL_Yes"
 			}"
 		end


end -- class FUNCTION_LOCALNESS_ENUM
