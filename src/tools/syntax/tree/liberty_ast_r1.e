class LIBERTY_AST_R1

inherit
	LIBERTY_AST_EXPRESSION_REMAINDER[LIBERTY_AST_E1]
		export {LIBERTY_AST_R1_VISITOR}
			expression, remainder
		end

create {LIBERTY_NODE_FACTORY}
	make

feature {LIBERTY_AST_R1_VISITOR}
	is_implies: BOOLEAN is
		do
			Result := not is_empty
			check
				Result implies nodes.first.name.is_equal(once "KW implies")
				not is_empty implies Result
			end
		ensure
			Result implies not is_empty
		end

feature {ANY}
	name: STRING is "r1"

feature {ANY}
	accept (visitor: VISITOR) is
		local
			v: LIBERTY_AST_R1_VISITOR
		do
			v ::= visitor
			v.visit_liberty_ast_r1(Current)
		end

end