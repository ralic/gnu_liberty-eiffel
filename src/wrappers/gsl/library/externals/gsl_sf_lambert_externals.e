-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GSL_SF_LAMBERT_EXTERNALS


insert ANY undefine is_equal, copy end

		-- TODO: insert typedefs class
feature {} -- External calls

	gsl_sf_lambert_w0 (a_x: REAL_64): REAL_64 is
 		-- gsl_sf_lambert_W0
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_sf_lambert_W0"
		}"
		end

	gsl_sf_lambert_w0_e (a_x: REAL_64; a_result: POINTER): INTEGER_32 is
 		-- gsl_sf_lambert_W0_e
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_sf_lambert_W0_e"
		}"
		end

	gsl_sf_lambert_wm1 (a_x: REAL_64): REAL_64 is
 		-- gsl_sf_lambert_Wm1
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_sf_lambert_Wm1"
		}"
		end

	gsl_sf_lambert_wm1_e (a_x: REAL_64; a_result: POINTER): INTEGER_32 is
 		-- gsl_sf_lambert_Wm1_e
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_sf_lambert_Wm1_e"
		}"
		end


end -- class GSL_SF_LAMBERT_EXTERNALS
