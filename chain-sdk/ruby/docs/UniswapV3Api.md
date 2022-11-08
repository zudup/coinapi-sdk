# OpenapiClient::UniswapV3Api

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**uniswap_v3_get_bundles__current**](UniswapV3Api.md#uniswap_v3_get_bundles__current) | **GET** /dapps/uniswapv3/bundles/current | GetBundles (current) |
| [**uniswap_v3_get_bundles__historical**](UniswapV3Api.md#uniswap_v3_get_bundles__historical) | **GET** /dapps/uniswapv3/bundles/historical | GetBundles (historical) |
| [**uniswap_v3_get_burns__current**](UniswapV3Api.md#uniswap_v3_get_burns__current) | **GET** /dapps/uniswapv3/burns/current | GetBurns (current) |
| [**uniswap_v3_get_burns__historical**](UniswapV3Api.md#uniswap_v3_get_burns__historical) | **GET** /dapps/uniswapv3/burns/historical | GetBurns (historical) |
| [**uniswap_v3_get_day_data__current**](UniswapV3Api.md#uniswap_v3_get_day_data__current) | **GET** /dapps/uniswapv3/dayData/current | GetDayData (current) |
| [**uniswap_v3_get_day_data__historical**](UniswapV3Api.md#uniswap_v3_get_day_data__historical) | **GET** /dapps/uniswapv3/dayData/historical | GetDayData (historical) |
| [**uniswap_v3_get_factory__current**](UniswapV3Api.md#uniswap_v3_get_factory__current) | **GET** /dapps/uniswapv3/factory/current | GetFactory (current) |
| [**uniswap_v3_get_factory__historical**](UniswapV3Api.md#uniswap_v3_get_factory__historical) | **GET** /dapps/uniswapv3/factory/historical | GetFactory (historical) |
| [**uniswap_v3_get_mints__current**](UniswapV3Api.md#uniswap_v3_get_mints__current) | **GET** /dapps/uniswapv3/mints/current | GetMints (current) |
| [**uniswap_v3_get_mints__historical**](UniswapV3Api.md#uniswap_v3_get_mints__historical) | **GET** /dapps/uniswapv3/mints/historical | GetMints (historical) |
| [**uniswap_v3_get_pools__current**](UniswapV3Api.md#uniswap_v3_get_pools__current) | **GET** /dapps/uniswapv3/pools/current | GetPools (current) 🔥 |
| [**uniswap_v3_get_pools__historical**](UniswapV3Api.md#uniswap_v3_get_pools__historical) | **GET** /dapps/uniswapv3/pools/historical | GetPools (historical) 🔥 |
| [**uniswap_v3_get_pools_day_data__current**](UniswapV3Api.md#uniswap_v3_get_pools_day_data__current) | **GET** /dapps/uniswapv3/poolsDayData/current | GetPoolsDayData (current) |
| [**uniswap_v3_get_pools_day_data__historical**](UniswapV3Api.md#uniswap_v3_get_pools_day_data__historical) | **GET** /dapps/uniswapv3/poolsDayData/historical | GetPoolsDayData (historical) |
| [**uniswap_v3_get_pools_hour_data__current**](UniswapV3Api.md#uniswap_v3_get_pools_hour_data__current) | **GET** /dapps/uniswapv3/poolsHourData/current | GetPoolsHourData (current) |
| [**uniswap_v3_get_pools_hour_data__historical**](UniswapV3Api.md#uniswap_v3_get_pools_hour_data__historical) | **GET** /dapps/uniswapv3/poolsHourData/historical | GetPoolsHourData (historical) |
| [**uniswap_v3_get_positions__current**](UniswapV3Api.md#uniswap_v3_get_positions__current) | **GET** /dapps/uniswapv3/positions/current | GetPositions (current) |
| [**uniswap_v3_get_positions__historical**](UniswapV3Api.md#uniswap_v3_get_positions__historical) | **GET** /dapps/uniswapv3/positions/historical | GetPositions (historical) |
| [**uniswap_v3_get_positions_snaphots__historical**](UniswapV3Api.md#uniswap_v3_get_positions_snaphots__historical) | **GET** /dapps/uniswapv3/positionsSnapshots/historical | GetPositionsSnaphots (historical) |
| [**uniswap_v3_get_positions_snapshots__current**](UniswapV3Api.md#uniswap_v3_get_positions_snapshots__current) | **GET** /dapps/uniswapv3/positionSnapshots/current | GetPositionsSnapshots (current) |
| [**uniswap_v3_get_swaps__current**](UniswapV3Api.md#uniswap_v3_get_swaps__current) | **GET** /dapps/uniswapv3/swaps/current | GetSwaps (current) 🔥 |
| [**uniswap_v3_get_swaps__historical**](UniswapV3Api.md#uniswap_v3_get_swaps__historical) | **GET** /dapps/uniswapv3/swaps/historical | GetSwaps (historical) 🔥 |
| [**uniswap_v3_get_ticks__current**](UniswapV3Api.md#uniswap_v3_get_ticks__current) | **GET** /dapps/uniswapv3/ticks/current | GetTicks (current) |
| [**uniswap_v3_get_ticks__historical**](UniswapV3Api.md#uniswap_v3_get_ticks__historical) | **GET** /dapps/uniswapv3/ticks/historical | GetTicks (historical) |
| [**uniswap_v3_get_ticks_day_data__current**](UniswapV3Api.md#uniswap_v3_get_ticks_day_data__current) | **GET** /dapps/uniswapv3/ticksDayData/current | GetTicksDayData (current) |
| [**uniswap_v3_get_ticks_day_data__historical**](UniswapV3Api.md#uniswap_v3_get_ticks_day_data__historical) | **GET** /dapps/uniswapv3/ticksDayData/historical | GetTicksDayData (historical) |
| [**uniswap_v3_get_tokens__current**](UniswapV3Api.md#uniswap_v3_get_tokens__current) | **GET** /dapps/uniswapv3/tokens/current | GetTokens (current) 🔥 |
| [**uniswap_v3_get_tokens__historical**](UniswapV3Api.md#uniswap_v3_get_tokens__historical) | **GET** /dapps/uniswapv3/tokens/historical | GetTokens (historical) 🔥 |
| [**uniswap_v3_get_tokens_day_data__current**](UniswapV3Api.md#uniswap_v3_get_tokens_day_data__current) | **GET** /dapps/uniswapv3/tokensDayData/current | GetTokensDayData (current) |
| [**uniswap_v3_get_tokens_day_data__historical**](UniswapV3Api.md#uniswap_v3_get_tokens_day_data__historical) | **GET** /dapps/uniswapv3/tokensDayData/historical | GetTokensDayData (historical) |
| [**uniswap_v3_get_tokens_hour_data__current**](UniswapV3Api.md#uniswap_v3_get_tokens_hour_data__current) | **GET** /dapps/uniswapv3/tokensHourData/current | GetTokensHourData (current) |
| [**uniswap_v3_get_tokens_hour_data__historical**](UniswapV3Api.md#uniswap_v3_get_tokens_hour_data__historical) | **GET** /dapps/uniswapv3/tokensHourData/historical | GetTokensHourData (historical) |
| [**uniswap_v3_get_transactions__historical**](UniswapV3Api.md#uniswap_v3_get_transactions__historical) | **GET** /dapps/uniswapv3/transactions/historical | GetTransactions (historical) |


## uniswap_v3_get_bundles__current

> <Array<UniswapV3BundleV3DTO>> uniswap_v3_get_bundles__current

GetBundles (current)

Gets bundles.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new

begin
  # GetBundles (current)
  result = api_instance.uniswap_v3_get_bundles__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_bundles__current: #{e}"
end
```

#### Using the uniswap_v3_get_bundles__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3BundleV3DTO>>, Integer, Hash)> uniswap_v3_get_bundles__current_with_http_info

```ruby
begin
  # GetBundles (current)
  data, status_code, headers = api_instance.uniswap_v3_get_bundles__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3BundleV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_bundles__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;UniswapV3BundleV3DTO&gt;**](UniswapV3BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_bundles__historical

> <Array<UniswapV3BundleV3DTO>> uniswap_v3_get_bundles__historical(opts)

GetBundles (historical)

Gets bundles.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  # GetBundles (historical)
  result = api_instance.uniswap_v3_get_bundles__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_bundles__historical: #{e}"
end
```

#### Using the uniswap_v3_get_bundles__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3BundleV3DTO>>, Integer, Hash)> uniswap_v3_get_bundles__historical_with_http_info(opts)

```ruby
begin
  # GetBundles (historical)
  data, status_code, headers = api_instance.uniswap_v3_get_bundles__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3BundleV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_bundles__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV3BundleV3DTO&gt;**](UniswapV3BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_burns__current

> <Array<UniswapV3BurnV3DTO>> uniswap_v3_get_burns__current(opts)

GetBurns (current)

Gets burns.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  filter_pool_id: 'filter_pool_id_example' # String | 
}

begin
  # GetBurns (current)
  result = api_instance.uniswap_v3_get_burns__current(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_burns__current: #{e}"
end
```

#### Using the uniswap_v3_get_burns__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3BurnV3DTO>>, Integer, Hash)> uniswap_v3_get_burns__current_with_http_info(opts)

```ruby
begin
  # GetBurns (current)
  data, status_code, headers = api_instance.uniswap_v3_get_burns__current_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3BurnV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_burns__current_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_pool_id** | **String** |  | [optional] |

### Return type

[**Array&lt;UniswapV3BurnV3DTO&gt;**](UniswapV3BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_burns__historical

> <Array<UniswapV3BurnV3DTO>> uniswap_v3_get_burns__historical(opts)

GetBurns (historical)

Gets burns.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  # GetBurns (historical)
  result = api_instance.uniswap_v3_get_burns__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_burns__historical: #{e}"
end
```

#### Using the uniswap_v3_get_burns__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3BurnV3DTO>>, Integer, Hash)> uniswap_v3_get_burns__historical_with_http_info(opts)

```ruby
begin
  # GetBurns (historical)
  data, status_code, headers = api_instance.uniswap_v3_get_burns__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3BurnV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_burns__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV3BurnV3DTO&gt;**](UniswapV3BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_day_data__current

> <Array<UniswapV3UniswapDayDataV3DTO>> uniswap_v3_get_day_data__current

GetDayData (current)

Gets uniswapv3 day data.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new

begin
  # GetDayData (current)
  result = api_instance.uniswap_v3_get_day_data__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_day_data__current: #{e}"
end
```

#### Using the uniswap_v3_get_day_data__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3UniswapDayDataV3DTO>>, Integer, Hash)> uniswap_v3_get_day_data__current_with_http_info

```ruby
begin
  # GetDayData (current)
  data, status_code, headers = api_instance.uniswap_v3_get_day_data__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3UniswapDayDataV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_day_data__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;UniswapV3UniswapDayDataV3DTO&gt;**](UniswapV3UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_day_data__historical

> <Array<UniswapV3UniswapDayDataV3DTO>> uniswap_v3_get_day_data__historical(opts)

GetDayData (historical)

Gets uniswapv3 day data.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  # GetDayData (historical)
  result = api_instance.uniswap_v3_get_day_data__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_day_data__historical: #{e}"
end
```

#### Using the uniswap_v3_get_day_data__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3UniswapDayDataV3DTO>>, Integer, Hash)> uniswap_v3_get_day_data__historical_with_http_info(opts)

```ruby
begin
  # GetDayData (historical)
  data, status_code, headers = api_instance.uniswap_v3_get_day_data__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3UniswapDayDataV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_day_data__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV3UniswapDayDataV3DTO&gt;**](UniswapV3UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_factory__current

> <Array<UniswapV3FactoryV3DTO>> uniswap_v3_get_factory__current

GetFactory (current)

Gets factory.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new

begin
  # GetFactory (current)
  result = api_instance.uniswap_v3_get_factory__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_factory__current: #{e}"
end
```

#### Using the uniswap_v3_get_factory__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3FactoryV3DTO>>, Integer, Hash)> uniswap_v3_get_factory__current_with_http_info

```ruby
begin
  # GetFactory (current)
  data, status_code, headers = api_instance.uniswap_v3_get_factory__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3FactoryV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_factory__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;UniswapV3FactoryV3DTO&gt;**](UniswapV3FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_factory__historical

> <Array<UniswapV3FactoryV3DTO>> uniswap_v3_get_factory__historical(opts)

GetFactory (historical)

Gets factory.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  # GetFactory (historical)
  result = api_instance.uniswap_v3_get_factory__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_factory__historical: #{e}"
end
```

#### Using the uniswap_v3_get_factory__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3FactoryV3DTO>>, Integer, Hash)> uniswap_v3_get_factory__historical_with_http_info(opts)

```ruby
begin
  # GetFactory (historical)
  data, status_code, headers = api_instance.uniswap_v3_get_factory__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3FactoryV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_factory__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV3FactoryV3DTO&gt;**](UniswapV3FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_mints__current

> <Array<UniswapV3MintV3DTO>> uniswap_v3_get_mints__current(opts)

GetMints (current)

Gets mints.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  filter_pool_id: 'filter_pool_id_example' # String | 
}

begin
  # GetMints (current)
  result = api_instance.uniswap_v3_get_mints__current(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_mints__current: #{e}"
end
```

#### Using the uniswap_v3_get_mints__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3MintV3DTO>>, Integer, Hash)> uniswap_v3_get_mints__current_with_http_info(opts)

```ruby
begin
  # GetMints (current)
  data, status_code, headers = api_instance.uniswap_v3_get_mints__current_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3MintV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_mints__current_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_pool_id** | **String** |  | [optional] |

### Return type

[**Array&lt;UniswapV3MintV3DTO&gt;**](UniswapV3MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_mints__historical

> <Array<UniswapV3MintV3DTO>> uniswap_v3_get_mints__historical(opts)

GetMints (historical)

Gets mints.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  # GetMints (historical)
  result = api_instance.uniswap_v3_get_mints__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_mints__historical: #{e}"
end
```

#### Using the uniswap_v3_get_mints__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3MintV3DTO>>, Integer, Hash)> uniswap_v3_get_mints__historical_with_http_info(opts)

```ruby
begin
  # GetMints (historical)
  data, status_code, headers = api_instance.uniswap_v3_get_mints__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3MintV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_mints__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV3MintV3DTO&gt;**](UniswapV3MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_pools__current

> <Array<UniswapV3PoolV3DTO>> uniswap_v3_get_pools__current(opts)

GetPools (current) 🔥

Gets pools.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  filter_pool_id: 'filter_pool_id_example' # String | 
}

begin
  # GetPools (current) 🔥
  result = api_instance.uniswap_v3_get_pools__current(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_pools__current: #{e}"
end
```

#### Using the uniswap_v3_get_pools__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3PoolV3DTO>>, Integer, Hash)> uniswap_v3_get_pools__current_with_http_info(opts)

```ruby
begin
  # GetPools (current) 🔥
  data, status_code, headers = api_instance.uniswap_v3_get_pools__current_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3PoolV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_pools__current_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_pool_id** | **String** |  | [optional] |

### Return type

[**Array&lt;UniswapV3PoolV3DTO&gt;**](UniswapV3PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_pools__historical

> <Array<UniswapV3PoolV3DTO>> uniswap_v3_get_pools__historical(opts)

GetPools (historical) 🔥

Gets pools.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  # GetPools (historical) 🔥
  result = api_instance.uniswap_v3_get_pools__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_pools__historical: #{e}"
end
```

#### Using the uniswap_v3_get_pools__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3PoolV3DTO>>, Integer, Hash)> uniswap_v3_get_pools__historical_with_http_info(opts)

```ruby
begin
  # GetPools (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v3_get_pools__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3PoolV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_pools__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV3PoolV3DTO&gt;**](UniswapV3PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_pools_day_data__current

> <Array<UniswapV3PoolDayDataV3DTO>> uniswap_v3_get_pools_day_data__current(opts)

GetPoolsDayData (current)

Gets pools day data.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  filter_pool_id: 'filter_pool_id_example' # String | 
}

begin
  # GetPoolsDayData (current)
  result = api_instance.uniswap_v3_get_pools_day_data__current(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_pools_day_data__current: #{e}"
end
```

#### Using the uniswap_v3_get_pools_day_data__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3PoolDayDataV3DTO>>, Integer, Hash)> uniswap_v3_get_pools_day_data__current_with_http_info(opts)

```ruby
begin
  # GetPoolsDayData (current)
  data, status_code, headers = api_instance.uniswap_v3_get_pools_day_data__current_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3PoolDayDataV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_pools_day_data__current_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_pool_id** | **String** |  | [optional] |

### Return type

[**Array&lt;UniswapV3PoolDayDataV3DTO&gt;**](UniswapV3PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_pools_day_data__historical

> <Array<UniswapV3PoolDayDataV3DTO>> uniswap_v3_get_pools_day_data__historical(opts)

GetPoolsDayData (historical)

Gets pools day data.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  # GetPoolsDayData (historical)
  result = api_instance.uniswap_v3_get_pools_day_data__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_pools_day_data__historical: #{e}"
end
```

#### Using the uniswap_v3_get_pools_day_data__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3PoolDayDataV3DTO>>, Integer, Hash)> uniswap_v3_get_pools_day_data__historical_with_http_info(opts)

```ruby
begin
  # GetPoolsDayData (historical)
  data, status_code, headers = api_instance.uniswap_v3_get_pools_day_data__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3PoolDayDataV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_pools_day_data__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV3PoolDayDataV3DTO&gt;**](UniswapV3PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_pools_hour_data__current

> <Array<UniswapV3PoolHourDataV3DTO>> uniswap_v3_get_pools_hour_data__current(opts)

GetPoolsHourData (current)

Gets pools hour data.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  filter_pool_id: 'filter_pool_id_example' # String | 
}

begin
  # GetPoolsHourData (current)
  result = api_instance.uniswap_v3_get_pools_hour_data__current(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_pools_hour_data__current: #{e}"
end
```

#### Using the uniswap_v3_get_pools_hour_data__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3PoolHourDataV3DTO>>, Integer, Hash)> uniswap_v3_get_pools_hour_data__current_with_http_info(opts)

```ruby
begin
  # GetPoolsHourData (current)
  data, status_code, headers = api_instance.uniswap_v3_get_pools_hour_data__current_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3PoolHourDataV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_pools_hour_data__current_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_pool_id** | **String** |  | [optional] |

### Return type

[**Array&lt;UniswapV3PoolHourDataV3DTO&gt;**](UniswapV3PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_pools_hour_data__historical

> <Array<UniswapV3PoolHourDataV3DTO>> uniswap_v3_get_pools_hour_data__historical(opts)

GetPoolsHourData (historical)

Gets pools hour data.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  # GetPoolsHourData (historical)
  result = api_instance.uniswap_v3_get_pools_hour_data__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_pools_hour_data__historical: #{e}"
end
```

#### Using the uniswap_v3_get_pools_hour_data__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3PoolHourDataV3DTO>>, Integer, Hash)> uniswap_v3_get_pools_hour_data__historical_with_http_info(opts)

```ruby
begin
  # GetPoolsHourData (historical)
  data, status_code, headers = api_instance.uniswap_v3_get_pools_hour_data__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3PoolHourDataV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_pools_hour_data__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV3PoolHourDataV3DTO&gt;**](UniswapV3PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_positions__current

> <Array<UniswapV3PositionV3DTO>> uniswap_v3_get_positions__current(opts)

GetPositions (current)

Gets positions.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  filter_pool_id: 'filter_pool_id_example' # String | 
}

begin
  # GetPositions (current)
  result = api_instance.uniswap_v3_get_positions__current(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_positions__current: #{e}"
end
```

#### Using the uniswap_v3_get_positions__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3PositionV3DTO>>, Integer, Hash)> uniswap_v3_get_positions__current_with_http_info(opts)

```ruby
begin
  # GetPositions (current)
  data, status_code, headers = api_instance.uniswap_v3_get_positions__current_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3PositionV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_positions__current_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_pool_id** | **String** |  | [optional] |

### Return type

[**Array&lt;UniswapV3PositionV3DTO&gt;**](UniswapV3PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_positions__historical

> <Array<UniswapV3PositionV3DTO>> uniswap_v3_get_positions__historical(opts)

GetPositions (historical)

Gets positions.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  # GetPositions (historical)
  result = api_instance.uniswap_v3_get_positions__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_positions__historical: #{e}"
end
```

#### Using the uniswap_v3_get_positions__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3PositionV3DTO>>, Integer, Hash)> uniswap_v3_get_positions__historical_with_http_info(opts)

```ruby
begin
  # GetPositions (historical)
  data, status_code, headers = api_instance.uniswap_v3_get_positions__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3PositionV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_positions__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV3PositionV3DTO&gt;**](UniswapV3PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_positions_snaphots__historical

> <Array<UniswapV3PositionSnapshotV3DTO>> uniswap_v3_get_positions_snaphots__historical(opts)

GetPositionsSnaphots (historical)

Gets positions snapshots.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  # GetPositionsSnaphots (historical)
  result = api_instance.uniswap_v3_get_positions_snaphots__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_positions_snaphots__historical: #{e}"
end
```

#### Using the uniswap_v3_get_positions_snaphots__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3PositionSnapshotV3DTO>>, Integer, Hash)> uniswap_v3_get_positions_snaphots__historical_with_http_info(opts)

```ruby
begin
  # GetPositionsSnaphots (historical)
  data, status_code, headers = api_instance.uniswap_v3_get_positions_snaphots__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3PositionSnapshotV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_positions_snaphots__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV3PositionSnapshotV3DTO&gt;**](UniswapV3PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_positions_snapshots__current

> <Array<UniswapV3PositionSnapshotV3DTO>> uniswap_v3_get_positions_snapshots__current(opts)

GetPositionsSnapshots (current)

Gets positions snapshots.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  filter_pool_id: 'filter_pool_id_example' # String | 
}

begin
  # GetPositionsSnapshots (current)
  result = api_instance.uniswap_v3_get_positions_snapshots__current(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_positions_snapshots__current: #{e}"
end
```

#### Using the uniswap_v3_get_positions_snapshots__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3PositionSnapshotV3DTO>>, Integer, Hash)> uniswap_v3_get_positions_snapshots__current_with_http_info(opts)

```ruby
begin
  # GetPositionsSnapshots (current)
  data, status_code, headers = api_instance.uniswap_v3_get_positions_snapshots__current_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3PositionSnapshotV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_positions_snapshots__current_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_pool_id** | **String** |  | [optional] |

### Return type

[**Array&lt;UniswapV3PositionSnapshotV3DTO&gt;**](UniswapV3PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_swaps__current

> <Array<UniswapV3SwapV3DTO>> uniswap_v3_get_swaps__current(opts)

GetSwaps (current) 🔥

Gets swaps.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  filter_pool_id: 'filter_pool_id_example' # String | 
}

begin
  # GetSwaps (current) 🔥
  result = api_instance.uniswap_v3_get_swaps__current(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_swaps__current: #{e}"
end
```

#### Using the uniswap_v3_get_swaps__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3SwapV3DTO>>, Integer, Hash)> uniswap_v3_get_swaps__current_with_http_info(opts)

```ruby
begin
  # GetSwaps (current) 🔥
  data, status_code, headers = api_instance.uniswap_v3_get_swaps__current_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3SwapV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_swaps__current_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_pool_id** | **String** |  | [optional] |

### Return type

[**Array&lt;UniswapV3SwapV3DTO&gt;**](UniswapV3SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_swaps__historical

> <Array<UniswapV3SwapV3DTO>> uniswap_v3_get_swaps__historical(opts)

GetSwaps (historical) 🔥

Gets swaps.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  # GetSwaps (historical) 🔥
  result = api_instance.uniswap_v3_get_swaps__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_swaps__historical: #{e}"
end
```

#### Using the uniswap_v3_get_swaps__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3SwapV3DTO>>, Integer, Hash)> uniswap_v3_get_swaps__historical_with_http_info(opts)

```ruby
begin
  # GetSwaps (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v3_get_swaps__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3SwapV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_swaps__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV3SwapV3DTO&gt;**](UniswapV3SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_ticks__current

> <Array<UniswapV3TickV3DTO>> uniswap_v3_get_ticks__current(opts)

GetTicks (current)

Gets ticks.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  filter_pool_id: 'filter_pool_id_example' # String | 
}

begin
  # GetTicks (current)
  result = api_instance.uniswap_v3_get_ticks__current(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_ticks__current: #{e}"
end
```

#### Using the uniswap_v3_get_ticks__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3TickV3DTO>>, Integer, Hash)> uniswap_v3_get_ticks__current_with_http_info(opts)

```ruby
begin
  # GetTicks (current)
  data, status_code, headers = api_instance.uniswap_v3_get_ticks__current_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3TickV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_ticks__current_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_pool_id** | **String** |  | [optional] |

### Return type

[**Array&lt;UniswapV3TickV3DTO&gt;**](UniswapV3TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_ticks__historical

> <Array<UniswapV3TickV3DTO>> uniswap_v3_get_ticks__historical(opts)

GetTicks (historical)

Gets ticks.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  # GetTicks (historical)
  result = api_instance.uniswap_v3_get_ticks__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_ticks__historical: #{e}"
end
```

#### Using the uniswap_v3_get_ticks__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3TickV3DTO>>, Integer, Hash)> uniswap_v3_get_ticks__historical_with_http_info(opts)

```ruby
begin
  # GetTicks (historical)
  data, status_code, headers = api_instance.uniswap_v3_get_ticks__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3TickV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_ticks__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV3TickV3DTO&gt;**](UniswapV3TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_ticks_day_data__current

> <Array<UniswapV3TickDayDataV3DTO>> uniswap_v3_get_ticks_day_data__current(opts)

GetTicksDayData (current)

Gets ticks day data.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  filter_pool_id: 'filter_pool_id_example' # String | 
}

begin
  # GetTicksDayData (current)
  result = api_instance.uniswap_v3_get_ticks_day_data__current(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_ticks_day_data__current: #{e}"
end
```

#### Using the uniswap_v3_get_ticks_day_data__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3TickDayDataV3DTO>>, Integer, Hash)> uniswap_v3_get_ticks_day_data__current_with_http_info(opts)

```ruby
begin
  # GetTicksDayData (current)
  data, status_code, headers = api_instance.uniswap_v3_get_ticks_day_data__current_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3TickDayDataV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_ticks_day_data__current_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_pool_id** | **String** |  | [optional] |

### Return type

[**Array&lt;UniswapV3TickDayDataV3DTO&gt;**](UniswapV3TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_ticks_day_data__historical

> <Array<UniswapV3TickDayDataV3DTO>> uniswap_v3_get_ticks_day_data__historical(opts)

GetTicksDayData (historical)

Gets ticks day data.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  # GetTicksDayData (historical)
  result = api_instance.uniswap_v3_get_ticks_day_data__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_ticks_day_data__historical: #{e}"
end
```

#### Using the uniswap_v3_get_ticks_day_data__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3TickDayDataV3DTO>>, Integer, Hash)> uniswap_v3_get_ticks_day_data__historical_with_http_info(opts)

```ruby
begin
  # GetTicksDayData (historical)
  data, status_code, headers = api_instance.uniswap_v3_get_ticks_day_data__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3TickDayDataV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_ticks_day_data__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV3TickDayDataV3DTO&gt;**](UniswapV3TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_tokens__current

> <Array<UniswapV3TokenV3DTO>> uniswap_v3_get_tokens__current(opts)

GetTokens (current) 🔥

Gets tokens.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  filter_token_id: 'filter_token_id_example' # String | 
}

begin
  # GetTokens (current) 🔥
  result = api_instance.uniswap_v3_get_tokens__current(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_tokens__current: #{e}"
end
```

#### Using the uniswap_v3_get_tokens__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3TokenV3DTO>>, Integer, Hash)> uniswap_v3_get_tokens__current_with_http_info(opts)

```ruby
begin
  # GetTokens (current) 🔥
  data, status_code, headers = api_instance.uniswap_v3_get_tokens__current_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3TokenV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_tokens__current_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_token_id** | **String** |  | [optional] |

### Return type

[**Array&lt;UniswapV3TokenV3DTO&gt;**](UniswapV3TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_tokens__historical

> <Array<UniswapV3TokenV3DTO>> uniswap_v3_get_tokens__historical(opts)

GetTokens (historical) 🔥

Gets tokens.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  token_id: 'token_id_example' # String | 
}

begin
  # GetTokens (historical) 🔥
  result = api_instance.uniswap_v3_get_tokens__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_tokens__historical: #{e}"
end
```

#### Using the uniswap_v3_get_tokens__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3TokenV3DTO>>, Integer, Hash)> uniswap_v3_get_tokens__historical_with_http_info(opts)

```ruby
begin
  # GetTokens (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v3_get_tokens__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3TokenV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_tokens__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV3TokenV3DTO&gt;**](UniswapV3TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_tokens_day_data__current

> <Array<UniswapV3TokenV3DayDataDTO>> uniswap_v3_get_tokens_day_data__current(opts)

GetTokensDayData (current)

Gets tokens day data.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  filter_token_id: 'filter_token_id_example' # String | 
}

begin
  # GetTokensDayData (current)
  result = api_instance.uniswap_v3_get_tokens_day_data__current(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_tokens_day_data__current: #{e}"
end
```

#### Using the uniswap_v3_get_tokens_day_data__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3TokenV3DayDataDTO>>, Integer, Hash)> uniswap_v3_get_tokens_day_data__current_with_http_info(opts)

```ruby
begin
  # GetTokensDayData (current)
  data, status_code, headers = api_instance.uniswap_v3_get_tokens_day_data__current_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3TokenV3DayDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_tokens_day_data__current_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_token_id** | **String** |  | [optional] |

### Return type

[**Array&lt;UniswapV3TokenV3DayDataDTO&gt;**](UniswapV3TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_tokens_day_data__historical

> <Array<UniswapV3TokenV3DayDataDTO>> uniswap_v3_get_tokens_day_data__historical(opts)

GetTokensDayData (historical)

Gets tokens day data.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  token_id: 'token_id_example' # String | 
}

begin
  # GetTokensDayData (historical)
  result = api_instance.uniswap_v3_get_tokens_day_data__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_tokens_day_data__historical: #{e}"
end
```

#### Using the uniswap_v3_get_tokens_day_data__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3TokenV3DayDataDTO>>, Integer, Hash)> uniswap_v3_get_tokens_day_data__historical_with_http_info(opts)

```ruby
begin
  # GetTokensDayData (historical)
  data, status_code, headers = api_instance.uniswap_v3_get_tokens_day_data__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3TokenV3DayDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_tokens_day_data__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV3TokenV3DayDataDTO&gt;**](UniswapV3TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_tokens_hour_data__current

> <Array<UniswapV3TokenHourDataV3DTO>> uniswap_v3_get_tokens_hour_data__current(opts)

GetTokensHourData (current)

Gets tokens hour data.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  filter_token_id: 'filter_token_id_example' # String | 
}

begin
  # GetTokensHourData (current)
  result = api_instance.uniswap_v3_get_tokens_hour_data__current(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_tokens_hour_data__current: #{e}"
end
```

#### Using the uniswap_v3_get_tokens_hour_data__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3TokenHourDataV3DTO>>, Integer, Hash)> uniswap_v3_get_tokens_hour_data__current_with_http_info(opts)

```ruby
begin
  # GetTokensHourData (current)
  data, status_code, headers = api_instance.uniswap_v3_get_tokens_hour_data__current_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3TokenHourDataV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_tokens_hour_data__current_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_token_id** | **String** |  | [optional] |

### Return type

[**Array&lt;UniswapV3TokenHourDataV3DTO&gt;**](UniswapV3TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_tokens_hour_data__historical

> <Array<UniswapV3TokenHourDataV3DTO>> uniswap_v3_get_tokens_hour_data__historical(opts)

GetTokensHourData (historical)

Gets tokens hour data.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  token_id: 'token_id_example' # String | 
}

begin
  # GetTokensHourData (historical)
  result = api_instance.uniswap_v3_get_tokens_hour_data__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_tokens_hour_data__historical: #{e}"
end
```

#### Using the uniswap_v3_get_tokens_hour_data__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3TokenHourDataV3DTO>>, Integer, Hash)> uniswap_v3_get_tokens_hour_data__historical_with_http_info(opts)

```ruby
begin
  # GetTokensHourData (historical)
  data, status_code, headers = api_instance.uniswap_v3_get_tokens_hour_data__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3TokenHourDataV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_tokens_hour_data__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV3TokenHourDataV3DTO&gt;**](UniswapV3TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_transactions__historical

> <Array<UniswapV3TransactionV3DTO>> uniswap_v3_get_transactions__historical(opts)

GetTransactions (historical)

Gets transactions.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  # GetTransactions (historical)
  result = api_instance.uniswap_v3_get_transactions__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_transactions__historical: #{e}"
end
```

#### Using the uniswap_v3_get_transactions__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3TransactionV3DTO>>, Integer, Hash)> uniswap_v3_get_transactions__historical_with_http_info(opts)

```ruby
begin
  # GetTransactions (historical)
  data, status_code, headers = api_instance.uniswap_v3_get_transactions__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3TransactionV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_transactions__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV3TransactionV3DTO&gt;**](UniswapV3TransactionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

