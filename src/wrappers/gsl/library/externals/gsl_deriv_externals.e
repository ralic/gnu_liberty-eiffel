-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GSL_DERIV_EXTERNALS


insert ANY undefine is_equal, copy end

		-- TODO: insert typedefs class
feature {} -- External calls

	gsl_deriv_backward (a_f: POINTER; a_x: REAL_64; a_h: REAL_64; a_result: POINTER; an_abserr: POINTER): INTEGER_32 is
 		-- gsl_deriv_backward
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_deriv_backward"
		}"
		end

	gsl_deriv_central (a_f: POINTER; a_x: REAL_64; a_h: REAL_64; a_result: POINTER; an_abserr: POINTER): INTEGER_32 is
 		-- gsl_deriv_central
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_deriv_central"
		}"
		end

	gsl_deriv_forward (a_f: POINTER; a_x: REAL_64; a_h: REAL_64; a_result: POINTER; an_abserr: POINTER): INTEGER_32 is
 		-- gsl_deriv_forward
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_deriv_forward"
		}"
		end


end -- class GSL_DERIV_EXTERNALS
