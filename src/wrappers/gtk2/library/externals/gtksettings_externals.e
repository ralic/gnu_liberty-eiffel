-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GTKSETTINGS_EXTERNALS


insert ANY undefine is_equal, copy end

		-- TODO: insert typedefs class
feature {} -- External calls

	gtk_rc_property_parse_border (a_pspec: POINTER; a_gstring: POINTER; a_property_value: POINTER): INTEGER_32 is
 		-- gtk_rc_property_parse_border (node at line 2658)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_rc_property_parse_border"
		}"
		end

	gtk_settings_get_for_screen (a_screen: POINTER): POINTER is
 		-- gtk_settings_get_for_screen (node at line 6030)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_settings_get_for_screen"
		}"
		end

	gtk_settings_install_property_parser (a_pspec: POINTER; a_parser: POINTER) is
 		-- gtk_settings_install_property_parser (node at line 8721)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_settings_install_property_parser"
		}"
		end

	gtk_settings_get_type: NATURAL_64 is
 		-- gtk_settings_get_type (node at line 11773)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_settings_get_type()"
		}"
		end

	gtk_rc_property_parse_flags (a_pspec: POINTER; a_gstring: POINTER; a_property_value: POINTER): INTEGER_32 is
 		-- gtk_rc_property_parse_flags (node at line 12685)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_rc_property_parse_flags"
		}"
		end

	gtk_rc_property_parse_color (a_pspec: POINTER; a_gstring: POINTER; a_property_value: POINTER): INTEGER_32 is
 		-- gtk_rc_property_parse_color (node at line 16153)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_rc_property_parse_color"
		}"
		end

	gtk_rc_property_parse_requisition (a_pspec: POINTER; a_gstring: POINTER; a_property_value: POINTER): INTEGER_32 is
 		-- gtk_rc_property_parse_requisition (node at line 18054)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_rc_property_parse_requisition"
		}"
		end

	-- `hidden' function _gtk_settings_reset_rc_values skipped.
	gtk_settings_set_property_value (a_settings: POINTER; a_name: POINTER; a_svalue: POINTER) is
 		-- gtk_settings_set_property_value (node at line 21510)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_settings_set_property_value"
		}"
		end

	gtk_settings_install_property (a_pspec: POINTER) is
 		-- gtk_settings_install_property (node at line 25711)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_settings_install_property"
		}"
		end

	gtk_settings_get_default: POINTER is
 		-- gtk_settings_get_default (node at line 26882)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_settings_get_default()"
		}"
		end

	-- `hidden' function _gtk_settings_parse_convert skipped.
	gtk_settings_set_double_property (a_settings: POINTER; a_name: POINTER; a_v_double: REAL_64; an_origin: POINTER) is
 		-- gtk_settings_set_double_property (node at line 31651)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_settings_set_double_property"
		}"
		end

	-- `hidden' function _gtk_settings_handle_event skipped.
	gtk_settings_set_string_property (a_settings: POINTER; a_name: POINTER; a_v_string: POINTER; an_origin: POINTER) is
 		-- gtk_settings_set_string_property (node at line 34480)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_settings_set_string_property"
		}"
		end

	gtk_rc_property_parse_enum (a_pspec: POINTER; a_gstring: POINTER; a_property_value: POINTER): INTEGER_32 is
 		-- gtk_rc_property_parse_enum (node at line 38581)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_rc_property_parse_enum"
		}"
		end

	-- `hidden' function _gtk_rc_property_parser_from_type skipped.
	gtk_settings_set_long_property (a_settings: POINTER; a_name: POINTER; a_v_long: INTEGER_64; an_origin: POINTER) is
 		-- gtk_settings_set_long_property (node at line 39421)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_settings_set_long_property"
		}"
		end

	-- `hidden' function _gtk_settings_set_property_value_from_rc skipped.

end -- class GTKSETTINGS_EXTERNALS
