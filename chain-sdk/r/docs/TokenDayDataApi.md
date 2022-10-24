# TokenDayDataApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ChainsChainIdDappsSushiswapTokenDayDataHistoricalGet**](TokenDayDataApi.md#ChainsChainIdDappsSushiswapTokenDayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/tokenDayData/historical | 
[**ChainsChainIdDappsUniswapv2TokenDayDataHistoricalGet**](TokenDayDataApi.md#ChainsChainIdDappsUniswapv2TokenDayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokenDayData/historical | 
[**ChainsChainIdDappsUniswapv3TokenDayDataHistoricalGet**](TokenDayDataApi.md#ChainsChainIdDappsUniswapv3TokenDayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokenDayData/historical | 


# **ChainsChainIdDappsSushiswapTokenDayDataHistoricalGet**
> ChainsChainIdDappsSushiswapTokenDayDataHistoricalGet(chain_id, start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, token_id = var.token_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | 
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_token_id <- "token_id_example" # character |  (Optional)

api_instance <- TokenDayDataApi$new()
api_instance$ChainsChainIdDappsSushiswapTokenDayDataHistoricalGet(var_chain_id, start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**|  | 
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 
 **token_id** | **character**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **ChainsChainIdDappsUniswapv2TokenDayDataHistoricalGet**
> ChainsChainIdDappsUniswapv2TokenDayDataHistoricalGet(chain_id, start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, token_id = var.token_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | 
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_token_id <- "token_id_example" # character |  (Optional)

api_instance <- TokenDayDataApi$new()
api_instance$ChainsChainIdDappsUniswapv2TokenDayDataHistoricalGet(var_chain_id, start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**|  | 
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 
 **token_id** | **character**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **ChainsChainIdDappsUniswapv3TokenDayDataHistoricalGet**
> ChainsChainIdDappsUniswapv3TokenDayDataHistoricalGet(chain_id, start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, token_id = var.token_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | 
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_token_id <- "token_id_example" # character |  (Optional)

api_instance <- TokenDayDataApi$new()
api_instance$ChainsChainIdDappsUniswapv3TokenDayDataHistoricalGet(var_chain_id, start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**|  | 
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 
 **token_id** | **character**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

