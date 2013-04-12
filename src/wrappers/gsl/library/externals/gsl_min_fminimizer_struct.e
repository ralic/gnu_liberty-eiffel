-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GSL_MIN_FMINIMIZER_STRUCT

insert STANDARD_C_LIBRARY_TYPES

	GSL_TYPES
feature {} -- Low-level setters

	gsl_min_fminimizer_struct_set_type (a_structure: POINTER; a_value: POINTER) is
			-- Setter for type field of GSL_MIN_FMINIMIZER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_min_fminimizer_struct_set_type"
		}"
		end

	gsl_min_fminimizer_struct_set_function (a_structure: POINTER; a_value: POINTER) is
			-- Setter for function field of GSL_MIN_FMINIMIZER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_min_fminimizer_struct_set_function"
		}"
		end

	gsl_min_fminimizer_struct_set_x_minimum (a_structure: POINTER; a_value: REAL_64) is
			-- Setter for x_minimum field of GSL_MIN_FMINIMIZER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_min_fminimizer_struct_set_x_minimum"
		}"
		end

	gsl_min_fminimizer_struct_set_x_lower (a_structure: POINTER; a_value: REAL_64) is
			-- Setter for x_lower field of GSL_MIN_FMINIMIZER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_min_fminimizer_struct_set_x_lower"
		}"
		end

	gsl_min_fminimizer_struct_set_x_upper (a_structure: POINTER; a_value: REAL_64) is
			-- Setter for x_upper field of GSL_MIN_FMINIMIZER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_min_fminimizer_struct_set_x_upper"
		}"
		end

	gsl_min_fminimizer_struct_set_f_minimum (a_structure: POINTER; a_value: REAL_64) is
			-- Setter for f_minimum field of GSL_MIN_FMINIMIZER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_min_fminimizer_struct_set_f_minimum"
		}"
		end

	gsl_min_fminimizer_struct_set_f_lower (a_structure: POINTER; a_value: REAL_64) is
			-- Setter for f_lower field of GSL_MIN_FMINIMIZER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_min_fminimizer_struct_set_f_lower"
		}"
		end

	gsl_min_fminimizer_struct_set_f_upper (a_structure: POINTER; a_value: REAL_64) is
			-- Setter for f_upper field of GSL_MIN_FMINIMIZER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_min_fminimizer_struct_set_f_upper"
		}"
		end

	gsl_min_fminimizer_struct_set_state (a_structure: POINTER; a_value: POINTER) is
			-- Setter for state field of GSL_MIN_FMINIMIZER_STRUCT structure.
			-- TODO: setter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_min_fminimizer_struct_set_state"
		}"
		end

feature {} -- Low-level queries

	gsl_min_fminimizer_struct_get_type (a_structure: POINTER): POINTER is
			-- Query for type field of GSL_MIN_FMINIMIZER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_min_fminimizer_struct_get_type"
		}"
		end

	gsl_min_fminimizer_struct_get_function (a_structure: POINTER): POINTER is
			-- Query for function field of GSL_MIN_FMINIMIZER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_min_fminimizer_struct_get_function"
		}"
		end

	gsl_min_fminimizer_struct_get_x_minimum (a_structure: POINTER): REAL_64 is
			-- Query for x_minimum field of GSL_MIN_FMINIMIZER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_min_fminimizer_struct_get_x_minimum"
		}"
		end

	gsl_min_fminimizer_struct_get_x_lower (a_structure: POINTER): REAL_64 is
			-- Query for x_lower field of GSL_MIN_FMINIMIZER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_min_fminimizer_struct_get_x_lower"
		}"
		end

	gsl_min_fminimizer_struct_get_x_upper (a_structure: POINTER): REAL_64 is
			-- Query for x_upper field of GSL_MIN_FMINIMIZER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_min_fminimizer_struct_get_x_upper"
		}"
		end

	gsl_min_fminimizer_struct_get_f_minimum (a_structure: POINTER): REAL_64 is
			-- Query for f_minimum field of GSL_MIN_FMINIMIZER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_min_fminimizer_struct_get_f_minimum"
		}"
		end

	gsl_min_fminimizer_struct_get_f_lower (a_structure: POINTER): REAL_64 is
			-- Query for f_lower field of GSL_MIN_FMINIMIZER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_min_fminimizer_struct_get_f_lower"
		}"
		end

	gsl_min_fminimizer_struct_get_f_upper (a_structure: POINTER): REAL_64 is
			-- Query for f_upper field of GSL_MIN_FMINIMIZER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_min_fminimizer_struct_get_f_upper"
		}"
		end

	gsl_min_fminimizer_struct_get_state (a_structure: POINTER): POINTER is
			-- Query for state field of GSL_MIN_FMINIMIZER_STRUCT structure.
			-- TODO: getter description

		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_min_fminimizer_struct_get_state"
		}"
		end

feature -- Structure size
	struct_size: like size_t is
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "sizeof_gsl_min_fminimizer"
		}"
		end

end -- class GSL_MIN_FMINIMIZER_STRUCT
-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

