-- This file is part of SmartEiffel The GNU Eiffel Compiler Tools and Libraries.
-- See the Copyright notice at the end of this file.
--
class DEFERRED_FUNCTION

inherit
   DEFERRED_ROUTINE
      redefine specialize_signature_in, specialize_signature_thru
      end

creation {ANY}
   make

creation {ANY}
   from_effective

feature {ANY}
   accept (visitor: DEFERRED_FUNCTION_VISITOR) is
      do
         visitor.visit_deferred_function(Current)
      end

feature {ANY}
   result_type: TYPE_MARK

feature {ANONYMOUS_FEATURE_MIXER}
   specialize_signature_in (new_type: TYPE): like Current is
      local
         args: like arguments
      do
         result_type.specialize_in(new_type)
         if arguments /= Void then
            args := arguments.specialize_in(new_type)
         end
         if args = arguments then
            Result := Current
         else
            Result := twin
            Result.set_arguments(args)
         end
      end

   specialize_signature_thru (parent_type: TYPE; parent_edge: PARENT_EDGE; new_type: TYPE): like Current is
      local
         args: like arguments; rt: like result_type
      do
         rt := result_type.specialize_thru(parent_type, parent_edge, new_type)
         if arguments /= Void then
            args := arguments.specialize_thru(parent_type, parent_edge, new_type)
         end
         if result_type = rt and then args = arguments then
            Result := Current
         else
            Result := twin
            Result.set_arguments(args)
            Result.set_result_type(rt)
         end
      end

feature {DEFERRED_FUNCTION}
   set_result_type (rt: like result_type) is
      require
         rt /= Void
      do
         result_type := rt
      end

feature {}
   make (fa: like arguments; rt: like result_type; om: like obsolete_mark; hc: like header_comment
      ra: like require_assertion) is
      require
         rt /= Void
      do
         make_routine(fa, om, hc, ra)
         result_type := rt
      end

   from_effective (fn: FEATURE_NAME; fa: like arguments; rt: like result_type; ra: like require_assertion
      ea: like ensure_assertion; bc: like class_text; pe: like permissions) is
      do
         feature_text := bc.non_written(fn, Current)
         make(fa, rt, Void, Void, ra)
         permissions := pe
         if ea /= Void then
            set_ensure_assertion(ea)
         end
      end

end -- class DEFERRED_FUNCTION
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