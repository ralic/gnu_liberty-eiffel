-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class GSL_BLOCK_UCHAR_EXTERNALS


insert ANY undefine is_equal, copy end

		-- TODO: insert typedefs class
feature {} -- External calls

	gsl_block_uchar_alloc (a_n: NATURAL_32): POINTER is
 		-- gsl_block_uchar_alloc
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_block_uchar_alloc"
		}"
		end

	gsl_block_uchar_calloc (a_n: NATURAL_32): POINTER is
 		-- gsl_block_uchar_calloc
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_block_uchar_calloc"
		}"
		end

	gsl_block_uchar_data (a_b: POINTER): POINTER is
 		-- gsl_block_uchar_data
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_block_uchar_data"
		}"
		end

	gsl_block_uchar_fprintf (a_stream: POINTER; a_b: POINTER; a_format: POINTER): INTEGER_32 is
 		-- gsl_block_uchar_fprintf
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_block_uchar_fprintf"
		}"
		end

	gsl_block_uchar_fread (a_stream: POINTER; a_b: POINTER): INTEGER_32 is
 		-- gsl_block_uchar_fread
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_block_uchar_fread"
		}"
		end

	gsl_block_uchar_free (a_b: POINTER) is
 		-- gsl_block_uchar_free
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_block_uchar_free"
		}"
		end

	gsl_block_uchar_fscanf (a_stream: POINTER; a_b: POINTER): INTEGER_32 is
 		-- gsl_block_uchar_fscanf
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_block_uchar_fscanf"
		}"
		end

	gsl_block_uchar_fwrite (a_stream: POINTER; a_b: POINTER): INTEGER_32 is
 		-- gsl_block_uchar_fwrite
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_block_uchar_fwrite"
		}"
		end

	gsl_block_uchar_raw_fprintf (a_stream: POINTER; a_b: POINTER; a_n: NATURAL_32; a_stride: NATURAL_32; a_format: POINTER): INTEGER_32 is
 		-- gsl_block_uchar_raw_fprintf
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_block_uchar_raw_fprintf"
		}"
		end

	gsl_block_uchar_raw_fread (a_stream: POINTER; a_b: POINTER; a_n: NATURAL_32; a_stride: NATURAL_32): INTEGER_32 is
 		-- gsl_block_uchar_raw_fread
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_block_uchar_raw_fread"
		}"
		end

	gsl_block_uchar_raw_fscanf (a_stream: POINTER; a_b: POINTER; a_n: NATURAL_32; a_stride: NATURAL_32): INTEGER_32 is
 		-- gsl_block_uchar_raw_fscanf
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_block_uchar_raw_fscanf"
		}"
		end

	gsl_block_uchar_raw_fwrite (a_stream: POINTER; a_b: POINTER; a_n: NATURAL_32; a_stride: NATURAL_32): INTEGER_32 is
 		-- gsl_block_uchar_raw_fwrite
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_block_uchar_raw_fwrite"
		}"
		end

	gsl_block_uchar_size (a_b: POINTER): NATURAL_32 is
 		-- gsl_block_uchar_size
		external "plug_in"
		alias "{
			location: "."
			module_name: "plugin"
			feature_name: "gsl_block_uchar_size"
		}"
		end


end -- class GSL_BLOCK_UCHAR_EXTERNALS
