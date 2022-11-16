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
	UNISWAPV2_API

inherit

    API_I


feature -- API Access


	uniswap_v2_get_pools_current (filter_pool_id: STRING_32): detachable LIST [UNISWAP_V2_PAIR_V2_DTO]
			-- Pools (current) 🔥
			-- Gets pools.
			-- 
			-- argument: filter_pool_id  (optional, default to null)
			-- 
			-- 
			-- Result LIST [UNISWAP_V2_PAIR_V2_DTO]
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/dapps/uniswapv2/pools/current"
			l_request.fill_query_params(api_client.parameter_to_tuple("", "filter_pool_id", filter_pool_id));


			if attached {STRING} api_client.select_header_accept ({ARRAY [STRING]}<<"text/plain", "application/json", "text/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type ({ARRAY [STRING]}<<>>),"Content-Type")
			l_request.set_auth_names ({ARRAY [STRING]}<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { LIST [UNISWAP_V2_PAIR_V2_DTO] } l_response.data ({ LIST [UNISWAP_V2_PAIR_V2_DTO] }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end

	uniswap_v2_get_swaps_current : detachable LIST [UNISWAP_V2_SWAP_V2_DTO]
			-- Swaps (current) 🔥
			-- Gets swaps.
			-- 
			-- 
			-- Result LIST [UNISWAP_V2_SWAP_V2_DTO]
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/dapps/uniswapv2/swaps/current"


			if attached {STRING} api_client.select_header_accept ({ARRAY [STRING]}<<"text/plain", "application/json", "text/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type ({ARRAY [STRING]}<<>>),"Content-Type")
			l_request.set_auth_names ({ARRAY [STRING]}<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { LIST [UNISWAP_V2_SWAP_V2_DTO] } l_response.data ({ LIST [UNISWAP_V2_SWAP_V2_DTO] }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end

	uniswap_v2_get_tokens_current : detachable LIST [UNISWAP_V2_TOKEN_V2_DTO]
			-- Tokens (current) 🔥
			-- Gets tokens.
			-- 
			-- 
			-- Result LIST [UNISWAP_V2_TOKEN_V2_DTO]
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/dapps/uniswapv2/tokens/current"


			if attached {STRING} api_client.select_header_accept ({ARRAY [STRING]}<<"text/plain", "application/json", "text/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type ({ARRAY [STRING]}<<>>),"Content-Type")
			l_request.set_auth_names ({ARRAY [STRING]}<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { LIST [UNISWAP_V2_TOKEN_V2_DTO] } l_response.data ({ LIST [UNISWAP_V2_TOKEN_V2_DTO] }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end


end
