-- This file is part of a Liberty Eiffel library.
-- See the full copyright at the end.
--
deferred class WEB_ITEM[UI_ -> UI_ITEM]

insert
   UI_TYPED_BRIDGE_ITEM[WEB_JOB]

feature {ANY}
   ui: UI_

feature {UI_JOB}
   connect_to (a_job: like job) is
      do
         job := a_job
      end

feature {}
   make (a_ui: like ui) is
      require
         a_ui /= Void
      do
         ui := a_ui
      ensure
         ui = a_ui
      end

   job: WEB_JOB

invariant
   ui /= Void

end -- class WEB_ITEM
--
-- Copyright (c) 2012 Cyril ADRIAN <cyril.adrian@gmail.com>.
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
