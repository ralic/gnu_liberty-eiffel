-- This file is part of SmartEiffel The GNU Eiffel Compiler Tools and Libraries.
-- See the Copyright notice at the end of this file.
--
class TEST_INPUT_STREAM2

insert
	EIFFELTEST_TOOLS
	SYSTEM
	DIRECTORY_NOTATION_HANDLER

creation {ANY}
	make

feature {}
	make is
		local
			text_file_read: TEXT_FILE_READ
		do
			create text_file_read.connect_to("aux_input_stream2.txt")
			assert(text_file_read.is_connected)
			text_file_read.read_integer
			assert(text_file_read.end_of_input)
			assert(text_file_read.valid_last_integer)
			assert(text_file_read.last_integer = 5)
			text_file_read.read_character
			assert(text_file_read.end_of_input)
			text_file_read.disconnect
		end

end -- class TEST_INPUT_STREAM2
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
-- Copyright(C) 2003-2006: INRIA - LORIA (INRIA Lorraine) - I.U.T. Charlemagne - University of Nancy 2 - FRANCE
--
-- Authors: Dominique COLNET, Philippe RIBET, Cyril ADRIAN, Vincent CROIZIER, Frederic MERIZEN
--
-- http://SmartEiffel.loria.fr - SmartEiffel@loria.fr
-- ------------------------------------------------------------------------------------------------------------------------------
