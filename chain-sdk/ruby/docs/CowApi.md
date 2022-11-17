# OpenapiClient::CowApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cow_get_orders__historical**](CowApi.md#cow_get_orders__historical) | **GET** /dapps/cow/orders/historical | Orders (historical) 🔥 |
| [**cow_get_settlements__historical**](CowApi.md#cow_get_settlements__historical) | **GET** /dapps/cow/settlements/historical | Settlements (historical) 🔥 |
| [**cow_get_tokens__historical**](CowApi.md#cow_get_tokens__historical) | **GET** /dapps/cow/tokens/historical | Tokens (historical) 🔥 |
| [**cow_get_trades__historical**](CowApi.md#cow_get_trades__historical) | **GET** /dapps/cow/trades/historical | Trades (historical) 🔥 |
| [**cow_get_users__historical**](CowApi.md#cow_get_users__historical) | **GET** /dapps/cow/users/historical | Users (historical) 🔥 |
| [**cow_orders__current**](CowApi.md#cow_orders__current) | **GET** /dapps/cow/orders/current | Orders (current) |
| [**cow_settlements__current**](CowApi.md#cow_settlements__current) | **GET** /dapps/cow/settlements/current | Settlements (current) |
| [**cow_tokens__current**](CowApi.md#cow_tokens__current) | **GET** /dapps/cow/tokens/current | Tokens (current) |
| [**cow_trades__current**](CowApi.md#cow_trades__current) | **GET** /dapps/cow/trades/current | Trades (current) |
| [**cow_users__current**](CowApi.md#cow_users__current) | **GET** /dapps/cow/users/current | Users (current) |


## cow_get_orders__historical

> <Array<CowOrderDTO>> cow_get_orders__historical(opts)

Orders (historical) 🔥

Gets orders.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CowApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | User's address.
}

begin
  # Orders (historical) 🔥
  result = api_instance.cow_get_orders__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->cow_get_orders__historical: #{e}"
end
```

#### Using the cow_get_orders__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CowOrderDTO>>, Integer, Hash)> cow_get_orders__historical_with_http_info(opts)

```ruby
begin
  # Orders (historical) 🔥
  data, status_code, headers = api_instance.cow_get_orders__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CowOrderDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->cow_get_orders__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | User&#39;s address. | [optional] |

### Return type

[**Array&lt;CowOrderDTO&gt;**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cow_get_settlements__historical

> <Array<CowSettlementDTO>> cow_get_settlements__historical(opts)

Settlements (historical) 🔥

Gets settlements.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CowApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | Transaction hash.
}

begin
  # Settlements (historical) 🔥
  result = api_instance.cow_get_settlements__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->cow_get_settlements__historical: #{e}"
end
```

#### Using the cow_get_settlements__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CowSettlementDTO>>, Integer, Hash)> cow_get_settlements__historical_with_http_info(opts)

```ruby
begin
  # Settlements (historical) 🔥
  data, status_code, headers = api_instance.cow_get_settlements__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CowSettlementDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->cow_get_settlements__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Transaction hash. | [optional] |

### Return type

[**Array&lt;CowSettlementDTO&gt;**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cow_get_tokens__historical

> <Array<CowTokenDTO>> cow_get_tokens__historical(opts)

Tokens (historical) 🔥

Gets tokens.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CowApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example', # String | Token's address.
  address: 'address_example', # String | Token's address.
  name: 'name_example', # String | Token name fetched by ERC20 contract call.
  symbol: 'symbol_example' # String | Token symbol fetched by contract call.
}

begin
  # Tokens (historical) 🔥
  result = api_instance.cow_get_tokens__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->cow_get_tokens__historical: #{e}"
end
```

#### Using the cow_get_tokens__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CowTokenDTO>>, Integer, Hash)> cow_get_tokens__historical_with_http_info(opts)

```ruby
begin
  # Tokens (historical) 🔥
  data, status_code, headers = api_instance.cow_get_tokens__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CowTokenDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->cow_get_tokens__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Token&#39;s address. | [optional] |
| **address** | **String** | Token&#39;s address. | [optional] |
| **name** | **String** | Token name fetched by ERC20 contract call. | [optional] |
| **symbol** | **String** | Token symbol fetched by contract call. | [optional] |

### Return type

[**Array&lt;CowTokenDTO&gt;**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cow_get_trades__historical

> <Array<CowTradeDTO>> cow_get_trades__historical(opts)

Trades (historical) 🔥

Gets trades.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CowApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  id: 'id_example', # String | 
  sell_token: 'sell_token_example', # String | 
  buy_token: 'buy_token_example' # String | 
}

begin
  # Trades (historical) 🔥
  result = api_instance.cow_get_trades__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->cow_get_trades__historical: #{e}"
end
```

#### Using the cow_get_trades__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CowTradeDTO>>, Integer, Hash)> cow_get_trades__historical_with_http_info(opts)

```ruby
begin
  # Trades (historical) 🔥
  data, status_code, headers = api_instance.cow_get_trades__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CowTradeDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->cow_get_trades__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **id** | **String** |  | [optional] |
| **sell_token** | **String** |  | [optional] |
| **buy_token** | **String** |  | [optional] |

### Return type

[**Array&lt;CowTradeDTO&gt;**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cow_get_users__historical

> <Array<CowUserDTO>> cow_get_users__historical(opts)

Users (historical) 🔥

Gets users.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CowApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example', # String | User's address.
  address: 'address_example' # String | User's address.
}

begin
  # Users (historical) 🔥
  result = api_instance.cow_get_users__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->cow_get_users__historical: #{e}"
end
```

#### Using the cow_get_users__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CowUserDTO>>, Integer, Hash)> cow_get_users__historical_with_http_info(opts)

```ruby
begin
  # Users (historical) 🔥
  data, status_code, headers = api_instance.cow_get_users__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CowUserDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->cow_get_users__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | User&#39;s address. | [optional] |
| **address** | **String** | User&#39;s address. | [optional] |

### Return type

[**Array&lt;CowUserDTO&gt;**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cow_orders__current

> <Array<CowOrderDTO>> cow_orders__current

Orders (current)

Gets orders.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CowApi.new

begin
  # Orders (current)
  result = api_instance.cow_orders__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->cow_orders__current: #{e}"
end
```

#### Using the cow_orders__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CowOrderDTO>>, Integer, Hash)> cow_orders__current_with_http_info

```ruby
begin
  # Orders (current)
  data, status_code, headers = api_instance.cow_orders__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CowOrderDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->cow_orders__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;CowOrderDTO&gt;**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cow_settlements__current

> <Array<CowSettlementDTO>> cow_settlements__current

Settlements (current)

Gets settlements.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CowApi.new

begin
  # Settlements (current)
  result = api_instance.cow_settlements__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->cow_settlements__current: #{e}"
end
```

#### Using the cow_settlements__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CowSettlementDTO>>, Integer, Hash)> cow_settlements__current_with_http_info

```ruby
begin
  # Settlements (current)
  data, status_code, headers = api_instance.cow_settlements__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CowSettlementDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->cow_settlements__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;CowSettlementDTO&gt;**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cow_tokens__current

> <Array<CowTokenDTO>> cow_tokens__current

Tokens (current)

Gets tokens.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CowApi.new

begin
  # Tokens (current)
  result = api_instance.cow_tokens__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->cow_tokens__current: #{e}"
end
```

#### Using the cow_tokens__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CowTokenDTO>>, Integer, Hash)> cow_tokens__current_with_http_info

```ruby
begin
  # Tokens (current)
  data, status_code, headers = api_instance.cow_tokens__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CowTokenDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->cow_tokens__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;CowTokenDTO&gt;**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cow_trades__current

> <Array<CowTradeDTO>> cow_trades__current

Trades (current)

Gets trades.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CowApi.new

begin
  # Trades (current)
  result = api_instance.cow_trades__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->cow_trades__current: #{e}"
end
```

#### Using the cow_trades__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CowTradeDTO>>, Integer, Hash)> cow_trades__current_with_http_info

```ruby
begin
  # Trades (current)
  data, status_code, headers = api_instance.cow_trades__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CowTradeDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->cow_trades__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;CowTradeDTO&gt;**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cow_users__current

> <Array<CowUserDTO>> cow_users__current

Users (current)

Gets users.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CowApi.new

begin
  # Users (current)
  result = api_instance.cow_users__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->cow_users__current: #{e}"
end
```

#### Using the cow_users__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CowUserDTO>>, Integer, Hash)> cow_users__current_with_http_info

```ruby
begin
  # Users (current)
  data, status_code, headers = api_instance.cow_users__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CowUserDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->cow_users__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;CowUserDTO&gt;**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

