# OpenapiClient::UniswapV3Api

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**uniswap_v3_get_bundles__current**](UniswapV3Api.md#uniswap_v3_get_bundles__current) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current) |
| [**uniswap_v3_get_bundles__historical**](UniswapV3Api.md#uniswap_v3_get_bundles__historical) | **GET** /dapps/uniswapv3/bundles/historical-manual | Bundles (historical) |
| [**uniswap_v3_get_burns__current**](UniswapV3Api.md#uniswap_v3_get_burns__current) | **GET** /dapps/uniswapv3/burns/current | Burns (current) |
| [**uniswap_v3_get_burns__historical**](UniswapV3Api.md#uniswap_v3_get_burns__historical) | **GET** /dapps/uniswapv3/burns/historical-manual | Burns (historical) |
| [**uniswap_v3_get_day_data__current**](UniswapV3Api.md#uniswap_v3_get_day_data__current) | **GET** /dapps/uniswapv3/dayData/current | DayData (current) |
| [**uniswap_v3_get_day_data__historical**](UniswapV3Api.md#uniswap_v3_get_day_data__historical) | **GET** /dapps/uniswapv3/dayData/historical-manual | DayData (historical) |
| [**uniswap_v3_get_factory__current**](UniswapV3Api.md#uniswap_v3_get_factory__current) | **GET** /dapps/uniswapv3/factory/current | Factory (current) |
| [**uniswap_v3_get_factory__historical**](UniswapV3Api.md#uniswap_v3_get_factory__historical) | **GET** /dapps/uniswapv3/factory/historical-manual | Factory (historical) |
| [**uniswap_v3_get_mints__current**](UniswapV3Api.md#uniswap_v3_get_mints__current) | **GET** /dapps/uniswapv3/mints/current | Mints (current) |
| [**uniswap_v3_get_mints__historical**](UniswapV3Api.md#uniswap_v3_get_mints__historical) | **GET** /dapps/uniswapv3/mints/historical-manual | Mints (historical) |
| [**uniswap_v3_get_pools__current**](UniswapV3Api.md#uniswap_v3_get_pools__current) | **GET** /dapps/uniswapv3/pools/current | Pools (current) 🔥 |
| [**uniswap_v3_get_pools__historical**](UniswapV3Api.md#uniswap_v3_get_pools__historical) | **GET** /dapps/uniswapv3/pools/historical-manual | Pools (historical) 🔥 |
| [**uniswap_v3_get_pools_day_data__current**](UniswapV3Api.md#uniswap_v3_get_pools_day_data__current) | **GET** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current) |
| [**uniswap_v3_get_pools_day_data__historical**](UniswapV3Api.md#uniswap_v3_get_pools_day_data__historical) | **GET** /dapps/uniswapv3/poolsDayData/historical-manual | PoolsDayData (historical) |
| [**uniswap_v3_get_pools_hour_data__current**](UniswapV3Api.md#uniswap_v3_get_pools_hour_data__current) | **GET** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current) |
| [**uniswap_v3_get_pools_hour_data__historical**](UniswapV3Api.md#uniswap_v3_get_pools_hour_data__historical) | **GET** /dapps/uniswapv3/poolsHourData/historical-manual | PoolsHourData (historical) |
| [**uniswap_v3_get_positions__current**](UniswapV3Api.md#uniswap_v3_get_positions__current) | **GET** /dapps/uniswapv3/positions/current | Positions (current) |
| [**uniswap_v3_get_positions__historical**](UniswapV3Api.md#uniswap_v3_get_positions__historical) | **GET** /dapps/uniswapv3/positions/historical-manual | Positions (historical) |
| [**uniswap_v3_get_positions_snaphots__historical**](UniswapV3Api.md#uniswap_v3_get_positions_snaphots__historical) | **GET** /dapps/uniswapv3/positionsSnapshots/historical-manual | PositionsSnaphots (historical) |
| [**uniswap_v3_get_positions_snapshots__current**](UniswapV3Api.md#uniswap_v3_get_positions_snapshots__current) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current) |
| [**uniswap_v3_get_swaps__current**](UniswapV3Api.md#uniswap_v3_get_swaps__current) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥 |
| [**uniswap_v3_get_swaps__historical**](UniswapV3Api.md#uniswap_v3_get_swaps__historical) | **GET** /dapps/uniswapv3/swaps/historical-manual | Swaps (historical) 🔥 |
| [**uniswap_v3_get_ticks__current**](UniswapV3Api.md#uniswap_v3_get_ticks__current) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current) |
| [**uniswap_v3_get_ticks__historical**](UniswapV3Api.md#uniswap_v3_get_ticks__historical) | **GET** /dapps/uniswapv3/ticks/historical-manual | Ticks (historical) |
| [**uniswap_v3_get_ticks_day_data__current**](UniswapV3Api.md#uniswap_v3_get_ticks_day_data__current) | **GET** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current) |
| [**uniswap_v3_get_ticks_day_data__historical**](UniswapV3Api.md#uniswap_v3_get_ticks_day_data__historical) | **GET** /dapps/uniswapv3/ticksDayData/historical-manual | TicksDayData (historical) |
| [**uniswap_v3_get_tokens__current**](UniswapV3Api.md#uniswap_v3_get_tokens__current) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥 |
| [**uniswap_v3_get_tokens__historical**](UniswapV3Api.md#uniswap_v3_get_tokens__historical) | **GET** /dapps/uniswapv3/tokens/historical-manual | Tokens (historical) 🔥 |
| [**uniswap_v3_get_tokens_day_data__current**](UniswapV3Api.md#uniswap_v3_get_tokens_day_data__current) | **GET** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current) |
| [**uniswap_v3_get_tokens_day_data__historical**](UniswapV3Api.md#uniswap_v3_get_tokens_day_data__historical) | **GET** /dapps/uniswapv3/tokensDayData/historical-manual | TokensDayData (historical) |
| [**uniswap_v3_get_tokens_hour_data__current**](UniswapV3Api.md#uniswap_v3_get_tokens_hour_data__current) | **GET** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current) |
| [**uniswap_v3_get_tokens_hour_data__historical**](UniswapV3Api.md#uniswap_v3_get_tokens_hour_data__historical) | **GET** /dapps/uniswapv3/tokensHourData/historical-manual | TokensHourData (historical) |
| [**uniswap_v3_get_transactions__historical**](UniswapV3Api.md#uniswap_v3_get_transactions__historical) | **GET** /dapps/uniswapv3/transactions/historical-manual | Transactions (historical) |


## uniswap_v3_get_bundles__current

> <Array<UniswapV3BundleV3DTO>> uniswap_v3_get_bundles__current

Bundles (current)

Gets bundles.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new

begin
  # Bundles (current)
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
  # Bundles (current)
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

Bundles (historical)

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
  # Bundles (historical)
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
  # Bundles (historical)
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

Burns (current)

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
  # Burns (current)
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
  # Burns (current)
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

Burns (historical)

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
  # Burns (historical)
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
  # Burns (historical)
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

DayData (current)

Gets uniswapv3 day data.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new

begin
  # DayData (current)
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
  # DayData (current)
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

DayData (historical)

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
  # DayData (historical)
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
  # DayData (historical)
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

Factory (current)

Gets factory.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new

begin
  # Factory (current)
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
  # Factory (current)
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

Factory (historical)

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
  # Factory (historical)
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
  # Factory (historical)
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

Mints (current)

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
  # Mints (current)
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
  # Mints (current)
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

Mints (historical)

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
  # Mints (historical)
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
  # Mints (historical)
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

Pools (current) 🔥

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
  # Pools (current) 🔥
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
  # Pools (current) 🔥
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

Pools (historical) 🔥

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
  # Pools (historical) 🔥
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
  # Pools (historical) 🔥
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

PoolsDayData (current)

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
  # PoolsDayData (current)
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
  # PoolsDayData (current)
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

PoolsDayData (historical)

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
  # PoolsDayData (historical)
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
  # PoolsDayData (historical)
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

PoolsHourData (current)

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
  # PoolsHourData (current)
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
  # PoolsHourData (current)
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

PoolsHourData (historical)

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
  # PoolsHourData (historical)
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
  # PoolsHourData (historical)
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

Positions (current)

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
  # Positions (current)
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
  # Positions (current)
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

Positions (historical)

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
  # Positions (historical)
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
  # Positions (historical)
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

PositionsSnaphots (historical)

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
  # PositionsSnaphots (historical)
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
  # PositionsSnaphots (historical)
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

PositionsSnapshots (current)

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
  # PositionsSnapshots (current)
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
  # PositionsSnapshots (current)
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

Swaps (current) 🔥

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
  # Swaps (current) 🔥
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
  # Swaps (current) 🔥
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

Swaps (historical) 🔥

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
  # Swaps (historical) 🔥
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
  # Swaps (historical) 🔥
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

Ticks (current)

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
  # Ticks (current)
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
  # Ticks (current)
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

Ticks (historical)

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
  # Ticks (historical)
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
  # Ticks (historical)
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

TicksDayData (current)

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
  # TicksDayData (current)
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
  # TicksDayData (current)
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

TicksDayData (historical)

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
  # TicksDayData (historical)
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
  # TicksDayData (historical)
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

Tokens (current) 🔥

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
  # Tokens (current) 🔥
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
  # Tokens (current) 🔥
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

Tokens (historical) 🔥

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
  # Tokens (historical) 🔥
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
  # Tokens (historical) 🔥
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

TokensDayData (current)

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
  # TokensDayData (current)
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
  # TokensDayData (current)
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

TokensDayData (historical)

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
  # TokensDayData (historical)
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
  # TokensDayData (historical)
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

TokensHourData (current)

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
  # TokensHourData (current)
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
  # TokensHourData (current)
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

TokensHourData (historical)

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
  # TokensHourData (historical)
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
  # TokensHourData (historical)
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

Transactions (historical)

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
  # Transactions (historical)
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
  # Transactions (historical)
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

