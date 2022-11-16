# OpenapiClient::SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**curve_get_exchanges__current**](SushiswapApi.md#curve_get_exchanges__current) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥 |
| [**dex_get_trades__current**](SushiswapApi.md#dex_get_trades__current) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥 |
| [**sushiswap_get_pools__current**](SushiswapApi.md#sushiswap_get_pools__current) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥 |
| [**sushiswap_get_swaps__current**](SushiswapApi.md#sushiswap_get_swaps__current) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) 🔥 |
| [**sushiswap_get_tokens__current**](SushiswapApi.md#sushiswap_get_tokens__current) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) 🔥 |


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

