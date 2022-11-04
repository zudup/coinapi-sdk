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
| [**dapps_sushiswap_pools_current_get**](SushiswapApi.md#dapps_sushiswap_pools_current_get) | **GET** /dapps/sushiswap/pools/current | GetPools |
| [**dapps_sushiswap_pools_historical_get**](SushiswapApi.md#dapps_sushiswap_pools_historical_get) | **GET** /dapps/sushiswap/pools/historical | GetPools (historical) |
| [**dapps_sushiswap_swaps_current_get**](SushiswapApi.md#dapps_sushiswap_swaps_current_get) | **GET** /dapps/sushiswap/swaps/current | GetSwaps |
| [**dapps_sushiswap_swaps_historical_get**](SushiswapApi.md#dapps_sushiswap_swaps_historical_get) | **GET** /dapps/sushiswap/swaps/historical | GetSwaps (historical) |
| [**dapps_sushiswap_token_day_data_historical_get**](SushiswapApi.md#dapps_sushiswap_token_day_data_historical_get) | **GET** /dapps/sushiswap/tokenDayData/historical |  |
| [**dapps_sushiswap_tokens_current_get**](SushiswapApi.md#dapps_sushiswap_tokens_current_get) | **GET** /dapps/sushiswap/tokens/current | GetTokens |
| [**dapps_sushiswap_tokens_historical_get**](SushiswapApi.md#dapps_sushiswap_tokens_historical_get) | **GET** /dapps/sushiswap/tokens/historical | GetTokens (historical) |
| [**dapps_sushiswap_transactions_historical_get**](SushiswapApi.md#dapps_sushiswap_transactions_historical_get) | **GET** /dapps/sushiswap/transactions/historical |  |
| [**dapps_sushiswap_users_historical_get**](SushiswapApi.md#dapps_sushiswap_users_historical_get) | **GET** /dapps/sushiswap/users/historical |  |


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


## dapps_sushiswap_pools_current_get

> <Array<SushiswapPairDTO>> dapps_sushiswap_pools_current_get

GetPools

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # GetPools
  result = api_instance.dapps_sushiswap_pools_current_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_pools_current_get: #{e}"
end
```

#### Using the dapps_sushiswap_pools_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapPairDTO>>, Integer, Hash)> dapps_sushiswap_pools_current_get_with_http_info

```ruby
begin
  # GetPools
  data, status_code, headers = api_instance.dapps_sushiswap_pools_current_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapPairDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_pools_current_get_with_http_info: #{e}"
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


## dapps_sushiswap_pools_historical_get

> <Array<SushiswapPairDTO>> dapps_sushiswap_pools_historical_get(opts)

GetPools (historical)

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
  # GetPools (historical)
  result = api_instance.dapps_sushiswap_pools_historical_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_pools_historical_get: #{e}"
end
```

#### Using the dapps_sushiswap_pools_historical_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapPairDTO>>, Integer, Hash)> dapps_sushiswap_pools_historical_get_with_http_info(opts)

```ruby
begin
  # GetPools (historical)
  data, status_code, headers = api_instance.dapps_sushiswap_pools_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapPairDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_pools_historical_get_with_http_info: #{e}"
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


## dapps_sushiswap_swaps_current_get

> <Array<SushiswapSwapDTO>> dapps_sushiswap_swaps_current_get

GetSwaps

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # GetSwaps
  result = api_instance.dapps_sushiswap_swaps_current_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_swaps_current_get: #{e}"
end
```

#### Using the dapps_sushiswap_swaps_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapSwapDTO>>, Integer, Hash)> dapps_sushiswap_swaps_current_get_with_http_info

```ruby
begin
  # GetSwaps
  data, status_code, headers = api_instance.dapps_sushiswap_swaps_current_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapSwapDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_swaps_current_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;SushiswapSwapDTO&gt;**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dapps_sushiswap_swaps_historical_get

> <Array<SushiswapSwapDTO>> dapps_sushiswap_swaps_historical_get(opts)

GetSwaps (historical)

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
  # GetSwaps (historical)
  result = api_instance.dapps_sushiswap_swaps_historical_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_swaps_historical_get: #{e}"
end
```

#### Using the dapps_sushiswap_swaps_historical_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapSwapDTO>>, Integer, Hash)> dapps_sushiswap_swaps_historical_get_with_http_info(opts)

```ruby
begin
  # GetSwaps (historical)
  data, status_code, headers = api_instance.dapps_sushiswap_swaps_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapSwapDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_swaps_historical_get_with_http_info: #{e}"
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


## dapps_sushiswap_tokens_current_get

> <Array<SushiswapTokenDTO>> dapps_sushiswap_tokens_current_get

GetTokens

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # GetTokens
  result = api_instance.dapps_sushiswap_tokens_current_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_tokens_current_get: #{e}"
end
```

#### Using the dapps_sushiswap_tokens_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapTokenDTO>>, Integer, Hash)> dapps_sushiswap_tokens_current_get_with_http_info

```ruby
begin
  # GetTokens
  data, status_code, headers = api_instance.dapps_sushiswap_tokens_current_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapTokenDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_tokens_current_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;SushiswapTokenDTO&gt;**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dapps_sushiswap_tokens_historical_get

> <Array<SushiswapTokenDTO>> dapps_sushiswap_tokens_historical_get(opts)

GetTokens (historical)

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
  # GetTokens (historical)
  result = api_instance.dapps_sushiswap_tokens_historical_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_tokens_historical_get: #{e}"
end
```

#### Using the dapps_sushiswap_tokens_historical_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapTokenDTO>>, Integer, Hash)> dapps_sushiswap_tokens_historical_get_with_http_info(opts)

```ruby
begin
  # GetTokens (historical)
  data, status_code, headers = api_instance.dapps_sushiswap_tokens_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapTokenDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dapps_sushiswap_tokens_historical_get_with_http_info: #{e}"
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

