-- This file is part of a Liberty Eiffel library.
-- See the full copyright at the end.
--
class CLARG_FILE

inherit
   CLARG_WITH_ARG[REGULAR_FILE]

create {COMMAND_LINE_ARGUMENT_FACTORY}
   optional, positional

feature {ANY}
   item: REGULAR_FILE

   is_set: BOOLEAN is
      do
         Result := item /= Void
      end

feature {CLARG_PARSER}
   is_valid_data (arg: STRING): BOOLEAN is
      do
         bd.ensure_system_notation
         if bd.system_notation.is_valid_path(arg) then
            Result := not ft.file_exists(arg) or else not ft.is_directory(arg)
         end
      end

feature {}
   set_data (context: COMMAND_LINE_CONTEXT; arg: STRING) is
      do
         create item.make(arg)
      end

   unset is
      do
         item := Void
      end

   bd: BASIC_DIRECTORY
   ft: FILE_TOOLS

end -- CLARG_FILE
--
-- Copyright (c) 2009 by all the people cited in the AUTHORS file.
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in
-- all copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
-- THE SOFTWARE.