# UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DappsUniswapv2BundlesHistoricalGet**](UniswapV2Api.md#DappsUniswapv2BundlesHistoricalGet) | **GET** /dapps/uniswapv2/bundles/historical | 
[**DappsUniswapv2BurnsHistoricalGet**](UniswapV2Api.md#DappsUniswapv2BurnsHistoricalGet) | **GET** /dapps/uniswapv2/burns/historical | 
[**DappsUniswapv2DayDataHistoricalGet**](UniswapV2Api.md#DappsUniswapv2DayDataHistoricalGet) | **GET** /dapps/uniswapv2/dayData/historical | 
[**DappsUniswapv2FactoryHistoricalGet**](UniswapV2Api.md#DappsUniswapv2FactoryHistoricalGet) | **GET** /dapps/uniswapv2/factory/historical | 
[**DappsUniswapv2LiquidityPositionHistoricalGet**](UniswapV2Api.md#DappsUniswapv2LiquidityPositionHistoricalGet) | **GET** /dapps/uniswapv2/liquidityPosition/historical | 
[**DappsUniswapv2LiquidityPositionSnapshotsHistoricalGet**](UniswapV2Api.md#DappsUniswapv2LiquidityPositionSnapshotsHistoricalGet) | **GET** /dapps/uniswapv2/liquidityPositionSnapshots/historical | 
[**DappsUniswapv2MintsHistoricalGet**](UniswapV2Api.md#DappsUniswapv2MintsHistoricalGet) | **GET** /dapps/uniswapv2/mints/historical | 
[**DappsUniswapv2PoolDayDataHistoricalGet**](UniswapV2Api.md#DappsUniswapv2PoolDayDataHistoricalGet) | **GET** /dapps/uniswapv2/poolDayData/historical | 
[**DappsUniswapv2PoolHourDataHistoricalGet**](UniswapV2Api.md#DappsUniswapv2PoolHourDataHistoricalGet) | **GET** /dapps/uniswapv2/poolHourData/historical | 
[**DappsUniswapv2PoolsCurrentGet**](UniswapV2Api.md#DappsUniswapv2PoolsCurrentGet) | **GET** /dapps/uniswapv2/pools/current | GetPools
[**DappsUniswapv2PoolsHistoricalGet**](UniswapV2Api.md#DappsUniswapv2PoolsHistoricalGet) | **GET** /dapps/uniswapv2/pools/historical | 
[**DappsUniswapv2SwapsCurrentGet**](UniswapV2Api.md#DappsUniswapv2SwapsCurrentGet) | **GET** /dapps/uniswapv2/swaps/current | GetSwaps
[**DappsUniswapv2SwapsHistoricalGet**](UniswapV2Api.md#DappsUniswapv2SwapsHistoricalGet) | **GET** /dapps/uniswapv2/swaps/historical | 
[**DappsUniswapv2TokenDayDataHistoricalGet**](UniswapV2Api.md#DappsUniswapv2TokenDayDataHistoricalGet) | **GET** /dapps/uniswapv2/tokenDayData/historical | 
[**DappsUniswapv2TokensCurrentGet**](UniswapV2Api.md#DappsUniswapv2TokensCurrentGet) | **GET** /dapps/uniswapv2/tokens/current | GetTokens
[**DappsUniswapv2TokensHistoricalGet**](UniswapV2Api.md#DappsUniswapv2TokensHistoricalGet) | **GET** /dapps/uniswapv2/tokens/historical | 
[**DappsUniswapv2TransactionsHistoricalGet**](UniswapV2Api.md#DappsUniswapv2TransactionsHistoricalGet) | **GET** /dapps/uniswapv2/transactions/historical | 
[**DappsUniswapv2UsersHistoricalGet**](UniswapV2Api.md#DappsUniswapv2UsersHistoricalGet) | **GET** /dapps/uniswapv2/users/historical | 


# **DappsUniswapv2BundlesHistoricalGet**
> DappsUniswapv2BundlesHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)

api_instance <- UniswapV2Api$new()
api_instance$DappsUniswapv2BundlesHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
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

# **DappsUniswapv2BurnsHistoricalGet**
> DappsUniswapv2BurnsHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- UniswapV2Api$new()
api_instance$DappsUniswapv2BurnsHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

# **DappsUniswapv2DayDataHistoricalGet**
> DappsUniswapv2DayDataHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)

api_instance <- UniswapV2Api$new()
api_instance$DappsUniswapv2DayDataHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
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

# **DappsUniswapv2FactoryHistoricalGet**
> DappsUniswapv2FactoryHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)

api_instance <- UniswapV2Api$new()
api_instance$DappsUniswapv2FactoryHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
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

# **DappsUniswapv2LiquidityPositionHistoricalGet**
> DappsUniswapv2LiquidityPositionHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- UniswapV2Api$new()
api_instance$DappsUniswapv2LiquidityPositionHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

# **DappsUniswapv2LiquidityPositionSnapshotsHistoricalGet**
> DappsUniswapv2LiquidityPositionSnapshotsHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- UniswapV2Api$new()
api_instance$DappsUniswapv2LiquidityPositionSnapshotsHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

# **DappsUniswapv2MintsHistoricalGet**
> DappsUniswapv2MintsHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- UniswapV2Api$new()
api_instance$DappsUniswapv2MintsHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

# **DappsUniswapv2PoolDayDataHistoricalGet**
> DappsUniswapv2PoolDayDataHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- UniswapV2Api$new()
api_instance$DappsUniswapv2PoolDayDataHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

# **DappsUniswapv2PoolHourDataHistoricalGet**
> DappsUniswapv2PoolHourDataHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- UniswapV2Api$new()
api_instance$DappsUniswapv2PoolHourDataHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

# **DappsUniswapv2PoolsCurrentGet**
> array[UniswapV2PairV2DTO] DappsUniswapv2PoolsCurrentGet(filter_pool_id = var.filter_pool_id)

GetPools

### Example
```R
library(openapi)

# GetPools
#
# prepare function argument(s)
var_filter_pool_id <- "filter_pool_id_example" # character | Filter pool id (Optional)

api_instance <- UniswapV2Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DappsUniswapv2PoolsCurrentGet(filter_pool_id = var_filter_pool_iddata_file = "result.txt")
result <- api_instance$DappsUniswapv2PoolsCurrentGet(filter_pool_id = var_filter_pool_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **character**| Filter pool id | [optional] 

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

# **DappsUniswapv2PoolsHistoricalGet**
> DappsUniswapv2PoolsHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- UniswapV2Api$new()
api_instance$DappsUniswapv2PoolsHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

# **DappsUniswapv2SwapsCurrentGet**
> array[UniswapV2SwapV2DTO] DappsUniswapv2SwapsCurrentGet()

GetSwaps

### Example
```R
library(openapi)

# GetSwaps
#

api_instance <- UniswapV2Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DappsUniswapv2SwapsCurrentGet(data_file = "result.txt")
result <- api_instance$DappsUniswapv2SwapsCurrentGet()
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

# **DappsUniswapv2SwapsHistoricalGet**
> DappsUniswapv2SwapsHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- UniswapV2Api$new()
api_instance$DappsUniswapv2SwapsHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

# **DappsUniswapv2TokenDayDataHistoricalGet**
> DappsUniswapv2TokenDayDataHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, token_id = var.token_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_token_id <- "token_id_example" # character |  (Optional)

api_instance <- UniswapV2Api$new()
api_instance$DappsUniswapv2TokenDayDataHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_id)
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

# **DappsUniswapv2TokensCurrentGet**
> array[UniswapV2TokenV2DTO] DappsUniswapv2TokensCurrentGet()

GetTokens

### Example
```R
library(openapi)

# GetTokens
#

api_instance <- UniswapV2Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DappsUniswapv2TokensCurrentGet(data_file = "result.txt")
result <- api_instance$DappsUniswapv2TokensCurrentGet()
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

# **DappsUniswapv2TokensHistoricalGet**
> DappsUniswapv2TokensHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, token_id = var.token_id)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_token_id <- "token_id_example" # character |  (Optional)

api_instance <- UniswapV2Api$new()
api_instance$DappsUniswapv2TokensHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_id)
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

# **DappsUniswapv2TransactionsHistoricalGet**
> DappsUniswapv2TransactionsHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)

api_instance <- UniswapV2Api$new()
api_instance$DappsUniswapv2TransactionsHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
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

# **DappsUniswapv2UsersHistoricalGet**
> DappsUniswapv2UsersHistoricalGet(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)



### Example
```R
library(openapi)

# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)

api_instance <- UniswapV2Api$new()
api_instance$DappsUniswapv2UsersHistoricalGet(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
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

