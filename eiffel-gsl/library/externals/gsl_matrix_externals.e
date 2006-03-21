indexing
	description: "External calls for GSL_MATRIX"
	copyright: "(C) 2006 Paolo Redaelli <paolo.redaelli@poste.it>"
	license: "LGPL v2 or later"
	date: "$Date:$"
	revision: "$Revision:$"

deferred class GSL_MATRIX_EXTERNALS
feature {NONE} -- External calls

	gsl_matrix_alloc (a_n1, a_n2: INTEGER): POINTER is
		external "C use <gsl/gsl_matrix.h>"
		end
	
	gsl_matrix_calloc (n1: INTEGER, n2: INTEGER): POINTER is
		external "C use <gsl/gsl_matrix.h>"
		end
	
	gsl_matrix_free (a_gsl_matrix: POINTER) is
		external "C use <gsl/gsl_matrix.h>"
		end

	gsl_matrix_get (a_gsl_matrix: POINTER; a_i, a_j: INTEGER): REAL is
		external "C use <gsl/gsl_matrix.h>"
		end

	gsl_matrix_set (a_gsl_matrix: POINTER; a_i, a_j: INTEGER; an_x: REAL) is
		external "C use <gsl/gsl_matrix.h>"
		end

	gsl_matrix_ptr (a_gsl_matrix: POINTER; a_i, a_j: INTEGER): POINTER  is
		external "C use <gsl/gsl_matrix.h>"
		end

	gsl_matrix_set_all (a_gsl_matrix: POINTER; an_x: REAL) is
		external "C use <gsl/gsl_matrix.h>"
		end

	gsl_matrix_set_zero (a_gsl_matrix: POINTER)  is
		external "C use <gsl/gsl_matrix.h>"
		end

	gsl_matrix_set_identity (a_gsl_matrix: POINTER)  is
		external "C use <gsl/gsl_matrix.h>"
		end

	gsl_matrix_fwrite (a_stream, a_gsl_matrix: POINTER): INTEGER  is
		external "C use <gsl/gsl_matrix.h>"
		end

	gsl_matrix_fread (a_stream, a_gsl_matrix: POINTER): INTEGER  is
		external "C use <gsl/gsl_matrix.h>"
		end

	gsl_matrix_fprintf (a_stream, a_gsl_matrix, a_format: POINTER): INTEGER  is
		external "C use <gsl/gsl_matrix.h>"
		end
	
	gsl_matrix_fscanf (a_stream, a_gsl_matrix: POINTER): INTEGER  is
		external "C use <gsl/gsl_matrix.h>"
		end
	
	-- TODO: gsl_matrix_view gsl_matrix_submatrix (a_gsl_matrix: POINTER, k1: INTEGER, k2: INTEGER, n1: INTEGER, n2: INTEGER)
	-- TODO gsl_matrix_const_view gsl_matrix_const_submatrix (const a_gsl_matrix: POINTER, k1: INTEGER, k2: INTEGER, n1: INTEGER, n2: INTEGER)

	-- TODO: gsl_matrix_view gsl_matrix_view_array (double * base, n1: INTEGER, n2: INTEGER)
	-- TODO: gsl_matrix_const_view gsl_matrix_const_view_array (const double * base, n1: INTEGER, n2: INTEGER)

	-- TODO: gsl_matrix_view gsl_matrix_view_array_with_tda (double * base, n1: INTEGER, n2: INTEGER, tda: INTEGER)
	-- TODO: gsl_matrix_const_view gsl_matrix_const_view_array_with_tda (const double * base, n1: INTEGER, n2: INTEGER, tda: INTEGER)

	-- TODO: gsl_matrix_view gsl_matrix_view_vector (gsl_vector * v, n1: INTEGER, n2: INTEGER)
	-- TODO: gsl_matrix_const_view gsl_matrix_const_view_vector (const gsl_vector * v, n1: INTEGER, n2: INTEGER)

	-- TODO: gsl_matrix_view gsl_matrix_view_vector_with_tda (gsl_vector * v, n1: INTEGER, n2: INTEGER, tda: INTEGER)
	-- TODO: gsl_matrix_const_view gsl_matrix_const_view_vector_with_tda (const gsl_vector * v, n1: INTEGER, n2: INTEGER, tda: INTEGER)

	gsl_matrix_memcpy (a_dest, a_src: POINTER): INTEGER   is
		external "C use <gsl/gsl_matrix.h>"
		end

	gsl_matrix_swap (a_gsl_matrix, another_gsl_matrix: POINTER): INTEGER  is
		external "C use <gsl/gsl_matrix.h>"
		end

	gsl_matrix_get_row (a_vector, a_gsl_matrix: POINTER; an_i: INTEGER): INTEGER   is
		external "C use <gsl/gsl_matrix.h>"
		end

	gsl_matrix_get_col (a_gsl_vector, a_gsl_matrix: POINTER; a_j: INTEGER): INTEGER  is
		external "C use <gsl/gsl_matrix.h>"
		end

	gsl_matrix_set_row (a_gsl_matrix: POINTER; an_i: INTEGER; a_gsl_vector: POINTER): INTEGER  is
		external "C use <gsl/gsl_matrix.h>"
		end

	gsl_matrix_set_col (a_gsl_matrix: POINTER; an_j: INTEGER; a_gsl_vector: POINTER): INTEGER  is
		external "C use <gsl/gsl_matrix.h>"
		end

	gsl_matrix_swap_rows (a_gsl_matrix: POINTER; an_i, a_j: INTEGER): INTEGER  is
		external "C use <gsl/gsl_matrix.h>"
		end

	gsl_matrix_swap_columns (a_gsl_matrix: POINTER; an_i, a_j: INTEGER): INTEGER  is
		external "C use <gsl/gsl_matrix.h>"
		end

	gsl_matrix_swap_rowcol (a_gsl_matrix: POINTER; an_i, a_j: INTEGER): INTEGER  is
		external "C use <gsl/gsl_matrix.h>"
		end

	gsl_matrix_transpose_memcpy (a_gsl_matrix_dest, a_gsl_matrix_src: POINTER): INTEGER  is
		external "C use <gsl/gsl_matrix.h>"
		end

	gsl_matrix_transpose (a_gsl_matrix: POINTER): INTEGER  is
		external "C use <gsl/gsl_matrix.h>"
		end


	gsl_matrix_add (a_gsl_matrix, another_gsl_matrix: POINTER): INTEGER  is
		external "C use <gsl/gsl_matrix.h>"
		end

	gsl_matrix_sub (a_gsl_matrix, another_gsl_matrix: POINTER): INTEGER  is
		external "C use <gsl/gsl_matrix.h>"
		end

	gsl_matrix_mul_elements (a_gsl_matrix, another_gsl_matrix: POINTER): INTEGER  is
		external "C use <gsl/gsl_matrix.h>"
		end
	
	gsl_matrix_div_elements (a_gsl_matrix, another_gsl_matrix: POINTER): INTEGER  is
		external "C use <gsl/gsl_matrix.h>"
		end
	
	gsl_matrix_scale (a_gsl_matrix: POINTER; a_scale: REAL): INTEGER  is
		external "C use <gsl/gsl_matrix.h>"
		end
	
	gsl_matrix_add_constant (a_gsl_matrix: POINTER; a_constant: REAL): INTEGER  is
		external "C use <gsl/gsl_matrix.h>"
		end

	
	gsl_matrix_max (a_gsl_matrix: POINTER): REAL  is
		external "C use <gsl/gsl_matrix.h>"
		end
	
	gsl_matrix_min (a_gsl_matrix: POINTER): REAL  is
		external "C use <gsl/gsl_matrix.h>"
		end

	gsl_matrix_minmax (a_gsl_matrix, a_min_out, a_max_out: POINTER)  is
		external "C use <gsl/gsl_matrix.h>"
		end

	gsl_matrix_max_index (a_gsl_matrix, an_imax_ptr, a_jmax_ptr: POINTER)  is
		external "C use <gsl/gsl_matrix.h>"
		end

	gsl_matrix_min_index (a_gsl_matrix, an_imin_ptr, a_jmin_ptr: POINTER)  is
		external "C use <gsl/gsl_matrix.h>"
		end

		-- TODO: void gsl_matrix_minmax_index (const a_gsl_matrix: POINTER, size_t * imin, size_t * imax)
		-- Documentation and declaration mismatch! This function returns the indices of the minimum and maximum values in the matrix m, storing them in (imin,jmin) and (imax,jmax). When there are several equal minimum or maximum elements then the first elements found are returned, searching in row-major order. 
	
	gsl_matrix_isnull (a_gsl_matrix: POINTER): INTEGER  is
		external "C use <gsl/gsl_matrix.h>"
		end

end
