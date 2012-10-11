-- This file is part of a Liberty Eiffel library.
-- See the full copyright at the end.
--
class CURSES_JOB

inherit
   UI_JOB
      redefine
         application
      end

insert
   NCURSES_HANDLER
   NCURSES_TOOLS

create {USER_INTERFACE}
   connect

feature {LOOP_ITEM}
   prepare (events: EVENTS_SET) is
      local
         t: TIME_EVENTS
      do
         if std_input.is_connected then
            events.expect(std_input.event_can_read)
         end
         events.expect(t.timeout(idle_timeout))
      end

   is_ready (events: EVENTS_SET): BOOLEAN is
      do
         Result := True -- because at least the time out expired
      end

   continue is
      do
         done := not ncurses.handle_events
      end

   done: BOOLEAN

   restart is
      do
         done := False
      end

feature {UI_ITEM}
   new_bridge_application (ui: UI_APPLICATION): CURSES_APPLICATION is
      do
         create Result.make(ui)
         set_idle_timeout(Result.idle_timeout)
         ncurses.set_cursor_visibility(ncurses.invisible_cursor_mode)
         ncurses.set_echoing_policy(False)
         ncurses.when_key_pressed(agent Result.key_pressed)
         ncurses.when_resized(agent Result.resized)
      end

   new_bridge_window (ui: UI_WINDOW): CURSES_WINDOW is
      do
         create Result.make(ui)
      end

   new_bridge_panel (ui: UI_PANEL): CURSES_PANEL is
      do
         create Result.make(ui)
      end

   new_bridge_menu (ui: UI_MENU): CURSES_MENU is
      do
         create Result.make(ui)
      end

   new_bridge_text_field (ui: UI_TEXT_FIELD): CURSES_TEXT_FIELD is
      do
         create Result.make(ui)
      end

   new_bridge_button (ui: UI_BUTTON): CURSES_BUTTON is
      do
         create Result.make(ui)
      end

feature {}
   application: CURSES_APPLICATION
   idle_timeout: INTEGER

   set_idle_timeout (a_timeout: INTEGER) is
      require
         a_timeout > 0
      do
         idle_timeout := a_timeout
         if std_input.is_connected then
            log.trace.put_line(once "setting ncurses poll timeout to 0")
            ncurses.set_poll_timeout(0)
         else
            log.trace.put_line(once "setting ncurses poll timeout to #(1)" # &a_timeout)
            ncurses.set_poll_timeout(a_timeout)
         end
      end

end -- class CURSES_JOB
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
