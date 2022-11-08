# UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**UniswapV2GetBundlesHistorical**](UniswapV2Api.md#UniswapV2GetBundlesHistorical) | **GET** /dapps/uniswapv2/bundles/historical | GetBundles (historical)
[**UniswapV2GetBurnsHistorical**](UniswapV2Api.md#UniswapV2GetBurnsHistorical) | **GET** /dapps/uniswapv2/burns/historical | GetBurns (historical)
[**UniswapV2GetDayDataHistorical**](UniswapV2Api.md#UniswapV2GetDayDataHistorical) | **GET** /dapps/uniswapv2/dayData/historical | GetDayData (historical)
[**UniswapV2GetFactoryHistorical**](UniswapV2Api.md#UniswapV2GetFactoryHistorical) | **GET** /dapps/uniswapv2/factory/historical | GetFactory (historical)
[**UniswapV2GetLiquidityPositionsHistorical**](UniswapV2Api.md#UniswapV2GetLiquidityPositionsHistorical) | **GET** /dapps/uniswapv2/liquidityPositions/historical | GetLiquidityPositions (historical)
[**UniswapV2GetLiquidityPositionsSnapshotsHistorical**](UniswapV2Api.md#UniswapV2GetLiquidityPositionsSnapshotsHistorical) | **GET** /dapps/uniswapv2/liquidityPositionsSnapshots/historical | GetLiquidityPositionsSnapshots (historical)
[**UniswapV2GetMintsHistorical**](UniswapV2Api.md#UniswapV2GetMintsHistorical) | **GET** /dapps/uniswapv2/mints/historical | GetMints (historical)
[**UniswapV2GetPoolsCurrent**](UniswapV2Api.md#UniswapV2GetPoolsCurrent) | **GET** /dapps/uniswapv2/pools/current | GetPools (current) 🔥
[**UniswapV2GetPoolsDayDataHistorical**](UniswapV2Api.md#UniswapV2GetPoolsDayDataHistorical) | **GET** /dapps/uniswapv2/poolsDayData/historical | GetPoolsDayData (historical)
[**UniswapV2GetPoolsHistorical**](UniswapV2Api.md#UniswapV2GetPoolsHistorical) | **GET** /dapps/uniswapv2/pools/historical | GetPools (historical) 🔥
[**UniswapV2GetPoolsHourDataHistorical**](UniswapV2Api.md#UniswapV2GetPoolsHourDataHistorical) | **GET** /dapps/uniswapv2/poolsHourData/historical | GetPoolsHourData (historical)
[**UniswapV2GetSwapsCurrent**](UniswapV2Api.md#UniswapV2GetSwapsCurrent) | **GET** /dapps/uniswapv2/swaps/current | GetSwaps (current) 🔥
[**UniswapV2GetSwapsHistorical**](UniswapV2Api.md#UniswapV2GetSwapsHistorical) | **GET** /dapps/uniswapv2/swaps/historical | GetSwaps (historical) 🔥
[**UniswapV2GetTokensCurrent**](UniswapV2Api.md#UniswapV2GetTokensCurrent) | **GET** /dapps/uniswapv2/tokens/current | GetTokens (current) 🔥
[**UniswapV2GetTokensDayDataHistorical**](UniswapV2Api.md#UniswapV2GetTokensDayDataHistorical) | **GET** /dapps/uniswapv2/tokensDayData/historical | GetTokensDayData (historical)
[**UniswapV2GetTokensHistorical**](UniswapV2Api.md#UniswapV2GetTokensHistorical) | **GET** /dapps/uniswapv2/tokens/historical | GetTokens (historical) 🔥
[**UniswapV2GetTransactionsHistorical**](UniswapV2Api.md#UniswapV2GetTransactionsHistorical) | **GET** /dapps/uniswapv2/transactions/historical | GetTransactions (historical)
[**UniswapV2GetUsersHistorical**](UniswapV2Api.md#UniswapV2GetUsersHistorical) | **GET** /dapps/uniswapv2/users/historical | GetUsers (historical)


# **UniswapV2GetBundlesHistorical**
> array[UniswapV2BundleV2DTO] UniswapV2GetBundlesHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)

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

api_instance <- UniswapV2Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV2GetBundlesHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_datedata_file = "result.txt")
result <- api_instance$UniswapV2GetBundlesHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
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

[**array[UniswapV2BundleV2DTO]**](UniswapV2.BundleV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV2GetBurnsHistorical**
> array[UniswapV2BurnV2DTO] UniswapV2GetBurnsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

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

api_instance <- UniswapV2Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV2GetBurnsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$UniswapV2GetBurnsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

[**array[UniswapV2BurnV2DTO]**](UniswapV2.BurnV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV2GetDayDataHistorical**
> array[UniswapV2UniswapDayDataV2DTO] UniswapV2GetDayDataHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)

GetDayData (historical)

Gets uniswapv2 day data.

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

api_instance <- UniswapV2Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV2GetDayDataHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_datedata_file = "result.txt")
result <- api_instance$UniswapV2GetDayDataHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
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

[**array[UniswapV2UniswapDayDataV2DTO]**](UniswapV2.UniswapDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV2GetFactoryHistorical**
> array[UniswapV2UniswapFactoryV2DTO] UniswapV2GetFactoryHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)

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

api_instance <- UniswapV2Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV2GetFactoryHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_datedata_file = "result.txt")
result <- api_instance$UniswapV2GetFactoryHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
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

[**array[UniswapV2UniswapFactoryV2DTO]**](UniswapV2.UniswapFactoryV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV2GetLiquidityPositionsHistorical**
> array[UniswapV2LiquidityPositionV2DTO] UniswapV2GetLiquidityPositionsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

GetLiquidityPositions (historical)

Gets liquidity positions.

### Example
```R
library(openapi)

# GetLiquidityPositions (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- UniswapV2Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV2GetLiquidityPositionsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$UniswapV2GetLiquidityPositionsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

[**array[UniswapV2LiquidityPositionV2DTO]**](UniswapV2.LiquidityPositionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV2GetLiquidityPositionsSnapshotsHistorical**
> array[UniswapV2LiquidityPositionSnapshotV2DTO] UniswapV2GetLiquidityPositionsSnapshotsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

GetLiquidityPositionsSnapshots (historical)

Gets liquidity positions snapshots.

### Example
```R
library(openapi)

# GetLiquidityPositionsSnapshots (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- UniswapV2Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV2GetLiquidityPositionsSnapshotsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$UniswapV2GetLiquidityPositionsSnapshotsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

[**array[UniswapV2LiquidityPositionSnapshotV2DTO]**](UniswapV2.LiquidityPositionSnapshotV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV2GetMintsHistorical**
> array[UniswapV2MintV2DTO] UniswapV2GetMintsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

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

api_instance <- UniswapV2Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV2GetMintsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$UniswapV2GetMintsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

[**array[UniswapV2MintV2DTO]**](UniswapV2.MintV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV2GetPoolsCurrent**
> array[UniswapV2PairV2DTO] UniswapV2GetPoolsCurrent(filter_pool_id = var.filter_pool_id)

GetPools (current) 🔥

Gets pools.

### Example
```R
library(openapi)

# GetPools (current) 🔥
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

# **UniswapV2GetPoolsDayDataHistorical**
> array[UniswapV2PairDayDataV2DTO] UniswapV2GetPoolsDayDataHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

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

api_instance <- UniswapV2Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV2GetPoolsDayDataHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$UniswapV2GetPoolsDayDataHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

[**array[UniswapV2PairDayDataV2DTO]**](UniswapV2.PairDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV2GetPoolsHistorical**
> array[UniswapV2PairV2DTO] UniswapV2GetPoolsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

GetPools (historical) 🔥

Gets pools.

### Example
```R
library(openapi)

# GetPools (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- UniswapV2Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV2GetPoolsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$UniswapV2GetPoolsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

# **UniswapV2GetPoolsHourDataHistorical**
> array[UniswapV2PairHourDataV2DTO] UniswapV2GetPoolsHourDataHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

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

api_instance <- UniswapV2Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV2GetPoolsHourDataHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$UniswapV2GetPoolsHourDataHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

[**array[UniswapV2PairHourDataV2DTO]**](UniswapV2.PairHourDataV2DTO.md)

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

GetSwaps (current) 🔥

Gets swaps.

### Example
```R
library(openapi)

# GetSwaps (current) 🔥
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

# **UniswapV2GetSwapsHistorical**
> array[UniswapV2SwapV2DTO] UniswapV2GetSwapsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

GetSwaps (historical) 🔥

Gets swaps.

### Example
```R
library(openapi)

# GetSwaps (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- UniswapV2Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV2GetSwapsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$UniswapV2GetSwapsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

GetTokens (current) 🔥

Gets tokens.

### Example
```R
library(openapi)

# GetTokens (current) 🔥
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

# **UniswapV2GetTokensDayDataHistorical**
> array[UniswapV2TokenDayDataV2DTO] UniswapV2GetTokensDayDataHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, token_id = var.token_id)

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

api_instance <- UniswapV2Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV2GetTokensDayDataHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_iddata_file = "result.txt")
result <- api_instance$UniswapV2GetTokensDayDataHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_id)
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

[**array[UniswapV2TokenDayDataV2DTO]**](UniswapV2.TokenDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV2GetTokensHistorical**
> array[UniswapV2TokenV2DTO] UniswapV2GetTokensHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, token_id = var.token_id)

GetTokens (historical) 🔥

Gets tokens.

### Example
```R
library(openapi)

# GetTokens (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_token_id <- "token_id_example" # character |  (Optional)

api_instance <- UniswapV2Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV2GetTokensHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_iddata_file = "result.txt")
result <- api_instance$UniswapV2GetTokensHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_id)
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

# **UniswapV2GetTransactionsHistorical**
> array[UniswapV2TransactionV2DTO] UniswapV2GetTransactionsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)

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

api_instance <- UniswapV2Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV2GetTransactionsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_datedata_file = "result.txt")
result <- api_instance$UniswapV2GetTransactionsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
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

[**array[UniswapV2TransactionV2DTO]**](UniswapV2.TransactionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV2GetUsersHistorical**
> array[UniswapV2UserV2DTO] UniswapV2GetUsersHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)

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

api_instance <- UniswapV2Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV2GetUsersHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_datedata_file = "result.txt")
result <- api_instance$UniswapV2GetUsersHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
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

[**array[UniswapV2UserV2DTO]**](UniswapV2.UserV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

