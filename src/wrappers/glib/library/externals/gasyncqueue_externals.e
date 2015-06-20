-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.
deferred class GASYNCQUEUE_EXTERNALS


insert ANY undefine is_equal, copy end

		STANDARD_C_LIBRARY_TYPES
feature {} -- External calls

	g_async_queue_length (a_queue: POINTER): INTEGER 
               -- g_async_queue_length
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end

	g_async_queue_length_unlocked (a_queue: POINTER): INTEGER 
               -- g_async_queue_length_unlocked
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end

	g_async_queue_lock (a_queue: POINTER) 
               -- g_async_queue_lock
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end

	g_async_queue_new (): POINTER 
               -- g_async_queue_new
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end

	g_async_queue_new_full (an_item_free_func: POINTER): POINTER 
               -- g_async_queue_new_full
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end

	g_async_queue_pop (a_queue: POINTER): POINTER 
               -- g_async_queue_pop
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end

	g_async_queue_pop_unlocked (a_queue: POINTER): POINTER 
               -- g_async_queue_pop_unlocked
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end

	g_async_queue_push (a_queue: POINTER; a_data: POINTER) 
               -- g_async_queue_push
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end

	g_async_queue_push_sorted (a_queue: POINTER; a_data: POINTER; a_func: POINTER; an_user_data: POINTER) 
               -- g_async_queue_push_sorted
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end

	g_async_queue_push_sorted_unlocked (a_queue: POINTER; a_data: POINTER; a_func: POINTER; an_user_data: POINTER) 
               -- g_async_queue_push_sorted_unlocked
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end

	g_async_queue_push_unlocked (a_queue: POINTER; a_data: POINTER) 
               -- g_async_queue_push_unlocked
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end

	g_async_queue_ref (a_queue: POINTER): POINTER 
               -- g_async_queue_ref
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end

	g_async_queue_ref_unlocked (a_queue: POINTER) 
               -- g_async_queue_ref_unlocked
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end

	g_async_queue_sort (a_queue: POINTER; a_func: POINTER; an_user_data: POINTER) 
               -- g_async_queue_sort
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end

	g_async_queue_sort_unlocked (a_queue: POINTER; a_func: POINTER; an_user_data: POINTER) 
               -- g_async_queue_sort_unlocked
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end

	g_async_queue_timed_pop (a_queue: POINTER; an_end_time: POINTER): POINTER 
               -- g_async_queue_timed_pop
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end

	g_async_queue_timed_pop_unlocked (a_queue: POINTER; an_end_time: POINTER): POINTER 
               -- g_async_queue_timed_pop_unlocked
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end

	g_async_queue_timeout_pop (a_queue: POINTER; a_timeout: like long_unsigned): POINTER 
               -- g_async_queue_timeout_pop
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end

	g_async_queue_timeout_pop_unlocked (a_queue: POINTER; a_timeout: like long_unsigned): POINTER 
               -- g_async_queue_timeout_pop_unlocked
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end

	g_async_queue_try_pop (a_queue: POINTER): POINTER 
               -- g_async_queue_try_pop
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end

	g_async_queue_try_pop_unlocked (a_queue: POINTER): POINTER 
               -- g_async_queue_try_pop_unlocked
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end

	g_async_queue_unlock (a_queue: POINTER) 
               -- g_async_queue_unlock
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end

	g_async_queue_unref (a_queue: POINTER) 
               -- g_async_queue_unref
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end

	g_async_queue_unref_and_unlock (a_queue: POINTER) 
               -- g_async_queue_unref_and_unlock
               external "plug_in"
               alias "{
                       location: "."
                       module_name: "plugin"
                       feature_name: "Void"
               }"
               end


end -- class GASYNCQUEUE_EXTERNALS
