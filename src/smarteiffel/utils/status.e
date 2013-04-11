-- This file is part of Liberty Eiffel The GNU Eiffel Compiler Tools and Libraries.
-- See the Copyright notice at the end of this file.
--
class STATUS
   --
   -- Management of the SmartEiffel's status: the different phases of the compilation process.
   --

insert
   GLOBALS
      undefine is_equal
      end
   SINGLETON

create {SMART_EIFFEL}
   make

feature {} -- Visitable attributes:
   phase: INTEGER
         -- The compilation process reaches different phases which are described below.

   safety_check_state: INTEGER
         -- Either `safety_check_not_done', `safety_check_failed', `safety_check_ok'

   specializing_type_memory: like specializing_type

   phase_stack: like internal_phase_stack is
         -- Stacked phases. Changing this array will not change the internal saved phases (hence, don't do
         -- it, it's useless).
         -- The top of the stack is the last element. RETURNS A ONCE OBJECT.
      do
         Result := visitable_phase_stack
         Result.from_collection(internal_phase_stack)
      end

feature {}
   -- Numbering of following constants is important, see documentation below:
   getting_started:            INTEGER is 1
   specializing_one_type:      INTEGER is 2
   specializing_2:             INTEGER is 3
   collecting_features:        INTEGER is 4
   inlining_dynamic_dispatch:  INTEGER is 5
   adapting_features:          INTEGER is 6
   safety_checking:            INTEGER is 7
   generating:                 INTEGER is 8
   done:                       INTEGER is 9
   safety_check_not_done:      INTEGER is 10
   safety_check_ok:            INTEGER is 11
   safety_check_failed:        INTEGER is 12

feature {}
   -- The known phases (in somewhat chronological order)
   --
   -- `getting_started'
   -- The root class, and the classes it directly uses are being loaded.
   --
   -- `specializing_one_type'
   -- Particular phase when one type is being created (and specialized). This include `specialize_in' and
   -- `specialize_thru' but not `specialize_2'.
   --
   -- `specializing_2'
   -- Particular phase when `specialize_2' is being performed on one type. After this phase, `resolve_in'
   -- can be used on the `type'.
   --
   -- `collecting_features'
   -- The collect process has just started. During this process, all call sites are considered again in
   -- order to know more about effective definitions of deferred features or redefinitions. During this
   -- phase, because new code may be considered, we are not aware of all types which may be created at
   -- run-time.
   -- During this phase, each type and each feature have their own agenda.
   -- Type agenda:
   --     1. create it by importing all its known features. That's what we call "specialization". See the
   --     `specializing' phase.
   --     2. collecting
   -- Feature agenda:
   --     1. get specialized via the type agenda
   --     2. register all the call sites, creation sites and so on which denote live types; at this time,
   --     more types and more features will be considered.
   -- At the end of this phase, all the live types must be known. Then, and only then, does the compiler
   -- start the next phase: adaptation and code generation.
   --
   -- `inlining_dynamic_dispatch'
   -- All feature calls are replaced by monomorphic calls and dynamic
   -- dispatch is implemented with ordinary inspect instructon.
   --
   -- `adapting_features'
   -- The adapt process has just started. The goal of this step is to create the RUN_FEATUREs with
   -- tailored semantic trees (adapted against each possible type of `Current').
   --
   -- `safety_checking'
   -- The whole system analysis for the final safety check has just started but is not yet finished.
   --
   -- `generating'
   -- The system is generating the code.
   --
   -- `done'
   -- The system has finished the compilation
   --
   -- `safety_check_not_done'
   -- The safety check test has not been performed (because of the compilation mode for example, or
   -- not yet); so, we do not know if the system is safe or not.
   --
   -- `safety_check_ok'
   -- The whole system analysis is finished and the system is type safe!  Great!
   --
   -- `safety_check_failed'
   -- The system is _not_ type safe (i.e. some dangerous covariant redefinitions are used and the user
   -- has got warnings).
   --


feature {} -- State change support
   visitable_phase_stack: FAST_ARRAY[INTEGER] is
         -- Used by visitors getting the `phase_stack': security trick not to let the visitor modify the stack.
         --|*** Not used internally: will not be compiled in the normal tools
      once
         create Result.with_capacity(2)
      end

   internal_phase_stack: FAST_ARRAY[INTEGER] is
         -- Keeps the previous phases in a stack. Required by the special "specializing" phases.
      once
         create Result.with_capacity(2)
      end

   set_phase (p: like phase) is
      require
         p > getting_started and then p <= done
         internal_phase_stack.is_empty
      do
         phase := p
      end

   push_phase (p: like phase) is
      require
         p > getting_started and then p <= done
      do
         internal_phase_stack.add_last(phase)
         phase := p
      end

   pop_phase is
      require
         not internal_phase_stack.is_empty
      do
         phase := internal_phase_stack.last
         internal_phase_stack.remove_last
      end

feature {FEATURE_ACCUMULATOR}
   start_specializing (t: TYPE) is
      require
         is_collecting
      do
         specializing_type_memory := t
         push_phase(specializing_one_type)
      ensure
         specializing_type = t
         is_specializing
      end

   end_specializing (t: TYPE) is
      require
         is_specializing
         specializing_type = t
      do
         pop_phase
      ensure
         is_collecting
      end

   start_specializing_2 (t: TYPE) is
      require
         is_specializing
         specializing_type = t
      do
         push_phase(specializing_2)
      ensure
         is_specializing_2
      end

   end_specializing_2 (t: TYPE) is
      require
         is_specializing_2
         specializing_type = t
      do
         pop_phase
      ensure
         is_specializing
      end

feature {CODE_PRINTER}
   set_generating is
      require
         is_safety_checking
      do
         set_phase(generating)
      ensure
         is_generating
      end

feature {SMART_EIFFEL}
   set_collecting is
      require
         is_getting_started or else collecting_done and not is_adapting
      do
         set_phase(collecting_features)
         collecting_done := False
      ensure
         is_collecting
      end

   set_collecting_done is
      require
         not collecting_done
      do
         collecting_done := True
      ensure
         collecting_done
      end

   set_inlining_dynamic_dispatch is
      require
         collecting_done and not is_adapting
      do
         set_phase(inlining_dynamic_dispatch)
         inlining_dynamic_dispatch_done := False
      ensure
         is_inlining_dynamic_dispatch
      end

   set_inlining_dynamic_dispatch_done is
      require
         not inlining_dynamic_dispatch_done
      do
         inlining_dynamic_dispatch_done := True
      ensure
         inlining_dynamic_dispatch_done
      end

   set_adapting is
      require
         is_collecting
      do
         set_phase(adapting_features)
      ensure
         is_adapting
      end

   set_safety_checking is
      require
         is_adapting
      do
         set_phase(safety_checking)
      ensure
         is_safety_checking
      end

   set_safety_check_ok is
      require
         is_safety_checking
      do
         check
            safety_check_state = safety_check_not_done
         end
         safety_check_state := safety_check_ok
      end

   set_safety_check_failed is
      require
         is_safety_checking
      do
         check
            safety_check_state = safety_check_not_done
         end
         safety_check_state := safety_check_failed
      end

feature {SMART_EIFFEL}
   info is
      do
         inspect
            safety_check_state
         when safety_check_failed then
            error_handler.append(once "The system is not type safe (read previous warnings carefully).")
            error_handler.print_as_warning
         when safety_check_not_done then
            echo.put_string(once "Type-system safety check not performed in this mode%N(use the -safety_check flag).%N")
         when safety_check_ok then
            echo.put_string(once "The system is type safe.%N")
         end
      end

feature {ANY} -- State checking
   specializing_type: TYPE is
      require
         is_specializing or else is_specializing_2
      do
         Result := specializing_type_memory
      end

   is_getting_started: BOOLEAN is
         -- True if the system has just started gathering the first types from the given root
      do
         Result := phase = getting_started
      end

   is_analyzing: BOOLEAN is
         -- True if the system is being analyzed (making live types, run features and so on)
      do
         Result := phase <= adapting_features
      end

   is_collecting: BOOLEAN is
         -- True if the system is being collected
      do
         Result := phase < adapting_features
      end

   is_inlining_dynamic_dispatch: BOOLEAN is
      do
         Result := phase = inlining_dynamic_dispatch
      end

   is_adapting: BOOLEAN is
         -- True if the system is being tailored (before code production)
      do
         Result := phase = adapting_features
      end

   is_specializing: BOOLEAN is
         -- True if the system is creating one new type
      do
         Result := phase = specializing_one_type
      end

   is_specializing_2: BOOLEAN is
         -- True if the system is calling `specialize_2' on the newly created type
      do
         Result := phase = specializing_2
      end

   is_safety_checking: BOOLEAN is
         -- True if the system is currently being safety-checked
      do
         Result := phase = safety_checking
      end

   collecting_done: BOOLEAN
         -- Indicates that we have performed all `collect' cycles (i.e. we have gathered a super-set
         -- of the live code).

   inlining_dynamic_dispatch_done: BOOLEAN
         -- Indicates that all calls are now monomorphic (i.e. dynamic dispatch is implemented with
         -- inspect instructions).

   safety_check_done: BOOLEAN is
      do
         Result := safety_check_state /= safety_check_not_done
      end

   is_generating: BOOLEAN is
         -- True if the system is generating the code.
      do
         Result := phase = generating
      end

   is_done: BOOLEAN is
         -- True if the system has finished the compilation.
      do
         Result := phase = done
      end

feature {} -- The constructor
   make is
      do
         phase := getting_started
         safety_check_state := safety_check_not_done
      end

invariant
   valid_phase: phase.in_range(getting_started, done)

   valid_safety_check_state: safety_check_state.in_range(safety_check_not_done, safety_check_failed)

   valid_state_stack: (not is_specializing and then not is_specializing_2) = internal_phase_stack.is_empty

end -- class STATUS
--
-- ------------------------------------------------------------------------------------------------------------------------------
-- Copyright notice below. Please read.
--
-- Liberty Eiffel is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License,
-- as published by the Free Software Foundation; either version 2, or (at your option) any later version.
-- Liberty Eiffel is distributed in the hope that it will be useful but WITHOUT ANY WARRANTY; without even the implied warranty
-- of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details. You should have
-- received a copy of the GNU General Public License along with Liberty Eiffel; see the file COPYING. If not, write to the Free
-- Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
--
-- Copyright(C) 2011-2012: Cyril ADRIAN, Paolo REDAELLI
--
-- http://liberty-eiffel.blogspot.com - https://github.com/LibertyEiffel/Liberty
--
--
-- Liberty Eiffel is based on SmartEiffel (Copyrights below)
--
-- Copyright(C) 1994-2002: INRIA - LORIA (INRIA Lorraine) - ESIAL U.H.P.       - University of Nancy 1 - FRANCE
-- Copyright(C) 2003-2006: INRIA - LORIA (INRIA Lorraine) - I.U.T. Charlemagne - University of Nancy 2 - FRANCE
--
-- Authors: Dominique COLNET, Philippe RIBET, Cyril ADRIAN, Vincent CROIZIER, Frederic MERIZEN
--
-- ------------------------------------------------------------------------------------------------------------------------------
