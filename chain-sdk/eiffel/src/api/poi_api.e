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
	POI_API

inherit

    API_I


feature -- API Access


	chains_chain_id_dapps_sushiswap_poi_historical_get (chain_id: STRING_32; start_block: INTEGER_64; end_block: INTEGER_64; start_date: DATE_TIME; end_date: DATE_TIME)
			-- 
			-- 
			-- 
			-- argument: chain_id  (required)
			-- 
			-- argument: start_block  (optional, default to null)
			-- 
			-- argument: end_block  (optional, default to null)
			-- 
			-- argument: start_date  (optional, default to null)
			-- 
			-- argument: end_date  (optional, default to null)
			-- 
			-- 
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/chains/{chain_id}/dapps/sushiswap/poi/historical"
			l_path.replace_substring_all ("{"+"chain_id"+"}", api_client.url_encode (chain_id.out))
			l_request.fill_query_params(api_client.parameter_to_tuple("", "startBlock", start_block));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "endBlock", end_block));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "startDate", start_date));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "endDate", end_date));


			if attached {STRING} api_client.select_header_accept ({ARRAY [STRING]}<<>>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type ({ARRAY [STRING]}<<>>),"Content-Type")
			l_request.set_auth_names ({ARRAY [STRING]}<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, agent serializer, Void)
			if l_response.has_error then
				last_error := l_response.error
			end
		end

	chains_chain_id_dapps_uniswapv2_poi_historical_get (chain_id: STRING_32; start_block: INTEGER_64; end_block: INTEGER_64; start_date: DATE_TIME; end_date: DATE_TIME)
			-- 
			-- 
			-- 
			-- argument: chain_id  (required)
			-- 
			-- argument: start_block  (optional, default to null)
			-- 
			-- argument: end_block  (optional, default to null)
			-- 
			-- argument: start_date  (optional, default to null)
			-- 
			-- argument: end_date  (optional, default to null)
			-- 
			-- 
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/chains/{chain_id}/dapps/uniswapv2/poi/historical"
			l_path.replace_substring_all ("{"+"chain_id"+"}", api_client.url_encode (chain_id.out))
			l_request.fill_query_params(api_client.parameter_to_tuple("", "startBlock", start_block));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "endBlock", end_block));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "startDate", start_date));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "endDate", end_date));


			if attached {STRING} api_client.select_header_accept ({ARRAY [STRING]}<<>>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type ({ARRAY [STRING]}<<>>),"Content-Type")
			l_request.set_auth_names ({ARRAY [STRING]}<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, agent serializer, Void)
			if l_response.has_error then
				last_error := l_response.error
			end
		end

	chains_chain_id_dapps_uniswapv3_poi_historical_get (chain_id: STRING_32; start_block: INTEGER_64; end_block: INTEGER_64; start_date: DATE_TIME; end_date: DATE_TIME)
			-- 
			-- 
			-- 
			-- argument: chain_id  (required)
			-- 
			-- argument: start_block  (optional, default to null)
			-- 
			-- argument: end_block  (optional, default to null)
			-- 
			-- argument: start_date  (optional, default to null)
			-- 
			-- argument: end_date  (optional, default to null)
			-- 
			-- 
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/chains/{chain_id}/dapps/uniswapv3/poi/historical"
			l_path.replace_substring_all ("{"+"chain_id"+"}", api_client.url_encode (chain_id.out))
			l_request.fill_query_params(api_client.parameter_to_tuple("", "startBlock", start_block));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "endBlock", end_block));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "startDate", start_date));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "endDate", end_date));


			if attached {STRING} api_client.select_header_accept ({ARRAY [STRING]}<<>>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type ({ARRAY [STRING]}<<>>),"Content-Type")
			l_request.set_auth_names ({ARRAY [STRING]}<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, agent serializer, Void)
			if l_response.has_error then
				last_error := l_response.error
			end
		end


end
