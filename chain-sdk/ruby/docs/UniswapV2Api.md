# OpenapiClient::UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**chains_chain_id_dapps_uniswapv2_pools_current_get**](UniswapV2Api.md#chains_chain_id_dapps_uniswapv2_pools_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools |
| [**chains_chain_id_dapps_uniswapv2_swaps_current_get**](UniswapV2Api.md#chains_chain_id_dapps_uniswapv2_swaps_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps |
| [**chains_chain_id_dapps_uniswapv2_tokens_current_get**](UniswapV2Api.md#chains_chain_id_dapps_uniswapv2_tokens_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens |


## chains_chain_id_dapps_uniswapv2_pools_current_get

> <Array<PairV2DTO>> chains_chain_id_dapps_uniswapv2_pools_current_get(chain_id)

GetPools

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
chain_id = 'chain_id_example' # String | Chain id

begin
  # GetPools
  result = api_instance.chains_chain_id_dapps_uniswapv2_pools_current_get(chain_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->chains_chain_id_dapps_uniswapv2_pools_current_get: #{e}"
end
```

#### Using the chains_chain_id_dapps_uniswapv2_pools_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PairV2DTO>>, Integer, Hash)> chains_chain_id_dapps_uniswapv2_pools_current_get_with_http_info(chain_id)

```ruby
begin
  # GetPools
  data, status_code, headers = api_instance.chains_chain_id_dapps_uniswapv2_pools_current_get_with_http_info(chain_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PairV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->chains_chain_id_dapps_uniswapv2_pools_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** | Chain id |  |

### Return type

[**Array&lt;PairV2DTO&gt;**](PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chains_chain_id_dapps_uniswapv2_swaps_current_get

> <Array<SwapV2DTO>> chains_chain_id_dapps_uniswapv2_swaps_current_get(chain_id)

GetSwaps

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
chain_id = 'chain_id_example' # String | Chain id

begin
  # GetSwaps
  result = api_instance.chains_chain_id_dapps_uniswapv2_swaps_current_get(chain_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->chains_chain_id_dapps_uniswapv2_swaps_current_get: #{e}"
end
```

#### Using the chains_chain_id_dapps_uniswapv2_swaps_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SwapV2DTO>>, Integer, Hash)> chains_chain_id_dapps_uniswapv2_swaps_current_get_with_http_info(chain_id)

```ruby
begin
  # GetSwaps
  data, status_code, headers = api_instance.chains_chain_id_dapps_uniswapv2_swaps_current_get_with_http_info(chain_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SwapV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->chains_chain_id_dapps_uniswapv2_swaps_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** | Chain id |  |

### Return type

[**Array&lt;SwapV2DTO&gt;**](SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chains_chain_id_dapps_uniswapv2_tokens_current_get

> <Array<TokenV2DTO>> chains_chain_id_dapps_uniswapv2_tokens_current_get(chain_id)

GetTokens

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::UniswapV2Api.new
chain_id = 'chain_id_example' # String | Chain id

begin
  # GetTokens
  result = api_instance.chains_chain_id_dapps_uniswapv2_tokens_current_get(chain_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->chains_chain_id_dapps_uniswapv2_tokens_current_get: #{e}"
end
```

#### Using the chains_chain_id_dapps_uniswapv2_tokens_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TokenV2DTO>>, Integer, Hash)> chains_chain_id_dapps_uniswapv2_tokens_current_get_with_http_info(chain_id)

```ruby
begin
  # GetTokens
  data, status_code, headers = api_instance.chains_chain_id_dapps_uniswapv2_tokens_current_get_with_http_info(chain_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TokenV2DTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UniswapV2Api->chains_chain_id_dapps_uniswapv2_tokens_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** | Chain id |  |

### Return type

[**Array&lt;TokenV2DTO&gt;**](TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

