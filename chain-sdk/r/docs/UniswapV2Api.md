# UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**UniswapV2GetPoolsCurrent**](UniswapV2Api.md#UniswapV2GetPoolsCurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
[**UniswapV2GetSwapsCurrent**](UniswapV2Api.md#UniswapV2GetSwapsCurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
[**UniswapV2GetTokensCurrent**](UniswapV2Api.md#UniswapV2GetTokensCurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥


# **UniswapV2GetPoolsCurrent**
> array[UniswapV2PairV2DTO] UniswapV2GetPoolsCurrent(filter_pool_id = var.filter_pool_id)

Pools (current) 🔥

Gets pools.

### Example
```R
library(openapi)

# Pools (current) 🔥
#
# prepare function argument(s)
var_filter_pool_id <- "filter_pool_id_example" # character |  (Optional)

api_instance <- UniswapV2Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV2GetPoolsCurrent(filter_pool_id = var_filter_pool_iddata_file = "result.txt")
result <- api_instance$UniswapV2GetPoolsCurrent(filter_pool_id = var_filter_pool_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **character**|  | [optional] 

### Return type

[**array[UniswapV2PairV2DTO]**](UniswapV2.PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV2GetSwapsCurrent**
> array[UniswapV2SwapV2DTO] UniswapV2GetSwapsCurrent()

Swaps (current) 🔥

Gets swaps.

### Example
```R
library(openapi)

# Swaps (current) 🔥
#

api_instance <- UniswapV2Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV2GetSwapsCurrent(data_file = "result.txt")
result <- api_instance$UniswapV2GetSwapsCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[UniswapV2SwapV2DTO]**](UniswapV2.SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV2GetTokensCurrent**
> array[UniswapV2TokenV2DTO] UniswapV2GetTokensCurrent()

Tokens (current) 🔥

Gets tokens.

### Example
```R
library(openapi)

# Tokens (current) 🔥
#

api_instance <- UniswapV2Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV2GetTokensCurrent(data_file = "result.txt")
result <- api_instance$UniswapV2GetTokensCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[UniswapV2TokenV2DTO]**](UniswapV2.TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

