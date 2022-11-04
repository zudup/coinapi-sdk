# OpenapiClient::UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**dapps_uniswapv2_bundles_historical_get**](UniswapV2Api.md#dapps_uniswapv2_bundles_historical_get) | **GET** /dapps/uniswapv2/bundles/historical |  |
| [**dapps_uniswapv2_burns_historical_get**](UniswapV2Api.md#dapps_uniswapv2_burns_historical_get) | **GET** /dapps/uniswapv2/burns/historical |  |
| [**dapps_uniswapv2_day_data_historical_get**](UniswapV2Api.md#dapps_uniswapv2_day_data_historical_get) | **GET** /dapps/uniswapv2/dayData/historical |  |
| [**dapps_uniswapv2_factory_historical_get**](UniswapV2Api.md#dapps_uniswapv2_factory_historical_get) | **GET** /dapps/uniswapv2/factory/historical |  |
| [**dapps_uniswapv2_liquidity_position_historical_get**](UniswapV2Api.md#dapps_uniswapv2_liquidity_position_historical_get) | **GET** /dapps/uniswapv2/liquidityPosition/historical |  |
| [**dapps_uniswapv2_liquidity_position_snapshots_historical_get**](UniswapV2Api.md#dapps_uniswapv2_liquidity_position_snapshots_historical_get) | **GET** /dapps/uniswapv2/liquidityPositionSnapshots/historical |  |
| [**dapps_uniswapv2_mints_historical_get**](UniswapV2Api.md#dapps_uniswapv2_mints_historical_get) | **GET** /dapps/uniswapv2/mints/historical |  |
| [**dapps_uniswapv2_pool_day_data_historical_get**](UniswapV2Api.md#dapps_uniswapv2_pool_day_data_historical_get) | **GET** /dapps/uniswapv2/poolDayData/historical |  |
| [**dapps_uniswapv2_pool_hour_data_historical_get**](UniswapV2Api.md#dapps_uniswapv2_pool_hour_data_historical_get) | **GET** /dapps/uniswapv2/poolHourData/historical |  |
| [**dapps_uniswapv2_pools_current_get**](UniswapV2Api.md#dapps_uniswapv2_pools_current_get) | **GET** /dapps/uniswapv2/pools/current | GetPools |
| [**dapps_uniswapv2_pools_historical_get**](UniswapV2Api.md#dapps_uniswapv2_pools_historical_get) | **GET** /dapps/uniswapv2/pools/historical |  |
| [**dapps_uniswapv2_swaps_current_get**](UniswapV2Api.md#dapps_uniswapv2_swaps_current_get) | **GET** /dapps/uniswapv2/swaps/current | GetSwaps |
| [**dapps_uniswapv2_swaps_historical_get**](UniswapV2Api.md#dapps_uniswapv2_swaps_historical_get) | **GET** /dapps/uniswapv2/swaps/historical |  |
| [**dapps_uniswapv2_token_day_data_historical_get**](UniswapV2Api.md#dapps_uniswapv2_token_day_data_historical_get) | **GET** /dapps/uniswapv2/tokenDayData/historical |  |
| [**dapps_uniswapv2_tokens_current_get**](UniswapV2Api.md#dapps_uniswapv2_tokens_current_get) | **GET** /dapps/uniswapv2/tokens/current | GetTokens |
| [**dapps_uniswapv2_tokens_historical_get**](UniswapV2Api.md#dapps_uniswapv2_tokens_historical_get) | **GET** /dapps/uniswapv2/tokens/historical |  |
| [**dapps_uniswapv2_transactions_historical_get**](UniswapV2Api.md#dapps_uniswapv2_transactions_historical_get) | **GET** /dapps/uniswapv2/transactions/historical |  |
| [**dapps_uniswapv2_users_historical_get**](UniswapV2Api.md#dapps_uniswapv2_users_historical_get) | **GET** /dapps/uniswapv2/users/historical |  |


## dapps_uniswapv2_bundles_historical_get

> dapps_uniswapv2_bundles_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_uniswapv2_bundles_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_bundles_historical_get: #{e}"
end
```

#### Using the dapps_uniswapv2_bundles_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_uniswapv2_bundles_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_uniswapv2_bundles_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_bundles_historical_get_with_http_info: #{e}"
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


## dapps_uniswapv2_burns_historical_get

> dapps_uniswapv2_burns_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_uniswapv2_burns_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_burns_historical_get: #{e}"
end
```

#### Using the dapps_uniswapv2_burns_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_uniswapv2_burns_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_uniswapv2_burns_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_burns_historical_get_with_http_info: #{e}"
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


## dapps_uniswapv2_day_data_historical_get

> dapps_uniswapv2_day_data_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_uniswapv2_day_data_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_day_data_historical_get: #{e}"
end
```

#### Using the dapps_uniswapv2_day_data_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_uniswapv2_day_data_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_uniswapv2_day_data_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_day_data_historical_get_with_http_info: #{e}"
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


## dapps_uniswapv2_factory_historical_get

> dapps_uniswapv2_factory_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_uniswapv2_factory_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_factory_historical_get: #{e}"
end
```

#### Using the dapps_uniswapv2_factory_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_uniswapv2_factory_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_uniswapv2_factory_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_factory_historical_get_with_http_info: #{e}"
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


## dapps_uniswapv2_liquidity_position_historical_get

> dapps_uniswapv2_liquidity_position_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_uniswapv2_liquidity_position_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_liquidity_position_historical_get: #{e}"
end
```

#### Using the dapps_uniswapv2_liquidity_position_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_uniswapv2_liquidity_position_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_uniswapv2_liquidity_position_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_liquidity_position_historical_get_with_http_info: #{e}"
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


## dapps_uniswapv2_liquidity_position_snapshots_historical_get

> dapps_uniswapv2_liquidity_position_snapshots_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_uniswapv2_liquidity_position_snapshots_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_liquidity_position_snapshots_historical_get: #{e}"
end
```

#### Using the dapps_uniswapv2_liquidity_position_snapshots_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_uniswapv2_liquidity_position_snapshots_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_uniswapv2_liquidity_position_snapshots_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_liquidity_position_snapshots_historical_get_with_http_info: #{e}"
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


## dapps_uniswapv2_mints_historical_get

> dapps_uniswapv2_mints_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_uniswapv2_mints_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_mints_historical_get: #{e}"
end
```

#### Using the dapps_uniswapv2_mints_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_uniswapv2_mints_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_uniswapv2_mints_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_mints_historical_get_with_http_info: #{e}"
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


## dapps_uniswapv2_pool_day_data_historical_get

> dapps_uniswapv2_pool_day_data_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_uniswapv2_pool_day_data_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_pool_day_data_historical_get: #{e}"
end
```

#### Using the dapps_uniswapv2_pool_day_data_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_uniswapv2_pool_day_data_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_uniswapv2_pool_day_data_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_pool_day_data_historical_get_with_http_info: #{e}"
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


## dapps_uniswapv2_pool_hour_data_historical_get

> dapps_uniswapv2_pool_hour_data_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_uniswapv2_pool_hour_data_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_pool_hour_data_historical_get: #{e}"
end
```

#### Using the dapps_uniswapv2_pool_hour_data_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_uniswapv2_pool_hour_data_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_uniswapv2_pool_hour_data_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_pool_hour_data_historical_get_with_http_info: #{e}"
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


## dapps_uniswapv2_pools_current_get

> <Array<PairV2DTO>> dapps_uniswapv2_pools_current_get(opts)

GetPools

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  filter_pool_id: 'filter_pool_id_example' # String | Filter pool id
}

begin
  # GetPools
  result = api_instance.dapps_uniswapv2_pools_current_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_pools_current_get: #{e}"
end
```

#### Using the dapps_uniswapv2_pools_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PairV2DTO>>, Integer, Hash)> dapps_uniswapv2_pools_current_get_with_http_info(opts)

```ruby
begin
  # GetPools
  data, status_code, headers = api_instance.dapps_uniswapv2_pools_current_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PairV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_pools_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_pool_id** | **String** | Filter pool id | [optional] |

### Return type

[**Array&lt;PairV2DTO&gt;**](PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dapps_uniswapv2_pools_historical_get

> dapps_uniswapv2_pools_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_uniswapv2_pools_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_pools_historical_get: #{e}"
end
```

#### Using the dapps_uniswapv2_pools_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_uniswapv2_pools_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_uniswapv2_pools_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_pools_historical_get_with_http_info: #{e}"
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


## dapps_uniswapv2_swaps_current_get

> <Array<SwapV2DTO>> dapps_uniswapv2_swaps_current_get

GetSwaps

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new

begin
  # GetSwaps
  result = api_instance.dapps_uniswapv2_swaps_current_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_swaps_current_get: #{e}"
end
```

#### Using the dapps_uniswapv2_swaps_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SwapV2DTO>>, Integer, Hash)> dapps_uniswapv2_swaps_current_get_with_http_info

```ruby
begin
  # GetSwaps
  data, status_code, headers = api_instance.dapps_uniswapv2_swaps_current_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SwapV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_swaps_current_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;SwapV2DTO&gt;**](SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dapps_uniswapv2_swaps_historical_get

> dapps_uniswapv2_swaps_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_uniswapv2_swaps_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_swaps_historical_get: #{e}"
end
```

#### Using the dapps_uniswapv2_swaps_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_uniswapv2_swaps_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_uniswapv2_swaps_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_swaps_historical_get_with_http_info: #{e}"
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


## dapps_uniswapv2_token_day_data_historical_get

> dapps_uniswapv2_token_day_data_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  token_id: 'token_id_example' # String | 
}

begin
  
  api_instance.dapps_uniswapv2_token_day_data_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_token_day_data_historical_get: #{e}"
end
```

#### Using the dapps_uniswapv2_token_day_data_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_uniswapv2_token_day_data_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_uniswapv2_token_day_data_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_token_day_data_historical_get_with_http_info: #{e}"
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


## dapps_uniswapv2_tokens_current_get

> <Array<TokenV2DTO>> dapps_uniswapv2_tokens_current_get

GetTokens

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new

begin
  # GetTokens
  result = api_instance.dapps_uniswapv2_tokens_current_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_tokens_current_get: #{e}"
end
```

#### Using the dapps_uniswapv2_tokens_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TokenV2DTO>>, Integer, Hash)> dapps_uniswapv2_tokens_current_get_with_http_info

```ruby
begin
  # GetTokens
  data, status_code, headers = api_instance.dapps_uniswapv2_tokens_current_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TokenV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_tokens_current_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;TokenV2DTO&gt;**](TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dapps_uniswapv2_tokens_historical_get

> dapps_uniswapv2_tokens_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  token_id: 'token_id_example' # String | 
}

begin
  
  api_instance.dapps_uniswapv2_tokens_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_tokens_historical_get: #{e}"
end
```

#### Using the dapps_uniswapv2_tokens_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_uniswapv2_tokens_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_uniswapv2_tokens_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_tokens_historical_get_with_http_info: #{e}"
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


## dapps_uniswapv2_transactions_historical_get

> dapps_uniswapv2_transactions_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_uniswapv2_transactions_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_transactions_historical_get: #{e}"
end
```

#### Using the dapps_uniswapv2_transactions_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_uniswapv2_transactions_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_uniswapv2_transactions_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_transactions_historical_get_with_http_info: #{e}"
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


## dapps_uniswapv2_users_historical_get

> dapps_uniswapv2_users_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_uniswapv2_users_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_users_historical_get: #{e}"
end
```

#### Using the dapps_uniswapv2_users_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_uniswapv2_users_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_uniswapv2_users_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->dapps_uniswapv2_users_historical_get_with_http_info: #{e}"
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

