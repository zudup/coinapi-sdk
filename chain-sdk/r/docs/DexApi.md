# DexApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DexBatchsCurrent**](DexApi.md#DexBatchsCurrent) | **GET** /dapps/dex/batchs/current | Batchs (current)
[**DexDepositsCurrent**](DexApi.md#DexDepositsCurrent) | **GET** /dapps/dex/deposits/current | Deposits (current)
[**DexGetBatchsHistorical**](DexApi.md#DexGetBatchsHistorical) | **GET** /dapps/dex/batchs/historical | Batchs (historical) 🔥
[**DexGetDepositsHistorical**](DexApi.md#DexGetDepositsHistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical) 🔥
[**DexGetOrdersHistorical**](DexApi.md#DexGetOrdersHistorical) | **GET** /dapps/dex/orders/historical | Orders (historical) 🔥
[**DexGetPricesHistorical**](DexApi.md#DexGetPricesHistorical) | **GET** /dapps/dex/prices/historical | Prices (historical) 🔥
[**DexGetSolutionsHistorical**](DexApi.md#DexGetSolutionsHistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical) 🔥
[**DexGetStatssHistorical**](DexApi.md#DexGetStatssHistorical) | **GET** /dapps/dex/statss/historical | Statss (historical) 🔥
[**DexGetTokensHistorical**](DexApi.md#DexGetTokensHistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical) 🔥
[**DexGetTradesHistorical**](DexApi.md#DexGetTradesHistorical) | **GET** /dapps/dex/trades/historical | Trades (historical) 🔥
[**DexGetUsersHistorical**](DexApi.md#DexGetUsersHistorical) | **GET** /dapps/dex/users/historical | Users (historical) 🔥
[**DexGetWithdrawRequestsHistorical**](DexApi.md#DexGetWithdrawRequestsHistorical) | **GET** /dapps/dex/withdrawRequests/historical | WithdrawRequests (historical) 🔥
[**DexGetWithdrawsHistorical**](DexApi.md#DexGetWithdrawsHistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical) 🔥
[**DexOrdersCurrent**](DexApi.md#DexOrdersCurrent) | **GET** /dapps/dex/orders/current | Orders (current)
[**DexPricesCurrent**](DexApi.md#DexPricesCurrent) | **GET** /dapps/dex/prices/current | Prices (current)
[**DexSolutionsCurrent**](DexApi.md#DexSolutionsCurrent) | **GET** /dapps/dex/solutions/current | Solutions (current)
[**DexStatssCurrent**](DexApi.md#DexStatssCurrent) | **GET** /dapps/dex/statss/current | Statss (current)
[**DexTokensCurrent**](DexApi.md#DexTokensCurrent) | **GET** /dapps/dex/tokens/current | Tokens (current)
[**DexTradesCurrent**](DexApi.md#DexTradesCurrent) | **GET** /dapps/dex/trades/current | Trades (current)
[**DexUsersCurrent**](DexApi.md#DexUsersCurrent) | **GET** /dapps/dex/users/current | Users (current)
[**DexWithdrawRequestsCurrent**](DexApi.md#DexWithdrawRequestsCurrent) | **GET** /dapps/dex/withdrawRequests/current | WithdrawRequests (current)
[**DexWithdrawsCurrent**](DexApi.md#DexWithdrawsCurrent) | **GET** /dapps/dex/withdraws/current | Withdraws (current)


# **DexBatchsCurrent**
> array[DexBatchDTO] DexBatchsCurrent()

Batchs (current)

Gets batchs.

### Example
```R
library(openapi)

# Batchs (current)
#

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexBatchsCurrent(data_file = "result.txt")
result <- api_instance$DexBatchsCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[DexBatchDTO]**](Dex.BatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **DexDepositsCurrent**
> array[DexDepositDTO] DexDepositsCurrent()

Deposits (current)

Gets deposits.

### Example
```R
library(openapi)

# Deposits (current)
#

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexDepositsCurrent(data_file = "result.txt")
result <- api_instance$DexDepositsCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[DexDepositDTO]**](Dex.DepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **DexGetBatchsHistorical**
> array[DexBatchDTO] DexGetBatchsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id)

Batchs (historical) 🔥

Gets batchs.

### Example
```R
library(openapi)

# Batchs (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (Optional)
var_end_block <- 56 # integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (Optional)
var_start_date <- "start_date_example" # character | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (Optional)
var_end_date <- "end_date_example" # character | The end date of timeframe. (Optional)
var_id <- "id_example" # character | Identifier. (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetBatchsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_iddata_file = "result.txt")
result <- api_instance$DexGetBatchsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **integer**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **character**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **character**| The end date of timeframe. | [optional] 
 **id** | **character**| Identifier. | [optional] 

### Return type

[**array[DexBatchDTO]**](Dex.BatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **DexGetDepositsHistorical**
> array[DexDepositDTO] DexGetDepositsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id, user = var.user)

Deposits (historical) 🔥

Gets deposits.

### Example
```R
library(openapi)

# Deposits (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_id <- "id_example" # character |  (Optional)
var_user <- "user_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetDepositsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, user = var_userdata_file = "result.txt")
result <- api_instance$DexGetDepositsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, user = var_user)
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

### Return type

[**array[DexDepositDTO]**](Dex.DepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **DexGetOrdersHistorical**
> array[DexOrderDTO] DexGetOrdersHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id, buy_token = var.buy_token, sell_token = var.sell_token)

Orders (historical) 🔥

Gets orders.

### Example
```R
library(openapi)

# Orders (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_id <- "id_example" # character |  (Optional)
var_buy_token <- "buy_token_example" # character |  (Optional)
var_sell_token <- "sell_token_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetOrdersHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, buy_token = var_buy_token, sell_token = var_sell_tokendata_file = "result.txt")
result <- api_instance$DexGetOrdersHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, buy_token = var_buy_token, sell_token = var_sell_token)
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
 **buy_token** | **character**|  | [optional] 
 **sell_token** | **character**|  | [optional] 

### Return type

[**array[DexOrderDTO]**](Dex.OrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **DexGetPricesHistorical**
> array[DexPriceDTO] DexGetPricesHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id)

Prices (historical) 🔥

Gets prices.

### Example
```R
library(openapi)

# Prices (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_id <- "id_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetPricesHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_iddata_file = "result.txt")
result <- api_instance$DexGetPricesHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id)
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

### Return type

[**array[DexPriceDTO]**](Dex.PriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **DexGetSolutionsHistorical**
> array[DexSolutionDTO] DexGetSolutionsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id)

Solutions (historical) 🔥

Gets solutions.

### Example
```R
library(openapi)

# Solutions (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (Optional)
var_end_block <- 56 # integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (Optional)
var_start_date <- "start_date_example" # character | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (Optional)
var_end_date <- "end_date_example" # character | The end date of timeframe. (Optional)
var_id <- "id_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetSolutionsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_iddata_file = "result.txt")
result <- api_instance$DexGetSolutionsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **integer**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **character**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **character**| The end date of timeframe. | [optional] 
 **id** | **character**|  | [optional] 

### Return type

[**array[DexSolutionDTO]**](Dex.SolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **DexGetStatssHistorical**
> array[DexStatsDTO] DexGetStatssHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id)

Statss (historical) 🔥

Gets statss.

### Example
```R
library(openapi)

# Statss (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (Optional)
var_end_block <- 56 # integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (Optional)
var_start_date <- "start_date_example" # character | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (Optional)
var_end_date <- "end_date_example" # character | The end date of timeframe. (Optional)
var_id <- "id_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetStatssHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_iddata_file = "result.txt")
result <- api_instance$DexGetStatssHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **integer**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **character**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **character**| The end date of timeframe. | [optional] 
 **id** | **character**|  | [optional] 

### Return type

[**array[DexStatsDTO]**](Dex.StatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **DexGetTokensHistorical**
> array[DexTokenDTO] DexGetTokensHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id, address = var.address, symbol = var.symbol, name = var.name)

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
var_id <- "id_example" # character |  (Optional)
var_address <- "address_example" # character |  (Optional)
var_symbol <- "symbol_example" # character |  (Optional)
var_name <- "name_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetTokensHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, address = var_address, symbol = var_symbol, name = var_namedata_file = "result.txt")
result <- api_instance$DexGetTokensHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, address = var_address, symbol = var_symbol, name = var_name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **integer**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **character**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **character**| The end date of timeframe. | [optional] 
 **id** | **character**|  | [optional] 
 **address** | **character**|  | [optional] 
 **symbol** | **character**|  | [optional] 
 **name** | **character**|  | [optional] 

### Return type

[**array[DexTokenDTO]**](Dex.TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **DexGetTradesHistorical**
> array[DexTradeDTO] DexGetTradesHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id, buy_token = var.buy_token, sell_token = var.sell_token)

Trades (historical) 🔥

Gets trades.

### Example
```R
library(openapi)

# Trades (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (Optional)
var_end_block <- 56 # integer | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (Optional)
var_start_date <- "start_date_example" # character | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (Optional)
var_end_date <- "end_date_example" # character | The end date of timeframe. (Optional)
var_id <- "id_example" # character |  (Optional)
var_buy_token <- "buy_token_example" # character |  (Optional)
var_sell_token <- "sell_token_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetTradesHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, buy_token = var_buy_token, sell_token = var_sell_tokendata_file = "result.txt")
result <- api_instance$DexGetTradesHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, buy_token = var_buy_token, sell_token = var_sell_token)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **integer**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **character**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **character**| The end date of timeframe. | [optional] 
 **id** | **character**|  | [optional] 
 **buy_token** | **character**|  | [optional] 
 **sell_token** | **character**|  | [optional] 

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

# **DexGetUsersHistorical**
> array[DexUserDTO] DexGetUsersHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id)

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
var_id <- "id_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetUsersHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_iddata_file = "result.txt")
result <- api_instance$DexGetUsersHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **integer**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **integer**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **character**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **character**| The end date of timeframe. | [optional] 
 **id** | **character**|  | [optional] 

### Return type

[**array[DexUserDTO]**](Dex.UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **DexGetWithdrawRequestsHistorical**
> array[DexWithdrawRequestDTO] DexGetWithdrawRequestsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id, user = var.user)

WithdrawRequests (historical) 🔥

Gets withdrawRequests.

### Example
```R
library(openapi)

# WithdrawRequests (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_id <- "id_example" # character |  (Optional)
var_user <- "user_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetWithdrawRequestsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, user = var_userdata_file = "result.txt")
result <- api_instance$DexGetWithdrawRequestsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, user = var_user)
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

### Return type

[**array[DexWithdrawRequestDTO]**](Dex.WithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **DexGetWithdrawsHistorical**
> array[DexWithdrawDTO] DexGetWithdrawsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, id = var.id, user = var.user)

Withdraws (historical) 🔥

Gets withdraws.

### Example
```R
library(openapi)

# Withdraws (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_id <- "id_example" # character |  (Optional)
var_user <- "user_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetWithdrawsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, user = var_userdata_file = "result.txt")
result <- api_instance$DexGetWithdrawsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, id = var_id, user = var_user)
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

### Return type

[**array[DexWithdrawDTO]**](Dex.WithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **DexOrdersCurrent**
> array[DexOrderDTO] DexOrdersCurrent()

Orders (current)

Gets orders.

### Example
```R
library(openapi)

# Orders (current)
#

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexOrdersCurrent(data_file = "result.txt")
result <- api_instance$DexOrdersCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[DexOrderDTO]**](Dex.OrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **DexPricesCurrent**
> array[DexPriceDTO] DexPricesCurrent()

Prices (current)

Gets prices.

### Example
```R
library(openapi)

# Prices (current)
#

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexPricesCurrent(data_file = "result.txt")
result <- api_instance$DexPricesCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[DexPriceDTO]**](Dex.PriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **DexSolutionsCurrent**
> array[DexSolutionDTO] DexSolutionsCurrent()

Solutions (current)

Gets solutions.

### Example
```R
library(openapi)

# Solutions (current)
#

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexSolutionsCurrent(data_file = "result.txt")
result <- api_instance$DexSolutionsCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[DexSolutionDTO]**](Dex.SolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **DexStatssCurrent**
> array[DexStatsDTO] DexStatssCurrent()

Statss (current)

Gets statss.

### Example
```R
library(openapi)

# Statss (current)
#

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexStatssCurrent(data_file = "result.txt")
result <- api_instance$DexStatssCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[DexStatsDTO]**](Dex.StatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **DexTokensCurrent**
> array[DexTokenDTO] DexTokensCurrent()

Tokens (current)

Gets tokens.

### Example
```R
library(openapi)

# Tokens (current)
#

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexTokensCurrent(data_file = "result.txt")
result <- api_instance$DexTokensCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[DexTokenDTO]**](Dex.TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **DexTradesCurrent**
> array[DexTradeDTO] DexTradesCurrent()

Trades (current)

Gets trades.

### Example
```R
library(openapi)

# Trades (current)
#

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexTradesCurrent(data_file = "result.txt")
result <- api_instance$DexTradesCurrent()
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

# **DexUsersCurrent**
> array[DexUserDTO] DexUsersCurrent()

Users (current)

Gets users.

### Example
```R
library(openapi)

# Users (current)
#

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexUsersCurrent(data_file = "result.txt")
result <- api_instance$DexUsersCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[DexUserDTO]**](Dex.UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **DexWithdrawRequestsCurrent**
> array[DexWithdrawRequestDTO] DexWithdrawRequestsCurrent()

WithdrawRequests (current)

Gets withdrawRequests.

### Example
```R
library(openapi)

# WithdrawRequests (current)
#

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexWithdrawRequestsCurrent(data_file = "result.txt")
result <- api_instance$DexWithdrawRequestsCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[DexWithdrawRequestDTO]**](Dex.WithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **DexWithdrawsCurrent**
> array[DexWithdrawDTO] DexWithdrawsCurrent()

Withdraws (current)

Gets withdraws.

### Example
```R
library(openapi)

# Withdraws (current)
#

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexWithdrawsCurrent(data_file = "result.txt")
result <- api_instance$DexWithdrawsCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[DexWithdrawDTO]**](Dex.WithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

