-- This file have been created by eiffel-gcc-xml.
-- Any change will be lost by the next execution of the tool.
expanded class GDA_QUERY_CONDITION_TYPE
insert ENUM

create {ANY} default_create
feature {ANY} -- Validity
	is_valid_value (a_value: INTEGER): BOOLEAN
		do
			Result := ((a_value = gda_query_condition_node_and) or else 
				(a_value = gda_query_condition_node_or) or else 
				(a_value = gda_query_condition_node_not) or else 
				(a_value = gda_query_condition_leaf_equal) or else 
				(a_value = gda_query_condition_leaf_diff) or else 
				(a_value = gda_query_condition_leaf_sup) or else 
				(a_value = gda_query_condition_leaf_supequal) or else 
				(a_value = gda_query_condition_leaf_inf) or else 
				(a_value = gda_query_condition_leaf_infequal) or else 
				(a_value = gda_query_condition_leaf_like) or else 
				(a_value = gda_query_condition_leaf_similar) or else 
				(a_value = gda_query_condition_leaf_regex) or else 
				(a_value = gda_query_condition_leaf_regex_nocase) or else 
				(a_value = gda_query_condition_leaf_not_regex) or else 
				(a_value = gda_query_condition_leaf_not_regex_nocase) or else 
				(a_value = gda_query_condition_leaf_in) or else 
				(a_value = gda_query_condition_leaf_between) or else 
				(a_value = gda_query_condition_type_unknown))
		end


feature {ANY} -- Setters
	default_create, set_node_and
		do
			value := gda_query_condition_node_and
		end

	set_node_or
		do
			value := gda_query_condition_node_or
		end

	set_node_not
		do
			value := gda_query_condition_node_not
		end

	set_leaf_equal
		do
			value := gda_query_condition_leaf_equal
		end

	set_leaf_diff
		do
			value := gda_query_condition_leaf_diff
		end

	set_leaf_sup
		do
			value := gda_query_condition_leaf_sup
		end

	set_leaf_supequal
		do
			value := gda_query_condition_leaf_supequal
		end

	set_leaf_inf
		do
			value := gda_query_condition_leaf_inf
		end

	set_leaf_infequal
		do
			value := gda_query_condition_leaf_infequal
		end

	set_leaf_like
		do
			value := gda_query_condition_leaf_like
		end

	set_leaf_similar
		do
			value := gda_query_condition_leaf_similar
		end

	set_leaf_regex
		do
			value := gda_query_condition_leaf_regex
		end

	set_leaf_regex_nocase
		do
			value := gda_query_condition_leaf_regex_nocase
		end

	set_leaf_not_regex
		do
			value := gda_query_condition_leaf_not_regex
		end

	set_leaf_not_regex_nocase
		do
			value := gda_query_condition_leaf_not_regex_nocase
		end

	set_leaf_in
		do
			value := gda_query_condition_leaf_in
		end

	set_leaf_between
		do
			value := gda_query_condition_leaf_between
		end

	set_type_unknown
		do
			value := gda_query_condition_type_unknown
		end


feature {ANY} -- Queries
	is_node_and: BOOLEAN
		do
			Result := (value=gda_query_condition_node_and)
		end

	is_node_or: BOOLEAN
		do
			Result := (value=gda_query_condition_node_or)
		end

	is_node_not: BOOLEAN
		do
			Result := (value=gda_query_condition_node_not)
		end

	is_leaf_equal: BOOLEAN
		do
			Result := (value=gda_query_condition_leaf_equal)
		end

	is_leaf_diff: BOOLEAN
		do
			Result := (value=gda_query_condition_leaf_diff)
		end

	is_leaf_sup: BOOLEAN
		do
			Result := (value=gda_query_condition_leaf_sup)
		end

	is_leaf_supequal: BOOLEAN
		do
			Result := (value=gda_query_condition_leaf_supequal)
		end

	is_leaf_inf: BOOLEAN
		do
			Result := (value=gda_query_condition_leaf_inf)
		end

	is_leaf_infequal: BOOLEAN
		do
			Result := (value=gda_query_condition_leaf_infequal)
		end

	is_leaf_like: BOOLEAN
		do
			Result := (value=gda_query_condition_leaf_like)
		end

	is_leaf_similar: BOOLEAN
		do
			Result := (value=gda_query_condition_leaf_similar)
		end

	is_leaf_regex: BOOLEAN
		do
			Result := (value=gda_query_condition_leaf_regex)
		end

	is_leaf_regex_nocase: BOOLEAN
		do
			Result := (value=gda_query_condition_leaf_regex_nocase)
		end

	is_leaf_not_regex: BOOLEAN
		do
			Result := (value=gda_query_condition_leaf_not_regex)
		end

	is_leaf_not_regex_nocase: BOOLEAN
		do
			Result := (value=gda_query_condition_leaf_not_regex_nocase)
		end

	is_leaf_in: BOOLEAN
		do
			Result := (value=gda_query_condition_leaf_in)
		end

	is_leaf_between: BOOLEAN
		do
			Result := (value=gda_query_condition_leaf_between)
		end

	is_type_unknown: BOOLEAN
		do
			Result := (value=gda_query_condition_type_unknown)
		end


feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	gda_query_condition_node_and: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_CONDITION_NODE_AND"
		end

	gda_query_condition_node_or: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_CONDITION_NODE_OR"
		end

	gda_query_condition_node_not: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_CONDITION_NODE_NOT"
		end

	gda_query_condition_leaf_equal: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_CONDITION_LEAF_EQUAL"
		end

	gda_query_condition_leaf_diff: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_CONDITION_LEAF_DIFF"
		end

	gda_query_condition_leaf_sup: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_CONDITION_LEAF_SUP"
		end

	gda_query_condition_leaf_supequal: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_CONDITION_LEAF_SUPEQUAL"
		end

	gda_query_condition_leaf_inf: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_CONDITION_LEAF_INF"
		end

	gda_query_condition_leaf_infequal: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_CONDITION_LEAF_INFEQUAL"
		end

	gda_query_condition_leaf_like: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_CONDITION_LEAF_LIKE"
		end

	gda_query_condition_leaf_similar: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_CONDITION_LEAF_SIMILAR"
		end

	gda_query_condition_leaf_regex: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_CONDITION_LEAF_REGEX"
		end

	gda_query_condition_leaf_regex_nocase: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_CONDITION_LEAF_REGEX_NOCASE"
		end

	gda_query_condition_leaf_not_regex: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_CONDITION_LEAF_NOT_REGEX"
		end

	gda_query_condition_leaf_not_regex_nocase: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_CONDITION_LEAF_NOT_REGEX_NOCASE"
		end

	gda_query_condition_leaf_in: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_CONDITION_LEAF_IN"
		end

	gda_query_condition_leaf_between: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_CONDITION_LEAF_BETWEEN"
		end

	gda_query_condition_type_unknown: INTEGER
		external "C macro use <libgda/libgda.h>"
		alias "GDA_QUERY_CONDITION_TYPE_UNKNOWN"
		end


end

