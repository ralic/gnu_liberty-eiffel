-- This file is part of SmartEiffel The GNU Eiffel Compiler Tools and Libraries.
-- See the Copyright notice at the end of this file.
--
class TUPLE_STRING_POOL
   -- This implementation of the STRING_POOL uses tuples to represent the
   -- automaton transitions. It is highly specialized for
   -- MANIFEST_STRING_POOL and should not be used for anything else.

inherit
   STRING_POOL
      export {MANIFEST_STRING_INSPECTOR} maxstate, unknown_state, tag_state
      end

creation {ANY}
   from_collection

feature {} -- State management:
   make_transitions_array is
      local
         i: INTEGER
      do
         if transitions = Void then
            create transitions.make(maxstate + 2)
         else
            transitions.make(maxstate + 2)
         end
         from
            i := transitions.upper
         until
            i < transitions.lower
         loop
            transitions.put(create {LINKED_LIST[TUPLE[CHARACTER, INTEGER]]}.make, i)
            i := i - 1
         end
      end

   set_state (new_state, previous_state: INTEGER; character: CHARACTER) is
      do
         transition(previous_state).add_last([character, new_state])
         debug
            io.put_string(once "set_state(")
            io.put_integer(new_state)
            io.put_string(once ", ")
            io.put_integer(previous_state)
            io.put_string(once ", '")
            io.put_character(character)
            io.put_string(once "')%N")
         end
      end

feature {MANIFEST_STRING_INSPECTOR}
   state (previous_state: INTEGER; character: CHARACTER): INTEGER is
      local
         i: INTEGER; l: like transition
      do
         l := transition(previous_state)
         from
            Result := unknown_state
            i := l.lower
         until
            Result /= unknown_state or else i > l.upper
         loop
            if l.item(i).first = character then
               Result := l.item(i).second
            end
            i := i + 1
         end
      end

   state_empty: INTEGER is
      require
         has_empty
      do
         Result := empty_idx
      end

   transition (previous_state: INTEGER): LINKED_LIST[TUPLE[CHARACTER, INTEGER]] is
      require
         previous_state.in_range(unknown_state, maxstate)
      do
         Result := transitions.item(previous_state + 1)
      end

   capacity: INTEGER is
      do
         Result := transitions.capacity
      end

   external_state (internal_state: INTEGER): INTEGER is
      do
         Result := tag_state.fast_at(internal_state)
      end

feature {}
   transitions: FAST_ARRAY[LINKED_LIST[TUPLE[CHARACTER, INTEGER]]]
         -- dim: old index
         -- tuples: character, new index

end -- class TUPLE_STRING_POOL
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