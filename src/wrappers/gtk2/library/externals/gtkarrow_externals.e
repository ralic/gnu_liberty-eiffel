-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GTKARROW_EXTERNALS


insert ANY undefine is_equal, copy end

		-- TODO: insert typedefs class
feature {} -- External calls

	gtk_arrow_new (an_arrow_type: INTEGER; a_shadow_type: INTEGER): POINTER is
 		-- gtk_arrow_new (node at line 27589)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_arrow_new"
		}"
		end

	gtk_arrow_get_type: NATURAL_64 is
 		-- gtk_arrow_get_type (node at line 39568)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_arrow_get_type()"
		}"
		end

	gtk_arrow_set (an_arrow: POINTER; an_arrow_type: INTEGER; a_shadow_type: INTEGER) is
 		-- gtk_arrow_set (node at line 40969)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_arrow_set"
		}"
		end


end -- class GTKARROW_EXTERNALS
