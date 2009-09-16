class LIBERTY_AST_ENSURE_THEN

inherit
	LIBERTY_AST_NON_TERMINAL_NODE

create {LIBERTY_NODE_FACTORY}
	make

feature {LIBERTY_AST_ENSURE_THEN_VISITOR}
	is_ensure_then: BOOLEAN is
		do
			Result := count = 2
			check
				Result implies nodes.last.name.is_equal(once "KW then")
			end
		end

feature {ANY}
	count: INTEGER is
		do
			Result := nodes.count
		end

	name: STRING is "Ensure_Then"

feature {}
	possible_counts: SET[INTEGER] is
		once
			Result := {AVL_SET[INTEGER] << 1, 2 >> }
		end

feature {ANY}
	accept (visitor: VISITOR) is
		local
			v: LIBERTY_AST_ENSURE_THEN_VISITOR
		do
			v ::= visitor
			v.visit_liberty_ast_ensure_then(Current)
		end

end