# OpenapiClient::CowApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cow_get_orders__historical**](CowApi.md#cow_get_orders__historical) | **GET** /dapps/cow/orders/historical | GetOrders (historical) |
| [**cow_get_settlements__historical**](CowApi.md#cow_get_settlements__historical) | **GET** /dapps/cow/settlements/historical | GetSettlements (historical) |
| [**cow_get_tokens__historical**](CowApi.md#cow_get_tokens__historical) | **GET** /dapps/cow/tokens/historical | GetTokens (historical) 🔥 |
| [**cow_get_trades__historical**](CowApi.md#cow_get_trades__historical) | **GET** /dapps/cow/trades/historical | GetTrades (historical) 🔥 |
| [**cow_get_users__historical**](CowApi.md#cow_get_users__historical) | **GET** /dapps/cow/users/historical | GetUsers (historical) |


## cow_get_orders__historical

> <Array<CowOrderDTO>> cow_get_orders__historical(opts)

GetOrders (historical)

Gets orders.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CowApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  # GetOrders (historical)
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
  # GetOrders (historical)
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
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |

### Return type

[**Array&lt;CowOrderDTO&gt;**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cow_get_settlements__historical

> <Array<CowSettlementDTO>> cow_get_settlements__historical(opts)

GetSettlements (historical)

Gets settlements.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CowApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  # GetSettlements (historical)
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
  # GetSettlements (historical)
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
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |

### Return type

[**Array&lt;CowSettlementDTO&gt;**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cow_get_tokens__historical

> <Array<CowTokenDTO>> cow_get_tokens__historical(opts)

GetTokens (historical) 🔥

Gets tokens.

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
  token_id: 'token_id_example' # String | 
}

begin
  # GetTokens (historical) 🔥
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
  # GetTokens (historical) 🔥
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
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **token_id** | **String** |  | [optional] |

### Return type

[**Array&lt;CowTokenDTO&gt;**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cow_get_trades__historical

> <Array<CowTradeDTO>> cow_get_trades__historical(opts)

GetTrades (historical) 🔥

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
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  # GetTrades (historical) 🔥
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
  # GetTrades (historical) 🔥
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

### Return type

[**Array&lt;CowTradeDTO&gt;**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cow_get_users__historical

> <Array<CowUserDTO>> cow_get_users__historical(opts)

GetUsers (historical)

Gets users.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CowApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  # GetUsers (historical)
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
  # GetUsers (historical)
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
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |

### Return type

[**Array&lt;CowUserDTO&gt;**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

