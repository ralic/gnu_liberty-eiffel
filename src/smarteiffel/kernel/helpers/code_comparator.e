-- This file is part of SmartEiffel The GNU Eiffel Compiler Tools and Libraries.
-- See the Copyright notice at the end of this file.
--
class CODE_COMPARATOR

inherit
   CODE_VISITOR
      undefine is_equal
      end
   EFFECTIVE_ARG_LIST_VISITOR
      undefine is_equal
      end

insert
   GLOBALS
      undefine is_equal
      end
   SINGLETON

creation {INSPECT_STATEMENT}
   make

feature {EFFECTIVE_ARG_LIST}
   visit_effective_arg_list (visited: EFFECTIVE_ARG_LIST) is
      local
         i: INTEGER
      do
         from
            i := visited.upper
         until
            not trace_result or else i < visited.lower
         loop
            visited.item(i).accept(Current)
            i := i - 1
         end
      end

feature {COMPOUND}
   visit_compound (visited: COMPOUND) is
      local
         i: INTEGER
      do
         from
            i := visited.upper
         until
            not trace_result or else i < visited.lower
         loop
            visited.item(i).accept(Current)
            trace.extend(';')
            i := i - 1
         end
      end

feature {COMPOUND_EXPRESSION}
   visit_compound_expression (visited: COMPOUND_EXPRESSION) is
      local
         i: INTEGER
      do
         from
            i := visited.upper
         until
            not trace_result or else i < visited.lower
         loop
            visited.item(i).accept(Current)
            trace.extend(';')
            i := i - 1
         end
      end

feature {COMMENT}
   visit_comment (visited: COMMENT) is
      do
      end

feature {LOOP_INSTRUCTION}
   visit_loop_instruction (visited: LOOP_INSTRUCTION) is
      do
         trace_result := False
      end

feature {NO_INVARIANT_WRAPPER}
   visit_no_invariant_wrapper (visited: NO_INVARIANT_WRAPPER) is
      do
         trace_result := False
      end

feature {ASSIGNMENT_ATTEMPT}
   visit_assignment_attempt (visited: ASSIGNMENT_ATTEMPT) is
      do
         visited.left_side.accept(Current)
         trace.append(once "?=")
         visited.right_side.accept(Current)
      end

feature {ASSIGNMENT}
   visit_assignment (visited: ASSIGNMENT) is
      do
         visited.left_side.accept(Current)
         trace.append(once ":=")
         visited.right_side.accept(Current)
      end

feature {CECIL_ENTRY}
   visit_cecil_entry (visited: CECIL_ENTRY) is
      do
         trace_result := False
      end

feature {PRECURSOR_EXPRESSION}
   visit_precursor_expression (visited: PRECURSOR_EXPRESSION) is
      do
         trace_result := False
      end

feature {PRECURSOR_INSTRUCTION}
   visit_precursor_instruction (visited: PRECURSOR_INSTRUCTION) is
      do
         trace_result := False
      end   

feature {LOOP_VARIANT}
   visit_loop_variant (visited: LOOP_VARIANT) is
      do
         trace_result := False
      end

feature {IFTHENELSE}
   visit_ifthenelse (visited: IFTHENELSE) is
      do
         trace_result := False
      end

feature {VOID_PROC_CALL}
   visit_void_proc_call (visited: VOID_PROC_CALL) is
      do
         trace_result := False
      end

feature {SEDB}
   visit_sedb (visited: SEDB) is
      do
         trace_result := False
      end

feature {RUN_TIME_ERROR_INSTRUCTION}
   visit_run_time_error_instruction (visited: RUN_TIME_ERROR_INSTRUCTION) is
      do
         trace_result := False
      end

feature {FAKE_ARGUMENT}
   visit_fake_argument (visited: FAKE_ARGUMENT) is
      do
         trace_result := False
      end
   
feature {C_INLINE}
   visit_c_inline (visited: C_INLINE) is
      do
         if visited.is_c_inline_c then
            trace.append(once "c_inline_c")
         else
            trace.append(once "c_inline_h")
         end
         trace.extend('(')
         trace.append(visited.c_code)
         trace.extend(')')
      end
   
feature {MANIFEST_STRING_INSPECT_STATEMENT}
   visit_manifest_string_inspect_statement (visited: MANIFEST_STRING_INSPECT_STATEMENT) is
      do
         trace_result := False
      end

feature {OTHER_INSPECT_STATEMENT}
   visit_other_inspect_statement (visited: OTHER_INSPECT_STATEMENT) is
      do
         trace_result := False
      end

feature {FUNCTION_CALL_0}
   visit_function_call_0 (visited: FUNCTION_CALL_0) is
      do
         visited.target.accept(Current)
         if trace_result then
            trace.extend('.')
            trace.append(visited.target.resolve_in(type).name.to_string)
            trace.append(visited.feature_stamp.name.to_string)
            trace.append(once "()")
         end
      end

feature {FUNCTION_CALL_1}
   visit_function_call_1 (visited: FUNCTION_CALL_1) is
      do
         visited.target.accept(Current)
         if trace_result then
            trace.extend('.')
            trace.append(visited.target.resolve_in(type).name.to_string)
            trace.append(visited.feature_stamp.name.to_string)
            visited.arguments.accept(Current)
         end
      end

feature {FUNCTION_CALL_N}
   visit_function_call_n (visited: FUNCTION_CALL_N) is
      do
         visited.target.accept(Current)
         if trace_result then
            trace.extend('.')
            trace.append(visited.target.resolve_in(type).name.to_string)
            trace.append(visited.feature_stamp.name.to_string)
            visited.arguments.accept(Current)
         end
      end

feature {PROCEDURE_CALL_0}
   visit_procedure_call_0 (visited: PROCEDURE_CALL_0) is
      do
         visited.target.accept(Current)
         if trace_result then
            trace.extend('.')
            trace.append(visited.target.resolve_in(type).name.to_string)
            trace.append(visited.feature_stamp.name.to_string)
            trace.append(once "()")
         end
      end

feature {PROCEDURE_CALL_1}
   visit_procedure_call_1 (visited: PROCEDURE_CALL_1) is
      do
         visited.target.accept(Current)
         if trace_result then
            trace.extend('.')
            trace.append(visited.target.resolve_in(type).name.to_string)
            trace.append(visited.feature_stamp.name.to_string)
            visited.arguments.accept(Current)
         end
      end

feature {PROCEDURE_CALL_N}
   visit_procedure_call_n (visited: PROCEDURE_CALL_N) is
      do
         visited.target.accept(Current)
         if trace_result then
            trace.extend('.')
            trace.append(visited.target.resolve_in(type).name.to_string)
            trace.append(visited.feature_stamp.name.to_string)
            visited.arguments.accept(Current)
         end
      end

feature {REQUIRE_ASSERTION}
   visit_require_assertion (visited: REQUIRE_ASSERTION) is
      do
         trace_result := False
      end

feature {AGENT_INSTRUCTION}
   visit_agent_instruction (visited: AGENT_INSTRUCTION) is
      do
         trace_result := False
      end

feature {INTEGER_CONSTANT}
   visit_integer_constant (visited: INTEGER_CONSTANT) is
      do
         visited.value_memory.append_in(trace)
      end

feature {FAKE_TARGET}
   visit_fake_target (visited: FAKE_TARGET) is
      do
         trace_result := False
      end

feature {MANIFEST_STRING}
   visit_manifest_string (visited: MANIFEST_STRING) is
      do
         trace_result := False
      end
   
feature {ADDRESS_OF}
   visit_address_of (visited: ADDRESS_OF) is
      do
         trace_result := False
      end

feature {DYNAMIC_DISPATCH_TEMPORARY1}
   visit_dynamic_dispatch_temporary1 (visited: DYNAMIC_DISPATCH_TEMPORARY1) is
      do
         trace.append(once "ddt1@")
         visited.to_pointer.append_in(trace)
      end

feature {DYNAMIC_DISPATCH_TEMPORARY1_ID}
   visit_dynamic_dispatch_temporary1_id (visited: DYNAMIC_DISPATCH_TEMPORARY1_ID) is
      do
         trace_result := False
      end

feature {DYNAMIC_DISPATCH_TEMPORARY2}
   visit_dynamic_dispatch_temporary2 (visited: DYNAMIC_DISPATCH_TEMPORARY2) is
      do
         visited.dynamic_dispatch_temporary1.accept(Current)
      end

feature {CHARACTER_CONSTANT}
   visit_character_constant (visited: CHARACTER_CONSTANT) is
      do
         trace.extend(visited.value)
      end

feature {REAL_CONSTANT}
   visit_real_constant (visited: REAL_CONSTANT) is
      do
         trace.append(visited.normalized_view)
      end

feature {RUN_TIME_ERROR}
   visit_run_time_error (visited: RUN_TIME_ERROR) is
      do
         trace_result := False
      end

feature {VOID_CALL}
   visit_void_call (visited: VOID_CALL) is
      do
         trace_result := False
      end

feature {NULL_POINTER}
   visit_null_pointer (visited: NULL_POINTER) is
      do
         trace.append(once " _NULL ")
      end

feature {INTERNAL_LOCAL2}
   visit_internal_local2 (visited: INTERNAL_LOCAL2) is
      do
         trace.append(once "il2@")
         visited.to_pointer.append_in(trace)
      end

feature {NO_DISPATCH}
   visit_no_dispatch (visited: NO_DISPATCH) is
      do
         trace_result := False
      end

feature {NON_VOID_NO_DISPATCH}
   visit_non_void_no_dispatch (visited: NON_VOID_NO_DISPATCH) is
      do
         trace.append(visited.dynamic_type.name.to_string)
         trace.append(visited.feature_stamp.name.to_string)
      end

feature {AGENT_CREATION}
   visit_agent_creation (visited: AGENT_CREATION) is
      do
         trace_result := False
      end

feature {E_VOID}
   visit_e_void (visited: E_VOID) is
      do
         trace.append(as_void)
      end

feature {FAKE_TUPLE}
   visit_fake_tuple (visited: FAKE_TUPLE) is
      do
         trace_result := False
      end

feature {E_OLD}
   visit_e_old (visited: E_OLD) is
      do
         trace_result := False
      end

feature {IMPLICIT_CURRENT}
   visit_implicit_current (visited: IMPLICIT_CURRENT) is
      do
         if ace.boost then
            trace.append(as_current)
         end
      end

feature {WRITTEN_CURRENT}
   visit_written_current (visited: WRITTEN_CURRENT) is
      do
         trace.append(as_current)
      end

feature {IMPLICIT_CAST}
   visit_implicit_cast (visited: IMPLICIT_CAST) is
      do
         visited.expression.accept(Current)
      end

feature {MANIFEST_TUPLE}
   visit_manifest_tuple (visited: MANIFEST_TUPLE) is
      do
         trace_result := False
      end

feature {RETRY_INSTRUCTION}
   visit_retry_instruction (visited: RETRY_INSTRUCTION) is
      do
         trace_result := False
      end

feature {E_TRUE}
   visit_e_true (visited: E_TRUE) is
      do
         trace.append(fz_true)
      end

feature {E_FALSE}
   visit_e_false (visited: E_FALSE) is
      do
         trace.append(fz_false)
      end

feature {CHECK_COMPOUND}
   visit_check_compound (visited: CHECK_COMPOUND) is
      do
         trace_result := False
      end

feature {}
   visit_call_infix (visited: CALL_INFIX) is
      do
         visited.target.accept(Current)
         if trace_result then
            trace.extend('.')
            trace.append(visited.target.resolve_in(type).name.to_string)
            trace.append(visited.feature_stamp.name.to_string)
            visited.arguments.accept(Current)
         end
      end

feature {CALL_INFIX_PLUS}
   visit_call_infix_plus (visited: CALL_INFIX_PLUS) is
      do
         visit_call_infix(visited)
      end

feature {CALL_INFIX_INT_REM}
   visit_call_infix_int_rem (visited: CALL_INFIX_INT_REM) is
      do
         visit_call_infix(visited)
      end

feature {CALL_INFIX_TIMES}
   visit_call_infix_times (visited: CALL_INFIX_TIMES) is
      do
         visit_call_infix(visited)
      end

feature {CALL_INFIX_XOR}
   visit_call_infix_xor (visited: CALL_INFIX_XOR) is
      do
         visit_call_infix(visited)
      end

feature {CALL_INFIX_IMPLIES}
   visit_call_infix_implies (visited: CALL_INFIX_IMPLIES) is
      do
         trace_result := False
         check
            is_actually_inlined: False
         end
      end

feature {CALL_INFIX_AND_THEN}
   visit_call_infix_and_then (visited: CALL_INFIX_AND_THEN) is
      do
         trace_result := False
         check
            is_actually_inlined: False
         end
      end

feature {CALL_INFIX_OR_ELSE}
   visit_call_infix_or_else (visited: CALL_INFIX_OR_ELSE) is
      do
         trace_result := False
         check
            is_actually_inlined: False
         end
      end

feature {CALL_INFIX_POWER}
   visit_call_infix_power (visited: CALL_INFIX_POWER) is
      do
         visit_call_infix(visited)
      end

feature {CALL_INFIX_DIV}
   visit_call_infix_div (visited: CALL_INFIX_DIV) is
      do
         visit_call_infix(visited)
      end

feature {CALL_INFIX_GT}
   visit_call_infix_gt (visited: CALL_INFIX_GT) is
      do
         visit_call_infix(visited)
      end

feature {CALL_INFIX_FREEOP}
   visit_call_infix_freeop (visited: CALL_INFIX_FREEOP) is
      do
         visit_call_infix(visited)
      end

feature {CALL_INFIX_LT}
   visit_call_infix_lt (visited: CALL_INFIX_LT) is
      do
         visit_call_infix(visited)
      end

feature {CALL_INFIX_INT_DIV}
   visit_call_infix_int_div (visited: CALL_INFIX_INT_DIV) is
      do
         visit_call_infix(visited)
      end

feature {CALL_INFIX_MINUS}
   visit_call_infix_minus (visited: CALL_INFIX_MINUS) is
      do
         visit_call_infix(visited)
      end

feature {CALL_INFIX_AND}
   visit_call_infix_and (visited: CALL_INFIX_AND) is
      do
         visit_call_infix(visited)
      end

feature {CALL_INFIX_OR}
   visit_call_infix_or (visited: CALL_INFIX_OR) is
      do
         visit_call_infix(visited)
      end

feature {CALL_INFIX_GE}
   visit_call_infix_ge (visited: CALL_INFIX_GE) is
      do
         visit_call_infix(visited)
      end

feature {CALL_INFIX_LE}
   visit_call_infix_le (visited: CALL_INFIX_LE) is
      do
         visit_call_infix(visited)
      end

feature {STATIC_CALL_0_C}
   visit_static_call_0_c (visited: STATIC_CALL_0_C) is
      do
         trace_result := False
      end

feature {ASSIGNMENT_TEST}
   visit_assignment_test (visited: ASSIGNMENT_TEST) is
      do
         trace_result := False
      end

feature {GENERATOR_GENERATING_TYPE}
   visit_generator_generating_type (visited: GENERATOR_GENERATING_TYPE) is
      do
         trace_result := False
      end

feature {CREATE_WRITABLE}
   visit_create_writable (visited: CREATE_WRITABLE) is
      do
         trace_result := False
      end

feature {}
   visit_call_prefix (visited: CALL_PREFIX) is
      do
         visited.target.accept(Current)
         if trace_result then
            trace.extend('.')
            trace.append(visited.target.resolve_in(type).name.to_string)
            trace.append(visited.feature_stamp.name.to_string)
         end
      end

feature {CALL_PREFIX_NOT}
   visit_call_prefix_not (visited: CALL_PREFIX_NOT) is
      do
         visit_call_prefix(visited)
      end

feature {CALL_PREFIX_FREEOP}
   visit_call_prefix_freeop (visited: CALL_PREFIX_FREEOP) is
      do
         visit_call_prefix(visited)
      end

feature {CALL_PREFIX_PLUS}
   visit_call_prefix_plus (visited: CALL_PREFIX_PLUS) is
      do
         visit_call_prefix(visited)
      end

feature {CALL_PREFIX_MINUS}
   visit_call_prefix_minus (visited: CALL_PREFIX_MINUS) is
      do
         visit_call_prefix(visited)
      end

feature {EXPRESSION_WITH_COMMENT}
   visit_expression_with_comment (visited: EXPRESSION_WITH_COMMENT) is
      do
         trace_result := False
      end

feature {ARGUMENT_NAME2}
   visit_argument_name2 (visited: ARGUMENT_NAME2) is
      do
         trace.append(visited.to_string)
      end

feature {LOCAL_NAME2}
   visit_local_name2 (visited: LOCAL_NAME2) is
      do
         trace.append(visited.to_string)
      end

feature {OLD_MANIFEST_ARRAY}
   visit_old_manifest_array (visited: OLD_MANIFEST_ARRAY) is
      do
         trace_result := False
      end

feature {MANIFEST_GENERIC}
   visit_manifest_generic (visited: MANIFEST_GENERIC) is
      do
         trace_result := False
      end

feature {RESULT}
   visit_result (visited: RESULT) is
      do
         trace.append(as_result)
      end

feature {WRITABLE_ATTRIBUTE_NAME}
   visit_writable_attribute_name (visited: WRITABLE_ATTRIBUTE_NAME) is
      do
         trace.append(visited.to_string)
      end

feature {CLOSED_OPERAND}
   visit_closed_operand (visited: CLOSED_OPERAND) is
      do
         trace_result := False
      end

feature {AGENT_EXPRESSION}
   visit_agent_expression (visited: AGENT_EXPRESSION) is
      do
         trace_result := False
      end

feature {BUILT_IN_EQ_NEQ}
   visit_built_in_eq_neq (visited: BUILT_IN_EQ_NEQ) is
      do
         trace_result := False
      end

feature {OPEN_OPERAND}
   visit_open_operand (visited: OPEN_OPERAND) is
      do
         trace_result := False
      end

feature {ASSERTION}
   visit_assertion (visited: ASSERTION) is
      do
         trace_result := False
      end

feature {ASSERTION_LIST}
   visit_assertion_list (visited: ASSERTION_LIST) is
      do
         trace_result := False
      end

feature {DEBUG_COMPOUND}
   visit_debug_compound (visited: DEBUG_COMPOUND) is
      do
         trace_result := False
      end

feature {IFTHEN}
   visit_ifthen (visited: IFTHEN) is
      do
         trace_result := False
      end

feature {CREATE_EXPRESSION}
   visit_create_expression (visited: CREATE_EXPRESSION) is
      do
         trace_result := False
      end

feature {CREATE_INSTRUCTION}
   visit_create_instruction (visited: CREATE_INSTRUCTION) is
      do
         trace_result := False
      end

feature {WHEN_CLAUSE}
   visit_when_clause (visited: WHEN_CLAUSE) is
      do
         trace_result := False
      end

feature {UNUSED_EXPRESSION}
   visit_unused_expression (visited: UNUSED_EXPRESSION) is
      do
         visited.expression.accept(Current)
         trace.extend(';')
      end

feature {INSPECT_STATEMENT}
   trace_in (tr: like trace; ty: like type; instruction: INSTRUCTION): BOOLEAN is
         -- In case of a True `Result', there is a possibility that the `instruction' can be indentical to 
         -- some other piece of `instruction' (written somewhere else!).
      require
         smart_eiffel.status.inlining_dynamic_dispatch_done
         tr /= Void
         ty /= Void
         instruction /= Void
      do
         type := ty
         trace := tr
         trace.clear_count
         trace_result := True
         instruction.accept(Current)
         Result := trace_result
      end
   
feature {}
   type: TYPE;
         -- The classic context TYPE.
   
   trace: STRING
         -- The identification `trace' of the INSTRUCTION to traverse.

   trace_result: BOOLEAN
         -- The `Result' of `trace_in'.
   
   make is
      do
      end

invariant
   smart_eiffel.status.inlining_dynamic_dispatch_done

end -- class CODE_COMPARATOR
--
-- ------------------------------------------------------------------------------------------------------------------------------
-- Copyright notice below. Please read.
--
-- SmartEiffel is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License,
-- as published by the Free Software Foundation; either version 2, or (at your option) any later version.
-- SmartEiffel is distributed in the hope that it will be useful but WITHOUT ANY WARRANTY; without even the implied warranty
-- of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details. You should have
-- received a copy of the GNU General Public License along with SmartEiffel; see the file COPYING. If not, write to the Free
-- Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
--
-- Copyright(C) 1994-2002: INRIA - LORIA (INRIA Lorraine) - ESIAL U.H.P.       - University of Nancy 1 - FRANCE
-- Copyright(C) 2003-2004: INRIA - LORIA (INRIA Lorraine) - I.U.T. Charlemagne - University of Nancy 2 - FRANCE
--
-- Authors: Dominique COLNET, Philippe RIBET, Cyril ADRIAN, Vincent CROIZIER, Frederic MERIZEN
--
-- http://SmartEiffel.loria.fr - SmartEiffel@loria.fr
-- ------------------------------------------------------------------------------------------------------------------------------