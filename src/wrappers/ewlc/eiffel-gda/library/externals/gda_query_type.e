-- This file have been created by eiffel-gcc-xml.
-- Any change will be lost by the next execution of the tool.
expanded class GDA_QUERY_TYPE
insert ENUM

create {ANY} default_create
feature {ANY} -- Validity
	is_valid_value (a_value: INTEGER): BOOLEAN
		do
			Result := ((a_value = gda_query_type_select) or else 
				(a_value = gda_query_type_insert) or else 
				(a_value = gda_query_type_update) or else 
				(a_value = gda_query_type_delete) or else 
				(a_value = gda_query_type_union) or else 
				(a_value = gda_query_type_intersect) or else 
				(a_value = gda_query_type_except) or else 
				(a_value = gda_query_type_non_parsed_sql))
		end


feature {ANY} -- Setters
	default_create, set_select_external
		do
			value := gda_query_type_select
		end

	set_insert_external
		do
			value := gda_query_type_insert
		end

	set_update
		do
			value := gda_query_type_update
		end

	set_delete
		do
			value := gda_query_type_delete
		end

	set_union
		do
			value := gda_query_type_union
		end

	set_intersect
		do
			value := gda_query_type_intersect
		end

	set_except
		do
			value := gda_query_type_except
		end

	set_non_parsed_sql
		do
			value := gda_query_type_non_parsed_sql
		end


feature {ANY} -- Queries
	is_select_external: BOOLEAN
		do
			Result := (value=gda_query_type_select)
		end

	is_insert_external: BOOLEAN
		do
			Result := (value=gda_query_type_insert)
		end

	is_update: BOOLEAN
		do
			Result := (value=gda_query_type_update)
		end

	is_delete: BOOLEAN
		do
			Result := (value=gda_query_type_delete)
		end

	is_union: BOOLEAN
		do
			Result := (value=gda_query_type_union)
		end

	is_intersect: BOOLEAN
		do
			Result := (value=gda_query_type_intersect)
		end

	is_except: BOOLEAN
		do
			Result := (value=gda_query_type_except)
		end

	is_non_parsed_sql: BOOLEAN
		do
			Result := (value=gda_query_type_non_parsed_sql)
		end


feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	gda_query_type_select: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_TYPE_SELECT"
		end

	gda_query_type_insert: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_TYPE_INSERT"
		end

	gda_query_type_update: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_TYPE_UPDATE"
		end

	gda_query_type_delete: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_TYPE_DELETE"
		end

	gda_query_type_union: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_TYPE_UNION"
		end

	gda_query_type_intersect: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_TYPE_INTERSECT"
		end

	gda_query_type_except: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_TYPE_EXCEPT"
		end

	gda_query_type_non_parsed_sql: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_TYPE_NON_PARSED_SQL"
		end


end

