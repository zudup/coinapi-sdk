note
 description:"[
		On Chain - REST API
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
	API_CLIENT_RESPONSE

create
	make

feature {NONE} -- Initialization

	make (a_response: detachable HTTP_CLIENT_RESPONSE; a_error: detachable API_ERROR; a_custom_deserializer: detachable FUNCTION [TUPLE [READABLE_STRING_8, READABLE_STRING_8, TYPE [detachable ANY]], detachable ANY])
		do
			response := a_response
			error := a_error
			deserializer := a_custom_deserializer
		end

feature -- Access

	has_error: BOOLEAN
			-- has error?
		do
			Result := response = Void and then attached error
		end

	status: INTEGER
			-- Status code of the response.
		do
			if attached response as l_response then
				Result := l_response.status
			end
		end

feature -- Data

	data (a_type: TYPE [detachable ANY]): detachable ANY
			-- Data representation of the HTTP Response.
		do
			if
				attached response as l_response  and then
				attached deserializer as l_deserializer and then
				attached l_response.body as l_body and then
				attached l_response.header ("Content-Type") as l_content_type
			then
				Result := (create {API_DESERIALIZER}).deserializer (l_deserializer, l_content_type, l_body, a_type)
			end
		end

feature -- Error

	error: detachable API_ERROR
			-- Internal client error.

feature {NONE} -- Implementation

	response: detachable HTTP_CLIENT_RESPONSE
			-- Low level response returned by the API call.

	deserializer: detachable FUNCTION [TUPLE [READABLE_STRING_8, READABLE_STRING_8, TYPE [detachable ANY]], detachable ANY]
			-- Function to map a response body with a given content type to the target in the domain model.

end
