# OpenapiClient::UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**uniswap_v2_get_bundles__historical**](UniswapV2Api.md#uniswap_v2_get_bundles__historical) | **GET** /dapps/uniswapv2/bundles/historical | GetBundles (historical) |
| [**uniswap_v2_get_burns__historical**](UniswapV2Api.md#uniswap_v2_get_burns__historical) | **GET** /dapps/uniswapv2/burns/historical | GetBurns (historical) |
| [**uniswap_v2_get_day_data__historical**](UniswapV2Api.md#uniswap_v2_get_day_data__historical) | **GET** /dapps/uniswapv2/dayData/historical | GetDayData (historical) |
| [**uniswap_v2_get_factory__historical**](UniswapV2Api.md#uniswap_v2_get_factory__historical) | **GET** /dapps/uniswapv2/factory/historical | GetFactory (historical) |
| [**uniswap_v2_get_liquidity_positions__historical**](UniswapV2Api.md#uniswap_v2_get_liquidity_positions__historical) | **GET** /dapps/uniswapv2/liquidityPositions/historical | GetLiquidityPositions (historical) |
| [**uniswap_v2_get_liquidity_positions_snapshots__historical**](UniswapV2Api.md#uniswap_v2_get_liquidity_positions_snapshots__historical) | **GET** /dapps/uniswapv2/liquidityPositionsSnapshots/historical | GetLiquidityPositionsSnapshots (historical) |
| [**uniswap_v2_get_mints__historical**](UniswapV2Api.md#uniswap_v2_get_mints__historical) | **GET** /dapps/uniswapv2/mints/historical | GetMints (historical) |
| [**uniswap_v2_get_pools__current**](UniswapV2Api.md#uniswap_v2_get_pools__current) | **GET** /dapps/uniswapv2/pools/current | GetPools (current) 🔥 |
| [**uniswap_v2_get_pools__historical**](UniswapV2Api.md#uniswap_v2_get_pools__historical) | **GET** /dapps/uniswapv2/pools/historical | GetPools (historical) 🔥 |
| [**uniswap_v2_get_pools_day_data__historical**](UniswapV2Api.md#uniswap_v2_get_pools_day_data__historical) | **GET** /dapps/uniswapv2/poolsDayData/historical | GetPoolsDayData (historical) |
| [**uniswap_v2_get_pools_hour_data__historical**](UniswapV2Api.md#uniswap_v2_get_pools_hour_data__historical) | **GET** /dapps/uniswapv2/poolsHourData/historical | GetPoolsHourData (historical) |
| [**uniswap_v2_get_swaps__current**](UniswapV2Api.md#uniswap_v2_get_swaps__current) | **GET** /dapps/uniswapv2/swaps/current | GetSwaps (current) 🔥 |
| [**uniswap_v2_get_swaps__historical**](UniswapV2Api.md#uniswap_v2_get_swaps__historical) | **GET** /dapps/uniswapv2/swaps/historical | GetSwaps (historical) 🔥 |
| [**uniswap_v2_get_tokens__current**](UniswapV2Api.md#uniswap_v2_get_tokens__current) | **GET** /dapps/uniswapv2/tokens/current | GetTokens (current) 🔥 |
| [**uniswap_v2_get_tokens__historical**](UniswapV2Api.md#uniswap_v2_get_tokens__historical) | **GET** /dapps/uniswapv2/tokens/historical | GetTokens (historical) 🔥 |
| [**uniswap_v2_get_tokens_day_data__historical**](UniswapV2Api.md#uniswap_v2_get_tokens_day_data__historical) | **GET** /dapps/uniswapv2/tokensDayData/historical | GetTokensDayData (historical) |
| [**uniswap_v2_get_transactions__historical**](UniswapV2Api.md#uniswap_v2_get_transactions__historical) | **GET** /dapps/uniswapv2/transactions/historical | GetTransactions (historical) |
| [**uniswap_v2_get_users__historical**](UniswapV2Api.md#uniswap_v2_get_users__historical) | **GET** /dapps/uniswapv2/users/historical | GetUsers (historical) |


## uniswap_v2_get_bundles__historical

> <Array<UniswapV2BundleV2DTO>> uniswap_v2_get_bundles__historical(opts)

GetBundles (historical)

Gets bundles.

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
  # GetBundles (historical)
  result = api_instance.uniswap_v2_get_bundles__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_bundles__historical: #{e}"
end
```

#### Using the uniswap_v2_get_bundles__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2BundleV2DTO>>, Integer, Hash)> uniswap_v2_get_bundles__historical_with_http_info(opts)

```ruby
begin
  # GetBundles (historical)
  data, status_code, headers = api_instance.uniswap_v2_get_bundles__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2BundleV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_bundles__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV2BundleV2DTO&gt;**](UniswapV2BundleV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_burns__historical

> <Array<UniswapV2BurnV2DTO>> uniswap_v2_get_burns__historical(opts)

GetBurns (historical)

Gets burns.

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
  # GetBurns (historical)
  result = api_instance.uniswap_v2_get_burns__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_burns__historical: #{e}"
end
```

#### Using the uniswap_v2_get_burns__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2BurnV2DTO>>, Integer, Hash)> uniswap_v2_get_burns__historical_with_http_info(opts)

```ruby
begin
  # GetBurns (historical)
  data, status_code, headers = api_instance.uniswap_v2_get_burns__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2BurnV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_burns__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV2BurnV2DTO&gt;**](UniswapV2BurnV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_day_data__historical

> <Array<UniswapV2UniswapDayDataV2DTO>> uniswap_v2_get_day_data__historical(opts)

GetDayData (historical)

Gets uniswapv2 day data.

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
  # GetDayData (historical)
  result = api_instance.uniswap_v2_get_day_data__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_day_data__historical: #{e}"
end
```

#### Using the uniswap_v2_get_day_data__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2UniswapDayDataV2DTO>>, Integer, Hash)> uniswap_v2_get_day_data__historical_with_http_info(opts)

```ruby
begin
  # GetDayData (historical)
  data, status_code, headers = api_instance.uniswap_v2_get_day_data__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2UniswapDayDataV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_day_data__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV2UniswapDayDataV2DTO&gt;**](UniswapV2UniswapDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_factory__historical

> <Array<UniswapV2UniswapFactoryV2DTO>> uniswap_v2_get_factory__historical(opts)

GetFactory (historical)

Gets factory.

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
  # GetFactory (historical)
  result = api_instance.uniswap_v2_get_factory__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_factory__historical: #{e}"
end
```

#### Using the uniswap_v2_get_factory__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2UniswapFactoryV2DTO>>, Integer, Hash)> uniswap_v2_get_factory__historical_with_http_info(opts)

```ruby
begin
  # GetFactory (historical)
  data, status_code, headers = api_instance.uniswap_v2_get_factory__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2UniswapFactoryV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_factory__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV2UniswapFactoryV2DTO&gt;**](UniswapV2UniswapFactoryV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_liquidity_positions__historical

> <Array<UniswapV2LiquidityPositionV2DTO>> uniswap_v2_get_liquidity_positions__historical(opts)

GetLiquidityPositions (historical)

Gets liquidity positions.

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
  # GetLiquidityPositions (historical)
  result = api_instance.uniswap_v2_get_liquidity_positions__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_liquidity_positions__historical: #{e}"
end
```

#### Using the uniswap_v2_get_liquidity_positions__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2LiquidityPositionV2DTO>>, Integer, Hash)> uniswap_v2_get_liquidity_positions__historical_with_http_info(opts)

```ruby
begin
  # GetLiquidityPositions (historical)
  data, status_code, headers = api_instance.uniswap_v2_get_liquidity_positions__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2LiquidityPositionV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_liquidity_positions__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV2LiquidityPositionV2DTO&gt;**](UniswapV2LiquidityPositionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_liquidity_positions_snapshots__historical

> <Array<UniswapV2LiquidityPositionSnapshotV2DTO>> uniswap_v2_get_liquidity_positions_snapshots__historical(opts)

GetLiquidityPositionsSnapshots (historical)

Gets liquidity positions snapshots.

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
  # GetLiquidityPositionsSnapshots (historical)
  result = api_instance.uniswap_v2_get_liquidity_positions_snapshots__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_liquidity_positions_snapshots__historical: #{e}"
end
```

#### Using the uniswap_v2_get_liquidity_positions_snapshots__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2LiquidityPositionSnapshotV2DTO>>, Integer, Hash)> uniswap_v2_get_liquidity_positions_snapshots__historical_with_http_info(opts)

```ruby
begin
  # GetLiquidityPositionsSnapshots (historical)
  data, status_code, headers = api_instance.uniswap_v2_get_liquidity_positions_snapshots__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2LiquidityPositionSnapshotV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_liquidity_positions_snapshots__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV2LiquidityPositionSnapshotV2DTO&gt;**](UniswapV2LiquidityPositionSnapshotV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_mints__historical

> <Array<UniswapV2MintV2DTO>> uniswap_v2_get_mints__historical(opts)

GetMints (historical)

Gets mints.

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
  # GetMints (historical)
  result = api_instance.uniswap_v2_get_mints__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_mints__historical: #{e}"
end
```

#### Using the uniswap_v2_get_mints__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2MintV2DTO>>, Integer, Hash)> uniswap_v2_get_mints__historical_with_http_info(opts)

```ruby
begin
  # GetMints (historical)
  data, status_code, headers = api_instance.uniswap_v2_get_mints__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2MintV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_mints__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV2MintV2DTO&gt;**](UniswapV2MintV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_pools__current

> <Array<UniswapV2PairV2DTO>> uniswap_v2_get_pools__current(opts)

GetPools (current) 🔥

Gets pools.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  filter_pool_id: 'filter_pool_id_example' # String | 
}

begin
  # GetPools (current) 🔥
  result = api_instance.uniswap_v2_get_pools__current(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_pools__current: #{e}"
end
```

#### Using the uniswap_v2_get_pools__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2PairV2DTO>>, Integer, Hash)> uniswap_v2_get_pools__current_with_http_info(opts)

```ruby
begin
  # GetPools (current) 🔥
  data, status_code, headers = api_instance.uniswap_v2_get_pools__current_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2PairV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_pools__current_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_pool_id** | **String** |  | [optional] |

### Return type

[**Array&lt;UniswapV2PairV2DTO&gt;**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_pools__historical

> <Array<UniswapV2PairV2DTO>> uniswap_v2_get_pools__historical(opts)

GetPools (historical) 🔥

Gets pools.

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
  # GetPools (historical) 🔥
  result = api_instance.uniswap_v2_get_pools__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_pools__historical: #{e}"
end
```

#### Using the uniswap_v2_get_pools__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2PairV2DTO>>, Integer, Hash)> uniswap_v2_get_pools__historical_with_http_info(opts)

```ruby
begin
  # GetPools (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v2_get_pools__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2PairV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_pools__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV2PairV2DTO&gt;**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_pools_day_data__historical

> <Array<UniswapV2PairDayDataV2DTO>> uniswap_v2_get_pools_day_data__historical(opts)

GetPoolsDayData (historical)

Gets pools day data.

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
  # GetPoolsDayData (historical)
  result = api_instance.uniswap_v2_get_pools_day_data__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_pools_day_data__historical: #{e}"
end
```

#### Using the uniswap_v2_get_pools_day_data__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2PairDayDataV2DTO>>, Integer, Hash)> uniswap_v2_get_pools_day_data__historical_with_http_info(opts)

```ruby
begin
  # GetPoolsDayData (historical)
  data, status_code, headers = api_instance.uniswap_v2_get_pools_day_data__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2PairDayDataV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_pools_day_data__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV2PairDayDataV2DTO&gt;**](UniswapV2PairDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_pools_hour_data__historical

> <Array<UniswapV2PairHourDataV2DTO>> uniswap_v2_get_pools_hour_data__historical(opts)

GetPoolsHourData (historical)

Gets pools tracked each our.

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
  # GetPoolsHourData (historical)
  result = api_instance.uniswap_v2_get_pools_hour_data__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_pools_hour_data__historical: #{e}"
end
```

#### Using the uniswap_v2_get_pools_hour_data__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2PairHourDataV2DTO>>, Integer, Hash)> uniswap_v2_get_pools_hour_data__historical_with_http_info(opts)

```ruby
begin
  # GetPoolsHourData (historical)
  data, status_code, headers = api_instance.uniswap_v2_get_pools_hour_data__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2PairHourDataV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_pools_hour_data__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV2PairHourDataV2DTO&gt;**](UniswapV2PairHourDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_swaps__current

> <Array<UniswapV2SwapV2DTO>> uniswap_v2_get_swaps__current

GetSwaps (current) 🔥

Gets swaps.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new

begin
  # GetSwaps (current) 🔥
  result = api_instance.uniswap_v2_get_swaps__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_swaps__current: #{e}"
end
```

#### Using the uniswap_v2_get_swaps__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2SwapV2DTO>>, Integer, Hash)> uniswap_v2_get_swaps__current_with_http_info

```ruby
begin
  # GetSwaps (current) 🔥
  data, status_code, headers = api_instance.uniswap_v2_get_swaps__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2SwapV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_swaps__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;UniswapV2SwapV2DTO&gt;**](UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_swaps__historical

> <Array<UniswapV2SwapV2DTO>> uniswap_v2_get_swaps__historical(opts)

GetSwaps (historical) 🔥

Gets swaps.

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
  # GetSwaps (historical) 🔥
  result = api_instance.uniswap_v2_get_swaps__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_swaps__historical: #{e}"
end
```

#### Using the uniswap_v2_get_swaps__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2SwapV2DTO>>, Integer, Hash)> uniswap_v2_get_swaps__historical_with_http_info(opts)

```ruby
begin
  # GetSwaps (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v2_get_swaps__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2SwapV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_swaps__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV2SwapV2DTO&gt;**](UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_tokens__current

> <Array<UniswapV2TokenV2DTO>> uniswap_v2_get_tokens__current

GetTokens (current) 🔥

Gets tokens.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new

begin
  # GetTokens (current) 🔥
  result = api_instance.uniswap_v2_get_tokens__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_tokens__current: #{e}"
end
```

#### Using the uniswap_v2_get_tokens__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2TokenV2DTO>>, Integer, Hash)> uniswap_v2_get_tokens__current_with_http_info

```ruby
begin
  # GetTokens (current) 🔥
  data, status_code, headers = api_instance.uniswap_v2_get_tokens__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2TokenV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_tokens__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;UniswapV2TokenV2DTO&gt;**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_tokens__historical

> <Array<UniswapV2TokenV2DTO>> uniswap_v2_get_tokens__historical(opts)

GetTokens (historical) 🔥

Gets tokens.

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
  # GetTokens (historical) 🔥
  result = api_instance.uniswap_v2_get_tokens__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_tokens__historical: #{e}"
end
```

#### Using the uniswap_v2_get_tokens__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2TokenV2DTO>>, Integer, Hash)> uniswap_v2_get_tokens__historical_with_http_info(opts)

```ruby
begin
  # GetTokens (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v2_get_tokens__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2TokenV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_tokens__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV2TokenV2DTO&gt;**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_tokens_day_data__historical

> <Array<UniswapV2TokenDayDataV2DTO>> uniswap_v2_get_tokens_day_data__historical(opts)

GetTokensDayData (historical)

Gets tokens day data.

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
  # GetTokensDayData (historical)
  result = api_instance.uniswap_v2_get_tokens_day_data__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_tokens_day_data__historical: #{e}"
end
```

#### Using the uniswap_v2_get_tokens_day_data__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2TokenDayDataV2DTO>>, Integer, Hash)> uniswap_v2_get_tokens_day_data__historical_with_http_info(opts)

```ruby
begin
  # GetTokensDayData (historical)
  data, status_code, headers = api_instance.uniswap_v2_get_tokens_day_data__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2TokenDayDataV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_tokens_day_data__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV2TokenDayDataV2DTO&gt;**](UniswapV2TokenDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_transactions__historical

> <Array<UniswapV2TransactionV2DTO>> uniswap_v2_get_transactions__historical(opts)

GetTransactions (historical)

Gets transactions.

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
  # GetTransactions (historical)
  result = api_instance.uniswap_v2_get_transactions__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_transactions__historical: #{e}"
end
```

#### Using the uniswap_v2_get_transactions__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2TransactionV2DTO>>, Integer, Hash)> uniswap_v2_get_transactions__historical_with_http_info(opts)

```ruby
begin
  # GetTransactions (historical)
  data, status_code, headers = api_instance.uniswap_v2_get_transactions__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2TransactionV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_transactions__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV2TransactionV2DTO&gt;**](UniswapV2TransactionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_users__historical

> <Array<UniswapV2UserV2DTO>> uniswap_v2_get_users__historical(opts)

GetUsers (historical)

Gets users.

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
  # GetUsers (historical)
  result = api_instance.uniswap_v2_get_users__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_users__historical: #{e}"
end
```

#### Using the uniswap_v2_get_users__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2UserV2DTO>>, Integer, Hash)> uniswap_v2_get_users__historical_with_http_info(opts)

```ruby
begin
  # GetUsers (historical)
  data, status_code, headers = api_instance.uniswap_v2_get_users__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2UserV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_users__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV2UserV2DTO&gt;**](UniswapV2UserV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

