deferred class XML_PARSER

insert LIBXML_EXTERNALS
feature 
	parse_file (an_xml_file: STRING): XML_DOC is
		-- parse the XML file named `an_xml_file' and build a tree. Automatic
		-- support for ZLIB/Compress compressed document is provided by default
		-- if found at compile-time. The resulting XML_DOC will be Void if the
		-- file was not wellformed.
	require name_not_void: an_xml_file/=Void
	local p: POINTER
	do
		debug 
			print ("Parsing "+an_xml_file+"%N")
		end
		p:=xml_parse_file(an_xml_file.to_external)
		if p.is_not_null then 
			create Result.from_external_pointer(p)
		end
	end 
end -- class XML_PARSER

