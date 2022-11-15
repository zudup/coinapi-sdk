# OpenapiClient::SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**curve_get_exchanges__current**](SushiswapApi.md#curve_get_exchanges__current) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥 |
| [**dex_get_trades__current**](SushiswapApi.md#dex_get_trades__current) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥 |
| [**sushiswap_get_bundle_dtos__historical**](SushiswapApi.md#sushiswap_get_bundle_dtos__historical) | **GET** /dapps/sushiswap/BundleDTOs/historical | BundleDTOs (historical) 🔥 |
| [**sushiswap_get_bundles__historical**](SushiswapApi.md#sushiswap_get_bundles__historical) | **GET** /dapps/sushiswap/bundles/historical | Bundles (historical) |
| [**sushiswap_get_burn_dtos__historical**](SushiswapApi.md#sushiswap_get_burn_dtos__historical) | **GET** /dapps/sushiswap/BurnDTOs/historical | BurnDTOs (historical) 🔥 |
| [**sushiswap_get_burns__historical**](SushiswapApi.md#sushiswap_get_burns__historical) | **GET** /dapps/sushiswap/burns/historical | Burns (historical) |
| [**sushiswap_get_day_data__historical**](SushiswapApi.md#sushiswap_get_day_data__historical) | **GET** /dapps/sushiswap/dayData/historical | DayData (historical) |
| [**sushiswap_get_day_data_dtos__historical**](SushiswapApi.md#sushiswap_get_day_data_dtos__historical) | **GET** /dapps/sushiswap/DayDataDTOs/historical | DayDataDTOs (historical) 🔥 |
| [**sushiswap_get_factory__historical**](SushiswapApi.md#sushiswap_get_factory__historical) | **GET** /dapps/sushiswap/factory/historical | Factory (historical) |
| [**sushiswap_get_factory_dtos__historical**](SushiswapApi.md#sushiswap_get_factory_dtos__historical) | **GET** /dapps/sushiswap/FactoryDTOs/historical | FactoryDTOs (historical) 🔥 |
| [**sushiswap_get_hour_data__historical**](SushiswapApi.md#sushiswap_get_hour_data__historical) | **GET** /dapps/sushiswap/hourData/historical | HourData (historical) |
| [**sushiswap_get_hour_data_dtos__historical**](SushiswapApi.md#sushiswap_get_hour_data_dtos__historical) | **GET** /dapps/sushiswap/HourDataDTOs/historical | HourDataDTOs (historical) 🔥 |
| [**sushiswap_get_liquidity_position__historical**](SushiswapApi.md#sushiswap_get_liquidity_position__historical) | **GET** /dapps/sushiswap/liquidityPosition/historical | LiquidityPosition (historical) |
| [**sushiswap_get_liquidity_position_dtos__historical**](SushiswapApi.md#sushiswap_get_liquidity_position_dtos__historical) | **GET** /dapps/sushiswap/LiquidityPositionDTOs/historical | LiquidityPositionDTOs (historical) 🔥 |
| [**sushiswap_get_liquidity_position_snapshot__historical**](SushiswapApi.md#sushiswap_get_liquidity_position_snapshot__historical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | LiquidityPositionSnapshot (historical) |
| [**sushiswap_get_liquidity_position_snapshot_dtos__historical**](SushiswapApi.md#sushiswap_get_liquidity_position_snapshot_dtos__historical) | **GET** /dapps/sushiswap/LiquidityPositionSnapshotDTOs/historical | LiquidityPositionSnapshotDTOs (historical) 🔥 |
| [**sushiswap_get_mint_dtos__historical**](SushiswapApi.md#sushiswap_get_mint_dtos__historical) | **GET** /dapps/sushiswap/MintDTOs/historical | MintDTOs (historical) 🔥 |
| [**sushiswap_get_mints__historical**](SushiswapApi.md#sushiswap_get_mints__historical) | **GET** /dapps/sushiswap/mints/historical | Mints (historical) |
| [**sushiswap_get_pair_day_data_dtos__historical**](SushiswapApi.md#sushiswap_get_pair_day_data_dtos__historical) | **GET** /dapps/sushiswap/PairDayDataDTOs/historical | PairDayDataDTOs (historical) 🔥 |
| [**sushiswap_get_pair_dtos__historical**](SushiswapApi.md#sushiswap_get_pair_dtos__historical) | **GET** /dapps/sushiswap/PairDTOs/historical | PairDTOs (historical) 🔥 |
| [**sushiswap_get_pair_hour_data_dtos__historical**](SushiswapApi.md#sushiswap_get_pair_hour_data_dtos__historical) | **GET** /dapps/sushiswap/PairHourDataDTOs/historical | PairHourDataDTOs (historical) 🔥 |
| [**sushiswap_get_pools__current**](SushiswapApi.md#sushiswap_get_pools__current) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥 |
| [**sushiswap_get_pools__historical**](SushiswapApi.md#sushiswap_get_pools__historical) | **GET** /dapps/sushiswap/pools/historical | Pools (historical) 🔥 |
| [**sushiswap_get_pools_day_data__historical**](SushiswapApi.md#sushiswap_get_pools_day_data__historical) | **GET** /dapps/sushiswap/poolsDayData/historical | PoolsDayData (historical) |
| [**sushiswap_get_pools_hour_data__historical**](SushiswapApi.md#sushiswap_get_pools_hour_data__historical) | **GET** /dapps/sushiswap/poolsHourData/historical | PoolsHourData (historical) |
| [**sushiswap_get_swap_dtos__historical**](SushiswapApi.md#sushiswap_get_swap_dtos__historical) | **GET** /dapps/sushiswap/SwapDTOs/historical | SwapDTOs (historical) 🔥 |
| [**sushiswap_get_swaps__current**](SushiswapApi.md#sushiswap_get_swaps__current) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) 🔥 |
| [**sushiswap_get_swaps__historical**](SushiswapApi.md#sushiswap_get_swaps__historical) | **GET** /dapps/sushiswap/swaps/historical | Swaps (historical) 🔥 |
| [**sushiswap_get_token_day_data_dtos__historical**](SushiswapApi.md#sushiswap_get_token_day_data_dtos__historical) | **GET** /dapps/sushiswap/TokenDayDataDTOs/historical | TokenDayDataDTOs (historical) 🔥 |
| [**sushiswap_get_token_dtos__historical**](SushiswapApi.md#sushiswap_get_token_dtos__historical) | **GET** /dapps/sushiswap/TokenDTOs/historical | TokenDTOs (historical) 🔥 |
| [**sushiswap_get_tokens__current**](SushiswapApi.md#sushiswap_get_tokens__current) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) 🔥 |
| [**sushiswap_get_tokens__historical**](SushiswapApi.md#sushiswap_get_tokens__historical) | **GET** /dapps/sushiswap/tokens/historical | Tokens (historical) 🔥 |
| [**sushiswap_get_tokens_day_data__historical**](SushiswapApi.md#sushiswap_get_tokens_day_data__historical) | **GET** /dapps/sushiswap/tokensDayData/historical | TokensDayData (historical) |
| [**sushiswap_get_transaction_dtos__historical**](SushiswapApi.md#sushiswap_get_transaction_dtos__historical) | **GET** /dapps/sushiswap/TransactionDTOs/historical | TransactionDTOs (historical) 🔥 |
| [**sushiswap_get_transactions__historical**](SushiswapApi.md#sushiswap_get_transactions__historical) | **GET** /dapps/sushiswap/transactions/historical | Transactions (historical) |
| [**sushiswap_get_user_dtos__historical**](SushiswapApi.md#sushiswap_get_user_dtos__historical) | **GET** /dapps/sushiswap/UserDTOs/historical | UserDTOs (historical) 🔥 |
| [**sushiswap_get_users__historical**](SushiswapApi.md#sushiswap_get_users__historical) | **GET** /dapps/sushiswap/users/historical | Users (historical) |


## curve_get_exchanges__current

> <Array<CurveExchangeDTO>> curve_get_exchanges__current

Exchanges (current) 🔥

Gets exchanges.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # Exchanges (current) 🔥
  result = api_instance.curve_get_exchanges__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->curve_get_exchanges__current: #{e}"
end
```

#### Using the curve_get_exchanges__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CurveExchangeDTO>>, Integer, Hash)> curve_get_exchanges__current_with_http_info

```ruby
begin
  # Exchanges (current) 🔥
  data, status_code, headers = api_instance.curve_get_exchanges__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CurveExchangeDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->curve_get_exchanges__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;CurveExchangeDTO&gt;**](CurveExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_get_trades__current

> <Array<DexTradeDTO>> dex_get_trades__current

Trades (current) 🔥

Gets trades.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # Trades (current) 🔥
  result = api_instance.dex_get_trades__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dex_get_trades__current: #{e}"
end
```

#### Using the dex_get_trades__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexTradeDTO>>, Integer, Hash)> dex_get_trades__current_with_http_info

```ruby
begin
  # Trades (current) 🔥
  data, status_code, headers = api_instance.dex_get_trades__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexTradeDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->dex_get_trades__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;DexTradeDTO&gt;**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_bundle_dtos__historical

> <Array<SushiswapBundleDTO>> sushiswap_get_bundle_dtos__historical(opts)

BundleDTOs (historical) 🔥

Gets BundleDTOs.

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
  # BundleDTOs (historical) 🔥
  result = api_instance.sushiswap_get_bundle_dtos__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_bundle_dtos__historical: #{e}"
end
```

#### Using the sushiswap_get_bundle_dtos__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapBundleDTO>>, Integer, Hash)> sushiswap_get_bundle_dtos__historical_with_http_info(opts)

```ruby
begin
  # BundleDTOs (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_bundle_dtos__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapBundleDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_bundle_dtos__historical_with_http_info: #{e}"
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

[**Array&lt;SushiswapBundleDTO&gt;**](SushiswapBundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_bundles__historical

> <Array<SushiswapBundleDTO>> sushiswap_get_bundles__historical(opts)

Bundles (historical)

Gets bundles.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | AAAAAAAAAA
  end_block: 789, # Integer | BBBBBBBBBBBB
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | CCCCCCCCC
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | DDDDDDDDDDD
}

begin
  # Bundles (historical)
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
  # Bundles (historical)
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
| **start_block** | **Integer** | AAAAAAAAAA | [optional] |
| **end_block** | **Integer** | BBBBBBBBBBBB | [optional] |
| **start_date** | **Time** | CCCCCCCCC | [optional] |
| **end_date** | **Time** | DDDDDDDDDDD | [optional] |

### Return type

[**Array&lt;SushiswapBundleDTO&gt;**](SushiswapBundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_burn_dtos__historical

> <Array<SushiswapBurnDTO>> sushiswap_get_burn_dtos__historical(opts)

BurnDTOs (historical) 🔥

Gets BurnDTOs.

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
  # BurnDTOs (historical) 🔥
  result = api_instance.sushiswap_get_burn_dtos__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_burn_dtos__historical: #{e}"
end
```

#### Using the sushiswap_get_burn_dtos__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapBurnDTO>>, Integer, Hash)> sushiswap_get_burn_dtos__historical_with_http_info(opts)

```ruby
begin
  # BurnDTOs (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_burn_dtos__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapBurnDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_burn_dtos__historical_with_http_info: #{e}"
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


## sushiswap_get_burns__historical

> <Array<SushiswapBurnDTO>> sushiswap_get_burns__historical(opts)

Burns (historical)

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
  # Burns (historical)
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
  # Burns (historical)
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

DayData (historical)

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
  # DayData (historical)
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
  # DayData (historical)
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


## sushiswap_get_day_data_dtos__historical

> <Array<SushiswapDayDataDTO>> sushiswap_get_day_data_dtos__historical(opts)

DayDataDTOs (historical) 🔥

Gets DayDataDTOs.

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
  # DayDataDTOs (historical) 🔥
  result = api_instance.sushiswap_get_day_data_dtos__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_day_data_dtos__historical: #{e}"
end
```

#### Using the sushiswap_get_day_data_dtos__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapDayDataDTO>>, Integer, Hash)> sushiswap_get_day_data_dtos__historical_with_http_info(opts)

```ruby
begin
  # DayDataDTOs (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_day_data_dtos__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapDayDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_day_data_dtos__historical_with_http_info: #{e}"
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

[**Array&lt;SushiswapDayDataDTO&gt;**](SushiswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_factory__historical

> <Array<SushiswapFactoryDTO>> sushiswap_get_factory__historical(opts)

Factory (historical)

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
  # Factory (historical)
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
  # Factory (historical)
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


## sushiswap_get_factory_dtos__historical

> <Array<SushiswapFactoryDTO>> sushiswap_get_factory_dtos__historical(opts)

FactoryDTOs (historical) 🔥

Gets FactoryDTOs.

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
  # FactoryDTOs (historical) 🔥
  result = api_instance.sushiswap_get_factory_dtos__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_factory_dtos__historical: #{e}"
end
```

#### Using the sushiswap_get_factory_dtos__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapFactoryDTO>>, Integer, Hash)> sushiswap_get_factory_dtos__historical_with_http_info(opts)

```ruby
begin
  # FactoryDTOs (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_factory_dtos__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapFactoryDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_factory_dtos__historical_with_http_info: #{e}"
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

[**Array&lt;SushiswapFactoryDTO&gt;**](SushiswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_hour_data__historical

> <Array<SushiswapHourDataDTO>> sushiswap_get_hour_data__historical(opts)

HourData (historical)

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
  # HourData (historical)
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
  # HourData (historical)
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


## sushiswap_get_hour_data_dtos__historical

> <Array<SushiswapHourDataDTO>> sushiswap_get_hour_data_dtos__historical(opts)

HourDataDTOs (historical) 🔥

Gets HourDataDTOs.

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
  # HourDataDTOs (historical) 🔥
  result = api_instance.sushiswap_get_hour_data_dtos__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_hour_data_dtos__historical: #{e}"
end
```

#### Using the sushiswap_get_hour_data_dtos__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapHourDataDTO>>, Integer, Hash)> sushiswap_get_hour_data_dtos__historical_with_http_info(opts)

```ruby
begin
  # HourDataDTOs (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_hour_data_dtos__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapHourDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_hour_data_dtos__historical_with_http_info: #{e}"
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

[**Array&lt;SushiswapHourDataDTO&gt;**](SushiswapHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_liquidity_position__historical

> <Array<SushiswapLiquidityPositionDTO>> sushiswap_get_liquidity_position__historical(opts)

LiquidityPosition (historical)

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
  # LiquidityPosition (historical)
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
  # LiquidityPosition (historical)
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


## sushiswap_get_liquidity_position_dtos__historical

> <Array<SushiswapLiquidityPositionDTO>> sushiswap_get_liquidity_position_dtos__historical(opts)

LiquidityPositionDTOs (historical) 🔥

Gets LiquidityPositionDTOs.

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
  # LiquidityPositionDTOs (historical) 🔥
  result = api_instance.sushiswap_get_liquidity_position_dtos__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_liquidity_position_dtos__historical: #{e}"
end
```

#### Using the sushiswap_get_liquidity_position_dtos__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapLiquidityPositionDTO>>, Integer, Hash)> sushiswap_get_liquidity_position_dtos__historical_with_http_info(opts)

```ruby
begin
  # LiquidityPositionDTOs (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_liquidity_position_dtos__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapLiquidityPositionDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_liquidity_position_dtos__historical_with_http_info: #{e}"
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

LiquidityPositionSnapshot (historical)

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
  # LiquidityPositionSnapshot (historical)
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
  # LiquidityPositionSnapshot (historical)
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


## sushiswap_get_liquidity_position_snapshot_dtos__historical

> <Array<SushiswapLiquidityPositionSnapshotDTO>> sushiswap_get_liquidity_position_snapshot_dtos__historical(opts)

LiquidityPositionSnapshotDTOs (historical) 🔥

Gets LiquidityPositionSnapshotDTOs.

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
  # LiquidityPositionSnapshotDTOs (historical) 🔥
  result = api_instance.sushiswap_get_liquidity_position_snapshot_dtos__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_liquidity_position_snapshot_dtos__historical: #{e}"
end
```

#### Using the sushiswap_get_liquidity_position_snapshot_dtos__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapLiquidityPositionSnapshotDTO>>, Integer, Hash)> sushiswap_get_liquidity_position_snapshot_dtos__historical_with_http_info(opts)

```ruby
begin
  # LiquidityPositionSnapshotDTOs (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_liquidity_position_snapshot_dtos__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapLiquidityPositionSnapshotDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_liquidity_position_snapshot_dtos__historical_with_http_info: #{e}"
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


## sushiswap_get_mint_dtos__historical

> <Array<SushiswapMintDTO>> sushiswap_get_mint_dtos__historical(opts)

MintDTOs (historical) 🔥

Gets MintDTOs.

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
  # MintDTOs (historical) 🔥
  result = api_instance.sushiswap_get_mint_dtos__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_mint_dtos__historical: #{e}"
end
```

#### Using the sushiswap_get_mint_dtos__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapMintDTO>>, Integer, Hash)> sushiswap_get_mint_dtos__historical_with_http_info(opts)

```ruby
begin
  # MintDTOs (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_mint_dtos__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapMintDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_mint_dtos__historical_with_http_info: #{e}"
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


## sushiswap_get_mints__historical

> <Array<SushiswapMintDTO>> sushiswap_get_mints__historical(opts)

Mints (historical)

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
  # Mints (historical)
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
  # Mints (historical)
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


## sushiswap_get_pair_day_data_dtos__historical

> <Array<SushiswapPairDayDataDTO>> sushiswap_get_pair_day_data_dtos__historical(opts)

PairDayDataDTOs (historical) 🔥

Gets PairDayDataDTOs.

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
  # PairDayDataDTOs (historical) 🔥
  result = api_instance.sushiswap_get_pair_day_data_dtos__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_pair_day_data_dtos__historical: #{e}"
end
```

#### Using the sushiswap_get_pair_day_data_dtos__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapPairDayDataDTO>>, Integer, Hash)> sushiswap_get_pair_day_data_dtos__historical_with_http_info(opts)

```ruby
begin
  # PairDayDataDTOs (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_pair_day_data_dtos__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapPairDayDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_pair_day_data_dtos__historical_with_http_info: #{e}"
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


## sushiswap_get_pair_dtos__historical

> <Array<SushiswapPairDTO>> sushiswap_get_pair_dtos__historical(opts)

PairDTOs (historical) 🔥

Gets PairDTOs.

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
  # PairDTOs (historical) 🔥
  result = api_instance.sushiswap_get_pair_dtos__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_pair_dtos__historical: #{e}"
end
```

#### Using the sushiswap_get_pair_dtos__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapPairDTO>>, Integer, Hash)> sushiswap_get_pair_dtos__historical_with_http_info(opts)

```ruby
begin
  # PairDTOs (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_pair_dtos__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapPairDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_pair_dtos__historical_with_http_info: #{e}"
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


## sushiswap_get_pair_hour_data_dtos__historical

> <Array<SushiswapPairHourDataDTO>> sushiswap_get_pair_hour_data_dtos__historical(opts)

PairHourDataDTOs (historical) 🔥

Gets PairHourDataDTOs.

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
  # PairHourDataDTOs (historical) 🔥
  result = api_instance.sushiswap_get_pair_hour_data_dtos__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_pair_hour_data_dtos__historical: #{e}"
end
```

#### Using the sushiswap_get_pair_hour_data_dtos__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapPairHourDataDTO>>, Integer, Hash)> sushiswap_get_pair_hour_data_dtos__historical_with_http_info(opts)

```ruby
begin
  # PairHourDataDTOs (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_pair_hour_data_dtos__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapPairHourDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_pair_hour_data_dtos__historical_with_http_info: #{e}"
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


## sushiswap_get_pools__current

> <Array<SushiswapPairDTO>> sushiswap_get_pools__current

Pools (current) 🔥

Gets pools.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # Pools (current) 🔥
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
  # Pools (current) 🔥
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

Pools (historical) 🔥

Gets list of pools for given filters.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe
  pool_id: 'pool_id_example' # String | The pool address.
}

begin
  # Pools (historical) 🔥
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
  # Pools (historical) 🔥
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
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe | [optional] |
| **pool_id** | **String** | The pool address. | [optional] |

### Return type

[**Array&lt;SushiswapPairDTO&gt;**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_pools_day_data__historical

> <Array<SushiswapPairDayDataDTO>> sushiswap_get_pools_day_data__historical(opts)

PoolsDayData (historical)

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
  # PoolsDayData (historical)
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
  # PoolsDayData (historical)
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

PoolsHourData (historical)

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
  # PoolsHourData (historical)
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
  # PoolsHourData (historical)
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


## sushiswap_get_swap_dtos__historical

> <Array<SushiswapSwapDTO>> sushiswap_get_swap_dtos__historical(opts)

SwapDTOs (historical) 🔥

Gets SwapDTOs.

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
  # SwapDTOs (historical) 🔥
  result = api_instance.sushiswap_get_swap_dtos__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_swap_dtos__historical: #{e}"
end
```

#### Using the sushiswap_get_swap_dtos__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapSwapDTO>>, Integer, Hash)> sushiswap_get_swap_dtos__historical_with_http_info(opts)

```ruby
begin
  # SwapDTOs (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_swap_dtos__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapSwapDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_swap_dtos__historical_with_http_info: #{e}"
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


## sushiswap_get_swaps__current

> <Array<SushiswapSwapDTO>> sushiswap_get_swaps__current

Swaps (current) 🔥

Gets swaps.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # Swaps (current) 🔥
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
  # Swaps (current) 🔥
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

Swaps (historical) 🔥

Gets list of swaps for given filters.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe
  pool_id: 'pool_id_example' # String | The pool address.
}

begin
  # Swaps (historical) 🔥
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
  # Swaps (historical) 🔥
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
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe | [optional] |
| **pool_id** | **String** | The pool address. | [optional] |

### Return type

[**Array&lt;SushiswapSwapDTO&gt;**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_token_day_data_dtos__historical

> <Array<SushiswapTokenDayDataDTO>> sushiswap_get_token_day_data_dtos__historical(opts)

TokenDayDataDTOs (historical) 🔥

Gets TokenDayDataDTOs.

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
  # TokenDayDataDTOs (historical) 🔥
  result = api_instance.sushiswap_get_token_day_data_dtos__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_token_day_data_dtos__historical: #{e}"
end
```

#### Using the sushiswap_get_token_day_data_dtos__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapTokenDayDataDTO>>, Integer, Hash)> sushiswap_get_token_day_data_dtos__historical_with_http_info(opts)

```ruby
begin
  # TokenDayDataDTOs (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_token_day_data_dtos__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapTokenDayDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_token_day_data_dtos__historical_with_http_info: #{e}"
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

[**Array&lt;SushiswapTokenDayDataDTO&gt;**](SushiswapTokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_token_dtos__historical

> <Array<SushiswapTokenDTO>> sushiswap_get_token_dtos__historical(opts)

TokenDTOs (historical) 🔥

Gets TokenDTOs.

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
  # TokenDTOs (historical) 🔥
  result = api_instance.sushiswap_get_token_dtos__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_token_dtos__historical: #{e}"
end
```

#### Using the sushiswap_get_token_dtos__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapTokenDTO>>, Integer, Hash)> sushiswap_get_token_dtos__historical_with_http_info(opts)

```ruby
begin
  # TokenDTOs (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_token_dtos__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapTokenDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_token_dtos__historical_with_http_info: #{e}"
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

[**Array&lt;SushiswapTokenDTO&gt;**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_tokens__current

> <Array<SushiswapTokenDTO>> sushiswap_get_tokens__current

Tokens (current) 🔥

Gets tokens.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new

begin
  # Tokens (current) 🔥
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
  # Tokens (current) 🔥
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

Tokens (historical) 🔥

Gets list of tokens for given filters.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe
  token_id: 'token_id_example' # String | The token address.
}

begin
  # Tokens (historical) 🔥
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
  # Tokens (historical) 🔥
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
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe | [optional] |
| **token_id** | **String** | The token address. | [optional] |

### Return type

[**Array&lt;SushiswapTokenDTO&gt;**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_tokens_day_data__historical

> <Array<SushiswapTokenDayDataDTO>> sushiswap_get_tokens_day_data__historical(opts)

TokensDayData (historical)

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
  # TokensDayData (historical)
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
  # TokensDayData (historical)
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


## sushiswap_get_transaction_dtos__historical

> <Array<SushiswapTransactionDTO>> sushiswap_get_transaction_dtos__historical(opts)

TransactionDTOs (historical) 🔥

Gets TransactionDTOs.

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
  # TransactionDTOs (historical) 🔥
  result = api_instance.sushiswap_get_transaction_dtos__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_transaction_dtos__historical: #{e}"
end
```

#### Using the sushiswap_get_transaction_dtos__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapTransactionDTO>>, Integer, Hash)> sushiswap_get_transaction_dtos__historical_with_http_info(opts)

```ruby
begin
  # TransactionDTOs (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_transaction_dtos__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapTransactionDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_transaction_dtos__historical_with_http_info: #{e}"
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

[**Array&lt;SushiswapTransactionDTO&gt;**](SushiswapTransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_transactions__historical

> <Array<SushiswapTransactionDTO>> sushiswap_get_transactions__historical(opts)

Transactions (historical)

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
  # Transactions (historical)
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
  # Transactions (historical)
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


## sushiswap_get_user_dtos__historical

> <Array<SushiswapUserDTO>> sushiswap_get_user_dtos__historical(opts)

UserDTOs (historical) 🔥

Gets UserDTOs.

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
  # UserDTOs (historical) 🔥
  result = api_instance.sushiswap_get_user_dtos__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_user_dtos__historical: #{e}"
end
```

#### Using the sushiswap_get_user_dtos__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SushiswapUserDTO>>, Integer, Hash)> sushiswap_get_user_dtos__historical_with_http_info(opts)

```ruby
begin
  # UserDTOs (historical) 🔥
  data, status_code, headers = api_instance.sushiswap_get_user_dtos__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SushiswapUserDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->sushiswap_get_user_dtos__historical_with_http_info: #{e}"
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

[**Array&lt;SushiswapUserDTO&gt;**](SushiswapUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswap_get_users__historical

> <Array<SushiswapUserDTO>> sushiswap_get_users__historical(opts)

Users (historical)

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
  # Users (historical)
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
  # Users (historical)
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

