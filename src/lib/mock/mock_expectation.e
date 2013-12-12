-- This file is part of a Liberty Eiffel library.
-- See the full copyright at the end.
--
deferred class MOCK_EXPECTATION

insert
   ANY
      redefine
         default_create
      end

feature {ANY}
   default_create is
      do
         if counter = Void then
            create counter.set_item(1)
         end
      end

feature {ANY}
   times (how_many: INTEGER): like Current is
      do
         counter.set_item(how_many)
         Result := Current
      ensure
         Result = Current
         counter.item = how_many
      end

   done is
      do
         -- just to finish the expectation call chain, if there is no side effect
      end

feature {MOCK_EXPECT}
   counter: COUNTER

invariant
   counter /= Void

end -- class MOCK_EXPECTATION
--
-- Copyright (c) 2013 Cyril ADRIAN <cyril.adrian@gmail.com>
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
