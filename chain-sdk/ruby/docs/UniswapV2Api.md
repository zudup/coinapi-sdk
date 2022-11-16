# OpenapiClient::UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**uniswap_v2_get_bundle_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_bundle_v2s__historical) | **GET** /dapps/uniswapv2/bundlev2s/historical | BundleV2s (historical) 🔥 |
| [**uniswap_v2_get_burn_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_burn_v2s__historical) | **GET** /dapps/uniswapv2/burnv2s/historical | BurnV2s (historical) 🔥 |
| [**uniswap_v2_get_liquidity_position_snapshot_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_liquidity_position_snapshot_v2s__historical) | **GET** /dapps/uniswapv2/liquiditypositionsnapshotv2s/historical | LiquidityPositionSnapshotV2s (historical) 🔥 |
| [**uniswap_v2_get_liquidity_position_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_liquidity_position_v2s__historical) | **GET** /dapps/uniswapv2/liquiditypositionv2s/historical | LiquidityPositionV2s (historical) 🔥 |
| [**uniswap_v2_get_mint_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_mint_v2s__historical) | **GET** /dapps/uniswapv2/mintv2s/historical | MintV2s (historical) 🔥 |
| [**uniswap_v2_get_pair_day_data_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_pair_day_data_v2s__historical) | **GET** /dapps/uniswapv2/pairdaydatav2s/historical | PairDayDataV2s (historical) 🔥 |
| [**uniswap_v2_get_pair_hour_data_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_pair_hour_data_v2s__historical) | **GET** /dapps/uniswapv2/pairhourdatav2s/historical | PairHourDataV2s (historical) 🔥 |
| [**uniswap_v2_get_pair_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_pair_v2s__historical) | **GET** /dapps/uniswapv2/pairv2s/historical | PairV2s (historical) 🔥 |
| [**uniswap_v2_get_pools__current**](UniswapV2Api.md#uniswap_v2_get_pools__current) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥 |
| [**uniswap_v2_get_swap_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_swap_v2s__historical) | **GET** /dapps/uniswapv2/swapv2s/historical | SwapV2s (historical) 🔥 |
| [**uniswap_v2_get_swaps__current**](UniswapV2Api.md#uniswap_v2_get_swaps__current) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥 |
| [**uniswap_v2_get_token_day_data_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_token_day_data_v2s__historical) | **GET** /dapps/uniswapv2/tokendaydatav2s/historical | TokenDayDataV2s (historical) 🔥 |
| [**uniswap_v2_get_token_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_token_v2s__historical) | **GET** /dapps/uniswapv2/tokenv2s/historical | TokenV2s (historical) 🔥 |
| [**uniswap_v2_get_tokens__current**](UniswapV2Api.md#uniswap_v2_get_tokens__current) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥 |
| [**uniswap_v2_get_transaction_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_transaction_v2s__historical) | **GET** /dapps/uniswapv2/transactionv2s/historical | TransactionV2s (historical) 🔥 |
| [**uniswap_v2_get_uniswap_day_data_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_uniswap_day_data_v2s__historical) | **GET** /dapps/uniswapv2/uniswapdaydatav2s/historical | UniswapDayDataV2s (historical) 🔥 |
| [**uniswap_v2_get_uniswap_factory_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_uniswap_factory_v2s__historical) | **GET** /dapps/uniswapv2/uniswapfactoryv2s/historical | UniswapFactoryV2s (historical) 🔥 |
| [**uniswap_v2_get_user_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_user_v2s__historical) | **GET** /dapps/uniswapv2/userv2s/historical | UserV2s (historical) 🔥 |


## uniswap_v2_get_bundle_v2s__historical

> <Array<UniswapV2BundleV2DTO>> uniswap_v2_get_bundle_v2s__historical(opts)

BundleV2s (historical) 🔥

Gets bundlev2s.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | Constant 1.
}

begin
  # BundleV2s (historical) 🔥
  result = api_instance.uniswap_v2_get_bundle_v2s__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_bundle_v2s__historical: #{e}"
end
```

#### Using the uniswap_v2_get_bundle_v2s__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2BundleV2DTO>>, Integer, Hash)> uniswap_v2_get_bundle_v2s__historical_with_http_info(opts)

```ruby
begin
  # BundleV2s (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v2_get_bundle_v2s__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2BundleV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_bundle_v2s__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Constant 1. | [optional] |

### Return type

[**Array&lt;UniswapV2BundleV2DTO&gt;**](UniswapV2BundleV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_burn_v2s__historical

> <Array<UniswapV2BurnV2DTO>> uniswap_v2_get_burn_v2s__historical(opts)

BurnV2s (historical) 🔥

Gets burnv2s.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example', # String | Transaction hash plus index in the transaction burn array
  pair: 'pair_example' # String | Reference to pair.
}

begin
  # BurnV2s (historical) 🔥
  result = api_instance.uniswap_v2_get_burn_v2s__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_burn_v2s__historical: #{e}"
end
```

#### Using the uniswap_v2_get_burn_v2s__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2BurnV2DTO>>, Integer, Hash)> uniswap_v2_get_burn_v2s__historical_with_http_info(opts)

```ruby
begin
  # BurnV2s (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v2_get_burn_v2s__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2BurnV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_burn_v2s__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Transaction hash plus index in the transaction burn array | [optional] |
| **pair** | **String** | Reference to pair. | [optional] |

### Return type

[**Array&lt;UniswapV2BurnV2DTO&gt;**](UniswapV2BurnV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_liquidity_position_snapshot_v2s__historical

> <Array<UniswapV2LiquidityPositionSnapshotV2DTO>> uniswap_v2_get_liquidity_position_snapshot_v2s__historical(opts)

LiquidityPositionSnapshotV2s (historical) 🔥

Gets liquiditypositionsnapshotv2s.

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
  id: 'id_example', # String | 
  user: 'user_example', # String | 
  pair: 'pair_example' # String | 
}

begin
  # LiquidityPositionSnapshotV2s (historical) 🔥
  result = api_instance.uniswap_v2_get_liquidity_position_snapshot_v2s__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_liquidity_position_snapshot_v2s__historical: #{e}"
end
```

#### Using the uniswap_v2_get_liquidity_position_snapshot_v2s__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2LiquidityPositionSnapshotV2DTO>>, Integer, Hash)> uniswap_v2_get_liquidity_position_snapshot_v2s__historical_with_http_info(opts)

```ruby
begin
  # LiquidityPositionSnapshotV2s (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v2_get_liquidity_position_snapshot_v2s__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2LiquidityPositionSnapshotV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_liquidity_position_snapshot_v2s__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **id** | **String** |  | [optional] |
| **user** | **String** |  | [optional] |
| **pair** | **String** |  | [optional] |

### Return type

[**Array&lt;UniswapV2LiquidityPositionSnapshotV2DTO&gt;**](UniswapV2LiquidityPositionSnapshotV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_liquidity_position_v2s__historical

> <Array<UniswapV2LiquidityPositionV2DTO>> uniswap_v2_get_liquidity_position_v2s__historical(opts)

LiquidityPositionV2s (historical) 🔥

Gets liquiditypositionv2s.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example', # String | User address and pair address concatenated with a dash.
  user: 'user_example', # String | Reference to user.
  pair: 'pair_example' # String | Reference to the pair liquidity is being provided on.
}

begin
  # LiquidityPositionV2s (historical) 🔥
  result = api_instance.uniswap_v2_get_liquidity_position_v2s__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_liquidity_position_v2s__historical: #{e}"
end
```

#### Using the uniswap_v2_get_liquidity_position_v2s__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2LiquidityPositionV2DTO>>, Integer, Hash)> uniswap_v2_get_liquidity_position_v2s__historical_with_http_info(opts)

```ruby
begin
  # LiquidityPositionV2s (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v2_get_liquidity_position_v2s__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2LiquidityPositionV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_liquidity_position_v2s__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | User address and pair address concatenated with a dash. | [optional] |
| **user** | **String** | Reference to user. | [optional] |
| **pair** | **String** | Reference to the pair liquidity is being provided on. | [optional] |

### Return type

[**Array&lt;UniswapV2LiquidityPositionV2DTO&gt;**](UniswapV2LiquidityPositionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_mint_v2s__historical

> <Array<UniswapV2MintV2DTO>> uniswap_v2_get_mint_v2s__historical(opts)

MintV2s (historical) 🔥

Gets mintv2s.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example', # String | Transaction hash plus index in the transaction mint array.
  pair: 'pair_example' # String | Reference to pair.
}

begin
  # MintV2s (historical) 🔥
  result = api_instance.uniswap_v2_get_mint_v2s__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_mint_v2s__historical: #{e}"
end
```

#### Using the uniswap_v2_get_mint_v2s__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2MintV2DTO>>, Integer, Hash)> uniswap_v2_get_mint_v2s__historical_with_http_info(opts)

```ruby
begin
  # MintV2s (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v2_get_mint_v2s__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2MintV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_mint_v2s__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Transaction hash plus index in the transaction mint array. | [optional] |
| **pair** | **String** | Reference to pair. | [optional] |

### Return type

[**Array&lt;UniswapV2MintV2DTO&gt;**](UniswapV2MintV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_pair_day_data_v2s__historical

> <Array<UniswapV2PairDayDataV2DTO>> uniswap_v2_get_pair_day_data_v2s__historical(opts)

PairDayDataV2s (historical) 🔥

Gets pairdaydatav2s.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example', # String | 
  token_0: 'token_0_example', # String | Reference to token0.
  token_1: 'token_1_example' # String | Reference to token1.
}

begin
  # PairDayDataV2s (historical) 🔥
  result = api_instance.uniswap_v2_get_pair_day_data_v2s__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_pair_day_data_v2s__historical: #{e}"
end
```

#### Using the uniswap_v2_get_pair_day_data_v2s__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2PairDayDataV2DTO>>, Integer, Hash)> uniswap_v2_get_pair_day_data_v2s__historical_with_http_info(opts)

```ruby
begin
  # PairDayDataV2s (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v2_get_pair_day_data_v2s__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2PairDayDataV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_pair_day_data_v2s__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** |  | [optional] |
| **token_0** | **String** | Reference to token0. | [optional] |
| **token_1** | **String** | Reference to token1. | [optional] |

### Return type

[**Array&lt;UniswapV2PairDayDataV2DTO&gt;**](UniswapV2PairDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_pair_hour_data_v2s__historical

> <Array<UniswapV2PairHourDataV2DTO>> uniswap_v2_get_pair_hour_data_v2s__historical(opts)

PairHourDataV2s (historical) 🔥

Gets pairhourdatav2s.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example', # String | 
  pair: 'pair_example' # String | Address for pair contract.
}

begin
  # PairHourDataV2s (historical) 🔥
  result = api_instance.uniswap_v2_get_pair_hour_data_v2s__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_pair_hour_data_v2s__historical: #{e}"
end
```

#### Using the uniswap_v2_get_pair_hour_data_v2s__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2PairHourDataV2DTO>>, Integer, Hash)> uniswap_v2_get_pair_hour_data_v2s__historical_with_http_info(opts)

```ruby
begin
  # PairHourDataV2s (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v2_get_pair_hour_data_v2s__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2PairHourDataV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_pair_hour_data_v2s__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** |  | [optional] |
| **pair** | **String** | Address for pair contract. | [optional] |

### Return type

[**Array&lt;UniswapV2PairHourDataV2DTO&gt;**](UniswapV2PairHourDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_pair_v2s__historical

> <Array<UniswapV2PairV2DTO>> uniswap_v2_get_pair_v2s__historical(opts)

PairV2s (historical) 🔥

Gets pairv2s.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example', # String | Pair contract address.
  token_0: 'token_0_example', # String | Reference to token0 as stored in pair contract.
  token_1: 'token_1_example' # String | Reference to token1 as stored in pair contract.
}

begin
  # PairV2s (historical) 🔥
  result = api_instance.uniswap_v2_get_pair_v2s__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_pair_v2s__historical: #{e}"
end
```

#### Using the uniswap_v2_get_pair_v2s__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2PairV2DTO>>, Integer, Hash)> uniswap_v2_get_pair_v2s__historical_with_http_info(opts)

```ruby
begin
  # PairV2s (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v2_get_pair_v2s__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2PairV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_pair_v2s__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Pair contract address. | [optional] |
| **token_0** | **String** | Reference to token0 as stored in pair contract. | [optional] |
| **token_1** | **String** | Reference to token1 as stored in pair contract. | [optional] |

### Return type

[**Array&lt;UniswapV2PairV2DTO&gt;**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_pools__current

> <Array<UniswapV2PairV2DTO>> uniswap_v2_get_pools__current(opts)

Pools (current) 🔥

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
  # Pools (current) 🔥
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
  # Pools (current) 🔥
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


## uniswap_v2_get_swap_v2s__historical

> <Array<UniswapV2SwapV2DTO>> uniswap_v2_get_swap_v2s__historical(opts)

SwapV2s (historical) 🔥

Gets swapv2s.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example', # String | Transaction hash plus index in Transaction swap array.
  pair: 'pair_example' # String | Reference to pair.
}

begin
  # SwapV2s (historical) 🔥
  result = api_instance.uniswap_v2_get_swap_v2s__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_swap_v2s__historical: #{e}"
end
```

#### Using the uniswap_v2_get_swap_v2s__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2SwapV2DTO>>, Integer, Hash)> uniswap_v2_get_swap_v2s__historical_with_http_info(opts)

```ruby
begin
  # SwapV2s (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v2_get_swap_v2s__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2SwapV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_swap_v2s__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Transaction hash plus index in Transaction swap array. | [optional] |
| **pair** | **String** | Reference to pair. | [optional] |

### Return type

[**Array&lt;UniswapV2SwapV2DTO&gt;**](UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_swaps__current

> <Array<UniswapV2SwapV2DTO>> uniswap_v2_get_swaps__current

Swaps (current) 🔥

Gets swaps.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new

begin
  # Swaps (current) 🔥
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
  # Swaps (current) 🔥
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


## uniswap_v2_get_token_day_data_v2s__historical

> <Array<UniswapV2TokenDayDataV2DTO>> uniswap_v2_get_token_day_data_v2s__historical(opts)

TokenDayDataV2s (historical) 🔥

Gets tokendaydatav2s.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | Token address and day id (day start timestamp in unix / 86400) concatenated with a dash.
}

begin
  # TokenDayDataV2s (historical) 🔥
  result = api_instance.uniswap_v2_get_token_day_data_v2s__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_token_day_data_v2s__historical: #{e}"
end
```

#### Using the uniswap_v2_get_token_day_data_v2s__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2TokenDayDataV2DTO>>, Integer, Hash)> uniswap_v2_get_token_day_data_v2s__historical_with_http_info(opts)

```ruby
begin
  # TokenDayDataV2s (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v2_get_token_day_data_v2s__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2TokenDayDataV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_token_day_data_v2s__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Token address and day id (day start timestamp in unix / 86400) concatenated with a dash. | [optional] |

### Return type

[**Array&lt;UniswapV2TokenDayDataV2DTO&gt;**](UniswapV2TokenDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_token_v2s__historical

> <Array<UniswapV2TokenV2DTO>> uniswap_v2_get_token_v2s__historical(opts)

TokenV2s (historical) 🔥

Gets tokenv2s.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example', # String | Token address.
  symbol: 'symbol_example', # String | Token symbol.
  name: 'name_example' # String | Token name.
}

begin
  # TokenV2s (historical) 🔥
  result = api_instance.uniswap_v2_get_token_v2s__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_token_v2s__historical: #{e}"
end
```

#### Using the uniswap_v2_get_token_v2s__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2TokenV2DTO>>, Integer, Hash)> uniswap_v2_get_token_v2s__historical_with_http_info(opts)

```ruby
begin
  # TokenV2s (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v2_get_token_v2s__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2TokenV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_token_v2s__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Token address. | [optional] |
| **symbol** | **String** | Token symbol. | [optional] |
| **name** | **String** | Token name. | [optional] |

### Return type

[**Array&lt;UniswapV2TokenV2DTO&gt;**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_tokens__current

> <Array<UniswapV2TokenV2DTO>> uniswap_v2_get_tokens__current

Tokens (current) 🔥

Gets tokens.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new

begin
  # Tokens (current) 🔥
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
  # Tokens (current) 🔥
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


## uniswap_v2_get_transaction_v2s__historical

> <Array<UniswapV2TransactionV2DTO>> uniswap_v2_get_transaction_v2s__historical(opts)

TransactionV2s (historical) 🔥

Gets transactionv2s.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | Ethereum transaction hash.
}

begin
  # TransactionV2s (historical) 🔥
  result = api_instance.uniswap_v2_get_transaction_v2s__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_transaction_v2s__historical: #{e}"
end
```

#### Using the uniswap_v2_get_transaction_v2s__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2TransactionV2DTO>>, Integer, Hash)> uniswap_v2_get_transaction_v2s__historical_with_http_info(opts)

```ruby
begin
  # TransactionV2s (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v2_get_transaction_v2s__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2TransactionV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_transaction_v2s__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Ethereum transaction hash. | [optional] |

### Return type

[**Array&lt;UniswapV2TransactionV2DTO&gt;**](UniswapV2TransactionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_uniswap_day_data_v2s__historical

> <Array<UniswapV2UniswapDayDataV2DTO>> uniswap_v2_get_uniswap_day_data_v2s__historical(opts)

UniswapDayDataV2s (historical) 🔥

Gets uniswapdaydatav2s.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | Unix timestamp for start of day / 86400 giving a unique day index.
}

begin
  # UniswapDayDataV2s (historical) 🔥
  result = api_instance.uniswap_v2_get_uniswap_day_data_v2s__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_uniswap_day_data_v2s__historical: #{e}"
end
```

#### Using the uniswap_v2_get_uniswap_day_data_v2s__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2UniswapDayDataV2DTO>>, Integer, Hash)> uniswap_v2_get_uniswap_day_data_v2s__historical_with_http_info(opts)

```ruby
begin
  # UniswapDayDataV2s (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v2_get_uniswap_day_data_v2s__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2UniswapDayDataV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_uniswap_day_data_v2s__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Unix timestamp for start of day / 86400 giving a unique day index. | [optional] |

### Return type

[**Array&lt;UniswapV2UniswapDayDataV2DTO&gt;**](UniswapV2UniswapDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_uniswap_factory_v2s__historical

> <Array<UniswapV2UniswapFactoryV2DTO>> uniswap_v2_get_uniswap_factory_v2s__historical(opts)

UniswapFactoryV2s (historical) 🔥

Gets uniswapfactoryv2s.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | Factory address.
}

begin
  # UniswapFactoryV2s (historical) 🔥
  result = api_instance.uniswap_v2_get_uniswap_factory_v2s__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_uniswap_factory_v2s__historical: #{e}"
end
```

#### Using the uniswap_v2_get_uniswap_factory_v2s__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2UniswapFactoryV2DTO>>, Integer, Hash)> uniswap_v2_get_uniswap_factory_v2s__historical_with_http_info(opts)

```ruby
begin
  # UniswapFactoryV2s (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v2_get_uniswap_factory_v2s__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2UniswapFactoryV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_uniswap_factory_v2s__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Factory address. | [optional] |

### Return type

[**Array&lt;UniswapV2UniswapFactoryV2DTO&gt;**](UniswapV2UniswapFactoryV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v2_get_user_v2s__historical

> <Array<UniswapV2UserV2DTO>> uniswap_v2_get_user_v2s__historical(opts)

UserV2s (historical) 🔥

Gets userv2s.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | User address.
}

begin
  # UserV2s (historical) 🔥
  result = api_instance.uniswap_v2_get_user_v2s__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_user_v2s__historical: #{e}"
end
```

#### Using the uniswap_v2_get_user_v2s__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV2UserV2DTO>>, Integer, Hash)> uniswap_v2_get_user_v2s__historical_with_http_info(opts)

```ruby
begin
  # UserV2s (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v2_get_user_v2s__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV2UserV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->uniswap_v2_get_user_v2s__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | User address. | [optional] |

### Return type

[**Array&lt;UniswapV2UserV2DTO&gt;**](UniswapV2UserV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

