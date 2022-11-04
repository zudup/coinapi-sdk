# OpenapiClient::CowApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**dapps_cow_orders_historical_get**](CowApi.md#dapps_cow_orders_historical_get) | **GET** /dapps/cow/orders/historical |  |
| [**dapps_cow_settlement_historical_get**](CowApi.md#dapps_cow_settlement_historical_get) | **GET** /dapps/cow/settlement/historical |  |
| [**dapps_cow_tokens_historical_get**](CowApi.md#dapps_cow_tokens_historical_get) | **GET** /dapps/cow/tokens/historical |  |
| [**dapps_cow_trades_historical_get**](CowApi.md#dapps_cow_trades_historical_get) | **GET** /dapps/cow/trades/historical |  |
| [**dapps_cow_users_historical_get**](CowApi.md#dapps_cow_users_historical_get) | **GET** /dapps/cow/users/historical |  |


## dapps_cow_orders_historical_get

> dapps_cow_orders_historical_get(opts)



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
  
  api_instance.dapps_cow_orders_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->dapps_cow_orders_historical_get: #{e}"
end
```

#### Using the dapps_cow_orders_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_cow_orders_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_cow_orders_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->dapps_cow_orders_historical_get_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_cow_settlement_historical_get

> dapps_cow_settlement_historical_get(opts)



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
  
  api_instance.dapps_cow_settlement_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->dapps_cow_settlement_historical_get: #{e}"
end
```

#### Using the dapps_cow_settlement_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_cow_settlement_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_cow_settlement_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->dapps_cow_settlement_historical_get_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_cow_tokens_historical_get

> dapps_cow_tokens_historical_get(opts)



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
  
  api_instance.dapps_cow_tokens_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->dapps_cow_tokens_historical_get: #{e}"
end
```

#### Using the dapps_cow_tokens_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_cow_tokens_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_cow_tokens_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->dapps_cow_tokens_historical_get_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_cow_trades_historical_get

> dapps_cow_trades_historical_get(opts)



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
  
  api_instance.dapps_cow_trades_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->dapps_cow_trades_historical_get: #{e}"
end
```

#### Using the dapps_cow_trades_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_cow_trades_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_cow_trades_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->dapps_cow_trades_historical_get_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_cow_users_historical_get

> dapps_cow_users_historical_get(opts)



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
  
  api_instance.dapps_cow_users_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->dapps_cow_users_historical_get: #{e}"
end
```

#### Using the dapps_cow_users_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_cow_users_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_cow_users_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CowApi->dapps_cow_users_historical_get_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

