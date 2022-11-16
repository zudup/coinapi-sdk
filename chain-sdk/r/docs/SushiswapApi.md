# SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CurveGetExchangesCurrent**](SushiswapApi.md#CurveGetExchangesCurrent) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
[**DexGetTradesCurrent**](SushiswapApi.md#DexGetTradesCurrent) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥
[**SushiswapGetBundlesHistorical**](SushiswapApi.md#SushiswapGetBundlesHistorical) | **GET** /dapps/sushiswap/bundles/historical | Bundles (historical) 🔥
[**SushiswapGetBurnsHistorical**](SushiswapApi.md#SushiswapGetBurnsHistorical) | **GET** /dapps/sushiswap/burns/historical | Burns (historical) 🔥
[**SushiswapGetDayDatasHistorical**](SushiswapApi.md#SushiswapGetDayDatasHistorical) | **GET** /dapps/sushiswap/daydatas/historical | DayDatas (historical) 🔥
[**SushiswapGetFactorysHistorical**](SushiswapApi.md#SushiswapGetFactorysHistorical) | **GET** /dapps/sushiswap/factorys/historical | Factorys (historical) 🔥
[**SushiswapGetHourDatasHistorical**](SushiswapApi.md#SushiswapGetHourDatasHistorical) | **GET** /dapps/sushiswap/hourdatas/historical | HourDatas (historical) 🔥
[**SushiswapGetLiquidityPositionSnapshotsHistorical**](SushiswapApi.md#SushiswapGetLiquidityPositionSnapshotsHistorical) | **GET** /dapps/sushiswap/liquiditypositionsnapshots/historical | LiquidityPositionSnapshots (historical) 🔥
[**SushiswapGetLiquidityPositionsHistorical**](SushiswapApi.md#SushiswapGetLiquidityPositionsHistorical) | **GET** /dapps/sushiswap/liquiditypositions/historical | LiquidityPositions (historical) 🔥
[**SushiswapGetMintsHistorical**](SushiswapApi.md#SushiswapGetMintsHistorical) | **GET** /dapps/sushiswap/mints/historical | Mints (historical) 🔥
[**SushiswapGetPairDayDatasHistorical**](SushiswapApi.md#SushiswapGetPairDayDatasHistorical) | **GET** /dapps/sushiswap/pairdaydatas/historical | PairDayDatas (historical) 🔥
[**SushiswapGetPairHourDatasHistorical**](SushiswapApi.md#SushiswapGetPairHourDatasHistorical) | **GET** /dapps/sushiswap/pairhourdatas/historical | PairHourDatas (historical) 🔥
[**SushiswapGetPairsHistorical**](SushiswapApi.md#SushiswapGetPairsHistorical) | **GET** /dapps/sushiswap/pairs/historical | Pairs (historical) 🔥
[**SushiswapGetPoolsCurrent**](SushiswapApi.md#SushiswapGetPoolsCurrent) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥
[**SushiswapGetSwapsCurrent**](SushiswapApi.md#SushiswapGetSwapsCurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
[**SushiswapGetSwapsHistorical**](SushiswapApi.md#SushiswapGetSwapsHistorical) | **GET** /dapps/sushiswap/swaps/historical | Swaps (historical) 🔥
[**SushiswapGetTokenDayDatasHistorical**](SushiswapApi.md#SushiswapGetTokenDayDatasHistorical) | **GET** /dapps/sushiswap/tokendaydatas/historical | TokenDayDatas (historical) 🔥
[**SushiswapGetTokensCurrent**](SushiswapApi.md#SushiswapGetTokensCurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) 🔥
[**SushiswapGetTokensHistorical**](SushiswapApi.md#SushiswapGetTokensHistorical) | **GET** /dapps/sushiswap/tokens/historical | Tokens (historical) 🔥
[**SushiswapGetTransactionsHistorical**](SushiswapApi.md#SushiswapGetTransactionsHistorical) | **GET** /dapps/sushiswap/transactions/historical | Transactions (historical) 🔥
[**SushiswapGetUsersHistorical**](SushiswapApi.md#SushiswapGetUsersHistorical) | **GET** /dapps/sushiswap/users/historical | Users (historical) 🔥


# **CurveGetExchangesCurrent**
> array[CurveExchangeDTO] CurveGetExchangesCurrent()

Exchanges (current) 🔥

Gets exchanges.

### Example
```R
library(openapi)

# Exchanges (current) 🔥
#

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CurveGetExchangesCurrent(data_file = "result.txt")
result <- api_instance$CurveGetExchangesCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[CurveExchangeDTO]**](Curve.ExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **DexGetTradesCurrent**
> array[DexTradeDTO] DexGetTradesCurrent()

Trades (current) 🔥

Gets trades.

### Example
```R
library(openapi)

# Trades (current) 🔥
#

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetTradesCurrent(data_file = "result.txt")
result <- api_instance$DexGetTradesCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[DexTradeDTO]**](Dex.TradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **SushiswapGetBundlesHistorical**
> array[SushiswapBundleDTO] SushiswapGetBundlesHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id)

Bundles (historical) 🔥

Gets bundles.

### Example
```R
library(openapi)

# Bundles (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (Optional)
var_end_block <- 56 # integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (Optional)
var_start_date <- "start_date_example" # character | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (Optional)
var_end_date <- "end_date_example" # character | The end date of timeframe. (Optional)
var_id <- "id_example" # character | Hardcoded to '1'. (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetBundlesHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_iddata_file = "result.txt")
result <- api_instance$SushiswapGetBundlesHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **integer**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **character**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **character**| The end date of timeframe. | [optional] 
 **id** | **character**| Hardcoded to &#39;1&#39;. | [optional] 

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
> array[SushiswapBurnDTO] SushiswapGetBurnsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id, pair = var.pair)

Burns (historical) 🔥

Gets burns.

### Example
```R
library(openapi)

# Burns (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_id <- "id_example" # character |  (Optional)
var_pair <- "pair_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetBurnsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, pair = var_pairdata_file = "result.txt")
result <- api_instance$SushiswapGetBurnsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, pair = var_pair)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 
 **id** | **character**|  | [optional] 
 **pair** | **character**|  | [optional] 

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

# **SushiswapGetDayDatasHistorical**
> array[SushiswapDayDataDTO] SushiswapGetDayDatasHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id)

DayDatas (historical) 🔥

Gets daydatas.

### Example
```R
library(openapi)

# DayDatas (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (Optional)
var_end_block <- 56 # integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (Optional)
var_start_date <- "start_date_example" # character | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (Optional)
var_end_date <- "end_date_example" # character | The end date of timeframe. (Optional)
var_id <- "id_example" # character | Unix timestamp for start of day / 86400 giving a unique day index. (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetDayDatasHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_iddata_file = "result.txt")
result <- api_instance$SushiswapGetDayDatasHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **integer**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **character**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **character**| The end date of timeframe. | [optional] 
 **id** | **character**| Unix timestamp for start of day / 86400 giving a unique day index. | [optional] 

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

# **SushiswapGetFactorysHistorical**
> array[SushiswapFactoryDTO] SushiswapGetFactorysHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id)

Factorys (historical) 🔥

Gets factorys.

### Example
```R
library(openapi)

# Factorys (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (Optional)
var_end_block <- 56 # integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (Optional)
var_start_date <- "start_date_example" # character | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (Optional)
var_end_date <- "end_date_example" # character | The end date of timeframe. (Optional)
var_id <- "id_example" # character | Factory address. (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetFactorysHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_iddata_file = "result.txt")
result <- api_instance$SushiswapGetFactorysHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **integer**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **character**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **character**| The end date of timeframe. | [optional] 
 **id** | **character**| Factory address. | [optional] 

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

# **SushiswapGetHourDatasHistorical**
> array[SushiswapHourDataDTO] SushiswapGetHourDatasHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id)

HourDatas (historical) 🔥

Gets hourdatas.

### Example
```R
library(openapi)

# HourDatas (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (Optional)
var_end_block <- 56 # integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (Optional)
var_start_date <- "start_date_example" # character | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (Optional)
var_end_date <- "end_date_example" # character | The end date of timeframe. (Optional)
var_id <- "id_example" # character | Start of hour timestamp. (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetHourDatasHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_iddata_file = "result.txt")
result <- api_instance$SushiswapGetHourDatasHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **integer**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **character**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **character**| The end date of timeframe. | [optional] 
 **id** | **character**| Start of hour timestamp. | [optional] 

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

# **SushiswapGetLiquidityPositionSnapshotsHistorical**
> array[SushiswapLiquidityPositionSnapshotDTO] SushiswapGetLiquidityPositionSnapshotsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id, user = var.user, pair = var.pair)

LiquidityPositionSnapshots (historical) 🔥

Gets liquiditypositionsnapshots.

### Example
```R
library(openapi)

# LiquidityPositionSnapshots (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_id <- "id_example" # character |  (Optional)
var_user <- "user_example" # character |  (Optional)
var_pair <- "pair_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetLiquidityPositionSnapshotsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, user = var_user, pair = var_pairdata_file = "result.txt")
result <- api_instance$SushiswapGetLiquidityPositionSnapshotsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, user = var_user, pair = var_pair)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 
 **id** | **character**|  | [optional] 
 **user** | **character**|  | [optional] 
 **pair** | **character**|  | [optional] 

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

# **SushiswapGetLiquidityPositionsHistorical**
> array[SushiswapLiquidityPositionDTO] SushiswapGetLiquidityPositionsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id, user = var.user, pair = var.pair)

LiquidityPositions (historical) 🔥

Gets liquiditypositions.

### Example
```R
library(openapi)

# LiquidityPositions (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_id <- "id_example" # character |  (Optional)
var_user <- "user_example" # character |  (Optional)
var_pair <- "pair_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetLiquidityPositionsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, user = var_user, pair = var_pairdata_file = "result.txt")
result <- api_instance$SushiswapGetLiquidityPositionsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, user = var_user, pair = var_pair)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 
 **id** | **character**|  | [optional] 
 **user** | **character**|  | [optional] 
 **pair** | **character**|  | [optional] 

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

# **SushiswapGetMintsHistorical**
> array[SushiswapMintDTO] SushiswapGetMintsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id, pair = var.pair)

Mints (historical) 🔥

Gets mints.

### Example
```R
library(openapi)

# Mints (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_id <- "id_example" # character |  (Optional)
var_pair <- "pair_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetMintsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, pair = var_pairdata_file = "result.txt")
result <- api_instance$SushiswapGetMintsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, pair = var_pair)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 
 **id** | **character**|  | [optional] 
 **pair** | **character**|  | [optional] 

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

# **SushiswapGetPairDayDatasHistorical**
> array[SushiswapPairDayDataDTO] SushiswapGetPairDayDatasHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id, pair = var.pair, token_0 = var.token_0, token_1 = var.token_1)

PairDayDatas (historical) 🔥

Gets pairdaydatas.

### Example
```R
library(openapi)

# PairDayDatas (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_id <- "id_example" # character |  (Optional)
var_pair <- "pair_example" # character |  (Optional)
var_token_0 <- "token_0_example" # character |  (Optional)
var_token_1 <- "token_1_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetPairDayDatasHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, pair = var_pair, token_0 = var_token_0, token_1 = var_token_1data_file = "result.txt")
result <- api_instance$SushiswapGetPairDayDatasHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, pair = var_pair, token_0 = var_token_0, token_1 = var_token_1)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 
 **id** | **character**|  | [optional] 
 **pair** | **character**|  | [optional] 
 **token_0** | **character**|  | [optional] 
 **token_1** | **character**|  | [optional] 

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

# **SushiswapGetPairHourDatasHistorical**
> array[SushiswapPairHourDataDTO] SushiswapGetPairHourDatasHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id, pair = var.pair)

PairHourDatas (historical) 🔥

Gets pairhourdatas.

### Example
```R
library(openapi)

# PairHourDatas (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_id <- "id_example" # character |  (Optional)
var_pair <- "pair_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetPairHourDatasHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, pair = var_pairdata_file = "result.txt")
result <- api_instance$SushiswapGetPairHourDatasHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, pair = var_pair)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 
 **id** | **character**|  | [optional] 
 **pair** | **character**|  | [optional] 

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

# **SushiswapGetPairsHistorical**
> array[SushiswapPairDTO] SushiswapGetPairsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id, name = var.name, token_0 = var.token_0, token_1 = var.token_1)

Pairs (historical) 🔥

Gets pairs.

### Example
```R
library(openapi)

# Pairs (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_id <- "id_example" # character |  (Optional)
var_name <- "name_example" # character |  (Optional)
var_token_0 <- "token_0_example" # character |  (Optional)
var_token_1 <- "token_1_example" # character |  (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetPairsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, name = var_name, token_0 = var_token_0, token_1 = var_token_1data_file = "result.txt")
result <- api_instance$SushiswapGetPairsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, name = var_name, token_0 = var_token_0, token_1 = var_token_1)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 
 **id** | **character**|  | [optional] 
 **name** | **character**|  | [optional] 
 **token_0** | **character**|  | [optional] 
 **token_1** | **character**|  | [optional] 

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

# **SushiswapGetPoolsCurrent**
> array[SushiswapPairDTO] SushiswapGetPoolsCurrent()

Pools (current) 🔥

Gets pools.

### Example
```R
library(openapi)

# Pools (current) 🔥
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

# **SushiswapGetSwapsCurrent**
> array[SushiswapSwapDTO] SushiswapGetSwapsCurrent()

Swaps (current) 🔥

Gets swaps.

### Example
```R
library(openapi)

# Swaps (current) 🔥
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
> array[SushiswapSwapDTO] SushiswapGetSwapsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id, pair = var.pair)

Swaps (historical) 🔥

Gets swaps.

### Example
```R
library(openapi)

# Swaps (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (Optional)
var_end_block <- 56 # integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (Optional)
var_start_date <- "start_date_example" # character | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (Optional)
var_end_date <- "end_date_example" # character | The end date of timeframe. (Optional)
var_id <- "id_example" # character | Transaction hash plus index in Transaction swap array. (Optional)
var_pair <- "pair_example" # character | Reference to pair. (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetSwapsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, pair = var_pairdata_file = "result.txt")
result <- api_instance$SushiswapGetSwapsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, pair = var_pair)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **integer**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **character**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **character**| The end date of timeframe. | [optional] 
 **id** | **character**| Transaction hash plus index in Transaction swap array. | [optional] 
 **pair** | **character**| Reference to pair. | [optional] 

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

# **SushiswapGetTokenDayDatasHistorical**
> array[SushiswapTokenDayDataDTO] SushiswapGetTokenDayDatasHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id)

TokenDayDatas (historical) 🔥

Gets tokendaydatas.

### Example
```R
library(openapi)

# TokenDayDatas (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (Optional)
var_end_block <- 56 # integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (Optional)
var_start_date <- "start_date_example" # character | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (Optional)
var_end_date <- "end_date_example" # character | The end date of timeframe. (Optional)
var_id <- "id_example" # character | Identifier, day start timestamp in unix / 86400. (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetTokenDayDatasHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_iddata_file = "result.txt")
result <- api_instance$SushiswapGetTokenDayDatasHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **integer**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **character**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **character**| The end date of timeframe. | [optional] 
 **id** | **character**| Identifier, day start timestamp in unix / 86400. | [optional] 

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

# **SushiswapGetTokensCurrent**
> array[SushiswapTokenDTO] SushiswapGetTokensCurrent()

Tokens (current) 🔥

Gets tokens.

### Example
```R
library(openapi)

# Tokens (current) 🔥
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

# **SushiswapGetTokensHistorical**
> array[SushiswapTokenDTO] SushiswapGetTokensHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id, symbol = var.symbol, name = var.name)

Tokens (historical) 🔥

Gets tokens.

### Example
```R
library(openapi)

# Tokens (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (Optional)
var_end_block <- 56 # integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (Optional)
var_start_date <- "start_date_example" # character | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (Optional)
var_end_date <- "end_date_example" # character | The end date of timeframe. (Optional)
var_id <- "id_example" # character | Token address. (Optional)
var_symbol <- "symbol_example" # character | Token symbol. (Optional)
var_name <- "name_example" # character | Token name. (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetTokensHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, symbol = var_symbol, name = var_namedata_file = "result.txt")
result <- api_instance$SushiswapGetTokensHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, symbol = var_symbol, name = var_name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **integer**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **character**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **character**| The end date of timeframe. | [optional] 
 **id** | **character**| Token address. | [optional] 
 **symbol** | **character**| Token symbol. | [optional] 
 **name** | **character**| Token name. | [optional] 

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
> array[SushiswapTransactionDTO] SushiswapGetTransactionsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id)

Transactions (historical) 🔥

Gets transactions.

### Example
```R
library(openapi)

# Transactions (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (Optional)
var_end_block <- 56 # integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (Optional)
var_start_date <- "start_date_example" # character | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (Optional)
var_end_date <- "end_date_example" # character | The end date of timeframe. (Optional)
var_id <- "id_example" # character | Ethereum transaction hash. (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetTransactionsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_iddata_file = "result.txt")
result <- api_instance$SushiswapGetTransactionsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **integer**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **character**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **character**| The end date of timeframe. | [optional] 
 **id** | **character**| Ethereum transaction hash. | [optional] 

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
> array[SushiswapUserDTO] SushiswapGetUsersHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id)

Users (historical) 🔥

Gets users.

### Example
```R
library(openapi)

# Users (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (Optional)
var_end_block <- 56 # integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (Optional)
var_start_date <- "start_date_example" # character | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (Optional)
var_end_date <- "end_date_example" # character | The end date of timeframe. (Optional)
var_id <- "id_example" # character | User address. (Optional)

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetUsersHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_iddata_file = "result.txt")
result <- api_instance$SushiswapGetUsersHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **integer**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **character**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **character**| The end date of timeframe. | [optional] 
 **id** | **character**| User address. | [optional] 

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

