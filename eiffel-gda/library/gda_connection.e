indexing
	description: "GdaConnection -- Management of connections to data sources."
	copyright: "[
					Copyright (C) 2007 Paolo Redaelli, GDA team
					
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

	wrapped_version: "3.0.1"

class GDA_CONNECTION
	-- The GdaConnection class offers access to all operations
	-- involving an opened connection to a database. GdaConnection
	-- objects are obtained via the GdaClient class.
	
	-- Once obtained, applications can use GdaConnection to execute
	-- commands, run transactions, and get information about all
	-- objects stored in the underlying database.
	
inherit
	G_OBJECT
		redefine
			fill_tagged_out_memory
		end

insert 
	SHARED_G_ERROR
		undefine
			fill_tagged_out_memory
		end
	
	GDA_CONNECTION_EXTERNALS
		undefine
			fill_tagged_out_memory
		end

	GDA_CONNECTION_FEATURE_ENUM
	GDA_CONNECTION_OPTIONS_ENUM

creation dummy, from_external_pointer

feature {} -- Creation	

	-- TODO: if ever necessary  gda_connection_new ()

	--  GdaConnection* gda_connection_new           (GdaClient *client,
	--                                               GdaServerProvider *provider,
	--                                               const gchar *dsn,
	--                                               const gchar *username,
	--                                               const gchar *password,
	--                                               guint options);

	--    This function creates a new GdaConnection object. It is not intended to be
	--    used directly by applications (use gda_client_open_connection instead).

	--    The connection is not opened at this stage; use gda_connection_open() to
	--    open the connection.

	--    client :   a GdaClient object.
	--    provider : a GdaServerProvider object.
	--    dsn :      GDA data source to connect to.
	--    username : user name to use to connect.
	--    password : password for username.
	--    options :  options for the connection.
	--    Returns :  a newly allocated GdaConnection object.

feature 
	open is
			-- Tries to open the connection.
			-- `is_successful' will be True if the connection is opened, and False 
			-- otherwise. `error' will be updated as necessary
		do
			is_successful := (gda_connection_open
									(handle, address_of(error.handle)).to_boolean)
		end

	close is
			-- Closes the connection to the underlying data source, but
			-- first emits the "conn_to_close" signal.
		do
			gda_connection_close(handle)
		end


	close_no_warning is
			-- Closes the connection to the underlying data source,
			-- without emiting any warning signal.
		do
			gda_connection_close_no_warning (handle)
		end
	
	is_opened: BOOLEAN is
			-- Is the connection opened?
		do
			Result := (gda_connection_is_opened(handle).to_boolean)
		end

	client: GDA_CLIENT is
			-- the GdaClient object associated with a connection. This is
			-- always the client that created the connection, as returned
			-- by GDA_CLIENT `open_connection'.
		local factory: G_OBJECT_EXPANDED_FACTORY [GDA_CLIENT]
		do
			Result := (factory.wrapper(gda_connection_get_client (handle)))
		ensure not_void: Result /= Void
		end

		
	set_client (a_client: GDA_CLIENT) is
			-- Associates 'a_client' with this connection. This feature
			-- is not intended to be called by applications.
		require client_not_void: a_client /= Void
		do
			smart_set_property (client_parameter_spec,
									  create {G_VALUE}.from_object(a_client))
		end

	options: INTEGER is
			-- the GdaConnectionOptions used to open this connection.
		do
			Result := gda_connection_get_options (handle)
		ensure are_valid_connection_option (Result)
		end

	-- TODO: set_options
	
	--   gda_connection_get_provider_obj ()

	--  GdaServerProvider* gda_connection_get_provider_obj
	--                                              (GdaConnection *cnc);

	--    Get a pointer to the GdaServerProvider object used to access the database

	--    cnc :     a GdaConnection object
	--    Returns : the GdaServerProvider (NEVER NULL)

	--    --------------------------------------------------------------------------

	--   gda_connection_get_infos ()

	--  GdaServerProviderInfo* gda_connection_get_infos
	--                                              (GdaConnection *cnc);

	--    Get a pointer to a GdaServerProviderInfo structure (which must not be
	--    modified) to retreive specific information about the provider used by cnc.

	--    cnc :     a GdaConnection object
	--    Returns :

	--    --------------------------------------------------------------------------

	server_version: STRING is
			--  the version string of the underlying database server.
		do
			create {CONST_STRING} Result.from_external (gda_connection_get_server_version(handle))
		ensure not_void: Result /= Void
		end

	--   gda_connection_get_server_version ()

	--  const gchar* gda_connection_get_server_version
	--                                              (GdaConnection *cnc);

	--    Gets the version string of the underlying database server.

	--    cnc :     a GdaConnection object.
	--    Returns : the server version string.

	database: STRING is
			-- the name of the currently active database
		do
			create {CONST_STRING} Result.from_external (gda_connection_get_database(handle))
		ensure not_void: Result /= Void
		end


	set_dsn (a_datasource: STRING) is
			-- Sets the data source of the connection. If the connection
			-- is already opened, then no action is performed at all and
			-- `is_successful' will be set to False.
		
			-- If the requested datasource does not exist, then nothing
			-- is done and `is_successful' will be False.
		require 
			dsn_not_void: a_datasource /= Void
		do
			is_successful := (gda_connection_set_dsn
									(handle, a_datasource.to_external)).to_boolean
		end
	
	dsn: STRING is
			--  the data source name the connection object is connected to.
		do
			create {CONST_STRING} Result.from_external (gda_connection_get_dsn(handle))
		ensure
			not_void: Result /= Void
		end

	connection_string: STRING is
			-- the connection string used to open this connection. The
			-- connection string is the string sent over to the
			-- underlying database provider, which describes the
			-- parameters to be used to open a connection on the
			-- underlying data source.
		do
			create {CONST_STRING} Result.from_external (gda_connection_get_cnc_string(handle))
		ensure not_void: Result /= Void
		end

	-- TODO set_connection_string
	
	provider: STRING is
			-- the provider id that this connection is connected to.
		do
			create {CONST_STRING} Result.from_external (gda_connection_get_provider(handle))
		ensure not_void: Result /= Void
		end

	-- TODO: set_provider
	
	set_username (a_username: STRING) is
			-- Sets the user name for the connection. If the connection
			-- is already opened, then no action is performed at all and
			-- `is_successful' will be False.
		require
			username_not_void: a_username /= Void
		do
			is_successful:=(gda_connection_set_username
								  (handle, a_username.to_external)).to_boolean
		end

	username: STRING is
			-- the user name used to open this connection.
		local
			ptr: POINTER
		do
			ptr := gda_connection_get_username(handle)
			if ptr.is_not_null then
				create {CONST_STRING} Result.from_external (ptr)
			end
		end

	set_password (a_password: STRING) is
			-- Sets the user password for the connection to the
			-- server. If the connection is already opened, then no
			-- action is performed at all and `is_successful' will be False.
		require
			password_not_void: a_password /= Void
		do
			is_successful := (gda_connection_set_password
									 (handle, a_password.to_external)).to_boolean
		end

	password: STRING is
			-- the password used to open this connection.
		do
			create {CONST_STRING} Result.from_external (gda_connection_get_password(handle))
		ensure not_void: Result /= Void
		end

	--   gda_connection_add_event ()

	--  void        gda_connection_add_event        (GdaConnection *cnc,
	--                                               GdaConnectionEvent *error);

	--    Adds an event to the given connection. This function is usually called by
	--    providers, to inform clients of events that happened during some
	--    operation.

	--    As soon as a provider (or a client, it does not matter) calls this
	--    function with an event object which is an error, the connection object
	--    (and the associated GdaClient object) emits the "error" signal, to which
	--    clients can connect to be informed of events.

	--    WARNING: the reference to the event object is stolen by this function!

	--    cnc :   a GdaConnection object.
	--    error :

	--    --------------------------------------------------------------------------

	--   gda_connection_add_event_string ()

	--  void        gda_connection_add_event_string (GdaConnection *cnc,
	--                                               const gchar *str,
	--                                               ...);

	--    Adds a new error to the given connection object. This is just a
	--    convenience function that simply creates a GdaConnectionEvent and then
	--    calls gda_server_connection_add_error.

	--    cnc : a GdaServerConnection object.
	--    str : a format string (see the printf(3) documentation).
	--    ... : the arguments to insert in the error message.

	--    --------------------------------------------------------------------------

	--   gda_connection_add_events_list ()

	--  void        gda_connection_add_events_list  (GdaConnection *cnc,
	--                                               GList *events_list);

	--    This is just another convenience function which lets you add a list of
	--    GdaConnectionEvent's to the given connection.* As with
	--    gda_connection_add_event and gda_connection_add_event_string, this
	--    function makes the connection object emit the "error" signal for each
	--    error event.

	--    events_list is copied to an internal list and freed.

	--    cnc :         a GdaConnection object.
	--    events_list : a list of GdaConnectionEvent.

	--   gda_connection_get_events ()

	--  const GList* gda_connection_get_events      (GdaConnection *cnc);

	--    Retrieves a list of the last errors occurred in the connection. You can
	--    make a copy of the list using gda_connection_event_list_copy.

	--    cnc :     a GdaConnection.
	--    Returns : a GList of GdaConnectionEvent.

	-- gda_connection_clear_events_list ()

	-- void gda_connection_clear_events_list (GdaConnection *cnc);

	-- This function lets you clear the list of GdaConnectionEvent's of
	-- the given connection.

	-- cnc : a GdaConnection object.

	change_database (a_name: STRING) is
			-- Changes the current database for the given
			-- connection. This operation is not available in all
			-- providers. `is_successful' will be updated.
		require name_not_void: a_name /= Void
		do
			is_successful:=(gda_connection_change_database(handle,a_name.to_external)).to_boolean
		end

	
	single_result: GDA_DATA_MODEL
			-- Results of the last invocation of `execute_command'
	
	execute_command (a_command: GDA_COMMAND; some_parameters: GDA_PARAMETER_LIST) is
			-- Executes a single command on the given connection.
		
			-- This feature lets you retrieve a simple data model from
			-- the underlying difference, instead of having to retrieve a
			-- list of them, as is the case with `execute_command_l'.

			-- Note that if `a_command' is composed of several SQL
			-- statements, the data model returned is the one
			-- corresponding to the last statement.

			-- See the documentation of the `execute_command_l' for
			-- information about the params list of parameters.
		require 
			command_not_void: a_command /= Void
			parameters_not_void: some_parameters /= Void
		local model_ptr: POINTER
		do
			-- Returns : a GdaDataModel containing the data returned by
			-- the data source, NULL if no data was expected, or
			-- GDA_CONNECTION_EXEC_FAILED if an error occurred.
			model_ptr:=(gda_connection_execute_command 
							(handle, a_command.handle,
							 some_parameters.handle, address_of (error.handle)))
			if model_ptr.is_null then single_result:=Void
			else
				-- Note: implementation hints:

				--inspect get_c_type
				--when type_foo then
				--	create {TYPE_FOO} single_result.from_external_pointer (model_ptr)
				--when type_bar then
				--	create {TYPE_BAR} single_result.from_external_pointer (model_ptr)
				--......
				--end
			end
		ensure implemented: False
		end

	results: G_LIST [GDA_DATA_MODEL]
	
	execute_some_commands (some_commands: GDA_COMMAND; some_parameters: GDA_PARAMETER_LIST) is
			-- Send several commands at once to the data source being
			-- accessed by the given GdaConnection object. The GdaCommand
			-- specified can contain a list of commands in its "text"
			-- property (usually a set of SQL commands separated by ';').

			-- `results' will store the results.

			-- cnc: a GdaConnection object.  cmd: a GdaCommand.  params:
			-- parameter list for the commands error: a place to store an
			-- error, or NULL Returns: a list of GdaDataModel's, as
			-- returned by the underlying provider, or NULL if an error
			-- occurred.
		require 
			commands_not_void: some_commands /= Void
			parameters_not_void: some_parameters /= Void
		local ptr: POINTER
		do
			-- The return value is a GList of GdaDataModel's, which you
			-- are responsible to free when not needed anymore (and unref
			-- the data models when they are not used anymore). Note that
			-- some nodes of the returned list may actually not point to
			-- a GdaDataModel but may be NULL (which corresponds to a
			-- command which did not return a data set, like UPDATE
			-- commands).

			-- The params can contain the following parameters: a
			-- "ITER_MODEL_ONLY" parameter of type G_TYPE_BOOLEAN which,
			-- if set to TRUE will preferably return a data model which
			-- can be accessed only using an iterator.

			ptr := (gda_connection_execute_command
					  (handle, some_commands.handle, some_parameters.handle,
						address_of (error.handle)))
			if ptr.is_not_null then
				unimplemented
			end
		end
	
	last_insert_id_of (a_record_set: GDA_DATA_MODEL): STRING is
			-- the ID of the last inserted row. A connection must be
			-- specified, and, optionally, a result set. If not NULL, the
			-- underlying provider should try to get the last insert ID
			-- for the given result set.
		
			-- It is Void if an error occurred or no row has been
			-- inserted. It is the caller's reponsibility to free the
			-- returned string.
		require set_not_void: a_record_set /= Void
		local ptr: POINTER
		do
			ptr:=gda_connection_get_last_insert_id(handle, a_record_set.handle)
			if ptr.is_not_null then
				create Result.from_external (ptr)
				-- Note: using plain `from_external' which brings the
				-- pointer under the jurisdiction of Eiffel'GC, since it
				-- is wrapper's reponsibility to free the returned string.
			end
		end


feature {} -- TODO: Signals


	--  "conn-closed"
	--              void        user_function      (GdaConnection *gdaconnection,
	--                                              gpointer       user_data)          : Run first
	--  "conn-opened"
	--              void        user_function      (GdaConnection *gdaconnection,
	--                                              gpointer       user_data)          : Run first
	--  "conn-to-close"
	--              void        user_function      (GdaConnection *gdaconnection,
	--                                              gpointer       user_data)          : Run first
	--  "dsn-changed"
	--              void        user_function      (GdaConnection *gdaconnection,
	--                                              gpointer       user_data)          : Run last
	--  "error"     void        user_function      (GdaConnection      *gdaconnection,
	--                                              GdaConnectionEvent *arg1,
	--                                              gpointer            user_data)          : Run last

feature {} -- Implementation
	-- Hidded properties parameters specs
	client_parameter_spec: G_PARAM_SPEC is
		once
			Result := find_property (client_property_name)
		ensure Result /= Void
		end

	connection_string_parameter_spec: G_PARAM_SPEC is
		once
			Result := find_property (connection_string_property_name)
		ensure Result /= Void
		end

	dsn_parameter_spec: G_PARAM_SPEC is
		once
			Result := find_property (dsn_property_name)
		ensure Result /= Void
		end

	password_parameter_spec: G_PARAM_SPEC is
		once
			Result := find_property (password_property_name)
		ensure Result /= Void
		end

	provider_parameter_spec: G_PARAM_SPEC is
		once
			Result := find_property (provider_object_property_name)
		ensure Result /= Void
		end

	username_parameter_spec: G_PARAM_SPEC is
		once
			Result := find_property (username_property_name)
		ensure Result /= Void
		end

feature {ANY} -- Printing
	fill_tagged_out_memory is
		-- TODO: ramack is not sure, whether this should better be 
		-- feature out
		do
			tagged_out_memory.append(" server_version = ")
			if server_version /= Void then
				tagged_out_memory.extend('"')
				tagged_out_memory.append(server_version)
				tagged_out_memory.extend('"')
			else
				tagged_out_memory.append(once "Void")
			end
			tagged_out_memory.append("%N dsn = ")
			if dsn /= Void then
				tagged_out_memory.extend('"')
				tagged_out_memory.append(dsn)
				tagged_out_memory.extend('"')
			else
				tagged_out_memory.append(once "Void")
			end
			tagged_out_memory.append("%N connection_string = ")
			if connection_string /= Void then
				tagged_out_memory.extend('"')
				tagged_out_memory.append(connection_string)
				tagged_out_memory.extend('"')
			else
				tagged_out_memory.append(once "Void")
			end
			tagged_out_memory.append("%N provider = ")
			if provider /= Void then
				tagged_out_memory.extend('"')
				tagged_out_memory.append(provider)
				tagged_out_memory.extend('"')
			else
				tagged_out_memory.append(once "Void")
			end
			tagged_out_memory.append("%N username = ")

			if username /= Void then
				tagged_out_memory.extend('"')
				tagged_out_memory.append(username)
				tagged_out_memory.extend('"')
			else
				tagged_out_memory.append(once "Void")
			end
			tagged_out_memory.append("%N password = %"********%"")
		end

feature 
	dummy_gobject: POINTER is
		do
			raise("GDA_CONNECTION.dummy_gobject invoked")
		end

	struct_size: INTEGER is
		external "C inline use <libgda/libgda.h>"
		alias "sizeof(GdaConnection)"
		end

feature {} -- Constant property names 
-- TODO: what it this? Should this be initialized here??? ramack 
-- doubts that! Paolo 2007-12-09 
	client_property_name: STRING is "string"
	connection_string_property_name: STRING is "cnc-string"
	dsn_property_name: STRING is "dsn"
	options_property_name: STRING is "options"
	password_property_name: STRING is "password"
	provider_object_property_name: STRING is "provider-obj"
	username_property_name: STRING is "username"

end -- class GDA_CONNECTION
