# UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ChainsChainIdDappsUniswapv2PoolsCurrentGet**](UniswapV2Api.md#ChainsChainIdDappsUniswapv2PoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools
[**ChainsChainIdDappsUniswapv2SwapsCurrentGet**](UniswapV2Api.md#ChainsChainIdDappsUniswapv2SwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps
[**ChainsChainIdDappsUniswapv2TokensCurrentGet**](UniswapV2Api.md#ChainsChainIdDappsUniswapv2TokensCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens


# **ChainsChainIdDappsUniswapv2PoolsCurrentGet**
> array[PairV2DTO] ChainsChainIdDappsUniswapv2PoolsCurrentGet(chain_id)

GetPools

### Example
```R
library(openapi)

# GetPools
#
# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | Chain id

api_instance <- UniswapV2Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ChainsChainIdDappsUniswapv2PoolsCurrentGet(var_chain_iddata_file = "result.txt")
result <- api_instance$ChainsChainIdDappsUniswapv2PoolsCurrentGet(var_chain_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**| Chain id | 

### Return type

[**array[PairV2DTO]**](PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **ChainsChainIdDappsUniswapv2SwapsCurrentGet**
> array[SwapV2DTO] ChainsChainIdDappsUniswapv2SwapsCurrentGet(chain_id)

GetSwaps

### Example
```R
library(openapi)

# GetSwaps
#
# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | Chain id

api_instance <- UniswapV2Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ChainsChainIdDappsUniswapv2SwapsCurrentGet(var_chain_iddata_file = "result.txt")
result <- api_instance$ChainsChainIdDappsUniswapv2SwapsCurrentGet(var_chain_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**| Chain id | 

### Return type

[**array[SwapV2DTO]**](SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **ChainsChainIdDappsUniswapv2TokensCurrentGet**
> array[TokenV2DTO] ChainsChainIdDappsUniswapv2TokensCurrentGet(chain_id)

GetTokens

### Example
```R
library(openapi)

# GetTokens
#
# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | Chain id

api_instance <- UniswapV2Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ChainsChainIdDappsUniswapv2TokensCurrentGet(var_chain_iddata_file = "result.txt")
result <- api_instance$ChainsChainIdDappsUniswapv2TokensCurrentGet(var_chain_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**| Chain id | 

### Return type

[**array[TokenV2DTO]**](TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

