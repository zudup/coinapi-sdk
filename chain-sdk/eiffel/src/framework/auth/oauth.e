note
 description:"[
		OnChain API
 		 This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
  		The version of the OpenAPI document: v1
 	    Contact: support@coinapi.io

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class
	OAUTH

inherit

	AUTHENTICATION

feature -- Access

	access_token: detachable STRING_32

feature -- Change Element

	set_access_token (a_token: STRING_32)
			-- Set `access_token' with `a_token'.
		do
			access_token := a_token
		ensure
			access_token_set: access_token = a_token
		end

	apply_to_params (a_query_params: LIST [TUPLE [name:READABLE_STRING_8; value:READABLE_STRING_8]]; a_header_params: STRING_TABLE [READABLE_STRING_8])
   			-- <Precursor>.
		do
			if attached access_token as l_access_token then
					-- TODO check if this conversion is ok.
				a_header_params.force ("Bearer " + l_access_token.to_string_8,"Authorization" )
			end
		end
end
