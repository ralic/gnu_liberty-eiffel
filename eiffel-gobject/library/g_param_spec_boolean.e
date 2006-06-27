indexing

	description: "Boolean GParamSpec Metadata for parameter specifications""
	copyright: "[
					Copyright (C) ) 2006 eiffel-libraries team, GTK+ team
					
					This library is free software; you can redistribute it and/or
					modify it under the terms of the GNU Lesser General Public License
					as published by the Free Software Foundation; either version 2.1 of
					the License, or (at your option) any later version.
					
					This library is distributed in the hope that it will be useful, but
					WITHOUT ANY WARRANTY; without even the implied warranty of
					MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
					Lesser General Public License for more details.

					You should have received a copy of the GNU Lesser General Public
					License along with this library; if not, write to the Free Software
					Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
					02110-1301 USA
					]"
	gtk_description: "[
							GParamSpec is an object structure that encapsulates the metadata
							required to specify parameters, such as e.g. GObject properties.
	
							Parameter names need to start with a letter (a-z or
							A-Z). Subsequent characters can be letters, numbers or a '-'. All
							other characters are replaced by a '-' during construction.
							]"
	copyright: "Copyright (c"
	license: "LGPL"
	date: "$Date:  $"
	revision: "$ $"

class G_PARAM_SPEC_BOOLEAN

inherit G_PARAM_SPEC

creation
	make
	
feature -- Creation

	make (a_name,a_nick,a_blurb: STRING; a_default: BOOLEAN; some_flags) is
			-- Creates a new G_PARAM_SPEC_BOOLEAN.
			-- `a_name' is the canonical name of the property specified,
			-- `a_nick' is the nick name for the property specified,
			-- `a_blurb' is a description of the property specified.
			--`a_default' is the default value for the property
			--`some_flags' are flags for the property specified
		do
			make_from_pointer (g_param_spec_boolean(a_name.to_external,
																 a_nick.to_external,
																 a_blurb.to_external,
																 a_default.to_integer,
																 some_flags))
		end
	
feature
	default: BOOLEAN is
		do
			Result := default_gboolean(handle).to_boolean
		end
end
	
