-- This file has been created by wrappers_generator.
-- Any change will be lost by the next execution of the tool.
deferred class FFI_EXTERNALS


insert ANY undefine is_equal, copy end

		STANDARD_C_LIBRARY_TYPES
feature {} -- External calls

	-- `hidden' function __builtin_memcpy skipped.
	ffi_call (a_cif: POINTER; a_fn: POINTER; a_rvalue: POINTER; an_avalue: POINTER) 

		-- function ffi_call (in 446 at line /usr/include/x86_64-linux-gnu/ffi.h)
               -- ffi_call
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ffi_call"
               }"
               end

	ffi_closure_alloc (a_size: like size_t; a_code: POINTER): POINTER 

		-- function ffi_closure_alloc (in 333 at line /usr/include/x86_64-linux-gnu/ffi.h)
               -- ffi_closure_alloc
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ffi_closure_alloc"
               }"
               end

	ffi_closure_free (an_argument_l108_c7: POINTER) 

		-- function ffi_closure_free (in 334 at line /usr/include/x86_64-linux-gnu/ffi.h)
               -- ffi_closure_free
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ffi_closure_free"
               }"
               end

	ffi_java_ptrarray_to_raw (a_cif: POINTER; an_args: POINTER; a_raw: POINTER) 

		-- function ffi_java_ptrarray_to_raw (in 303 at line /usr/include/x86_64-linux-gnu/ffi.h)
               -- ffi_java_ptrarray_to_raw
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ffi_java_ptrarray_to_raw"
               }"
               end

	ffi_java_raw_call (a_cif: POINTER; a_fn: POINTER; a_rvalue: POINTER; an_avalue: POINTER) 

		-- function ffi_java_raw_call (in 298 at line /usr/include/x86_64-linux-gnu/ffi.h)
               -- ffi_java_raw_call
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ffi_java_raw_call"
               }"
               end

	ffi_java_raw_size (a_cif: POINTER): like size_t 

		-- function ffi_java_raw_size (in 305 at line /usr/include/x86_64-linux-gnu/ffi.h)
               -- ffi_java_raw_size
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ffi_java_raw_size"
               }"
               end

	ffi_java_raw_to_ptrarray (a_cif: POINTER; a_raw: POINTER; an_args: POINTER) 

		-- function ffi_java_raw_to_ptrarray (in 304 at line /usr/include/x86_64-linux-gnu/ffi.h)
               -- ffi_java_raw_to_ptrarray
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ffi_java_raw_to_ptrarray"
               }"
               end

	ffi_prep_cif (a_cif: POINTER; an_abi: INTEGER; a_nargs: NATURAL; a_rtype: POINTER; an_atypes: POINTER): INTEGER 

		-- function ffi_prep_cif (in 433 at line /usr/include/x86_64-linux-gnu/ffi.h)
               -- ffi_prep_cif
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ffi_prep_cif"
               }"
               end

	ffi_prep_cif_core (a_cif: POINTER; an_abi: INTEGER; an_isvariadic: NATURAL; a_nfixedargs: NATURAL; a_ntotalargs: NATURAL; a_rtype: POINTER; an_atypes: POINTER): INTEGER 

		-- function ffi_prep_cif_core (in 240 at line /usr/include/x86_64-linux-gnu/ffi.h)
               -- ffi_prep_cif_core
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ffi_prep_cif_core"
               }"
               end

	ffi_prep_cif_var (a_cif: POINTER; an_abi: INTEGER; a_nfixedargs: NATURAL; a_ntotalargs: NATURAL; a_rtype: POINTER; an_atypes: POINTER): INTEGER 

		-- function ffi_prep_cif_var (in 439 at line /usr/include/x86_64-linux-gnu/ffi.h)
               -- ffi_prep_cif_var
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ffi_prep_cif_var"
               }"
               end

	ffi_prep_closure (an_argument_l111_c7: POINTER; an_argument_l112_c7: POINTER; a_fun: POINTER; an_user_data: POINTER): INTEGER 

		-- function ffi_prep_closure (in 337 at line /usr/include/x86_64-linux-gnu/ffi.h)
               -- ffi_prep_closure
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ffi_prep_closure"
               }"
               end

	ffi_prep_closure_loc (an_argument_l117_c7: POINTER; an_argument_l118_c7: POINTER; a_fun: POINTER; an_user_data: POINTER; a_codeloc: POINTER): INTEGER 

		-- function ffi_prep_closure_loc (in 343 at line /usr/include/x86_64-linux-gnu/ffi.h)
               -- ffi_prep_closure_loc
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ffi_prep_closure_loc"
               }"
               end

	ffi_prep_java_raw_closure (an_argument_l141_c7: POINTER; a_cif: POINTER; a_fun: POINTER; an_user_data: POINTER): INTEGER 

		-- function ffi_prep_java_raw_closure (in 417 at line /usr/include/x86_64-linux-gnu/ffi.h)
               -- ffi_prep_java_raw_closure
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ffi_prep_java_raw_closure"
               }"
               end

	ffi_prep_java_raw_closure_loc (an_argument_l147_c7: POINTER; a_cif: POINTER; a_fun: POINTER; an_user_data: POINTER; a_codeloc: POINTER): INTEGER 

		-- function ffi_prep_java_raw_closure_loc (in 423 at line /usr/include/x86_64-linux-gnu/ffi.h)
               -- ffi_prep_java_raw_closure_loc
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ffi_prep_java_raw_closure_loc"
               }"
               end

	ffi_prep_raw_closure (an_argument_l128_c7: POINTER; a_cif: POINTER; a_fun: POINTER; an_user_data: POINTER): INTEGER 

		-- function ffi_prep_raw_closure (in 404 at line /usr/include/x86_64-linux-gnu/ffi.h)
               -- ffi_prep_raw_closure
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ffi_prep_raw_closure"
               }"
               end

	ffi_prep_raw_closure_loc (an_argument_l134_c7: POINTER; a_cif: POINTER; a_fun: POINTER; an_user_data: POINTER; a_codeloc: POINTER): INTEGER 

		-- function ffi_prep_raw_closure_loc (in 410 at line /usr/include/x86_64-linux-gnu/ffi.h)
               -- ffi_prep_raw_closure_loc
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ffi_prep_raw_closure_loc"
               }"
               end

	ffi_ptrarray_to_raw (a_cif: POINTER; an_args: POINTER; a_raw: POINTER) 

		-- function ffi_ptrarray_to_raw (in 290 at line /usr/include/x86_64-linux-gnu/ffi.h)
               -- ffi_ptrarray_to_raw
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ffi_ptrarray_to_raw"
               }"
               end

	ffi_raw_call (a_cif: POINTER; a_fn: POINTER; a_rvalue: POINTER; an_avalue: POINTER) 

		-- function ffi_raw_call (in 285 at line /usr/include/x86_64-linux-gnu/ffi.h)
               -- ffi_raw_call
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ffi_raw_call"
               }"
               end

	ffi_raw_size (a_cif: POINTER): like size_t 

		-- function ffi_raw_size (in 292 at line /usr/include/x86_64-linux-gnu/ffi.h)
               -- ffi_raw_size
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ffi_raw_size"
               }"
               end

	ffi_raw_to_ptrarray (a_cif: POINTER; a_raw: POINTER; an_args: POINTER) 

		-- function ffi_raw_to_ptrarray (in 291 at line /usr/include/x86_64-linux-gnu/ffi.h)
               -- ffi_raw_to_ptrarray
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "ffi_raw_to_ptrarray"
               }"
               end

       -- Variable ffi_type_complex_double (at line 205 in file /usr/include/x86_64-linux-gnu/ffi.h does not have a wrapper type
       address_of_ffi_type_complex_double: POINTER
               -- Address of ffi_type_complex_double
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "&ffi_type_complex_double"
               }"
               end

       -- Variable ffi_type_complex_float (at line 204 in file /usr/include/x86_64-linux-gnu/ffi.h does not have a wrapper type
       address_of_ffi_type_complex_float: POINTER
               -- Address of ffi_type_complex_float
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "&ffi_type_complex_float"
               }"
               end

       -- Variable ffi_type_complex_longdouble (at line 207 in file /usr/include/x86_64-linux-gnu/ffi.h does not have a wrapper type
       address_of_ffi_type_complex_longdouble: POINTER
               -- Address of ffi_type_complex_longdouble
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "&ffi_type_complex_longdouble"
               }"
               end

       -- Variable ffi_type_double (at line 194 in file /usr/include/x86_64-linux-gnu/ffi.h does not have a wrapper type
       address_of_ffi_type_double: POINTER
               -- Address of ffi_type_double
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "&ffi_type_double"
               }"
               end

       -- Variable ffi_type_float (at line 193 in file /usr/include/x86_64-linux-gnu/ffi.h does not have a wrapper type
       address_of_ffi_type_float: POINTER
               -- Address of ffi_type_float
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "&ffi_type_float"
               }"
               end

       -- Variable ffi_type_longdouble (at line 198 in file /usr/include/x86_64-linux-gnu/ffi.h does not have a wrapper type
       address_of_ffi_type_longdouble: POINTER
               -- Address of ffi_type_longdouble
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "&ffi_type_longdouble"
               }"
               end

       -- Variable ffi_type_pointer (at line 195 in file /usr/include/x86_64-linux-gnu/ffi.h does not have a wrapper type
       address_of_ffi_type_pointer: POINTER
               -- Address of ffi_type_pointer
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "&ffi_type_pointer"
               }"
               end

       -- Variable ffi_type_sint16 (at line 188 in file /usr/include/x86_64-linux-gnu/ffi.h does not have a wrapper type
       address_of_ffi_type_sint16: POINTER
               -- Address of ffi_type_sint16
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "&ffi_type_sint16"
               }"
               end

       -- Variable ffi_type_sint32 (at line 190 in file /usr/include/x86_64-linux-gnu/ffi.h does not have a wrapper type
       address_of_ffi_type_sint32: POINTER
               -- Address of ffi_type_sint32
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "&ffi_type_sint32"
               }"
               end

       -- Variable ffi_type_sint64 (at line 192 in file /usr/include/x86_64-linux-gnu/ffi.h does not have a wrapper type
       address_of_ffi_type_sint64: POINTER
               -- Address of ffi_type_sint64
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "&ffi_type_sint64"
               }"
               end

       -- Variable ffi_type_sint8 (at line 186 in file /usr/include/x86_64-linux-gnu/ffi.h does not have a wrapper type
       address_of_ffi_type_sint8: POINTER
               -- Address of ffi_type_sint8
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "&ffi_type_sint8"
               }"
               end

       -- Variable ffi_type_uint16 (at line 187 in file /usr/include/x86_64-linux-gnu/ffi.h does not have a wrapper type
       address_of_ffi_type_uint16: POINTER
               -- Address of ffi_type_uint16
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "&ffi_type_uint16"
               }"
               end

       -- Variable ffi_type_uint32 (at line 189 in file /usr/include/x86_64-linux-gnu/ffi.h does not have a wrapper type
       address_of_ffi_type_uint32: POINTER
               -- Address of ffi_type_uint32
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "&ffi_type_uint32"
               }"
               end

       -- Variable ffi_type_uint64 (at line 191 in file /usr/include/x86_64-linux-gnu/ffi.h does not have a wrapper type
       address_of_ffi_type_uint64: POINTER
               -- Address of ffi_type_uint64
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "&ffi_type_uint64"
               }"
               end

       -- Variable ffi_type_uint8 (at line 185 in file /usr/include/x86_64-linux-gnu/ffi.h does not have a wrapper type
       address_of_ffi_type_uint8: POINTER
               -- Address of ffi_type_uint8
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "&ffi_type_uint8"
               }"
               end

       -- Variable ffi_type_void (at line 184 in file /usr/include/x86_64-linux-gnu/ffi.h does not have a wrapper type
       address_of_ffi_type_void: POINTER
               -- Address of ffi_type_void
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "&ffi_type_void"
               }"
               end


end -- class FFI_EXTERNALS
