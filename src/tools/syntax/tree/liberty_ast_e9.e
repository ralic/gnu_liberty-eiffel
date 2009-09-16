class LIBERTY_AST_E9

inherit
	LIBERTY_AST_NON_TERMINAL_NODE

create {LIBERTY_NODE_FACTORY}
	make

feature {LIBERTY_AST_E9_VISITOR}
	has_old: BOOLEAN is
		do
			Result := count = 2
			check
				Result = nodes.first.name.is_equal(once "KW old")
			end
		end

	e10: LIBERTY_AST_E10 is
		do
			if has_old then
				Result ::= nodes.item(1)
			else
				Result ::= nodes.item(0)
			end
		end

feature {ANY}
	count: INTEGER is
		do
			Result := nodes.count
		end

	name: STRING is "e9"

feature {}
	possible_counts: SET[INTEGER] is
		once
			Result := {AVL_SET[INTEGER] << 1, 2 >> }
		end

feature {ANY}
	accept (visitor: VISITOR) is
		local
			v: LIBERTY_AST_E9_VISITOR
		do
			v ::= visitor
			v.visit_liberty_ast_e9(Current)
		end

end