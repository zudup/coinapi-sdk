note
 description:"[
		EMS - REST API
 		This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a href=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Managed Cloud</td>       <td>Sandbox</td>       <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Sandbox</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  <br/><br/> If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this:  <br/><br/> `GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside> 
  		The version of the OpenAPI document: v1
 	    Contact: support@coinapi.io

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"

class
	ORDERS_API

inherit

    API_I


feature -- API Access


	v1_orders_cancel_all_post (order_cancel_all_request: ORDER_CANCEL_ALL_REQUEST): detachable MESSAGE_REJECT
			-- Cancel all orders request
			-- This request cancels all open orders on single specified exchange.
			-- 
			-- argument: order_cancel_all_request OrderCancelAllRequest object. (required)
			-- 
			-- 
			-- Result MESSAGE_REJECT
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			l_request.set_body(order_cancel_all_request)
			l_path := "/v1/orders/cancel/all"


			if attached {STRING} api_client.select_header_accept ({ARRAY [STRING]}<<"application/json", "appliction/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type ({ARRAY [STRING]}<<"application/json">>),"Content-Type")
			l_request.set_auth_names ({ARRAY [STRING]}<<>>)
			l_response := api_client.call_api (l_path, "Post", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { MESSAGE_REJECT } l_response.data ({ MESSAGE_REJECT }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end

	v1_orders_cancel_post (order_cancel_single_request: ORDER_CANCEL_SINGLE_REQUEST): detachable ORDER_EXECUTION_REPORT
			-- Cancel order request
			-- Request cancel for an existing order. The order can be canceled using the &#x60;client_order_id&#x60; or &#x60;exchange_order_id&#x60;.
			-- 
			-- argument: order_cancel_single_request OrderCancelSingleRequest object. (required)
			-- 
			-- 
			-- Result ORDER_EXECUTION_REPORT
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			l_request.set_body(order_cancel_single_request)
			l_path := "/v1/orders/cancel"


			if attached {STRING} api_client.select_header_accept ({ARRAY [STRING]}<<"application/json", "appliction/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type ({ARRAY [STRING]}<<"application/json">>),"Content-Type")
			l_request.set_auth_names ({ARRAY [STRING]}<<>>)
			l_response := api_client.call_api (l_path, "Post", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { ORDER_EXECUTION_REPORT } l_response.data ({ ORDER_EXECUTION_REPORT }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end

	v1_orders_get (exchange_id: STRING_32): detachable LIST [ORDER_EXECUTION_REPORT]
			-- Get open orders
			-- Get last execution reports for open orders across all or single exchange.
			-- 
			-- argument: exchange_id Filter the open orders to the specific exchange. (optional, default to null)
			-- 
			-- 
			-- Result LIST [ORDER_EXECUTION_REPORT]
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/v1/orders"
			l_request.fill_query_params(api_client.parameter_to_tuple("", "exchange_id", exchange_id));


			if attached {STRING} api_client.select_header_accept ({ARRAY [STRING]}<<"application/json", "appliction/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type ({ARRAY [STRING]}<<>>),"Content-Type")
			l_request.set_auth_names ({ARRAY [STRING]}<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { LIST [ORDER_EXECUTION_REPORT] } l_response.data ({ LIST [ORDER_EXECUTION_REPORT] }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end

	v1_orders_post (order_new_single_request: ORDER_NEW_SINGLE_REQUEST): detachable ORDER_EXECUTION_REPORT
			-- Send new order
			-- This request creating new order for the specific exchange.
			-- 
			-- argument: order_new_single_request OrderNewSingleRequest object. (required)
			-- 
			-- 
			-- Result ORDER_EXECUTION_REPORT
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			l_request.set_body(order_new_single_request)
			l_path := "/v1/orders"


			if attached {STRING} api_client.select_header_accept ({ARRAY [STRING]}<<"application/json", "appliction/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type ({ARRAY [STRING]}<<"application/json">>),"Content-Type")
			l_request.set_auth_names ({ARRAY [STRING]}<<>>)
			l_response := api_client.call_api (l_path, "Post", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { ORDER_EXECUTION_REPORT } l_response.data ({ ORDER_EXECUTION_REPORT }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end

	v1_orders_status_client_order_id_get (client_order_id: STRING_32): detachable ORDER_EXECUTION_REPORT
			-- Get order execution report
			-- Get the last order execution report for the specified order. The requested order does not need to be active or opened.
			-- 
			-- argument: client_order_id The unique identifier of the order assigned by the client. (required)
			-- 
			-- 
			-- Result ORDER_EXECUTION_REPORT
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/v1/orders/status/{client_order_id}"
			l_path.replace_substring_all ("{"+"client_order_id"+"}", api_client.url_encode (client_order_id.out))


			if attached {STRING} api_client.select_header_accept ({ARRAY [STRING]}<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type ({ARRAY [STRING]}<<>>),"Content-Type")
			l_request.set_auth_names ({ARRAY [STRING]}<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { ORDER_EXECUTION_REPORT } l_response.data ({ ORDER_EXECUTION_REPORT }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end


end
