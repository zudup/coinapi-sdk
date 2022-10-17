# SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ChainsChainIdDappsSushiswapPoolsCurrentGet**](SushiswapApi.md#ChainsChainIdDappsSushiswapPoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/pools/current | GetPools
[**ChainsChainIdDappsSushiswapSwapsCurrentGet**](SushiswapApi.md#ChainsChainIdDappsSushiswapSwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/swaps/current | GetSwaps
[**ChainsChainIdDappsSushiswapTokensCurrentGet**](SushiswapApi.md#ChainsChainIdDappsSushiswapTokensCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/current | GetTokens


# **ChainsChainIdDappsSushiswapPoolsCurrentGet**
> array[PairDTO] ChainsChainIdDappsSushiswapPoolsCurrentGet(chain_id)

GetPools

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.

### Example
```R
library(openapi)

# GetPools
#
# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | Chain id

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ChainsChainIdDappsSushiswapPoolsCurrentGet(var_chain_iddata_file = "result.txt")
result <- api_instance$ChainsChainIdDappsSushiswapPoolsCurrentGet(var_chain_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**| Chain id | 

### Return type

[**array[PairDTO]**](PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **ChainsChainIdDappsSushiswapSwapsCurrentGet**
> array[SwapDTO] ChainsChainIdDappsSushiswapSwapsCurrentGet(chain_id)

GetSwaps

### Example
```R
library(openapi)

# GetSwaps
#
# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | Chain id

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ChainsChainIdDappsSushiswapSwapsCurrentGet(var_chain_iddata_file = "result.txt")
result <- api_instance$ChainsChainIdDappsSushiswapSwapsCurrentGet(var_chain_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**| Chain id | 

### Return type

[**array[SwapDTO]**](SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **ChainsChainIdDappsSushiswapTokensCurrentGet**
> array[TokenDTO] ChainsChainIdDappsSushiswapTokensCurrentGet(chain_id)

GetTokens

### Example
```R
library(openapi)

# GetTokens
#
# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | Chain id

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ChainsChainIdDappsSushiswapTokensCurrentGet(var_chain_iddata_file = "result.txt")
result <- api_instance$ChainsChainIdDappsSushiswapTokensCurrentGet(var_chain_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**| Chain id | 

### Return type

[**array[TokenDTO]**](TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

