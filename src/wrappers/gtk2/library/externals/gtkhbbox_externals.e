-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GTKHBBOX_EXTERNALS


insert ANY undefine is_equal, copy end

		-- TODO: insert typedefs class
feature {} -- External calls

	-- `hidden' function _gtk_hbutton_box_get_layout_default skipped.
	gtk_hbutton_box_get_type: NATURAL_64 is
 		-- gtk_hbutton_box_get_type (node at line 19202)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_hbutton_box_get_type()"
		}"
		end

	gtk_hbutton_box_new: POINTER is
 		-- gtk_hbutton_box_new (node at line 27224)
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gtk_hbutton_box_new()"
		}"
		end


end -- class GTKHBBOX_EXTERNALS
