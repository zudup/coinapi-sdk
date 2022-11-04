# OpenapiClient::SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**dapps_sushiswap_bundles_historical_get**](SushiswapApi.md#dapps_sushiswap_bundles_historical_get) | **GET** /dapps/sushiswap/bundles/historical |  |
| [**dapps_sushiswap_burns_historical_get**](SushiswapApi.md#dapps_sushiswap_burns_historical_get) | **GET** /dapps/sushiswap/burns/historical |  |
| [**dapps_sushiswap_day_data_historical_get**](SushiswapApi.md#dapps_sushiswap_day_data_historical_get) | **GET** /dapps/sushiswap/dayData/historical |  |
| [**dapps_sushiswap_factory_historical_get**](SushiswapApi.md#dapps_sushiswap_factory_historical_get) | **GET** /dapps/sushiswap/factory/historical |  |
| [**dapps_sushiswap_hour_data_historical_get**](SushiswapApi.md#dapps_sushiswap_hour_data_historical_get) | **GET** /dapps/sushiswap/hourData/historical |  |
| [**dapps_sushiswap_liquidity_position_historical_get**](SushiswapApi.md#dapps_sushiswap_liquidity_position_historical_get) | **GET** /dapps/sushiswap/liquidityPosition/historical |  |
| [**dapps_sushiswap_liquidity_position_snapshots_historical_get**](SushiswapApi.md#dapps_sushiswap_liquidity_position_snapshots_historical_get) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical |  |
| [**dapps_sushiswap_mints_historical_get**](SushiswapApi.md#dapps_sushiswap_mints_historical_get) | **GET** /dapps/sushiswap/mints/historical |  |
| [**dapps_sushiswap_pool_day_data_historical_get**](SushiswapApi.md#dapps_sushiswap_pool_day_data_historical_get) | **GET** /dapps/sushiswap/poolDayData/historical |  |
| [**dapps_sushiswap_pool_hour_data_historical_get**](SushiswapApi.md#dapps_sushiswap_pool_hour_data_historical_get) | **GET** /dapps/sushiswap/poolHourData/historical |  |
| [**dapps_sushiswap_token_day_data_historical_get**](SushiswapApi.md#dapps_sushiswap_token_day_data_historical_get) | **GET** /dapps/sushiswap/tokenDayData/historical |  |
| [**dapps_sushiswap_transactions_historical_get**](SushiswapApi.md#dapps_sushiswap_transactions_historical_get) | **GET** /dapps/sushiswap/transactions/historical |  |
| [**dapps_sushiswap_users_historical_get**](SushiswapApi.md#dapps_sushiswap_users_historical_get) | **GET** /dapps/sushiswap/users/historical |  |
| [**sushiswap_get_pools__current**](SushiswapApi.md#sushiswap_get_pools__current) | **GET** /dapps/sushiswap/pools/current | Sushiswap.GetPools (current) |
| [**sushiswap_get_pools__historical**](SushiswapApi.md#sushiswap_get_pools__historical) | **GET** /dapps/sushiswap/pools/historical | Sushiswap.GetPools (historical) |
| [**sushiswap_get_swaps__current**](SushiswapApi.md#sushiswap_get_swaps__current) | **GET** /dapps/sushiswap/swaps/current | Sushiswap.GetSwaps (current) |
| [**sushiswap_get_swaps__historical**](SushiswapApi.md#sushiswap_get_swaps__historical) | **GET** /dapps/sushiswap/swaps/historical | Sushiswap.GetSwaps (historical) |
| [**sushiswap_get_tokens__current**](SushiswapApi.md#sushiswap_get_tokens__current) | **GET** /dapps/sushiswap/tokens/current | Sushiswap.GetTokens (current) |
| [**sushiswap_get_tokens__historical**](SushiswapApi.md#sushiswap_get_tokens__historical) | **GET** /dapps/sushiswap/tokens/historical | Sushiswap.GetTokens (historical) |


## dapps_sushiswap_bundles_historical_get

> dapps_sushiswap_bundles_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_sushiswap_bundles_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_bundles_historical_get: #{e}"
end
```

#### Using the dapps_sushiswap_bundles_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_sushiswap_bundles_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_sushiswap_bundles_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_bundles_historical_get_with_http_info: #{e}"
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


## dapps_sushiswap_burns_historical_get

> dapps_sushiswap_burns_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_sushiswap_burns_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_burns_historical_get: #{e}"
end
```

#### Using the dapps_sushiswap_burns_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_sushiswap_burns_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_sushiswap_burns_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_burns_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_sushiswap_day_data_historical_get

> dapps_sushiswap_day_data_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_sushiswap_day_data_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_day_data_historical_get: #{e}"
end
```

#### Using the dapps_sushiswap_day_data_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_sushiswap_day_data_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_sushiswap_day_data_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_day_data_historical_get_with_http_info: #{e}"
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


## dapps_sushiswap_factory_historical_get

> dapps_sushiswap_factory_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_sushiswap_factory_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_factory_historical_get: #{e}"
end
```

#### Using the dapps_sushiswap_factory_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_sushiswap_factory_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_sushiswap_factory_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_factory_historical_get_with_http_info: #{e}"
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


## dapps_sushiswap_hour_data_historical_get

> dapps_sushiswap_hour_data_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_sushiswap_hour_data_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_hour_data_historical_get: #{e}"
end
```

#### Using the dapps_sushiswap_hour_data_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_sushiswap_hour_data_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_sushiswap_hour_data_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_hour_data_historical_get_with_http_info: #{e}"
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


## dapps_sushiswap_liquidity_position_historical_get

> dapps_sushiswap_liquidity_position_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_sushiswap_liquidity_position_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_liquidity_position_historical_get: #{e}"
end
```

#### Using the dapps_sushiswap_liquidity_position_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_sushiswap_liquidity_position_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_sushiswap_liquidity_position_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_liquidity_position_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_sushiswap_liquidity_position_snapshots_historical_get

> dapps_sushiswap_liquidity_position_snapshots_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_sushiswap_liquidity_position_snapshots_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_liquidity_position_snapshots_historical_get: #{e}"
end
```

#### Using the dapps_sushiswap_liquidity_position_snapshots_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_sushiswap_liquidity_position_snapshots_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_sushiswap_liquidity_position_snapshots_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_liquidity_position_snapshots_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_sushiswap_mints_historical_get

> dapps_sushiswap_mints_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_sushiswap_mints_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_mints_historical_get: #{e}"
end
```

#### Using the dapps_sushiswap_mints_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_sushiswap_mints_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_sushiswap_mints_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_mints_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_sushiswap_pool_day_data_historical_get

> dapps_sushiswap_pool_day_data_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_sushiswap_pool_day_data_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_pool_day_data_historical_get: #{e}"
end
```

#### Using the dapps_sushiswap_pool_day_data_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_sushiswap_pool_day_data_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_sushiswap_pool_day_data_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_pool_day_data_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_sushiswap_pool_hour_data_historical_get

> dapps_sushiswap_pool_hour_data_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_sushiswap_pool_hour_data_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_pool_hour_data_historical_get: #{e}"
end
```

#### Using the dapps_sushiswap_pool_hour_data_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_sushiswap_pool_hour_data_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_sushiswap_pool_hour_data_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_pool_hour_data_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_sushiswap_token_day_data_historical_get

> dapps_sushiswap_token_day_data_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  token_id: 'token_id_example' # String | 
}

begin
  
  api_instance.dapps_sushiswap_token_day_data_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_token_day_data_historical_get: #{e}"
end
```

#### Using the dapps_sushiswap_token_day_data_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_sushiswap_token_day_data_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_sushiswap_token_day_data_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_token_day_data_historical_get_with_http_info: #{e}"
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


## dapps_sushiswap_transactions_historical_get

> dapps_sushiswap_transactions_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_sushiswap_transactions_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_transactions_historical_get: #{e}"
end
```

#### Using the dapps_sushiswap_transactions_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_sushiswap_transactions_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_sushiswap_transactions_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_transactions_historical_get_with_http_info: #{e}"
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


## dapps_sushiswap_users_historical_get

> dapps_sushiswap_users_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_sushiswap_users_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_users_historical_get: #{e}"
end
```

#### Using the dapps_sushiswap_users_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_sushiswap_users_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_sushiswap_users_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_users_historical_get_with_http_info: #{e}"
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


## sushiswap_get_pools__current

> <Array<SushiswapPairDTO>> sushiswap_get_pools__current

Sushiswap.GetPools (current)

Gets pools.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # Sushiswap.GetPools (current)
  result = api_instance.sushiswap_get_pools__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_pools__current: #{e}"
end
```

#### Using the sushiswap_get_pools__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapPairDTO>>, Integer, Hash)> sushiswap_get_pools__current_with_http_info

```ruby
begin
  # Sushiswap.GetPools (current)
  data, status_code, headers = api_instance.sushiswap_get_pools__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapPairDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_pools__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;SushiswapPairDTO&gt;**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_pools__historical

> <Array<SushiswapPairDTO>> sushiswap_get_pools__historical(opts)

Sushiswap.GetPools (historical)

Gets list of pools for given filters.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  # Sushiswap.GetPools (historical)
  result = api_instance.sushiswap_get_pools__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_pools__historical: #{e}"
end
```

#### Using the sushiswap_get_pools__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapPairDTO>>, Integer, Hash)> sushiswap_get_pools__historical_with_http_info(opts)

```ruby
begin
  # Sushiswap.GetPools (historical)
  data, status_code, headers = api_instance.sushiswap_get_pools__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapPairDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_pools__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

[**Array&lt;SushiswapPairDTO&gt;**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_swaps__current

> <SushiswapSwapDTO> sushiswap_get_swaps__current

Sushiswap.GetSwaps (current)

Gets swaps.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # Sushiswap.GetSwaps (current)
  result = api_instance.sushiswap_get_swaps__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_swaps__current: #{e}"
end
```

#### Using the sushiswap_get_swaps__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SushiswapSwapDTO>, Integer, Hash)> sushiswap_get_swaps__current_with_http_info

```ruby
begin
  # Sushiswap.GetSwaps (current)
  data, status_code, headers = api_instance.sushiswap_get_swaps__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SushiswapSwapDTO>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_swaps__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SushiswapSwapDTO**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_swaps__historical

> <Array<SushiswapSwapDTO>> sushiswap_get_swaps__historical(opts)

Sushiswap.GetSwaps (historical)

Gets list of swaps for given filters.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  # Sushiswap.GetSwaps (historical)
  result = api_instance.sushiswap_get_swaps__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_swaps__historical: #{e}"
end
```

#### Using the sushiswap_get_swaps__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapSwapDTO>>, Integer, Hash)> sushiswap_get_swaps__historical_with_http_info(opts)

```ruby
begin
  # Sushiswap.GetSwaps (historical)
  data, status_code, headers = api_instance.sushiswap_get_swaps__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapSwapDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_swaps__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

[**Array&lt;SushiswapSwapDTO&gt;**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_tokens__current

> <SushiswapTokenDTO> sushiswap_get_tokens__current

Sushiswap.GetTokens (current)

Gets tokens.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # Sushiswap.GetTokens (current)
  result = api_instance.sushiswap_get_tokens__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_tokens__current: #{e}"
end
```

#### Using the sushiswap_get_tokens__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SushiswapTokenDTO>, Integer, Hash)> sushiswap_get_tokens__current_with_http_info

```ruby
begin
  # Sushiswap.GetTokens (current)
  data, status_code, headers = api_instance.sushiswap_get_tokens__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SushiswapTokenDTO>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_tokens__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SushiswapTokenDTO**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_tokens__historical

> <Array<SushiswapTokenDTO>> sushiswap_get_tokens__historical(opts)

Sushiswap.GetTokens (historical)

Gets list of tokens for given filters.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  token_id: 'token_id_example' # String | 
}

begin
  # Sushiswap.GetTokens (historical)
  result = api_instance.sushiswap_get_tokens__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_tokens__historical: #{e}"
end
```

#### Using the sushiswap_get_tokens__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapTokenDTO>>, Integer, Hash)> sushiswap_get_tokens__historical_with_http_info(opts)

```ruby
begin
  # Sushiswap.GetTokens (historical)
  data, status_code, headers = api_instance.sushiswap_get_tokens__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapTokenDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_tokens__historical_with_http_info: #{e}"
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

[**Array&lt;SushiswapTokenDTO&gt;**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

