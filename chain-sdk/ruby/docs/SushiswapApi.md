# OpenapiClient::SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**sushiswap_get_bundles__historical**](SushiswapApi.md#sushiswap_get_bundles__historical) | **GET** /dapps/sushiswap/bundles/historical | GetBundles (historical) |
| [**sushiswap_get_burns__historical**](SushiswapApi.md#sushiswap_get_burns__historical) | **GET** /dapps/sushiswap/burns/historical | GetBurns (historical) |
| [**sushiswap_get_day_data__historical**](SushiswapApi.md#sushiswap_get_day_data__historical) | **GET** /dapps/sushiswap/dayData/historical | GetDayData (historical) |
| [**sushiswap_get_factory__historical**](SushiswapApi.md#sushiswap_get_factory__historical) | **GET** /dapps/sushiswap/factory/historical | GetFactory (historical) |
| [**sushiswap_get_hour_data__historical**](SushiswapApi.md#sushiswap_get_hour_data__historical) | **GET** /dapps/sushiswap/hourData/historical | GetHourData (historical) |
| [**sushiswap_get_liquidity_position__historical**](SushiswapApi.md#sushiswap_get_liquidity_position__historical) | **GET** /dapps/sushiswap/liquidityPosition/historical | GetLiquidityPosition (historical) |
| [**sushiswap_get_liquidity_position_snapshot__historical**](SushiswapApi.md#sushiswap_get_liquidity_position_snapshot__historical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | GetLiquidityPositionSnapshot (historical) |
| [**sushiswap_get_mints__historical**](SushiswapApi.md#sushiswap_get_mints__historical) | **GET** /dapps/sushiswap/mints/historical | GetMints (historical) |
| [**sushiswap_get_pools__current**](SushiswapApi.md#sushiswap_get_pools__current) | **GET** /dapps/sushiswap/pools/current | GetPools (current) |
| [**sushiswap_get_pools__historical**](SushiswapApi.md#sushiswap_get_pools__historical) | **GET** /dapps/sushiswap/pools/historical | GetPools (historical) |
| [**sushiswap_get_pools_day_data__historical**](SushiswapApi.md#sushiswap_get_pools_day_data__historical) | **GET** /dapps/sushiswap/poolsDayData/historical | GetPoolsDayData (historical) |
| [**sushiswap_get_pools_hour_data__historical**](SushiswapApi.md#sushiswap_get_pools_hour_data__historical) | **GET** /dapps/sushiswap/poolsHourData/historical | GetPoolsHourData (historical) |
| [**sushiswap_get_swaps__current**](SushiswapApi.md#sushiswap_get_swaps__current) | **GET** /dapps/sushiswap/swaps/current | GetSwaps (current) |
| [**sushiswap_get_swaps__historical**](SushiswapApi.md#sushiswap_get_swaps__historical) | **GET** /dapps/sushiswap/swaps/historical | GetSwaps (historical) |
| [**sushiswap_get_tokens__current**](SushiswapApi.md#sushiswap_get_tokens__current) | **GET** /dapps/sushiswap/tokens/current | GetTokens (current) |
| [**sushiswap_get_tokens__historical**](SushiswapApi.md#sushiswap_get_tokens__historical) | **GET** /dapps/sushiswap/tokens/historical | GetTokens (historical) |
| [**sushiswap_get_tokens_day_data__historical**](SushiswapApi.md#sushiswap_get_tokens_day_data__historical) | **GET** /dapps/sushiswap/tokensDayData/historical | GetTokensDayData (historical) |
| [**sushiswap_get_transactions__historical**](SushiswapApi.md#sushiswap_get_transactions__historical) | **GET** /dapps/sushiswap/transactions/historical | GetTransactions (historical) |
| [**sushiswap_get_users__historical**](SushiswapApi.md#sushiswap_get_users__historical) | **GET** /dapps/sushiswap/users/historical | GetUsers (historical) |


## sushiswap_get_bundles__historical

> <Array<SushiswapBundleDTO>> sushiswap_get_bundles__historical(opts)

GetBundles (historical)

Gets bundles.

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
  # GetBundles (historical)
  result = api_instance.sushiswap_get_bundles__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_bundles__historical: #{e}"
end
```

#### Using the sushiswap_get_bundles__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapBundleDTO>>, Integer, Hash)> sushiswap_get_bundles__historical_with_http_info(opts)

```ruby
begin
  # GetBundles (historical)
  data, status_code, headers = api_instance.sushiswap_get_bundles__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapBundleDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_bundles__historical_with_http_info: #{e}"
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

[**Array&lt;SushiswapBundleDTO&gt;**](SushiswapBundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_burns__historical

> <Array<SushiswapBurnDTO>> sushiswap_get_burns__historical(opts)

GetBurns (historical)

Gets burns.

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
  # GetBurns (historical)
  result = api_instance.sushiswap_get_burns__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_burns__historical: #{e}"
end
```

#### Using the sushiswap_get_burns__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapBurnDTO>>, Integer, Hash)> sushiswap_get_burns__historical_with_http_info(opts)

```ruby
begin
  # GetBurns (historical)
  data, status_code, headers = api_instance.sushiswap_get_burns__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapBurnDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_burns__historical_with_http_info: #{e}"
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

[**Array&lt;SushiswapBurnDTO&gt;**](SushiswapBurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_day_data__historical

> <Array<SushiswapDayDataDTO>> sushiswap_get_day_data__historical(opts)

GetDayData (historical)

Gets day data.

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
  # GetDayData (historical)
  result = api_instance.sushiswap_get_day_data__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_day_data__historical: #{e}"
end
```

#### Using the sushiswap_get_day_data__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapDayDataDTO>>, Integer, Hash)> sushiswap_get_day_data__historical_with_http_info(opts)

```ruby
begin
  # GetDayData (historical)
  data, status_code, headers = api_instance.sushiswap_get_day_data__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapDayDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_day_data__historical_with_http_info: #{e}"
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

[**Array&lt;SushiswapDayDataDTO&gt;**](SushiswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_factory__historical

> <Array<SushiswapFactoryDTO>> sushiswap_get_factory__historical(opts)

GetFactory (historical)

Gets factory.

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
  # GetFactory (historical)
  result = api_instance.sushiswap_get_factory__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_factory__historical: #{e}"
end
```

#### Using the sushiswap_get_factory__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapFactoryDTO>>, Integer, Hash)> sushiswap_get_factory__historical_with_http_info(opts)

```ruby
begin
  # GetFactory (historical)
  data, status_code, headers = api_instance.sushiswap_get_factory__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapFactoryDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_factory__historical_with_http_info: #{e}"
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

[**Array&lt;SushiswapFactoryDTO&gt;**](SushiswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_hour_data__historical

> <Array<SushiswapHourDataDTO>> sushiswap_get_hour_data__historical(opts)

GetHourData (historical)

Gets hour data.

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
  # GetHourData (historical)
  result = api_instance.sushiswap_get_hour_data__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_hour_data__historical: #{e}"
end
```

#### Using the sushiswap_get_hour_data__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapHourDataDTO>>, Integer, Hash)> sushiswap_get_hour_data__historical_with_http_info(opts)

```ruby
begin
  # GetHourData (historical)
  data, status_code, headers = api_instance.sushiswap_get_hour_data__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapHourDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_hour_data__historical_with_http_info: #{e}"
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

[**Array&lt;SushiswapHourDataDTO&gt;**](SushiswapHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_liquidity_position__historical

> <Array<SushiswapLiquidityPositionDTO>> sushiswap_get_liquidity_position__historical(opts)

GetLiquidityPosition (historical)

Gets liquidity position.

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
  # GetLiquidityPosition (historical)
  result = api_instance.sushiswap_get_liquidity_position__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_liquidity_position__historical: #{e}"
end
```

#### Using the sushiswap_get_liquidity_position__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapLiquidityPositionDTO>>, Integer, Hash)> sushiswap_get_liquidity_position__historical_with_http_info(opts)

```ruby
begin
  # GetLiquidityPosition (historical)
  data, status_code, headers = api_instance.sushiswap_get_liquidity_position__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapLiquidityPositionDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_liquidity_position__historical_with_http_info: #{e}"
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

[**Array&lt;SushiswapLiquidityPositionDTO&gt;**](SushiswapLiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_liquidity_position_snapshot__historical

> <Array<SushiswapLiquidityPositionSnapshotDTO>> sushiswap_get_liquidity_position_snapshot__historical(opts)

GetLiquidityPositionSnapshot (historical)

Gets liquidity position snapshot.

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
  # GetLiquidityPositionSnapshot (historical)
  result = api_instance.sushiswap_get_liquidity_position_snapshot__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_liquidity_position_snapshot__historical: #{e}"
end
```

#### Using the sushiswap_get_liquidity_position_snapshot__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapLiquidityPositionSnapshotDTO>>, Integer, Hash)> sushiswap_get_liquidity_position_snapshot__historical_with_http_info(opts)

```ruby
begin
  # GetLiquidityPositionSnapshot (historical)
  data, status_code, headers = api_instance.sushiswap_get_liquidity_position_snapshot__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapLiquidityPositionSnapshotDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_liquidity_position_snapshot__historical_with_http_info: #{e}"
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

[**Array&lt;SushiswapLiquidityPositionSnapshotDTO&gt;**](SushiswapLiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_mints__historical

> <Array<SushiswapMintDTO>> sushiswap_get_mints__historical(opts)

GetMints (historical)

Gets mints.

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
  # GetMints (historical)
  result = api_instance.sushiswap_get_mints__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_mints__historical: #{e}"
end
```

#### Using the sushiswap_get_mints__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapMintDTO>>, Integer, Hash)> sushiswap_get_mints__historical_with_http_info(opts)

```ruby
begin
  # GetMints (historical)
  data, status_code, headers = api_instance.sushiswap_get_mints__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapMintDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_mints__historical_with_http_info: #{e}"
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

[**Array&lt;SushiswapMintDTO&gt;**](SushiswapMintDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_pools__current

> <Array<SushiswapPairDTO>> sushiswap_get_pools__current

GetPools (current)

Gets pools.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # GetPools (current)
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
  # GetPools (current)
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

GetPools (historical)

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
  # GetPools (historical)
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
  # GetPools (historical)
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


## sushiswap_get_pools_day_data__historical

> <Array<SushiswapPairDayDataDTO>> sushiswap_get_pools_day_data__historical(opts)

GetPoolsDayData (historical)

Gets pools day data.

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
  # GetPoolsDayData (historical)
  result = api_instance.sushiswap_get_pools_day_data__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_pools_day_data__historical: #{e}"
end
```

#### Using the sushiswap_get_pools_day_data__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapPairDayDataDTO>>, Integer, Hash)> sushiswap_get_pools_day_data__historical_with_http_info(opts)

```ruby
begin
  # GetPoolsDayData (historical)
  data, status_code, headers = api_instance.sushiswap_get_pools_day_data__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapPairDayDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_pools_day_data__historical_with_http_info: #{e}"
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

[**Array&lt;SushiswapPairDayDataDTO&gt;**](SushiswapPairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_pools_hour_data__historical

> <Array<SushiswapPairHourDataDTO>> sushiswap_get_pools_hour_data__historical(opts)

GetPoolsHourData (historical)

Gets pools tracked each our.

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
  # GetPoolsHourData (historical)
  result = api_instance.sushiswap_get_pools_hour_data__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_pools_hour_data__historical: #{e}"
end
```

#### Using the sushiswap_get_pools_hour_data__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapPairHourDataDTO>>, Integer, Hash)> sushiswap_get_pools_hour_data__historical_with_http_info(opts)

```ruby
begin
  # GetPoolsHourData (historical)
  data, status_code, headers = api_instance.sushiswap_get_pools_hour_data__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapPairHourDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_pools_hour_data__historical_with_http_info: #{e}"
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

[**Array&lt;SushiswapPairHourDataDTO&gt;**](SushiswapPairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_swaps__current

> <Array<SushiswapSwapDTO>> sushiswap_get_swaps__current

GetSwaps (current)

Gets swaps.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # GetSwaps (current)
  result = api_instance.sushiswap_get_swaps__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_swaps__current: #{e}"
end
```

#### Using the sushiswap_get_swaps__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapSwapDTO>>, Integer, Hash)> sushiswap_get_swaps__current_with_http_info

```ruby
begin
  # GetSwaps (current)
  data, status_code, headers = api_instance.sushiswap_get_swaps__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapSwapDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_swaps__current_with_http_info: #{e}"
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


## sushiswap_get_swaps__historical

> <Array<SushiswapSwapDTO>> sushiswap_get_swaps__historical(opts)

GetSwaps (historical)

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
  # GetSwaps (historical)
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
  # GetSwaps (historical)
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

> <Array<SushiswapTokenDTO>> sushiswap_get_tokens__current

GetTokens (current)

Gets tokens.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # GetTokens (current)
  result = api_instance.sushiswap_get_tokens__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_tokens__current: #{e}"
end
```

#### Using the sushiswap_get_tokens__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapTokenDTO>>, Integer, Hash)> sushiswap_get_tokens__current_with_http_info

```ruby
begin
  # GetTokens (current)
  data, status_code, headers = api_instance.sushiswap_get_tokens__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapTokenDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_tokens__current_with_http_info: #{e}"
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


## sushiswap_get_tokens__historical

> <Array<SushiswapTokenDTO>> sushiswap_get_tokens__historical(opts)

GetTokens (historical)

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
  # GetTokens (historical)
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
  # GetTokens (historical)
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


## sushiswap_get_tokens_day_data__historical

> <Array<SushiswapTokenDayDataDTO>> sushiswap_get_tokens_day_data__historical(opts)

GetTokensDayData (historical)

Gets tokens day data.

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
  # GetTokensDayData (historical)
  result = api_instance.sushiswap_get_tokens_day_data__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_tokens_day_data__historical: #{e}"
end
```

#### Using the sushiswap_get_tokens_day_data__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapTokenDayDataDTO>>, Integer, Hash)> sushiswap_get_tokens_day_data__historical_with_http_info(opts)

```ruby
begin
  # GetTokensDayData (historical)
  data, status_code, headers = api_instance.sushiswap_get_tokens_day_data__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapTokenDayDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_tokens_day_data__historical_with_http_info: #{e}"
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

[**Array&lt;SushiswapTokenDayDataDTO&gt;**](SushiswapTokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_transactions__historical

> <Array<SushiswapTransactionDTO>> sushiswap_get_transactions__historical(opts)

GetTransactions (historical)

Gets transactions.

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
  # GetTransactions (historical)
  result = api_instance.sushiswap_get_transactions__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_transactions__historical: #{e}"
end
```

#### Using the sushiswap_get_transactions__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapTransactionDTO>>, Integer, Hash)> sushiswap_get_transactions__historical_with_http_info(opts)

```ruby
begin
  # GetTransactions (historical)
  data, status_code, headers = api_instance.sushiswap_get_transactions__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapTransactionDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_transactions__historical_with_http_info: #{e}"
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

[**Array&lt;SushiswapTransactionDTO&gt;**](SushiswapTransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_users__historical

> <Array<SushiswapUserDTO>> sushiswap_get_users__historical(opts)

GetUsers (historical)

Gets users.

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
  # GetUsers (historical)
  result = api_instance.sushiswap_get_users__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_users__historical: #{e}"
end
```

#### Using the sushiswap_get_users__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapUserDTO>>, Integer, Hash)> sushiswap_get_users__historical_with_http_info(opts)

```ruby
begin
  # GetUsers (historical)
  data, status_code, headers = api_instance.sushiswap_get_users__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapUserDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_users__historical_with_http_info: #{e}"
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

[**Array&lt;SushiswapUserDTO&gt;**](SushiswapUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

