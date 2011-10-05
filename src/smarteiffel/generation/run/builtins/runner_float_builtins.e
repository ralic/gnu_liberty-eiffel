-- This file is part of SmartEiffel The GNU Eiffel Compiler Tools and Libraries.
-- See the Copyright notice at the end of this file.
--
class RUNNER_FLOAT_BUILTINS[E_ -> FLOAT]
   --
   -- a collection of builtins for FLOAT
   --

inherit
   RUNNER_TYPED_BUILTINS[E_]

create {RUNNER_MEMORY}
   make

feature {RUNNER_MEMORY}
   new (processor: RUNNER_PROCESSOR): RUNNER_OBJECT is
      do
         check
            False
         end
      end

feature {RUNNER_UNTYPED_BUILTINS}
   call_ (processor: RUNNER_PROCESSOR): BOOLEAN is
      do
         inspect
            processor.current_frame.rf.name.to_string
         when "<" then
            builtin_infix_lt(processor)
            Result := True
         when "<=" then
            builtin_infix_le(processor)
            Result := True
         when ">" then
            builtin_infix_gt(processor)
            Result := True
         when ">=" then
            builtin_infix_ge(processor)
            Result := True
         else
            check
               not Result
            end
         end
      end

feature {}
   builtin_infix_divide (processor: RUNNER_PROCESSOR) is
      do
         set_return(processor, left(processor).item / right(processor).item)
      end

   builtin_infix_lt (processor: RUNNER_PROCESSOR) is
      do
         processor.current_frame.set_return(processor.new_boolean(left(processor).item < right(processor).item))
      end

   builtin_infix_le (processor: RUNNER_PROCESSOR) is
      do
         processor.current_frame.set_return(processor.new_boolean(left(processor).item <= right(processor).item))
      end

   builtin_infix_gt (processor: RUNNER_PROCESSOR) is
      do
         processor.current_frame.set_return(processor.new_boolean(left(processor).item > right(processor).item))
      end

   builtin_infix_ge (processor: RUNNER_PROCESSOR) is
      do
         processor.current_frame.set_return(processor.new_boolean(left(processor).item >= right(processor).item))
      end

feature {}
   make (a_type: like type) is
      require
         a_type /= Void
      do
         type := a_type
      ensure
         type = a_type
      end

   type: TYPE

end -- class RUNNER_FLOAT_BUILTINS
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
