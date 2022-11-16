# OpenapiClient::UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**uniswap_v2_get_pools__current**](UniswapV2Api.md#uniswap_v2_get_pools__current) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥 |
| [**uniswap_v2_get_swaps__current**](UniswapV2Api.md#uniswap_v2_get_swaps__current) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥 |
| [**uniswap_v2_get_tokens__current**](UniswapV2Api.md#uniswap_v2_get_tokens__current) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥 |


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

