# OpenapiClient::DexApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**dapps_dex_batch_historical_get**](DexApi.md#dapps_dex_batch_historical_get) | **GET** /dapps/dex/batch/historical |  |
| [**dapps_dex_orders_historical_get**](DexApi.md#dapps_dex_orders_historical_get) | **GET** /dapps/dex/orders/historical |  |
| [**dapps_dex_prices_historical_get**](DexApi.md#dapps_dex_prices_historical_get) | **GET** /dapps/dex/prices/historical |  |
| [**dapps_dex_solution_historical_get**](DexApi.md#dapps_dex_solution_historical_get) | **GET** /dapps/dex/solution/historical |  |
| [**dapps_dex_stats_historical_get**](DexApi.md#dapps_dex_stats_historical_get) | **GET** /dapps/dex/stats/historical |  |
| [**dapps_dex_tokens_historical_get**](DexApi.md#dapps_dex_tokens_historical_get) | **GET** /dapps/dex/tokens/historical |  |
| [**dapps_dex_trades_historical_get**](DexApi.md#dapps_dex_trades_historical_get) | **GET** /dapps/dex/trades/historical |  |
| [**dapps_dex_users_historical_get**](DexApi.md#dapps_dex_users_historical_get) | **GET** /dapps/dex/users/historical |  |
| [**dapps_dex_withdraw_historical_get**](DexApi.md#dapps_dex_withdraw_historical_get) | **GET** /dapps/dex/withdraw/historical |  |
| [**dapps_dex_withdraw_request_historical_get**](DexApi.md#dapps_dex_withdraw_request_historical_get) | **GET** /dapps/dex/withdrawRequest/historical |  |


## dapps_dex_batch_historical_get

> dapps_dex_batch_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_dex_batch_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dapps_dex_batch_historical_get: #{e}"
end
```

#### Using the dapps_dex_batch_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_dex_batch_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_dex_batch_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dapps_dex_batch_historical_get_with_http_info: #{e}"
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


## dapps_dex_orders_historical_get

> dapps_dex_orders_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  token_id: 'token_id_example' # String | 
}

begin
  
  api_instance.dapps_dex_orders_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dapps_dex_orders_historical_get: #{e}"
end
```

#### Using the dapps_dex_orders_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_dex_orders_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_dex_orders_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dapps_dex_orders_historical_get_with_http_info: #{e}"
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


## dapps_dex_prices_historical_get

> dapps_dex_prices_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  token_id: 'token_id_example' # String | 
}

begin
  
  api_instance.dapps_dex_prices_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dapps_dex_prices_historical_get: #{e}"
end
```

#### Using the dapps_dex_prices_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_dex_prices_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_dex_prices_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dapps_dex_prices_historical_get_with_http_info: #{e}"
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


## dapps_dex_solution_historical_get

> dapps_dex_solution_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  token_id: 'token_id_example' # String | 
}

begin
  
  api_instance.dapps_dex_solution_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dapps_dex_solution_historical_get: #{e}"
end
```

#### Using the dapps_dex_solution_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_dex_solution_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_dex_solution_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dapps_dex_solution_historical_get_with_http_info: #{e}"
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


## dapps_dex_stats_historical_get

> dapps_dex_stats_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_dex_stats_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dapps_dex_stats_historical_get: #{e}"
end
```

#### Using the dapps_dex_stats_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_dex_stats_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_dex_stats_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dapps_dex_stats_historical_get_with_http_info: #{e}"
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


## dapps_dex_tokens_historical_get

> dapps_dex_tokens_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  token_id: 'token_id_example' # String | 
}

begin
  
  api_instance.dapps_dex_tokens_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dapps_dex_tokens_historical_get: #{e}"
end
```

#### Using the dapps_dex_tokens_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_dex_tokens_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_dex_tokens_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dapps_dex_tokens_historical_get_with_http_info: #{e}"
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


## dapps_dex_trades_historical_get

> dapps_dex_trades_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_dex_trades_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dapps_dex_trades_historical_get: #{e}"
end
```

#### Using the dapps_dex_trades_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_dex_trades_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_dex_trades_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dapps_dex_trades_historical_get_with_http_info: #{e}"
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


## dapps_dex_users_historical_get

> dapps_dex_users_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_dex_users_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dapps_dex_users_historical_get: #{e}"
end
```

#### Using the dapps_dex_users_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_dex_users_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_dex_users_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dapps_dex_users_historical_get_with_http_info: #{e}"
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


## dapps_dex_withdraw_historical_get

> dapps_dex_withdraw_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  token_id: 'token_id_example' # String | 
}

begin
  
  api_instance.dapps_dex_withdraw_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dapps_dex_withdraw_historical_get: #{e}"
end
```

#### Using the dapps_dex_withdraw_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_dex_withdraw_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_dex_withdraw_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dapps_dex_withdraw_historical_get_with_http_info: #{e}"
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


## dapps_dex_withdraw_request_historical_get

> dapps_dex_withdraw_request_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  token_id: 'token_id_example' # String | 
}

begin
  
  api_instance.dapps_dex_withdraw_request_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dapps_dex_withdraw_request_historical_get: #{e}"
end
```

#### Using the dapps_dex_withdraw_request_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_dex_withdraw_request_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_dex_withdraw_request_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dapps_dex_withdraw_request_historical_get_with_http_info: #{e}"
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

