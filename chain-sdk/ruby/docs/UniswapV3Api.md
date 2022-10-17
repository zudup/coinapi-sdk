# OpenapiClient::UniswapV3Api

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**chains_chain_id_dapps_uniswapv3_bundle_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_bundle_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles |
| [**chains_chain_id_dapps_uniswapv3_burns_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_burns_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns |
| [**chains_chain_id_dapps_uniswapv3_factory_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_factory_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory |
| [**chains_chain_id_dapps_uniswapv3_mints_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_mints_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints |
| [**chains_chain_id_dapps_uniswapv3_pools_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_pools_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools |
| [**chains_chain_id_dapps_uniswapv3_pools_day_data_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_pools_day_data_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData |
| [**chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData |
| [**chains_chain_id_dapps_uniswapv3_position_snapshots_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_position_snapshots_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot |
| [**chains_chain_id_dapps_uniswapv3_positions_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_positions_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions |
| [**chains_chain_id_dapps_uniswapv3_swaps_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_swaps_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps |
| [**chains_chain_id_dapps_uniswapv3_ticks_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_ticks_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks |
| [**chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData |
| [**chains_chain_id_dapps_uniswapv3_tokens_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_tokens_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens |
| [**chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData |
| [**chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData |
| [**chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData |


## chains_chain_id_dapps_uniswapv3_bundle_current_get

> <Array<BundleV3DTO>> chains_chain_id_dapps_uniswapv3_bundle_current_get(chain_id)

GetBundles

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
chain_id = 'chain_id_example' # String | Chain id

begin
  # GetBundles
  result = api_instance.chains_chain_id_dapps_uniswapv3_bundle_current_get(chain_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_bundle_current_get: #{e}"
end
```

#### Using the chains_chain_id_dapps_uniswapv3_bundle_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BundleV3DTO>>, Integer, Hash)> chains_chain_id_dapps_uniswapv3_bundle_current_get_with_http_info(chain_id)

```ruby
begin
  # GetBundles
  data, status_code, headers = api_instance.chains_chain_id_dapps_uniswapv3_bundle_current_get_with_http_info(chain_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BundleV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_bundle_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** | Chain id |  |

### Return type

[**Array&lt;BundleV3DTO&gt;**](BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chains_chain_id_dapps_uniswapv3_burns_current_get

> <Array<BurnV3DTO>> chains_chain_id_dapps_uniswapv3_burns_current_get(chain_id, opts)

GetBurns

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
chain_id = 'chain_id_example' # String | Chain id
opts = {
  filter_pool_id: 'filter_pool_id_example' # String | Filter pool id
}

begin
  # GetBurns
  result = api_instance.chains_chain_id_dapps_uniswapv3_burns_current_get(chain_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_burns_current_get: #{e}"
end
```

#### Using the chains_chain_id_dapps_uniswapv3_burns_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BurnV3DTO>>, Integer, Hash)> chains_chain_id_dapps_uniswapv3_burns_current_get_with_http_info(chain_id, opts)

```ruby
begin
  # GetBurns
  data, status_code, headers = api_instance.chains_chain_id_dapps_uniswapv3_burns_current_get_with_http_info(chain_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BurnV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_burns_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** | Chain id |  |
| **filter_pool_id** | **String** | Filter pool id | [optional] |

### Return type

[**Array&lt;BurnV3DTO&gt;**](BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chains_chain_id_dapps_uniswapv3_factory_current_get

> <Array<FactoryV3DTO>> chains_chain_id_dapps_uniswapv3_factory_current_get(chain_id)

GetFactory

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
chain_id = 'chain_id_example' # String | Chain id

begin
  # GetFactory
  result = api_instance.chains_chain_id_dapps_uniswapv3_factory_current_get(chain_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_factory_current_get: #{e}"
end
```

#### Using the chains_chain_id_dapps_uniswapv3_factory_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<FactoryV3DTO>>, Integer, Hash)> chains_chain_id_dapps_uniswapv3_factory_current_get_with_http_info(chain_id)

```ruby
begin
  # GetFactory
  data, status_code, headers = api_instance.chains_chain_id_dapps_uniswapv3_factory_current_get_with_http_info(chain_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<FactoryV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_factory_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** | Chain id |  |

### Return type

[**Array&lt;FactoryV3DTO&gt;**](FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chains_chain_id_dapps_uniswapv3_mints_current_get

> <Array<MintV3DTO>> chains_chain_id_dapps_uniswapv3_mints_current_get(chain_id, opts)

GetMints

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
chain_id = 'chain_id_example' # String | Chain id
opts = {
  filter_pool_id: 'filter_pool_id_example' # String | Filter pool id
}

begin
  # GetMints
  result = api_instance.chains_chain_id_dapps_uniswapv3_mints_current_get(chain_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_mints_current_get: #{e}"
end
```

#### Using the chains_chain_id_dapps_uniswapv3_mints_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MintV3DTO>>, Integer, Hash)> chains_chain_id_dapps_uniswapv3_mints_current_get_with_http_info(chain_id, opts)

```ruby
begin
  # GetMints
  data, status_code, headers = api_instance.chains_chain_id_dapps_uniswapv3_mints_current_get_with_http_info(chain_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MintV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_mints_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** | Chain id |  |
| **filter_pool_id** | **String** | Filter pool id | [optional] |

### Return type

[**Array&lt;MintV3DTO&gt;**](MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chains_chain_id_dapps_uniswapv3_pools_current_get

> <Array<PoolV3DTO>> chains_chain_id_dapps_uniswapv3_pools_current_get(chain_id, opts)

GetPools

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
chain_id = 'chain_id_example' # String | Chain id
opts = {
  filter_pool_id: 'filter_pool_id_example' # String | Filter pool id
}

begin
  # GetPools
  result = api_instance.chains_chain_id_dapps_uniswapv3_pools_current_get(chain_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_pools_current_get: #{e}"
end
```

#### Using the chains_chain_id_dapps_uniswapv3_pools_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PoolV3DTO>>, Integer, Hash)> chains_chain_id_dapps_uniswapv3_pools_current_get_with_http_info(chain_id, opts)

```ruby
begin
  # GetPools
  data, status_code, headers = api_instance.chains_chain_id_dapps_uniswapv3_pools_current_get_with_http_info(chain_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PoolV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_pools_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** | Chain id |  |
| **filter_pool_id** | **String** | Filter pool id | [optional] |

### Return type

[**Array&lt;PoolV3DTO&gt;**](PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chains_chain_id_dapps_uniswapv3_pools_day_data_current_get

> <Array<PoolDayDataV3DTO>> chains_chain_id_dapps_uniswapv3_pools_day_data_current_get(chain_id, opts)

GetPoolsDayData

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
chain_id = 'chain_id_example' # String | Chain id
opts = {
  filter_pool_id: 'filter_pool_id_example' # String | Filter pool id
}

begin
  # GetPoolsDayData
  result = api_instance.chains_chain_id_dapps_uniswapv3_pools_day_data_current_get(chain_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_pools_day_data_current_get: #{e}"
end
```

#### Using the chains_chain_id_dapps_uniswapv3_pools_day_data_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PoolDayDataV3DTO>>, Integer, Hash)> chains_chain_id_dapps_uniswapv3_pools_day_data_current_get_with_http_info(chain_id, opts)

```ruby
begin
  # GetPoolsDayData
  data, status_code, headers = api_instance.chains_chain_id_dapps_uniswapv3_pools_day_data_current_get_with_http_info(chain_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PoolDayDataV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_pools_day_data_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** | Chain id |  |
| **filter_pool_id** | **String** | Filter pool id | [optional] |

### Return type

[**Array&lt;PoolDayDataV3DTO&gt;**](PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get

> <Array<PoolHourDataV3DTO>> chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get(chain_id, opts)

GetPoolsHourData

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
chain_id = 'chain_id_example' # String | Chain id
opts = {
  filter_pool_id: 'filter_pool_id_example' # String | Filter pool id
}

begin
  # GetPoolsHourData
  result = api_instance.chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get(chain_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get: #{e}"
end
```

#### Using the chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PoolHourDataV3DTO>>, Integer, Hash)> chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get_with_http_info(chain_id, opts)

```ruby
begin
  # GetPoolsHourData
  data, status_code, headers = api_instance.chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get_with_http_info(chain_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PoolHourDataV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** | Chain id |  |
| **filter_pool_id** | **String** | Filter pool id | [optional] |

### Return type

[**Array&lt;PoolHourDataV3DTO&gt;**](PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chains_chain_id_dapps_uniswapv3_position_snapshots_current_get

> <Array<PositionSnapshotV3DTO>> chains_chain_id_dapps_uniswapv3_position_snapshots_current_get(chain_id, opts)

GetPositionSnapshot

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
chain_id = 'chain_id_example' # String | Chain id
opts = {
  filter_pool_id: 'filter_pool_id_example' # String | Filter pool id
}

begin
  # GetPositionSnapshot
  result = api_instance.chains_chain_id_dapps_uniswapv3_position_snapshots_current_get(chain_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_position_snapshots_current_get: #{e}"
end
```

#### Using the chains_chain_id_dapps_uniswapv3_position_snapshots_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PositionSnapshotV3DTO>>, Integer, Hash)> chains_chain_id_dapps_uniswapv3_position_snapshots_current_get_with_http_info(chain_id, opts)

```ruby
begin
  # GetPositionSnapshot
  data, status_code, headers = api_instance.chains_chain_id_dapps_uniswapv3_position_snapshots_current_get_with_http_info(chain_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PositionSnapshotV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_position_snapshots_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** | Chain id |  |
| **filter_pool_id** | **String** | Filter pool id | [optional] |

### Return type

[**Array&lt;PositionSnapshotV3DTO&gt;**](PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chains_chain_id_dapps_uniswapv3_positions_current_get

> <Array<PositionV3DTO>> chains_chain_id_dapps_uniswapv3_positions_current_get(chain_id, opts)

GetPositions

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
chain_id = 'chain_id_example' # String | Chain id
opts = {
  filter_pool_id: 'filter_pool_id_example' # String | Filter pool id
}

begin
  # GetPositions
  result = api_instance.chains_chain_id_dapps_uniswapv3_positions_current_get(chain_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_positions_current_get: #{e}"
end
```

#### Using the chains_chain_id_dapps_uniswapv3_positions_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PositionV3DTO>>, Integer, Hash)> chains_chain_id_dapps_uniswapv3_positions_current_get_with_http_info(chain_id, opts)

```ruby
begin
  # GetPositions
  data, status_code, headers = api_instance.chains_chain_id_dapps_uniswapv3_positions_current_get_with_http_info(chain_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PositionV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_positions_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** | Chain id |  |
| **filter_pool_id** | **String** | Filter pool id | [optional] |

### Return type

[**Array&lt;PositionV3DTO&gt;**](PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chains_chain_id_dapps_uniswapv3_swaps_current_get

> <Array<SwapV3DTO>> chains_chain_id_dapps_uniswapv3_swaps_current_get(chain_id, opts)

GetSwaps

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
chain_id = 'chain_id_example' # String | Chain id
opts = {
  filter_pool_id: 'filter_pool_id_example' # String | Filter pool id
}

begin
  # GetSwaps
  result = api_instance.chains_chain_id_dapps_uniswapv3_swaps_current_get(chain_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_swaps_current_get: #{e}"
end
```

#### Using the chains_chain_id_dapps_uniswapv3_swaps_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SwapV3DTO>>, Integer, Hash)> chains_chain_id_dapps_uniswapv3_swaps_current_get_with_http_info(chain_id, opts)

```ruby
begin
  # GetSwaps
  data, status_code, headers = api_instance.chains_chain_id_dapps_uniswapv3_swaps_current_get_with_http_info(chain_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SwapV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_swaps_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** | Chain id |  |
| **filter_pool_id** | **String** | Filter pool id | [optional] |

### Return type

[**Array&lt;SwapV3DTO&gt;**](SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chains_chain_id_dapps_uniswapv3_ticks_current_get

> <Array<TickV3DTO>> chains_chain_id_dapps_uniswapv3_ticks_current_get(chain_id, opts)

GetTicks

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
chain_id = 'chain_id_example' # String | Chain id
opts = {
  filter_pool_id: 'filter_pool_id_example' # String | Filter pool id
}

begin
  # GetTicks
  result = api_instance.chains_chain_id_dapps_uniswapv3_ticks_current_get(chain_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_ticks_current_get: #{e}"
end
```

#### Using the chains_chain_id_dapps_uniswapv3_ticks_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TickV3DTO>>, Integer, Hash)> chains_chain_id_dapps_uniswapv3_ticks_current_get_with_http_info(chain_id, opts)

```ruby
begin
  # GetTicks
  data, status_code, headers = api_instance.chains_chain_id_dapps_uniswapv3_ticks_current_get_with_http_info(chain_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TickV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_ticks_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** | Chain id |  |
| **filter_pool_id** | **String** | Filter pool id | [optional] |

### Return type

[**Array&lt;TickV3DTO&gt;**](TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get

> <Array<TickDayDataV3DTO>> chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get(chain_id, opts)

GetTicksDayData

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
chain_id = 'chain_id_example' # String | Chain id
opts = {
  filter_pool_id: 'filter_pool_id_example' # String | Filter pool id
}

begin
  # GetTicksDayData
  result = api_instance.chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get(chain_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get: #{e}"
end
```

#### Using the chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TickDayDataV3DTO>>, Integer, Hash)> chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get_with_http_info(chain_id, opts)

```ruby
begin
  # GetTicksDayData
  data, status_code, headers = api_instance.chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get_with_http_info(chain_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TickDayDataV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** | Chain id |  |
| **filter_pool_id** | **String** | Filter pool id | [optional] |

### Return type

[**Array&lt;TickDayDataV3DTO&gt;**](TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chains_chain_id_dapps_uniswapv3_tokens_current_get

> <Array<TokenV3DTO>> chains_chain_id_dapps_uniswapv3_tokens_current_get(chain_id, opts)

GetTokens

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
chain_id = 'chain_id_example' # String | Chain id
opts = {
  filter_token_id: 'filter_token_id_example' # String | 
}

begin
  # GetTokens
  result = api_instance.chains_chain_id_dapps_uniswapv3_tokens_current_get(chain_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_tokens_current_get: #{e}"
end
```

#### Using the chains_chain_id_dapps_uniswapv3_tokens_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TokenV3DTO>>, Integer, Hash)> chains_chain_id_dapps_uniswapv3_tokens_current_get_with_http_info(chain_id, opts)

```ruby
begin
  # GetTokens
  data, status_code, headers = api_instance.chains_chain_id_dapps_uniswapv3_tokens_current_get_with_http_info(chain_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TokenV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_tokens_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** | Chain id |  |
| **filter_token_id** | **String** |  | [optional] |

### Return type

[**Array&lt;TokenV3DTO&gt;**](TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get

> <Array<TokenV3DayDataDTO>> chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get(chain_id, opts)

GetTokensDayData

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
chain_id = 'chain_id_example' # String | Chain id
opts = {
  filter_token_id: 'filter_token_id_example' # String | 
}

begin
  # GetTokensDayData
  result = api_instance.chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get(chain_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get: #{e}"
end
```

#### Using the chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TokenV3DayDataDTO>>, Integer, Hash)> chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get_with_http_info(chain_id, opts)

```ruby
begin
  # GetTokensDayData
  data, status_code, headers = api_instance.chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get_with_http_info(chain_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TokenV3DayDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** | Chain id |  |
| **filter_token_id** | **String** |  | [optional] |

### Return type

[**Array&lt;TokenV3DayDataDTO&gt;**](TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get

> <Array<TokenHourDataV3DTO>> chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get(chain_id, opts)

GetTokensHourData

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
chain_id = 'chain_id_example' # String | Chain id
opts = {
  filter_token_id: 'filter_token_id_example' # String | 
}

begin
  # GetTokensHourData
  result = api_instance.chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get(chain_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get: #{e}"
end
```

#### Using the chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TokenHourDataV3DTO>>, Integer, Hash)> chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get_with_http_info(chain_id, opts)

```ruby
begin
  # GetTokensHourData
  data, status_code, headers = api_instance.chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get_with_http_info(chain_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TokenHourDataV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** | Chain id |  |
| **filter_token_id** | **String** |  | [optional] |

### Return type

[**Array&lt;TokenHourDataV3DTO&gt;**](TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get

> <Array<UniswapDayDataV3DTO>> chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get(chain_id)

GetUniswapDayData

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
chain_id = 'chain_id_example' # String | Chain id

begin
  # GetUniswapDayData
  result = api_instance.chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get(chain_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get: #{e}"
end
```

#### Using the chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapDayDataV3DTO>>, Integer, Hash)> chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get_with_http_info(chain_id)

```ruby
begin
  # GetUniswapDayData
  data, status_code, headers = api_instance.chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get_with_http_info(chain_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapDayDataV3DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** | Chain id |  |

### Return type

[**Array&lt;UniswapDayDataV3DTO&gt;**](UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

