-- See the Copyright notice at the end of this file.
--
deferred class CONNECTION
	--
	-- Handle one connection to the SERVER.
	--

inherit
	JOB

feature {SERVER}
	set_io (a_io: SOCKET_INPUT_OUTPUT_STREAM) is
		require
			a_io.is_connected
		do
			ios := a_io
		ensure
			ios = a_io
		end

feature {LOOP_ITEM}
	prepare (events: EVENTS_SET) is
		do
			events.expect(ios.event_can_read)
		end

	is_ready (events: EVENTS_SET): BOOLEAN is
		do
			Result := events.event_occurred(ios.event_can_read)
		end

	done: BOOLEAN is
		do
			Result := not ios.is_connected
		end

	restart is
		do
			-- cannot restart a connection
			--|*** (the postcondition will not be respected, how can I do otherwise? Philippe?)
		end

feature {}
	ios: SOCKET_INPUT_OUTPUT_STREAM

end -- class CONNECTION
--
-- ------------------------------------------------------------------------------------------------------------
-- Copyright notice below. Please read.
--
-- This file is part of the SmartEiffel standard library.
-- Copyright(C) 1994-2002: INRIA - LORIA (INRIA Lorraine) - ESIAL U.H.P.       - University of Nancy 1 - FRANCE
-- Copyright(C) 2003-2006: INRIA - LORIA (INRIA Lorraine) - I.U.T. Charlemagne - University of Nancy 2 - FRANCE
--
-- Authors: Dominique COLNET, Philippe RIBET, Cyril ADRIAN, Vincent CROIZIER, Frederic MERIZEN
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
-- documentation files (the "Software"), to deal in the Software without restriction, including without
-- limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
-- the Software, and to permit persons to whom the Software is furnished to do so, subject to the following
-- conditions:
--
-- The above copyright notice and this permission notice shall be included in all copies or substantial
-- portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT
-- LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO
-- EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
-- AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE
-- OR OTHER DEALINGS IN THE SOFTWARE.
--
-- http://SmartEiffel.loria.fr - SmartEiffel@loria.fr
-- ------------------------------------------------------------------------------------------------------------