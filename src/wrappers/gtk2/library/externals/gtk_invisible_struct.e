-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GTK_INVISIBLE_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GTK_TYPES
feature {} -- Low-level setters

	gtk_invisible_struct_set_has_user_ref_count (a_structure: POINTER; a_value: INTEGER_32) is
			-- Setter for has_user_ref_count field of GTK_INVISIBLE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_invisible_struct_set_has_user_ref_count"
		}"
		end

	gtk_invisible_struct_set_screen (a_structure: POINTER; a_value: POINTER) is
			-- Setter for screen field of GTK_INVISIBLE_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_invisible_struct_set_screen"
		}"
		end

feature {} -- Low-level queries

	-- Unwrappable field widget.
	gtk_invisible_struct_get_has_user_ref_count (a_structure: POINTER): INTEGER_32 is
			-- Query for has_user_ref_count field of GTK_INVISIBLE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_invisible_struct_get_has_user_ref_count"
		}"
		end

	gtk_invisible_struct_get_screen (a_structure: POINTER): POINTER is
			-- Query for screen field of GTK_INVISIBLE_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_invisible_struct_get_screen"
		}"
		end

feature -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof__GtkInvisible"
		}"
		end

end -- class GTK_INVISIBLE_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

