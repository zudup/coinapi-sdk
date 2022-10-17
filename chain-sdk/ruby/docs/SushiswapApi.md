# OpenapiClient::SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**chains_chain_id_dapps_sushiswap_pools_current_get**](SushiswapApi.md#chains_chain_id_dapps_sushiswap_pools_current_get) | **GET** /chains/{chain_id}/dapps/sushiswap/pools/current | GetPools |
| [**chains_chain_id_dapps_sushiswap_swaps_current_get**](SushiswapApi.md#chains_chain_id_dapps_sushiswap_swaps_current_get) | **GET** /chains/{chain_id}/dapps/sushiswap/swaps/current | GetSwaps |
| [**chains_chain_id_dapps_sushiswap_tokens_current_get**](SushiswapApi.md#chains_chain_id_dapps_sushiswap_tokens_current_get) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/current | GetTokens |


## chains_chain_id_dapps_sushiswap_pools_current_get

> <Array<PairDTO>> chains_chain_id_dapps_sushiswap_pools_current_get(chain_id)

GetPools

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
chain_id = 'chain_id_example' # String | Chain id

begin
  # GetPools
  result = api_instance.chains_chain_id_dapps_sushiswap_pools_current_get(chain_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->chains_chain_id_dapps_sushiswap_pools_current_get: #{e}"
end
```

#### Using the chains_chain_id_dapps_sushiswap_pools_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PairDTO>>, Integer, Hash)> chains_chain_id_dapps_sushiswap_pools_current_get_with_http_info(chain_id)

```ruby
begin
  # GetPools
  data, status_code, headers = api_instance.chains_chain_id_dapps_sushiswap_pools_current_get_with_http_info(chain_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PairDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->chains_chain_id_dapps_sushiswap_pools_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** | Chain id |  |

### Return type

[**Array&lt;PairDTO&gt;**](PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chains_chain_id_dapps_sushiswap_swaps_current_get

> <Array<SwapDTO>> chains_chain_id_dapps_sushiswap_swaps_current_get(chain_id)

GetSwaps

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
chain_id = 'chain_id_example' # String | Chain id

begin
  # GetSwaps
  result = api_instance.chains_chain_id_dapps_sushiswap_swaps_current_get(chain_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->chains_chain_id_dapps_sushiswap_swaps_current_get: #{e}"
end
```

#### Using the chains_chain_id_dapps_sushiswap_swaps_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SwapDTO>>, Integer, Hash)> chains_chain_id_dapps_sushiswap_swaps_current_get_with_http_info(chain_id)

```ruby
begin
  # GetSwaps
  data, status_code, headers = api_instance.chains_chain_id_dapps_sushiswap_swaps_current_get_with_http_info(chain_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SwapDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->chains_chain_id_dapps_sushiswap_swaps_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** | Chain id |  |

### Return type

[**Array&lt;SwapDTO&gt;**](SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## chains_chain_id_dapps_sushiswap_tokens_current_get

> <Array<TokenDTO>> chains_chain_id_dapps_sushiswap_tokens_current_get(chain_id)

GetTokens

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SushiswapApi.new
chain_id = 'chain_id_example' # String | Chain id

begin
  # GetTokens
  result = api_instance.chains_chain_id_dapps_sushiswap_tokens_current_get(chain_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->chains_chain_id_dapps_sushiswap_tokens_current_get: #{e}"
end
```

#### Using the chains_chain_id_dapps_sushiswap_tokens_current_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TokenDTO>>, Integer, Hash)> chains_chain_id_dapps_sushiswap_tokens_current_get_with_http_info(chain_id)

```ruby
begin
  # GetTokens
  data, status_code, headers = api_instance.chains_chain_id_dapps_sushiswap_tokens_current_get_with_http_info(chain_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TokenDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SushiswapApi->chains_chain_id_dapps_sushiswap_tokens_current_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** | Chain id |  |

### Return type

[**Array&lt;TokenDTO&gt;**](TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

