indexing
	description: "."
	copyright: "[
					Copyright (C) 2007 $EWLC_developer, $original_copyright_holder
					
					This library is free software; you can redistribute it and/or
					modify it under the terms of the GNU Lesser General Public License
					as published by the Free Software Foundation; either version 2.1 of
					the License, or (at your option) any later version.
					
					This library is distributed in the hopeOA that it will be useful, but
					WITHOUT ANY WARRANTY; without even the implied warranty of
					MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
					Lesser General Public License for more details.

					You should have received a copy of the GNU Lesser General Public
					License along with this library; if not, write to the Free Software
					Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
					02110-1301 USA
			]"

	wrapped_version: "2.0.1"

class GTK_SOURCE_BUFFER

inherit
	(SHARED_?)C_STRUCT

insert
	GTK_SOURCE_BUFFER_EXTERNALS

create {ANY} make, from_external_pointer

feature {} -- Creation

	--   Link: GtkSourceView 2 Reference Manual (start)
	--   Link: API reference (parent)
	--   Link: API reference (previous)
	--   Link: Searching in a GtkSourceBuffer (next)
	--   Link: API reference (reference)
	--   Link: Syntax highlighting reference (reference)
	--
	--   Prev     Up     Home         GtkSourceView 2 Reference Manual      Next
	--   Top  |  Description  |  Object Hierarchy  |  Properties  |  Signals
	--
	--   GtkSourceBuffer
	--
	--   GtkSourceBuffer -- Text buffer object for GtkSourceView
	--
	--Synopsis
	--
	--
	-- #include <gtksourceview/gtksourcebuffer.h>
	--
	--
	--                     GtkSourceBuffer;
	--                     GtkSourceBufferClass;
	-- GtkSourceBuffer*    gtk_source_buffer_new               (GtkTextTagTable *table);
	-- GtkSourceBuffer*    gtk_source_buffer_new_with_language (GtkSourceLanguage *language);
	-- void                gtk_source_buffer_set_highlight_syntax
	--                                                         (GtkSourceBuffer *buffer,
	--                                                          gboolean highlight);
	-- gboolean            gtk_source_buffer_get_highlight_syntax
	--                                                         (GtkSourceBuffer *buffer);
	-- void                gtk_source_buffer_set_language      (GtkSourceBuffer *buffer,
	--                                                          GtkSourceLanguage *language);
	-- GtkSourceLanguage*  gtk_source_buffer_get_language      (GtkSourceBuffer *buffer);
	-- void                gtk_source_buffer_set_highlight_matching_brackets
	--                                                         (GtkSourceBuffer *buffer,
	--                                                          gboolean highlight);
	-- gboolean            gtk_source_buffer_get_highlight_matching_brackets
	--                                                         (GtkSourceBuffer *buffer);
	-- void                gtk_source_buffer_set_style_scheme  (GtkSourceBuffer *buffer,
	--                                                          GtkSourceStyleScheme *scheme);
	-- GtkSourceStyleScheme* gtk_source_buffer_get_style_scheme
	--                                                         (GtkSourceBuffer *buffer);
	-- gint                gtk_source_buffer_get_max_undo_levels
	--                                                         (GtkSourceBuffer *buffer);
	-- void                gtk_source_buffer_set_max_undo_levels
	--                                                         (GtkSourceBuffer *buffer,
	--                                                          gint max_undo_levels);
	-- void                gtk_source_buffer_redo              (GtkSourceBuffer *buffer);
	-- void                gtk_source_buffer_undo              (GtkSourceBuffer *buffer);
	-- gboolean            gtk_source_buffer_can_redo          (GtkSourceBuffer *buffer);
	-- gboolean            gtk_source_buffer_can_undo          (GtkSourceBuffer *buffer);
	-- void                gtk_source_buffer_begin_not_undoable_action
	--                                                         (GtkSourceBuffer *buffer);
	-- void                gtk_source_buffer_end_not_undoable_action
	--                                                         (GtkSourceBuffer *buffer);
	-- void                gtk_source_buffer_ensure_highlight  (GtkSourceBuffer *buffer,
	--                                                          const GtkTextIter *start,
	--                                                          const GtkTextIter *end);
	--
	--
	--Object Hierarchy
	--
	--
	--   GObject
	--    +----GtkTextBuffer
	--          +----GtkSourceBuffer
	--
	--Properties
	--
	--
	--   "can-redo"                 gboolean              : Read
	--   "can-undo"                 gboolean              : Read
	--   "highlight-matching-brackets" gboolean              : Read / Write
	--   "highlight-syntax"         gboolean              : Read / Write
	--   "language"                 GtkSourceLanguage     : Read / Write
	--   "max-undo-levels"          gint                  : Read / Write
	--   "style-scheme"             GtkSourceStyleScheme  : Read / Write
	--
	--Signals
	--
	--
	--   "highlight-updated"                              : Run Last
	--
	--Description
	--
	--   The GtkSourceBuffer object is the model for GtkSourceView widgets. It
	--   extends the GtkTextBuffer object by adding features necessary to display
	--   and edit source code: syntax highlighting, bracket matching and markers.
	--   It also implements support for undo/redo operations.
	--
	--   To create a GtkSourceBuffer use gtk_source_buffer_new() or
	--   gtk_source_buffer_new_with_language(). The second form is just a
	--   convenience function which allows you to initially set a
	--   GtkSourceLanguage.
	--
	--   By default highlighting is enabled, but you can disable it with
	--   gtk_source_buffer_set_highlight().
	--
	--Details
	--
	--  GtkSourceBuffer
	--
	-- typedef struct _GtkSourceBuffer GtkSourceBuffer;
	--
	--   --------------------------------------------------------------------------
	--
	--  GtkSourceBufferClass
	--
	-- typedef struct {
	--         GtkTextBufferClass parent_class;
	--
	--         /* Padding for future expansion */
	--         void (*_gtk_source_reserved1) (void);
	--         void (*_gtk_source_reserved2) (void);
	--         void (*_gtk_source_reserved3) (void);
	--         void (*_gtk_source_reserved4) (void);
	--         void (*_gtk_source_reserved5) (void);
	--         void (*_gtk_source_reserved6) (void);
	-- } GtkSourceBufferClass;
	--
	--   --------------------------------------------------------------------------
	--
	--  gtk_source_buffer_new ()
	--
	-- GtkSourceBuffer*    gtk_source_buffer_new               (GtkTextTagTable *table);
	--
	--   Creates a new source buffer.
	--
	--   table :   a GtkTextTagTable, or NULL to create a new one.
	--   Returns : a new source buffer.
	--
	--   --------------------------------------------------------------------------
	--
	--  gtk_source_buffer_new_with_language ()
	--
	-- GtkSourceBuffer*    gtk_source_buffer_new_with_language (GtkSourceLanguage *language);
	--
	--   Creates a new source buffer using the highlighting patterns in language.
	--   This is equivalent to creating a new source buffer with a new tag table
	--   and then calling gtk_source_buffer_set_language().
	--
	--   language : a GtkSourceLanguage.
	--   Returns :  a new source buffer which will highlight text according to the
	--              highlighting patterns in language.
	--
	--   --------------------------------------------------------------------------
	--
	--  gtk_source_buffer_set_highlight_syntax ()
	--
	-- void                gtk_source_buffer_set_highlight_syntax
	--                                                         (GtkSourceBuffer *buffer,
	--                                                          gboolean highlight);
	--
	--   Controls whether syntax is highlighted in the buffer. If highlight is
	--   TRUE, the text will be highlighted according to the syntax patterns
	--   specified in the language set with gtk_source_buffer_set_language(). If
	--   highlight is FALSE, syntax highlighting is disabled and all the GtkTextTag
	--   objects that have been added by the syntax highlighting engine are removed
	--   from the buffer.
	--
	--   buffer :    a GtkSourceBuffer.
	--   highlight : TRUE to enable syntax highlighting, FALSE to disable it.
	--
	--   --------------------------------------------------------------------------
	--
	--  gtk_source_buffer_get_highlight_syntax ()
	--
	-- gboolean            gtk_source_buffer_get_highlight_syntax
	--                                                         (GtkSourceBuffer *buffer);
	--
	--   Determines whether syntax highlighting is activated in the source buffer.
	--
	--   buffer :  a GtkSourceBuffer.
	--   Returns : TRUE if syntax highlighting is enabled, FALSE otherwise.
	--
	--   --------------------------------------------------------------------------
	--
	--  gtk_source_buffer_set_language ()
	--
	-- void                gtk_source_buffer_set_language      (GtkSourceBuffer *buffer,
	--                                                          GtkSourceLanguage *language);
	--
	--   Associate a GtkSourceLanguage with the source buffer. If language is
	--   not-NULL and syntax highlighting is enabled (see
	--   gtk_source_buffer_set_highlight()), the syntax patterns defined in
	--   language will be used to highlight the text contained in the buffer. If
	--   language is NULL, the text contained in the buffer is not highlighted.
	--
	--   The buffer holds a reference to language.
	--
	--   buffer :   a GtkSourceBuffer.
	--   language : a GtkSourceLanguage to set, or NULL.
	--
	--   --------------------------------------------------------------------------
	--
	--  gtk_source_buffer_get_language ()
	--
	-- GtkSourceLanguage*  gtk_source_buffer_get_language      (GtkSourceBuffer *buffer);
	--
	--   Returns the GtkSourceLanguage associated with the buffer, see
	--   gtk_source_buffer_set_language(). The returned object should not be
	--   unreferenced by the user.
	--
	--   buffer :  a GtkSourceBuffer.
	--   Returns : GtkSourceLanguage associated with the buffer, or NULL.
	--
	--   --------------------------------------------------------------------------
	--
	--  gtk_source_buffer_set_highlight_matching_brackets ()
	--
	-- void                gtk_source_buffer_set_highlight_matching_brackets
	--                                                         (GtkSourceBuffer *buffer,
	--                                                          gboolean highlight);
	--
	--   Controls the bracket match highlighting function in the buffer. If
	--   activated, when you position your cursor over a bracket character (a
	--   parenthesis, a square bracket, etc.) the matching opening or closing
	--   bracket character will be highlighted. You can specify the style with the
	--   gtk_source_buffer_set_bracket_match_style() function.
	--
	--   buffer :    a GtkSourceBuffer.
	--   highlight : TRUE if you want matching brackets highlighted.
	--
	--   --------------------------------------------------------------------------
	--
	--  gtk_source_buffer_get_highlight_matching_brackets ()
	--
	-- gboolean            gtk_source_buffer_get_highlight_matching_brackets
	--                                                         (GtkSourceBuffer *buffer);
	--
	--   Determines whether bracket match highlighting is activated for the source
	--   buffer.
	--
	--   buffer :  a GtkSourceBuffer.
	--   Returns : TRUE if the source buffer will highlight matching brackets.
	--
	--   --------------------------------------------------------------------------
	--
	--  gtk_source_buffer_set_style_scheme ()
	--
	-- void                gtk_source_buffer_set_style_scheme  (GtkSourceBuffer *buffer,
	--                                                          GtkSourceStyleScheme *scheme);
	--
	--   Sets style scheme used by the buffer.
	--
	--   buffer : a GtkSourceBuffer.
	--   scheme : style scheme.
	--
	--   --------------------------------------------------------------------------
	--
	--  gtk_source_buffer_get_style_scheme ()
	--
	-- GtkSourceStyleScheme* gtk_source_buffer_get_style_scheme
	--                                                         (GtkSourceBuffer *buffer);
	--
	--   Returns the GtkSourceStyleScheme currently used in buffer.
	--
	--   buffer :  a GtkSourceBuffer.
	--   Returns : the GtkSourceStyleScheme set by
	--             gtk_source_buffer_set_style_scheme(), or NULL.
	--
	--   --------------------------------------------------------------------------
	--
	--  gtk_source_buffer_get_max_undo_levels ()
	--
	-- gint                gtk_source_buffer_get_max_undo_levels
	--                                                         (GtkSourceBuffer *buffer);
	--
	--   Determines the number of undo levels the buffer will track for buffer
	--   edits.
	--
	--   buffer :  a GtkSourceBuffer.
	--   Returns : the maximum number of possible undo levels or -1 if no limit is
	--             set.
	--
	--   --------------------------------------------------------------------------
	--
	--  gtk_source_buffer_set_max_undo_levels ()
	--
	-- void                gtk_source_buffer_set_max_undo_levels
	--                                                         (GtkSourceBuffer *buffer,
	--                                                          gint max_undo_levels);
	--
	--   Sets the number of undo levels for user actions the buffer will track. If
	--   the number of user actions exceeds the limit set by this function, older
	--   actions will be discarded.
	--
	--   If max_undo_levels is -1, no limit is set.
	--
	--   A new action is started whenever the function
	--   gtk_text_buffer_begin_user_action() is called. In general, this happens
	--   whenever the user presses any key which modifies the buffer, but the undo
	--   manager will try to merge similar consecutive actions, such as multiple
	--   character insertions into one action. But, inserting a newline does start
	--   a new action.
	--
	--   buffer :          a GtkSourceBuffer.
	--   max_undo_levels : the desired maximum number of undo levels.
	--
	--   --------------------------------------------------------------------------
	--
	--  gtk_source_buffer_redo ()
	--
	-- void                gtk_source_buffer_redo              (GtkSourceBuffer *buffer);
	--
	--   Redoes the last undo operation. Use gtk_source_buffer_can_redo() to check
	--   whether a call to this function will have any effect.
	--
	--   buffer : a GtkSourceBuffer.
	--
	--   --------------------------------------------------------------------------
	--
	--  gtk_source_buffer_undo ()
	--
	-- void                gtk_source_buffer_undo              (GtkSourceBuffer *buffer);
	--
	--   Undoes the last user action which modified the buffer. Use
	--   gtk_source_buffer_can_undo() to check whether a call to this function will
	--   have any effect.
	--
	--   Actions are defined as groups of operations between a call to
	--   gtk_text_buffer_begin_user_action() and gtk_text_buffer_end_user_action(),
	--   or sequences of similar edits (inserts or deletes) on the same line.
	--
	--   buffer : a GtkSourceBuffer.
	--
	--   --------------------------------------------------------------------------
	--
	--  gtk_source_buffer_can_redo ()
	--
	-- gboolean            gtk_source_buffer_can_redo          (GtkSourceBuffer *buffer);
	--
	--   Determines whether a source buffer can redo the last action (i.e. if the
	--   last operation was an undo).
	--
	--   buffer :  a GtkSourceBuffer.
	--   Returns : TRUE if a redo is possible.
	--
	--   --------------------------------------------------------------------------
	--
	--  gtk_source_buffer_can_undo ()
	--
	-- gboolean            gtk_source_buffer_can_undo          (GtkSourceBuffer *buffer);
	--
	--   Determines whether a source buffer can undo the last action.
	--
	--   buffer :  a GtkSourceBuffer.
	--   Returns : TRUE if it's possible to undo the last action.
	--
	--   --------------------------------------------------------------------------
	--
	--  gtk_source_buffer_begin_not_undoable_action ()
	--
	-- void                gtk_source_buffer_begin_not_undoable_action
	--                                                         (GtkSourceBuffer *buffer);
	--
	--   Marks the beginning of a not undoable action on the buffer, disabling the
	--   undo manager. Typically you would call this function before initially
	--   setting the contents of the buffer (e.g. when loading a file in a text
	--   editor).
	--
	--   You may nest gtk_source_buffer_begin_not_undoable_action() /
	--   gtk_source_buffer_end_not_undoable_action() blocks.
	--
	--   buffer : a GtkSourceBuffer.
	--
	--   --------------------------------------------------------------------------
	--
	--  gtk_source_buffer_end_not_undoable_action ()
	--
	-- void                gtk_source_buffer_end_not_undoable_action
	--                                                         (GtkSourceBuffer *buffer);
	--
	--   Marks the end of a not undoable action on the buffer. When the last not
	--   undoable block is closed through the call to this function, the list of
	--   undo actions is cleared and the undo manager is re-enabled.
	--
	--   buffer : a GtkSourceBuffer.
	--
	--   --------------------------------------------------------------------------
	--
	--  gtk_source_buffer_ensure_highlight ()
	--
	-- void                gtk_source_buffer_ensure_highlight  (GtkSourceBuffer *buffer,
	--                                                          const GtkTextIter *start,
	--                                                          const GtkTextIter *end);
	--
	--   Forces buffer to analyze and highlight the given area synchronously.
	--
	--  Note
	--
	--   This is a potentially slow operation and should be used only when you need
	--   to make sure that some text not currently visible is highlighted, for
	--   instance before printing.
	--
	--   buffer : a GtkSourceBuffer.
	--   start :  start of the area to highlight.
	--   end :    end of the area to highlight.
	--
	--Property Details
	--
	--  The "can-redo" property
	--
	--   "can-redo"                 gboolean              : Read
	--
	--   Whether Redo operation is possible.
	--
	--   Default value: FALSE
	--
	--   --------------------------------------------------------------------------
	--
	--  The "can-undo" property
	--
	--   "can-undo"                 gboolean              : Read
	--
	--   Whether Undo operation is possible.
	--
	--   Default value: FALSE
	--
	--   --------------------------------------------------------------------------
	--
	--  The "highlight-matching-brackets" property
	--
	--   "highlight-matching-brackets" gboolean              : Read / Write
	--
	--   Whether to highlight matching brackets in the buffer.
	--
	--   Default value: TRUE
	--
	--   --------------------------------------------------------------------------
	--
	--  The "highlight-syntax" property
	--
	--   "highlight-syntax"         gboolean              : Read / Write
	--
	--   Whether to highlight syntax in the buffer.
	--
	--   Default value: TRUE
	--
	--   --------------------------------------------------------------------------
	--
	--  The "language" property
	--
	--   "language"                 GtkSourceLanguage     : Read / Write
	--
	--   Language object to get highlighting patterns from.
	--
	--   --------------------------------------------------------------------------
	--
	--  The "max-undo-levels" property
	--
	--   "max-undo-levels"          gint                  : Read / Write
	--
	--   Number of undo levels for the buffer. -1 means no limit.
	--
	--   Allowed values: >= -1
	--
	--   Default value: 1000
	--
	--   --------------------------------------------------------------------------
	--
	--  The "style-scheme" property
	--
	--   "style-scheme"             GtkSourceStyleScheme  : Read / Write
	--
	--   Style scheme. It contains styles for syntax highlighting, optionally
	--   foreground, background, cursor color, current line color, and matching
	--   brackets style.
	--
	--Signal Details
	--
	--  The "highlight-updated" signal
	--
	-- void                user_function                      (GtkSourceBuffer *sourcebuffer,
	--                                                         GtkTextIter     *arg1,
	--                                                         GtkTextIter     *arg2,
	--                                                         gpointer         user_data)         : Run Last
	--
	--   sourcebuffer : the object which received the signal.
	--   arg1 :
	--   arg2 :
	--   user_data :    user data set when the signal handler was connected.
	--
	--See Also
	--
	--   There is an introduction document describing the basic concepts of the
	--   buffer/view interactions.
	--
	--   Check GtkTextBuffer for information about the base buffer; and
	--   GtkSourceView for examples on setting up the buffer to be displayed in a
	--   view widget.

end -- class GTK_SOURCE_BUFFER
