# OpenapiClient::UniswapV3Api

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**uniswap_v3_bundles__current**](UniswapV3Api.md#uniswap_v3_bundles__current) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current) |
| [**uniswap_v3_burns__current**](UniswapV3Api.md#uniswap_v3_burns__current) | **GET** /dapps/uniswapv3/burns/current | Burns (current) |
| [**uniswap_v3_factorys__current**](UniswapV3Api.md#uniswap_v3_factorys__current) | **GET** /dapps/uniswapv3/factorys/current | Factorys (current) |
| [**uniswap_v3_get_bundles__historical**](UniswapV3Api.md#uniswap_v3_get_bundles__historical) | **GET** /dapps/uniswapv3/bundles/historical | Bundles (historical) 🔥 |
| [**uniswap_v3_get_burns__historical**](UniswapV3Api.md#uniswap_v3_get_burns__historical) | **GET** /dapps/uniswapv3/burns/historical | Burns (historical) 🔥 |
| [**uniswap_v3_get_factorys__historical**](UniswapV3Api.md#uniswap_v3_get_factorys__historical) | **GET** /dapps/uniswapv3/factorys/historical | Factorys (historical) 🔥 |
| [**uniswap_v3_get_mints__historical**](UniswapV3Api.md#uniswap_v3_get_mints__historical) | **GET** /dapps/uniswapv3/mints/historical | Mints (historical) 🔥 |
| [**uniswap_v3_get_pool_day_datas__historical**](UniswapV3Api.md#uniswap_v3_get_pool_day_datas__historical) | **GET** /dapps/uniswapv3/poolDayDatas/historical | PoolDayDatas (historical) 🔥 |
| [**uniswap_v3_get_pool_hour_datas__historical**](UniswapV3Api.md#uniswap_v3_get_pool_hour_datas__historical) | **GET** /dapps/uniswapv3/poolHourDatas/historical | PoolHourDatas (historical) 🔥 |
| [**uniswap_v3_get_pools__historical**](UniswapV3Api.md#uniswap_v3_get_pools__historical) | **GET** /dapps/uniswapv3/pools/historical | Pools (historical) 🔥 |
| [**uniswap_v3_get_position_snapshots__historical**](UniswapV3Api.md#uniswap_v3_get_position_snapshots__historical) | **GET** /dapps/uniswapv3/positionSnapshots/historical | PositionSnapshots (historical) 🔥 |
| [**uniswap_v3_get_positions__historical**](UniswapV3Api.md#uniswap_v3_get_positions__historical) | **GET** /dapps/uniswapv3/positions/historical | Positions (historical) 🔥 |
| [**uniswap_v3_get_swaps__historical**](UniswapV3Api.md#uniswap_v3_get_swaps__historical) | **GET** /dapps/uniswapv3/swaps/historical | Swaps (historical) 🔥 |
| [**uniswap_v3_get_tick_day_datas__historical**](UniswapV3Api.md#uniswap_v3_get_tick_day_datas__historical) | **GET** /dapps/uniswapv3/tickDayDatas/historical | TickDayDatas (historical) 🔥 |
| [**uniswap_v3_get_ticks__historical**](UniswapV3Api.md#uniswap_v3_get_ticks__historical) | **GET** /dapps/uniswapv3/ticks/historical | Ticks (historical) 🔥 |
| [**uniswap_v3_get_token_hour_datas__historical**](UniswapV3Api.md#uniswap_v3_get_token_hour_datas__historical) | **GET** /dapps/uniswapv3/tokenHourDatas/historical | TokenHourDatas (historical) 🔥 |
| [**uniswap_v3_get_token_v3_day_datas__historical**](UniswapV3Api.md#uniswap_v3_get_token_v3_day_datas__historical) | **GET** /dapps/uniswapv3/tokenV3DayDatas/historical | TokenV3DayDatas (historical) 🔥 |
| [**uniswap_v3_get_tokens__historical**](UniswapV3Api.md#uniswap_v3_get_tokens__historical) | **GET** /dapps/uniswapv3/tokens/historical | Tokens (historical) 🔥 |
| [**uniswap_v3_get_transactions__historical**](UniswapV3Api.md#uniswap_v3_get_transactions__historical) | **GET** /dapps/uniswapv3/transactions/historical | Transactions (historical) 🔥 |
| [**uniswap_v3_get_uniswap_day_datas__historical**](UniswapV3Api.md#uniswap_v3_get_uniswap_day_datas__historical) | **GET** /dapps/uniswapv3/uniswapDayDatas/historical | UniswapDayDatas (historical) 🔥 |
| [**uniswap_v3_mints__current**](UniswapV3Api.md#uniswap_v3_mints__current) | **GET** /dapps/uniswapv3/mints/current | Mints (current) |
| [**uniswap_v3_pool_day_datas__current**](UniswapV3Api.md#uniswap_v3_pool_day_datas__current) | **GET** /dapps/uniswapv3/poolDayDatas/current | PoolDayDatas (current) |
| [**uniswap_v3_pool_hour_datas__current**](UniswapV3Api.md#uniswap_v3_pool_hour_datas__current) | **GET** /dapps/uniswapv3/poolHourDatas/current | PoolHourDatas (current) |
| [**uniswap_v3_pools__current**](UniswapV3Api.md#uniswap_v3_pools__current) | **GET** /dapps/uniswapv3/pools/current | Pools (current) |
| [**uniswap_v3_position_snapshots__current**](UniswapV3Api.md#uniswap_v3_position_snapshots__current) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionSnapshots (current) |
| [**uniswap_v3_positions__current**](UniswapV3Api.md#uniswap_v3_positions__current) | **GET** /dapps/uniswapv3/positions/current | Positions (current) |
| [**uniswap_v3_swaps__current**](UniswapV3Api.md#uniswap_v3_swaps__current) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) |
| [**uniswap_v3_tick_day_datas__current**](UniswapV3Api.md#uniswap_v3_tick_day_datas__current) | **GET** /dapps/uniswapv3/tickDayDatas/current | TickDayDatas (current) |
| [**uniswap_v3_ticks__current**](UniswapV3Api.md#uniswap_v3_ticks__current) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current) |
| [**uniswap_v3_token_hour_datas__current**](UniswapV3Api.md#uniswap_v3_token_hour_datas__current) | **GET** /dapps/uniswapv3/tokenHourDatas/current | TokenHourDatas (current) |
| [**uniswap_v3_token_v3_day_datas__current**](UniswapV3Api.md#uniswap_v3_token_v3_day_datas__current) | **GET** /dapps/uniswapv3/tokenV3DayDatas/current | TokenV3DayDatas (current) |
| [**uniswap_v3_tokens__current**](UniswapV3Api.md#uniswap_v3_tokens__current) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) |
| [**uniswap_v3_transactions__current**](UniswapV3Api.md#uniswap_v3_transactions__current) | **GET** /dapps/uniswapv3/transactions/current | Transactions (current) |
| [**uniswap_v3_uniswap_day_datas__current**](UniswapV3Api.md#uniswap_v3_uniswap_day_datas__current) | **GET** /dapps/uniswapv3/uniswapDayDatas/current | UniswapDayDatas (current) |


## uniswap_v3_bundles__current

> <Array<UniswapV3BundleDTO>> uniswap_v3_bundles__current

Bundles (current)

Gets bundles.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new

begin
  # Bundles (current)
  result = api_instance.uniswap_v3_bundles__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_bundles__current: #{e}"
end
```

#### Using the uniswap_v3_bundles__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3BundleDTO>>, Integer, Hash)> uniswap_v3_bundles__current_with_http_info

```ruby
begin
  # Bundles (current)
  data, status_code, headers = api_instance.uniswap_v3_bundles__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3BundleDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_bundles__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;UniswapV3BundleDTO&gt;**](UniswapV3BundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_burns__current

> <Array<UniswapV3BurnDTO>> uniswap_v3_burns__current

Burns (current)

Gets burns.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new

begin
  # Burns (current)
  result = api_instance.uniswap_v3_burns__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_burns__current: #{e}"
end
```

#### Using the uniswap_v3_burns__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3BurnDTO>>, Integer, Hash)> uniswap_v3_burns__current_with_http_info

```ruby
begin
  # Burns (current)
  data, status_code, headers = api_instance.uniswap_v3_burns__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3BurnDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_burns__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;UniswapV3BurnDTO&gt;**](UniswapV3BurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_factorys__current

> <Array<UniswapV3FactoryDTO>> uniswap_v3_factorys__current

Factorys (current)

Gets factorys.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new

begin
  # Factorys (current)
  result = api_instance.uniswap_v3_factorys__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_factorys__current: #{e}"
end
```

#### Using the uniswap_v3_factorys__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3FactoryDTO>>, Integer, Hash)> uniswap_v3_factorys__current_with_http_info

```ruby
begin
  # Factorys (current)
  data, status_code, headers = api_instance.uniswap_v3_factorys__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3FactoryDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_factorys__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;UniswapV3FactoryDTO&gt;**](UniswapV3FactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_bundles__historical

> <Array<UniswapV3BundleDTO>> uniswap_v3_get_bundles__historical(opts)

Bundles (historical) 🔥

Gets bundles.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | 
}

begin
  # Bundles (historical) 🔥
  result = api_instance.uniswap_v3_get_bundles__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_bundles__historical: #{e}"
end
```

#### Using the uniswap_v3_get_bundles__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3BundleDTO>>, Integer, Hash)> uniswap_v3_get_bundles__historical_with_http_info(opts)

```ruby
begin
  # Bundles (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v3_get_bundles__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3BundleDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_bundles__historical_with_http_info: #{e}"
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

### Return type

[**Array&lt;UniswapV3BundleDTO&gt;**](UniswapV3BundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_burns__historical

> <Array<UniswapV3BurnDTO>> uniswap_v3_get_burns__historical(opts)

Burns (historical) 🔥

Gets burns.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example', # String | Transaction hash + '#' + index in mints Transaction array.
  pool: 'pool_example', # String | Pool position is within.
  token_0: 'token_0_example', # String | Reference to token0 as stored in pool contract.
  token_1: 'token_1_example' # String | Reference to token1 as stored in pool contract.
}

begin
  # Burns (historical) 🔥
  result = api_instance.uniswap_v3_get_burns__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_burns__historical: #{e}"
end
```

#### Using the uniswap_v3_get_burns__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3BurnDTO>>, Integer, Hash)> uniswap_v3_get_burns__historical_with_http_info(opts)

```ruby
begin
  # Burns (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v3_get_burns__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3BurnDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_burns__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Transaction hash + &#39;#&#39; + index in mints Transaction array. | [optional] |
| **pool** | **String** | Pool position is within. | [optional] |
| **token_0** | **String** | Reference to token0 as stored in pool contract. | [optional] |
| **token_1** | **String** | Reference to token1 as stored in pool contract. | [optional] |

### Return type

[**Array&lt;UniswapV3BurnDTO&gt;**](UniswapV3BurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_factorys__historical

> <Array<UniswapV3FactoryDTO>> uniswap_v3_get_factorys__historical(opts)

Factorys (historical) 🔥

Gets factorys.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | Factory address.
}

begin
  # Factorys (historical) 🔥
  result = api_instance.uniswap_v3_get_factorys__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_factorys__historical: #{e}"
end
```

#### Using the uniswap_v3_get_factorys__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3FactoryDTO>>, Integer, Hash)> uniswap_v3_get_factorys__historical_with_http_info(opts)

```ruby
begin
  # Factorys (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v3_get_factorys__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3FactoryDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_factorys__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV3FactoryDTO&gt;**](UniswapV3FactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_mints__historical

> <Array<UniswapV3MintDTO>> uniswap_v3_get_mints__historical(opts)

Mints (historical) 🔥

Gets mints.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example', # String | Transaction hash + '#' + index in mints Transaction array.
  pool: 'pool_example', # String | Pool address.
  token_0: 'token_0_example', # String | Reference to token0 as stored in pool contract.
  token_1: 'token_1_example' # String | Reference to token1 as stored in pool contract.
}

begin
  # Mints (historical) 🔥
  result = api_instance.uniswap_v3_get_mints__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_mints__historical: #{e}"
end
```

#### Using the uniswap_v3_get_mints__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3MintDTO>>, Integer, Hash)> uniswap_v3_get_mints__historical_with_http_info(opts)

```ruby
begin
  # Mints (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v3_get_mints__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3MintDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_mints__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Transaction hash + &#39;#&#39; + index in mints Transaction array. | [optional] |
| **pool** | **String** | Pool address. | [optional] |
| **token_0** | **String** | Reference to token0 as stored in pool contract. | [optional] |
| **token_1** | **String** | Reference to token1 as stored in pool contract. | [optional] |

### Return type

[**Array&lt;UniswapV3MintDTO&gt;**](UniswapV3MintDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_pool_day_datas__historical

> <Array<UniswapV3PoolDayDataDTO>> uniswap_v3_get_pool_day_datas__historical(opts)

PoolDayDatas (historical) 🔥

Gets poolDayDatas.

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
  id: 'id_example', # String | 
  pool: 'pool_example' # String | 
}

begin
  # PoolDayDatas (historical) 🔥
  result = api_instance.uniswap_v3_get_pool_day_datas__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_pool_day_datas__historical: #{e}"
end
```

#### Using the uniswap_v3_get_pool_day_datas__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3PoolDayDataDTO>>, Integer, Hash)> uniswap_v3_get_pool_day_datas__historical_with_http_info(opts)

```ruby
begin
  # PoolDayDatas (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v3_get_pool_day_datas__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3PoolDayDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_pool_day_datas__historical_with_http_info: #{e}"
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
| **pool** | **String** |  | [optional] |

### Return type

[**Array&lt;UniswapV3PoolDayDataDTO&gt;**](UniswapV3PoolDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_pool_hour_datas__historical

> <Array<UniswapV3PoolHourDataDTO>> uniswap_v3_get_pool_hour_datas__historical(opts)

PoolHourDatas (historical) 🔥

Gets poolHourDatas.

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
  id: 'id_example', # String | 
  pool: 'pool_example' # String | 
}

begin
  # PoolHourDatas (historical) 🔥
  result = api_instance.uniswap_v3_get_pool_hour_datas__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_pool_hour_datas__historical: #{e}"
end
```

#### Using the uniswap_v3_get_pool_hour_datas__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3PoolHourDataDTO>>, Integer, Hash)> uniswap_v3_get_pool_hour_datas__historical_with_http_info(opts)

```ruby
begin
  # PoolHourDatas (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v3_get_pool_hour_datas__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3PoolHourDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_pool_hour_datas__historical_with_http_info: #{e}"
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
| **pool** | **String** |  | [optional] |

### Return type

[**Array&lt;UniswapV3PoolHourDataDTO&gt;**](UniswapV3PoolHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_pools__historical

> <Array<UniswapV3PoolDTO>> uniswap_v3_get_pools__historical(opts)

Pools (historical) 🔥

Gets pools.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example', # String | Pool address.
  token_0: 'token_0_example', # String | Reference to token0 as stored in pool contract.
  token_1: 'token_1_example' # String | Reference to token1 as stored in pool contract.
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

> <Array(<Array<UniswapV3PoolDTO>>, Integer, Hash)> uniswap_v3_get_pools__historical_with_http_info(opts)

```ruby
begin
  # Pools (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v3_get_pools__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3PoolDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_pools__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Pool address. | [optional] |
| **token_0** | **String** | Reference to token0 as stored in pool contract. | [optional] |
| **token_1** | **String** | Reference to token1 as stored in pool contract. | [optional] |

### Return type

[**Array&lt;UniswapV3PoolDTO&gt;**](UniswapV3PoolDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_position_snapshots__historical

> <Array<UniswapV3PositionSnapshotDTO>> uniswap_v3_get_position_snapshots__historical(opts)

PositionSnapshots (historical) 🔥

Gets positionSnapshots.

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
  id: 'id_example', # String | 
  pool: 'pool_example' # String | 
}

begin
  # PositionSnapshots (historical) 🔥
  result = api_instance.uniswap_v3_get_position_snapshots__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_position_snapshots__historical: #{e}"
end
```

#### Using the uniswap_v3_get_position_snapshots__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3PositionSnapshotDTO>>, Integer, Hash)> uniswap_v3_get_position_snapshots__historical_with_http_info(opts)

```ruby
begin
  # PositionSnapshots (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v3_get_position_snapshots__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3PositionSnapshotDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_position_snapshots__historical_with_http_info: #{e}"
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
| **pool** | **String** |  | [optional] |

### Return type

[**Array&lt;UniswapV3PositionSnapshotDTO&gt;**](UniswapV3PositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_positions__historical

> <Array<UniswapV3PositionDTO>> uniswap_v3_get_positions__historical(opts)

Positions (historical) 🔥

Gets positions.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example', # String | NFT token identifier.
  pool: 'pool_example', # String | Pool position is within.
  token_0: 'token_0_example', # String | Reference to token0 as stored in pair contract.
  token_1: 'token_1_example' # String | Reference to token1 as stored in pair contract.
}

begin
  # Positions (historical) 🔥
  result = api_instance.uniswap_v3_get_positions__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_positions__historical: #{e}"
end
```

#### Using the uniswap_v3_get_positions__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3PositionDTO>>, Integer, Hash)> uniswap_v3_get_positions__historical_with_http_info(opts)

```ruby
begin
  # Positions (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v3_get_positions__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3PositionDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_positions__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | NFT token identifier. | [optional] |
| **pool** | **String** | Pool position is within. | [optional] |
| **token_0** | **String** | Reference to token0 as stored in pair contract. | [optional] |
| **token_1** | **String** | Reference to token1 as stored in pair contract. | [optional] |

### Return type

[**Array&lt;UniswapV3PositionDTO&gt;**](UniswapV3PositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_swaps__historical

> <Array<UniswapV3SwapDTO>> uniswap_v3_get_swaps__historical(opts)

Swaps (historical) 🔥

Gets swaps.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example', # String | Identifier, format: transaction hash + \"#\" + index in swaps Transaction array.
  pool: 'pool_example', # String | Pool swap occured within.
  token_0: 'token_0_example', # String | Reference to token0 as stored in pair contract.
  token_1: 'token_1_example' # String | Reference to token1 as stored in pair contract.
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

> <Array(<Array<UniswapV3SwapDTO>>, Integer, Hash)> uniswap_v3_get_swaps__historical_with_http_info(opts)

```ruby
begin
  # Swaps (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v3_get_swaps__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3SwapDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_swaps__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Identifier, format: transaction hash + \&quot;#\&quot; + index in swaps Transaction array. | [optional] |
| **pool** | **String** | Pool swap occured within. | [optional] |
| **token_0** | **String** | Reference to token0 as stored in pair contract. | [optional] |
| **token_1** | **String** | Reference to token1 as stored in pair contract. | [optional] |

### Return type

[**Array&lt;UniswapV3SwapDTO&gt;**](UniswapV3SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_tick_day_datas__historical

> <Array<UniswapV3TickDayDataDTO>> uniswap_v3_get_tick_day_datas__historical(opts)

TickDayDatas (historical) 🔥

Gets tickDayDatas.

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
  id: 'id_example', # String | 
  pool: 'pool_example' # String | 
}

begin
  # TickDayDatas (historical) 🔥
  result = api_instance.uniswap_v3_get_tick_day_datas__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_tick_day_datas__historical: #{e}"
end
```

#### Using the uniswap_v3_get_tick_day_datas__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3TickDayDataDTO>>, Integer, Hash)> uniswap_v3_get_tick_day_datas__historical_with_http_info(opts)

```ruby
begin
  # TickDayDatas (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v3_get_tick_day_datas__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3TickDayDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_tick_day_datas__historical_with_http_info: #{e}"
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
| **pool** | **String** |  | [optional] |

### Return type

[**Array&lt;UniswapV3TickDayDataDTO&gt;**](UniswapV3TickDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_ticks__historical

> <Array<UniswapV3TickDTO>> uniswap_v3_get_ticks__historical(opts)

Ticks (historical) 🔥

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
  id: 'id_example', # String | 
  pool: 'pool_example' # String | 
}

begin
  # Ticks (historical) 🔥
  result = api_instance.uniswap_v3_get_ticks__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_ticks__historical: #{e}"
end
```

#### Using the uniswap_v3_get_ticks__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3TickDTO>>, Integer, Hash)> uniswap_v3_get_ticks__historical_with_http_info(opts)

```ruby
begin
  # Ticks (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v3_get_ticks__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3TickDTO>>
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
| **id** | **String** |  | [optional] |
| **pool** | **String** |  | [optional] |

### Return type

[**Array&lt;UniswapV3TickDTO&gt;**](UniswapV3TickDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_token_hour_datas__historical

> <Array<UniswapV3TokenHourDataDTO>> uniswap_v3_get_token_hour_datas__historical(opts)

TokenHourDatas (historical) 🔥

Gets tokenHourDatas.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | Token address concatendated with date.
}

begin
  # TokenHourDatas (historical) 🔥
  result = api_instance.uniswap_v3_get_token_hour_datas__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_token_hour_datas__historical: #{e}"
end
```

#### Using the uniswap_v3_get_token_hour_datas__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3TokenHourDataDTO>>, Integer, Hash)> uniswap_v3_get_token_hour_datas__historical_with_http_info(opts)

```ruby
begin
  # TokenHourDatas (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v3_get_token_hour_datas__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3TokenHourDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_token_hour_datas__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Token address concatendated with date. | [optional] |

### Return type

[**Array&lt;UniswapV3TokenHourDataDTO&gt;**](UniswapV3TokenHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_token_v3_day_datas__historical

> <Array<UniswapV3TokenV3DayDataDTO>> uniswap_v3_get_token_v3_day_datas__historical(opts)

TokenV3DayDatas (historical) 🔥

Gets tokenV3DayDatas.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | Token address concatendated with date.
}

begin
  # TokenV3DayDatas (historical) 🔥
  result = api_instance.uniswap_v3_get_token_v3_day_datas__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_token_v3_day_datas__historical: #{e}"
end
```

#### Using the uniswap_v3_get_token_v3_day_datas__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3TokenV3DayDataDTO>>, Integer, Hash)> uniswap_v3_get_token_v3_day_datas__historical_with_http_info(opts)

```ruby
begin
  # TokenV3DayDatas (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v3_get_token_v3_day_datas__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3TokenV3DayDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_token_v3_day_datas__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Token address concatendated with date. | [optional] |

### Return type

[**Array&lt;UniswapV3TokenV3DayDataDTO&gt;**](UniswapV3TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_tokens__historical

> <Array<UniswapV3TokenDTO>> uniswap_v3_get_tokens__historical(opts)

Tokens (historical) 🔥

Gets tokens.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
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
  # Tokens (historical) 🔥
  result = api_instance.uniswap_v3_get_tokens__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_tokens__historical: #{e}"
end
```

#### Using the uniswap_v3_get_tokens__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3TokenDTO>>, Integer, Hash)> uniswap_v3_get_tokens__historical_with_http_info(opts)

```ruby
begin
  # Tokens (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v3_get_tokens__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3TokenDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_tokens__historical_with_http_info: #{e}"
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

[**Array&lt;UniswapV3TokenDTO&gt;**](UniswapV3TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_transactions__historical

> <Array<UniswapV3TransactionDTO>> uniswap_v3_get_transactions__historical(opts)

Transactions (historical) 🔥

Gets transactions.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | Transaction hash.
}

begin
  # Transactions (historical) 🔥
  result = api_instance.uniswap_v3_get_transactions__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_transactions__historical: #{e}"
end
```

#### Using the uniswap_v3_get_transactions__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3TransactionDTO>>, Integer, Hash)> uniswap_v3_get_transactions__historical_with_http_info(opts)

```ruby
begin
  # Transactions (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v3_get_transactions__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3TransactionDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_transactions__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Transaction hash. | [optional] |

### Return type

[**Array&lt;UniswapV3TransactionDTO&gt;**](UniswapV3TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_get_uniswap_day_datas__historical

> <Array<UniswapV3UniswapDayDataDTO>> uniswap_v3_get_uniswap_day_datas__historical(opts)

UniswapDayDatas (historical) 🔥

Gets uniswapDayDatas.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  start_block: 789, # Integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
  end_block: 789, # Integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end date of timeframe.
  id: 'id_example' # String | Timestamp rounded to current day by dividing by 86400.
}

begin
  # UniswapDayDatas (historical) 🔥
  result = api_instance.uniswap_v3_get_uniswap_day_datas__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_uniswap_day_datas__historical: #{e}"
end
```

#### Using the uniswap_v3_get_uniswap_day_datas__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3UniswapDayDataDTO>>, Integer, Hash)> uniswap_v3_get_uniswap_day_datas__historical_with_http_info(opts)

```ruby
begin
  # UniswapDayDatas (historical) 🔥
  data, status_code, headers = api_instance.uniswap_v3_get_uniswap_day_datas__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3UniswapDayDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_get_uniswap_day_datas__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **end_block** | **Integer** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **start_date** | **Time** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **end_date** | **Time** | The end date of timeframe. | [optional] |
| **id** | **String** | Timestamp rounded to current day by dividing by 86400. | [optional] |

### Return type

[**Array&lt;UniswapV3UniswapDayDataDTO&gt;**](UniswapV3UniswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_mints__current

> <Array<UniswapV3MintDTO>> uniswap_v3_mints__current

Mints (current)

Gets mints.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new

begin
  # Mints (current)
  result = api_instance.uniswap_v3_mints__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_mints__current: #{e}"
end
```

#### Using the uniswap_v3_mints__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3MintDTO>>, Integer, Hash)> uniswap_v3_mints__current_with_http_info

```ruby
begin
  # Mints (current)
  data, status_code, headers = api_instance.uniswap_v3_mints__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3MintDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_mints__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;UniswapV3MintDTO&gt;**](UniswapV3MintDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_pool_day_datas__current

> <Array<UniswapV3PoolDayDataDTO>> uniswap_v3_pool_day_datas__current

PoolDayDatas (current)

Gets poolDayDatas.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new

begin
  # PoolDayDatas (current)
  result = api_instance.uniswap_v3_pool_day_datas__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_pool_day_datas__current: #{e}"
end
```

#### Using the uniswap_v3_pool_day_datas__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3PoolDayDataDTO>>, Integer, Hash)> uniswap_v3_pool_day_datas__current_with_http_info

```ruby
begin
  # PoolDayDatas (current)
  data, status_code, headers = api_instance.uniswap_v3_pool_day_datas__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3PoolDayDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_pool_day_datas__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;UniswapV3PoolDayDataDTO&gt;**](UniswapV3PoolDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_pool_hour_datas__current

> <Array<UniswapV3PoolHourDataDTO>> uniswap_v3_pool_hour_datas__current

PoolHourDatas (current)

Gets poolHourDatas.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new

begin
  # PoolHourDatas (current)
  result = api_instance.uniswap_v3_pool_hour_datas__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_pool_hour_datas__current: #{e}"
end
```

#### Using the uniswap_v3_pool_hour_datas__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3PoolHourDataDTO>>, Integer, Hash)> uniswap_v3_pool_hour_datas__current_with_http_info

```ruby
begin
  # PoolHourDatas (current)
  data, status_code, headers = api_instance.uniswap_v3_pool_hour_datas__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3PoolHourDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_pool_hour_datas__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;UniswapV3PoolHourDataDTO&gt;**](UniswapV3PoolHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_pools__current

> <Array<UniswapV3PoolDTO>> uniswap_v3_pools__current(opts)

Pools (current)

Gets pools.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  id: 'id_example' # String | Pool address.
}

begin
  # Pools (current)
  result = api_instance.uniswap_v3_pools__current(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_pools__current: #{e}"
end
```

#### Using the uniswap_v3_pools__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3PoolDTO>>, Integer, Hash)> uniswap_v3_pools__current_with_http_info(opts)

```ruby
begin
  # Pools (current)
  data, status_code, headers = api_instance.uniswap_v3_pools__current_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3PoolDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_pools__current_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Pool address. | [optional] |

### Return type

[**Array&lt;UniswapV3PoolDTO&gt;**](UniswapV3PoolDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_position_snapshots__current

> <Array<UniswapV3PositionSnapshotDTO>> uniswap_v3_position_snapshots__current

PositionSnapshots (current)

Gets positionSnapshots.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new

begin
  # PositionSnapshots (current)
  result = api_instance.uniswap_v3_position_snapshots__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_position_snapshots__current: #{e}"
end
```

#### Using the uniswap_v3_position_snapshots__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3PositionSnapshotDTO>>, Integer, Hash)> uniswap_v3_position_snapshots__current_with_http_info

```ruby
begin
  # PositionSnapshots (current)
  data, status_code, headers = api_instance.uniswap_v3_position_snapshots__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3PositionSnapshotDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_position_snapshots__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;UniswapV3PositionSnapshotDTO&gt;**](UniswapV3PositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_positions__current

> <Array<UniswapV3PositionDTO>> uniswap_v3_positions__current

Positions (current)

Gets positions.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new

begin
  # Positions (current)
  result = api_instance.uniswap_v3_positions__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_positions__current: #{e}"
end
```

#### Using the uniswap_v3_positions__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3PositionDTO>>, Integer, Hash)> uniswap_v3_positions__current_with_http_info

```ruby
begin
  # Positions (current)
  data, status_code, headers = api_instance.uniswap_v3_positions__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3PositionDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_positions__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;UniswapV3PositionDTO&gt;**](UniswapV3PositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_swaps__current

> <Array<UniswapV3SwapDTO>> uniswap_v3_swaps__current(opts)

Swaps (current)

Gets swaps.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new
opts = {
  pool: 'pool_example' # String | Pool swap occured within.
}

begin
  # Swaps (current)
  result = api_instance.uniswap_v3_swaps__current(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_swaps__current: #{e}"
end
```

#### Using the uniswap_v3_swaps__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3SwapDTO>>, Integer, Hash)> uniswap_v3_swaps__current_with_http_info(opts)

```ruby
begin
  # Swaps (current)
  data, status_code, headers = api_instance.uniswap_v3_swaps__current_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3SwapDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_swaps__current_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pool** | **String** | Pool swap occured within. | [optional] |

### Return type

[**Array&lt;UniswapV3SwapDTO&gt;**](UniswapV3SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_tick_day_datas__current

> <Array<UniswapV3TickDayDataDTO>> uniswap_v3_tick_day_datas__current

TickDayDatas (current)

Gets tickDayDatas.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new

begin
  # TickDayDatas (current)
  result = api_instance.uniswap_v3_tick_day_datas__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_tick_day_datas__current: #{e}"
end
```

#### Using the uniswap_v3_tick_day_datas__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3TickDayDataDTO>>, Integer, Hash)> uniswap_v3_tick_day_datas__current_with_http_info

```ruby
begin
  # TickDayDatas (current)
  data, status_code, headers = api_instance.uniswap_v3_tick_day_datas__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3TickDayDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_tick_day_datas__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;UniswapV3TickDayDataDTO&gt;**](UniswapV3TickDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_ticks__current

> <Array<UniswapV3TickDTO>> uniswap_v3_ticks__current

Ticks (current)

Gets ticks.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new

begin
  # Ticks (current)
  result = api_instance.uniswap_v3_ticks__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_ticks__current: #{e}"
end
```

#### Using the uniswap_v3_ticks__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3TickDTO>>, Integer, Hash)> uniswap_v3_ticks__current_with_http_info

```ruby
begin
  # Ticks (current)
  data, status_code, headers = api_instance.uniswap_v3_ticks__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3TickDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_ticks__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;UniswapV3TickDTO&gt;**](UniswapV3TickDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_token_hour_datas__current

> <Array<UniswapV3TokenHourDataDTO>> uniswap_v3_token_hour_datas__current

TokenHourDatas (current)

Gets tokenHourDatas.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new

begin
  # TokenHourDatas (current)
  result = api_instance.uniswap_v3_token_hour_datas__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_token_hour_datas__current: #{e}"
end
```

#### Using the uniswap_v3_token_hour_datas__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3TokenHourDataDTO>>, Integer, Hash)> uniswap_v3_token_hour_datas__current_with_http_info

```ruby
begin
  # TokenHourDatas (current)
  data, status_code, headers = api_instance.uniswap_v3_token_hour_datas__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3TokenHourDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_token_hour_datas__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;UniswapV3TokenHourDataDTO&gt;**](UniswapV3TokenHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_token_v3_day_datas__current

> <Array<UniswapV3TokenV3DayDataDTO>> uniswap_v3_token_v3_day_datas__current

TokenV3DayDatas (current)

Gets tokenV3DayDatas.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new

begin
  # TokenV3DayDatas (current)
  result = api_instance.uniswap_v3_token_v3_day_datas__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_token_v3_day_datas__current: #{e}"
end
```

#### Using the uniswap_v3_token_v3_day_datas__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3TokenV3DayDataDTO>>, Integer, Hash)> uniswap_v3_token_v3_day_datas__current_with_http_info

```ruby
begin
  # TokenV3DayDatas (current)
  data, status_code, headers = api_instance.uniswap_v3_token_v3_day_datas__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3TokenV3DayDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_token_v3_day_datas__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;UniswapV3TokenV3DayDataDTO&gt;**](UniswapV3TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_tokens__current

> <Array<UniswapV3TokenDTO>> uniswap_v3_tokens__current

Tokens (current)

Gets tokens.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new

begin
  # Tokens (current)
  result = api_instance.uniswap_v3_tokens__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_tokens__current: #{e}"
end
```

#### Using the uniswap_v3_tokens__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3TokenDTO>>, Integer, Hash)> uniswap_v3_tokens__current_with_http_info

```ruby
begin
  # Tokens (current)
  data, status_code, headers = api_instance.uniswap_v3_tokens__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3TokenDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_tokens__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;UniswapV3TokenDTO&gt;**](UniswapV3TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_transactions__current

> <Array<UniswapV3TransactionDTO>> uniswap_v3_transactions__current

Transactions (current)

Gets transactions.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new

begin
  # Transactions (current)
  result = api_instance.uniswap_v3_transactions__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_transactions__current: #{e}"
end
```

#### Using the uniswap_v3_transactions__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3TransactionDTO>>, Integer, Hash)> uniswap_v3_transactions__current_with_http_info

```ruby
begin
  # Transactions (current)
  data, status_code, headers = api_instance.uniswap_v3_transactions__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3TransactionDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_transactions__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;UniswapV3TransactionDTO&gt;**](UniswapV3TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswap_v3_uniswap_day_datas__current

> <Array<UniswapV3UniswapDayDataDTO>> uniswap_v3_uniswap_day_datas__current

UniswapDayDatas (current)

Gets uniswapDayDatas.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV3Api.new

begin
  # UniswapDayDatas (current)
  result = api_instance.uniswap_v3_uniswap_day_datas__current
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_uniswap_day_datas__current: #{e}"
end
```

#### Using the uniswap_v3_uniswap_day_datas__current_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniswapV3UniswapDayDataDTO>>, Integer, Hash)> uniswap_v3_uniswap_day_datas__current_with_http_info

```ruby
begin
  # UniswapDayDatas (current)
  data, status_code, headers = api_instance.uniswap_v3_uniswap_day_datas__current_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniswapV3UniswapDayDataDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV3Api->uniswap_v3_uniswap_day_datas__current_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;UniswapV3UniswapDayDataDTO&gt;**](UniswapV3UniswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

