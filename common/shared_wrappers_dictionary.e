indexing
	description: "Wrappers dictionary."
	copyright: "[
					Copyright (C) 2006 Paolo Redaelli
					
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
					
deferred class SHARED_WRAPPERS_DICTIONARY
insert ANY undefine copy, is_equal end
feature {} -- Implementation
	
	wrappers: HASHED_DICTIONARY [POINTER, POINTER] is
			-- Dictionary storing wrappers created in the program.  Key
			-- is the address (pointer) to the wrapped C structure, value
			-- is the address of the respective Eiffel wrapper. This way
			-- you can get back an already-created Eiffel wrapper. Heirs
			-- of SHARED_C_STRUCT, i.e. G_OBJECT could provide alternative
			-- implementation that will not rely on this dictionary.
		once
        create {HASHED_DICTIONARY[POINTER,POINTER]}
		  Result.with_capacity (100)
		end
	
end -- class SHARED_WRAPPERS_DICTIONARY
