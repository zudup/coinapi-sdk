# SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SushiswapGetBundlesHistorical**](SushiswapApi.md#SushiswapGetBundlesHistorical) | **GET** /dapps/sushiswap/bundles/historical | GetBundles (historical)
[**SushiswapGetBurnsHistorical**](SushiswapApi.md#SushiswapGetBurnsHistorical) | **GET** /dapps/sushiswap/burns/historical | GetBurns (historical)
[**SushiswapGetDayDataHistorical**](SushiswapApi.md#SushiswapGetDayDataHistorical) | **GET** /dapps/sushiswap/dayData/historical | GetDayData (historical)
[**SushiswapGetFactoryHistorical**](SushiswapApi.md#SushiswapGetFactoryHistorical) | **GET** /dapps/sushiswap/factory/historical | GetFactory (historical)
[**SushiswapGetHourDataHistorical**](SushiswapApi.md#SushiswapGetHourDataHistorical) | **GET** /dapps/sushiswap/hourData/historical | GetHourData (historical)
[**SushiswapGetLiquidityPositionHistorical**](SushiswapApi.md#SushiswapGetLiquidityPositionHistorical) | **GET** /dapps/sushiswap/liquidityPosition/historical | GetLiquidityPosition (historical)
[**SushiswapGetLiquidityPositionSnapshotHistorical**](SushiswapApi.md#SushiswapGetLiquidityPositionSnapshotHistorical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | GetLiquidityPositionSnapshot (historical)
[**SushiswapGetMintsHistorical**](SushiswapApi.md#SushiswapGetMintsHistorical) | **GET** /dapps/sushiswap/mints/historical | GetMints (historical)
[**SushiswapGetPoolsCurrent**](SushiswapApi.md#SushiswapGetPoolsCurrent) | **GET** /dapps/sushiswap/pools/current | GetPools (current)
[**SushiswapGetPoolsDayDataHistorical**](SushiswapApi.md#SushiswapGetPoolsDayDataHistorical) | **GET** /dapps/sushiswap/poolsDayData/historical | GetPoolsDayData (historical)
[**SushiswapGetPoolsHistorical**](SushiswapApi.md#SushiswapGetPoolsHistorical) | **GET** /dapps/sushiswap/pools/historical | GetPools (historical)
[**SushiswapGetPoolsHourDataHistorical**](SushiswapApi.md#SushiswapGetPoolsHourDataHistorical) | **GET** /dapps/sushiswap/poolsHourData/historical | GetPoolsHourData (historical)
[**SushiswapGetSwapsCurrent**](SushiswapApi.md#SushiswapGetSwapsCurrent) | **GET** /dapps/sushiswap/swaps/current | GetSwaps (current)
[**SushiswapGetSwapsHistorical**](SushiswapApi.md#SushiswapGetSwapsHistorical) | **GET** /dapps/sushiswap/swaps/historical | GetSwaps (historical)
[**SushiswapGetTokensCurrent**](SushiswapApi.md#SushiswapGetTokensCurrent) | **GET** /dapps/sushiswap/tokens/current | GetTokens (current)
[**SushiswapGetTokensDayDataHistorical**](SushiswapApi.md#SushiswapGetTokensDayDataHistorical) | **GET** /dapps/sushiswap/tokensDayData/historical | GetTokensDayData (historical)
[**SushiswapGetTokensHistorical**](SushiswapApi.md#SushiswapGetTokensHistorical) | **GET** /dapps/sushiswap/tokens/historical | GetTokens (historical)
[**SushiswapGetTransactionsHistorical**](SushiswapApi.md#SushiswapGetTransactionsHistorical) | **GET** /dapps/sushiswap/transactions/historical | GetTransactions (historical)
[**SushiswapGetUsersHistorical**](SushiswapApi.md#SushiswapGetUsersHistorical) | **GET** /dapps/sushiswap/users/historical | GetUsers (historical)


# **SushiswapGetBundlesHistorical**
> array[SushiswapBundleDTO] SushiswapGetBundlesHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)

GetBundles (historical)

Gets bundles.

### Example
```R
library(openapi)

# GetBundles (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetBundlesHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_datedata_file = "result.txt")
result <- api_instance$SushiswapGetBundlesHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 

### Return type

[**array[SushiswapBundleDTO]**](Sushiswap.BundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **SushiswapGetBurnsHistorical**
> array[SushiswapBurnDTO] SushiswapGetBurnsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

GetBurns (historical)

Gets burns.

### Example
```R
library(openapi)

# GetBurns (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetBurnsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$SushiswapGetBurnsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

[**array[SushiswapBurnDTO]**](Sushiswap.BurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **SushiswapGetDayDataHistorical**
> array[SushiswapDayDataDTO] SushiswapGetDayDataHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)

GetDayData (historical)

Gets day data.

### Example
```R
library(openapi)

# GetDayData (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetDayDataHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_datedata_file = "result.txt")
result <- api_instance$SushiswapGetDayDataHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 

### Return type

[**array[SushiswapDayDataDTO]**](Sushiswap.DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **SushiswapGetFactoryHistorical**
> array[SushiswapFactoryDTO] SushiswapGetFactoryHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)

GetFactory (historical)

Gets factory.

### Example
```R
library(openapi)

# GetFactory (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetFactoryHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_datedata_file = "result.txt")
result <- api_instance$SushiswapGetFactoryHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 

### Return type

[**array[SushiswapFactoryDTO]**](Sushiswap.FactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **SushiswapGetHourDataHistorical**
> array[SushiswapHourDataDTO] SushiswapGetHourDataHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)

GetHourData (historical)

Gets hour data.

### Example
```R
library(openapi)

# GetHourData (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetHourDataHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_datedata_file = "result.txt")
result <- api_instance$SushiswapGetHourDataHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 

### Return type

[**array[SushiswapHourDataDTO]**](Sushiswap.HourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **SushiswapGetLiquidityPositionHistorical**
> array[SushiswapLiquidityPositionDTO] SushiswapGetLiquidityPositionHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

GetLiquidityPosition (historical)

Gets liquidity position.

### Example
```R
library(openapi)

# GetLiquidityPosition (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetLiquidityPositionHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$SushiswapGetLiquidityPositionHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

[**array[SushiswapLiquidityPositionDTO]**](Sushiswap.LiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **SushiswapGetLiquidityPositionSnapshotHistorical**
> array[SushiswapLiquidityPositionSnapshotDTO] SushiswapGetLiquidityPositionSnapshotHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

GetLiquidityPositionSnapshot (historical)

Gets liquidity position snapshot.

### Example
```R
library(openapi)

# GetLiquidityPositionSnapshot (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetLiquidityPositionSnapshotHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$SushiswapGetLiquidityPositionSnapshotHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

[**array[SushiswapLiquidityPositionSnapshotDTO]**](Sushiswap.LiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **SushiswapGetMintsHistorical**
> array[SushiswapMintDTO] SushiswapGetMintsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

GetMints (historical)

Gets mints.

### Example
```R
library(openapi)

# GetMints (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetMintsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$SushiswapGetMintsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

[**array[SushiswapMintDTO]**](Sushiswap.MintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **SushiswapGetPoolsCurrent**
> array[SushiswapPairDTO] SushiswapGetPoolsCurrent()

GetPools (current)

Gets pools.

### Example
```R
library(openapi)

# GetPools (current)
#

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetPoolsCurrent(data_file = "result.txt")
result <- api_instance$SushiswapGetPoolsCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[SushiswapPairDTO]**](Sushiswap.PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **SushiswapGetPoolsDayDataHistorical**
> array[SushiswapPairDayDataDTO] SushiswapGetPoolsDayDataHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

GetPoolsDayData (historical)

Gets pools day data.

### Example
```R
library(openapi)

# GetPoolsDayData (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetPoolsDayDataHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$SushiswapGetPoolsDayDataHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

[**array[SushiswapPairDayDataDTO]**](Sushiswap.PairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **SushiswapGetPoolsHistorical**
> array[SushiswapPairDTO] SushiswapGetPoolsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

GetPools (historical)

Gets list of pools for given filters.

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
# result <- api_instance$SushiswapGetPoolsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$SushiswapGetPoolsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

[**array[SushiswapPairDTO]**](Sushiswap.PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **SushiswapGetPoolsHourDataHistorical**
> array[SushiswapPairHourDataDTO] SushiswapGetPoolsHourDataHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

GetPoolsHourData (historical)

Gets pools tracked each our.

### Example
```R
library(openapi)

# GetPoolsHourData (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetPoolsHourDataHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$SushiswapGetPoolsHourDataHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

[**array[SushiswapPairHourDataDTO]**](Sushiswap.PairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **SushiswapGetSwapsCurrent**
> array[SushiswapSwapDTO] SushiswapGetSwapsCurrent()

GetSwaps (current)

Gets swaps.

### Example
```R
library(openapi)

# GetSwaps (current)
#

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetSwapsCurrent(data_file = "result.txt")
result <- api_instance$SushiswapGetSwapsCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[SushiswapSwapDTO]**](Sushiswap.SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **SushiswapGetSwapsHistorical**
> array[SushiswapSwapDTO] SushiswapGetSwapsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

GetSwaps (historical)

Gets list of swaps for given filters.

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
# result <- api_instance$SushiswapGetSwapsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$SushiswapGetSwapsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

[**array[SushiswapSwapDTO]**](Sushiswap.SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **SushiswapGetTokensCurrent**
> array[SushiswapTokenDTO] SushiswapGetTokensCurrent()

GetTokens (current)

Gets tokens.

### Example
```R
library(openapi)

# GetTokens (current)
#

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetTokensCurrent(data_file = "result.txt")
result <- api_instance$SushiswapGetTokensCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[SushiswapTokenDTO]**](Sushiswap.TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **SushiswapGetTokensDayDataHistorical**
> array[SushiswapTokenDayDataDTO] SushiswapGetTokensDayDataHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, token_id = var.token_id)

GetTokensDayData (historical)

Gets tokens day data.

### Example
```R
library(openapi)

# GetTokensDayData (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_token_id <- "token_id_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetTokensDayDataHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_iddata_file = "result.txt")
result <- api_instance$SushiswapGetTokensDayDataHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_id)
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

[**array[SushiswapTokenDayDataDTO]**](Sushiswap.TokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **SushiswapGetTokensHistorical**
> array[SushiswapTokenDTO] SushiswapGetTokensHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, token_id = var.token_id)

GetTokens (historical)

Gets list of tokens for given filters.

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
# result <- api_instance$SushiswapGetTokensHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_iddata_file = "result.txt")
result <- api_instance$SushiswapGetTokensHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_id)
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

[**array[SushiswapTokenDTO]**](Sushiswap.TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **SushiswapGetTransactionsHistorical**
> array[SushiswapTransactionDTO] SushiswapGetTransactionsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)

GetTransactions (historical)

Gets transactions.

### Example
```R
library(openapi)

# GetTransactions (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetTransactionsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_datedata_file = "result.txt")
result <- api_instance$SushiswapGetTransactionsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 

### Return type

[**array[SushiswapTransactionDTO]**](Sushiswap.TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **SushiswapGetUsersHistorical**
> array[SushiswapUserDTO] SushiswapGetUsersHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)

GetUsers (historical)

Gets users.

### Example
```R
library(openapi)

# GetUsers (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetUsersHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_datedata_file = "result.txt")
result <- api_instance$SushiswapGetUsersHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 

### Return type

[**array[SushiswapUserDTO]**](Sushiswap.UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

