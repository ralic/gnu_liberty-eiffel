indexing
	description: "Generic callback for the size-request signal"
	copyright: "[
					Copyright (C) 2006 Paolo redaelli, eiffel-libraries team,  GTK+ team and others
					
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
	license: "LGPL v2 or later"
	date: "$Date:$"
	revision "$Revision:$"

class SIZE_REQUEST_CALLBACK

inherit CALLBACK redefine object end

insert G_OBJECT_FACTORY [GTK_WIDGET]

create {ANY} make

feature {ANY}
	object: GTK_WIDGET

feature {ANY}

	callback (request: POINTER; instance: POINTER) is
		local
			request_obj: GTK_REQUISITION
		do
			debug print ("Callback: instance=") print (instance.to_string) print ("%N") end
			-- The following is written with the implicit requirement 
			-- that the button is actually created bu the Eiffel 
			-- application. 
			object := wrapper(instance)
			create request_obj.copy_from_pointer (request)
			
			procedure.call ([request_obj, object])
		end

	callback_pointer: POINTER is
		do
			Result := get_callback_pointer ($callback)
		ensure
			Result.is_not_null
		end

	connect (an_object: GTK_WIDGET; a_procedure: PROCEDURE [ANY, TUPLE[GTK_REQUISITION, GTK_WIDGET]]) is
		do
			debug
				print ("SIZE_REQUEST_CALLBACK.connect (an_object=") print (an_object.to_pointer.to_string)
				print (" an_object.handle=") print (an_object.handle.to_string)
				print (") Current=") print (to_pointer.to_string)
				print (" Current.handle=") print (handle.to_string)
				print ("%N")
			end
			
			handler_id := g_signal_connect_closure (an_object.handle,
																 signal_name.to_external,
																 handle,
																 0 -- i.e. call it before default handler
																)
			procedure:=a_procedure
		end

		signal_name: STRING is "size-request"

	procedure: PROCEDURE [ANY, TUPLE[GTK_REQUISITION, GTK_WIDGET]]
end