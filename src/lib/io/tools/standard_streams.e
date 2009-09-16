-- See the Copyright notice at the end of this file.
--
class STANDARD_STREAMS
	--
	-- Thanks to this `standard_streams' singleton object, you can redirect `std_input_stream',
	-- `std_output_stream' as well as `std_error_stream'.
	--
	-- See also the examples from our tutorial/io directory.
	--

insert
	SINGLETON
		rename io as any_io,
			std_input as any_std_input,
			std_output as any_std_output,
			std_error as any_std_error
		end

creation {ANY}
	make

feature {ANY}
	std_input: INPUT_STREAM
	
	std_output: OUTPUT_STREAM

	std_error: OUTPUT_STREAM

feature {ANY}
	set_std_input (a_std_input: like std_input) is
		require
			a_std_input.is_connected
		do
			std_input := a_std_input
		end

	restore_std_input is
		do
			set_std_input(any_std_input)
		end

	set_std_output (a_std_output: like std_output) is
		require
			a_std_output.is_connected
		do
			std_output := a_std_output
		end

	restore_std_output is
		do
			set_std_output(any_std_output)
		end

	set_std_error (a_std_error: like std_error) is
		require
			a_std_error.is_connected
		do
			std_error := a_std_error
		end

	restore_std_error is
		do
			set_std_error(any_std_error)
		end

feature {}
	make is
		do
			restore_std_input
			restore_std_output
			restore_std_error
		end

end -- class STANDARD_STREAMS
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