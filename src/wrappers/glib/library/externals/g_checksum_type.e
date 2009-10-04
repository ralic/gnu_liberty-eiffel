-- This file have been created by eiffel-gcc-xml.
-- Any change will be lost by the next execution of the tool.

expanded class G_CHECKSUM_TYPE

		--  Types of checksums
insert ENUM

creation default_create
feature -- Validity
	is_valid_value (a_value: INTEGER): BOOLEAN is
		do
			Result := ((a_value = g_checksum_md5) or else 
				(a_value = g_checksum_sha1) or else 
				(a_value = g_checksum_sha256))
		end

feature -- Setters
	default_create,  set_g_checksum_md5 is
	
		do
			value := g_checksum_md5
		end

	 set_g_checksum_sha1 is
	
		do
			value := g_checksum_sha1
		end

	 set_g_checksum_sha256 is
	
		do
			value := g_checksum_sha256
		end

feature -- Queries
	is_g_checksum_md5: BOOLEAN is
			-- The usual MD5 algorithm
		do
			Result := (value=g_checksum_md5)
		end

	is_g_checksum_sha1: BOOLEAN is
		
		do
			Result := (value=g_checksum_sha1)
		end

	is_g_checksum_sha256: BOOLEAN is
		
		do
			Result := (value=g_checksum_sha256)
		end

feature {WRAPPER, WRAPPER_HANDLER} -- Low level values
	g_checksum_md5: INTEGER is
		external "plug_in"
 		alias "{
 			location: "../../../plugins"
 			module: "glib"
 			feature_name: "G_CHECKSUM_MD5"
 			}"
 		end

	g_checksum_sha1: INTEGER is
		external "plug_in"
 		alias "{
 			location: "../../../plugins"
 			module: "glib"
 			feature_name: "G_CHECKSUM_SHA1"
 			}"
 		end

	g_checksum_sha256: INTEGER is
		external "plug_in"
 		alias "{
 			location: "../../../plugins"
 			module: "glib"
 			feature_name: "G_CHECKSUM_SHA256"
 			}"
 		end

end
