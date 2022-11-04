# SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DappsSushiswapBundlesHistoricalGet**](SushiswapApi.md#DappsSushiswapBundlesHistoricalGet) | **GET** /dapps/sushiswap/bundles/historical | 
[**DappsSushiswapBurnsHistoricalGet**](SushiswapApi.md#DappsSushiswapBurnsHistoricalGet) | **GET** /dapps/sushiswap/burns/historical | 
[**DappsSushiswapDayDataHistoricalGet**](SushiswapApi.md#DappsSushiswapDayDataHistoricalGet) | **GET** /dapps/sushiswap/dayData/historical | 
[**DappsSushiswapFactoryHistoricalGet**](SushiswapApi.md#DappsSushiswapFactoryHistoricalGet) | **GET** /dapps/sushiswap/factory/historical | 
[**DappsSushiswapHourDataHistoricalGet**](SushiswapApi.md#DappsSushiswapHourDataHistoricalGet) | **GET** /dapps/sushiswap/hourData/historical | 
[**DappsSushiswapLiquidityPositionHistoricalGet**](SushiswapApi.md#DappsSushiswapLiquidityPositionHistoricalGet) | **GET** /dapps/sushiswap/liquidityPosition/historical | 
[**DappsSushiswapLiquidityPositionSnapshotsHistoricalGet**](SushiswapApi.md#DappsSushiswapLiquidityPositionSnapshotsHistoricalGet) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | 
[**DappsSushiswapMintsHistoricalGet**](SushiswapApi.md#DappsSushiswapMintsHistoricalGet) | **GET** /dapps/sushiswap/mints/historical | 
[**DappsSushiswapPoolDayDataHistoricalGet**](SushiswapApi.md#DappsSushiswapPoolDayDataHistoricalGet) | **GET** /dapps/sushiswap/poolDayData/historical | 
[**DappsSushiswapPoolHourDataHistoricalGet**](SushiswapApi.md#DappsSushiswapPoolHourDataHistoricalGet) | **GET** /dapps/sushiswap/poolHourData/historical | 
[**DappsSushiswapPoolsCurrentGet**](SushiswapApi.md#DappsSushiswapPoolsCurrentGet) | **GET** /dapps/sushiswap/pools/current | GetPools
[**DappsSushiswapPoolsHistoricalGet**](SushiswapApi.md#DappsSushiswapPoolsHistoricalGet) | **GET** /dapps/sushiswap/pools/historical | GetPools (historical)
[**DappsSushiswapSwapsCurrentGet**](SushiswapApi.md#DappsSushiswapSwapsCurrentGet) | **GET** /dapps/sushiswap/swaps/current | GetSwaps
[**DappsSushiswapSwapsHistoricalGet**](SushiswapApi.md#DappsSushiswapSwapsHistoricalGet) | **GET** /dapps/sushiswap/swaps/historical | GetSwaps (historical)
[**DappsSushiswapTokenDayDataHistoricalGet**](SushiswapApi.md#DappsSushiswapTokenDayDataHistoricalGet) | **GET** /dapps/sushiswap/tokenDayData/historical | 
[**DappsSushiswapTokensCurrentGet**](SushiswapApi.md#DappsSushiswapTokensCurrentGet) | **GET** /dapps/sushiswap/tokens/current | GetTokens
[**DappsSushiswapTokensHistoricalGet**](SushiswapApi.md#DappsSushiswapTokensHistoricalGet) | **GET** /dapps/sushiswap/tokens/historical | GetTokens (historical)
[**DappsSushiswapTransactionsHistoricalGet**](SushiswapApi.md#DappsSushiswapTransactionsHistoricalGet) | **GET** /dapps/sushiswap/transactions/historical | 
[**DappsSushiswapUsersHistoricalGet**](SushiswapApi.md#DappsSushiswapUsersHistoricalGet) | **GET** /dapps/sushiswap/users/historical | 


# **DappsSushiswapBundlesHistoricalGet**
> DappsSushiswapBundlesHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
api_instance$DappsSushiswapBundlesHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 

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

# **DappsSushiswapBurnsHistoricalGet**
> DappsSushiswapBurnsHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
api_instance$DappsSushiswapBurnsHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 
 **pool_id** | **character**|  | [optional] 

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

# **DappsSushiswapDayDataHistoricalGet**
> DappsSushiswapDayDataHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
api_instance$DappsSushiswapDayDataHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 

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

# **DappsSushiswapFactoryHistoricalGet**
> DappsSushiswapFactoryHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
api_instance$DappsSushiswapFactoryHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 

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

# **DappsSushiswapHourDataHistoricalGet**
> DappsSushiswapHourDataHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
api_instance$DappsSushiswapHourDataHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 

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

# **DappsSushiswapLiquidityPositionHistoricalGet**
> DappsSushiswapLiquidityPositionHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
api_instance$DappsSushiswapLiquidityPositionHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 
 **pool_id** | **character**|  | [optional] 

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

# **DappsSushiswapLiquidityPositionSnapshotsHistoricalGet**
> DappsSushiswapLiquidityPositionSnapshotsHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
api_instance$DappsSushiswapLiquidityPositionSnapshotsHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 
 **pool_id** | **character**|  | [optional] 

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

# **DappsSushiswapMintsHistoricalGet**
> DappsSushiswapMintsHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
api_instance$DappsSushiswapMintsHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 
 **pool_id** | **character**|  | [optional] 

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

# **DappsSushiswapPoolDayDataHistoricalGet**
> DappsSushiswapPoolDayDataHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
api_instance$DappsSushiswapPoolDayDataHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 
 **pool_id** | **character**|  | [optional] 

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

# **DappsSushiswapPoolHourDataHistoricalGet**
> DappsSushiswapPoolHourDataHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
api_instance$DappsSushiswapPoolHourDataHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 
 **pool_id** | **character**|  | [optional] 

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

# **DappsSushiswapPoolsCurrentGet**
> array[PairDTO] DappsSushiswapPoolsCurrentGet()

GetPools

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.

### Example
```R
library(openapi)

# GetPools
#

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DappsSushiswapPoolsCurrentGet(data_file = "result.txt")
result <- api_instance$DappsSushiswapPoolsCurrentGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

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

# **DappsSushiswapPoolsHistoricalGet**
> array[PairDTO] DappsSushiswapPoolsHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

GetPools (historical)

### Example
```R
library(openapi)

# GetPools (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DappsSushiswapPoolsHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$DappsSushiswapPoolsHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 
 **pool_id** | **character**|  | [optional] 

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

# **DappsSushiswapSwapsCurrentGet**
> array[SwapDTO] DappsSushiswapSwapsCurrentGet()

GetSwaps

### Example
```R
library(openapi)

# GetSwaps
#

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DappsSushiswapSwapsCurrentGet(data_file = "result.txt")
result <- api_instance$DappsSushiswapSwapsCurrentGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

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

# **DappsSushiswapSwapsHistoricalGet**
> array[SwapDTO] DappsSushiswapSwapsHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

GetSwaps (historical)

### Example
```R
library(openapi)

# GetSwaps (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DappsSushiswapSwapsHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$DappsSushiswapSwapsHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 
 **pool_id** | **character**|  | [optional] 

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

# **DappsSushiswapTokenDayDataHistoricalGet**
> DappsSushiswapTokenDayDataHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, token_id = var.token_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_token_id <- "token_id_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
api_instance$DappsSushiswapTokenDayDataHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

# **DappsSushiswapTokensCurrentGet**
> array[TokenDTO] DappsSushiswapTokensCurrentGet()

GetTokens

### Example
```R
library(openapi)

# GetTokens
#

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DappsSushiswapTokensCurrentGet(data_file = "result.txt")
result <- api_instance$DappsSushiswapTokensCurrentGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

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

# **DappsSushiswapTokensHistoricalGet**
> array[TokenDTO] DappsSushiswapTokensHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, token_id = var.token_id)

GetTokens (historical)

### Example
```R
library(openapi)

# GetTokens (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_token_id <- "token_id_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DappsSushiswapTokensHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_iddata_file = "result.txt")
result <- api_instance$DappsSushiswapTokensHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 
 **token_id** | **character**|  | [optional] 

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

# **DappsSushiswapTransactionsHistoricalGet**
> DappsSushiswapTransactionsHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
api_instance$DappsSushiswapTransactionsHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 

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

# **DappsSushiswapUsersHistoricalGet**
> DappsSushiswapUsersHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
api_instance$DappsSushiswapUsersHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 

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

