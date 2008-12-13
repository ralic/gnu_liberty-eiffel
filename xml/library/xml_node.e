indexing
	description: "."
	copyright: "[
					Copyright (C) 2008 Paolo Redaelli
					
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

class XML_NODE
	-- Minimal wrapper for xmlNode of libxml2. No effort is made to mimick
	-- SmartEiffel XML classes: their design does simply not conform.

inherit
	C_STRUCT redefine free end
	EIFFEL_OWNED redefine free end
	
insert 
	SHARED_XML_NODE_CACHE
	LIBXML_EXTERNALS

creation from_external_pointer

feature -- Name and attributes
	name: STRING is
		-- Name of the node.
		do
			create Result.from_external_copy(xml_node_get_name(handle))
		end
	
	attribute_at (a_name: STRING): STRING is
		-- The content of the attribute named `a_name' encoded in UTF8. 
		-- Void if the attribute does not exist.

		-- TODO: Result should be an heir of STRING like XML_STRING because the
		-- string pointer shall be free with xmlFree
	require non_void_name: a_name/=Void
	local p: POINTER
	do
		p:=xml_get_prop(handle,a_name.to_external)
		if p.is_not_null then
			create Result.from_external(p)
		end
	end
	
	-- first_attribute: XML_ATTRIBUTE is
	-- 	-- The first attribute/property
	-- do
	-- 	not_yet_implemented
	-- end

feature -- Nodes relationships
	parent: XML_NODE is
		-- Curren't parent, if any.
	do
		Result:=cache.wrapper_or_void(xml_node_get_parent(handle))
	end

	first: XML_NODE is
		-- First child of Current node. Can be Void
	do
		Result:=cache.wrapper_or_void(xml_node_get_children(handle))
	end

	next: XML_NODE is
		-- Next "brother" node. Can be Void
	do
		Result:=cache.wrapper_or_void(xml_node_get_next(handle))
	end

	prev: XML_NODE is 
		-- Previous "brother" node. Can be Void
	do
		Result:=cache.wrapper_or_void(xml_node_get_prev(handle))
	end

	last: XML_NODE is 
		-- Last child node. Can be Void
	do
		Result:=cache.wrapper_or_void(xml_node_get_last(handle))
	end

feature {} -- Implementation
	free (p: POINTER) is
		do
			xml_free (p)
		end

	struct_size: INTEGER is
		external "C use <libxml/tree.h>"
		alias "size_of (xmlNode)"
		end
end -- class XML_NODE
