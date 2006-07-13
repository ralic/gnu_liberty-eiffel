indexing
	description: "Generic callback for the value_changed signal"
	copyright: "(C) 2006 Paolo Redaelli <paolo.redaelli@poste.it>"
	license: "LGPL v2 or later"
	date: "$Date:$"
	revision "$Revision:$"

class VALUE_CHANGED_CALLBACK

inherit CALLBACK redefine object end

insert G_OBJECT_RETRIEVER [GTK_RANGE]

creation make

feature
	object: GTK_RANGE

feature
	callback (instance: POINTER) is
		do
			debug
				print ("Callback: instance=") print (instance.to_string) print ("%N")
			end
			-- The following is written with the implicit requirement 
			-- that the button is actually created bu the Eiffel 
			-- application. 
			check
				eiffel_created_the_range: has_eiffel_wrapper_stored (instance)
			end
			object := retrieve_eiffel_wrapper_from_gobject_pointer (instance)
			-- The above line replaces "create object.from_external_pointer
			-- (instance)" which continuosly creates new Eiffel wrappers
			procedure.call ([object])
		end

	callback_pointer: POINTER is
		do
			Result := get_callback_pointer ($callback)
		ensure
			Result.is_not_null
		end

	connect (an_object: GTK_RANGE; a_procedure: PROCEDURE [ANY, TUPLE[GTK_RANGE]]) is
		do
			debug
				print ("VALUE_CHANGED_CALLBACK.connect (an_object=") print (an_object.to_pointer.to_string)
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

		signal_name: STRING is "value-changed"

	procedure: PROCEDURE [ANY, TUPLE[GTK_RANGE]]
end
