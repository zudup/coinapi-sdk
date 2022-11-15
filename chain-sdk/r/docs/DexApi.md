# DexApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DexGetBatchDTOsHistorical**](DexApi.md#DexGetBatchDTOsHistorical) | **GET** /dapps/dex/BatchDTOs/historical | BatchDTOs (historical) 🔥
[**DexGetBatchesHistorical**](DexApi.md#DexGetBatchesHistorical) | **GET** /dapps/dex/batches/historical | Batches (historical)
[**DexGetDepositDTOsHistorical**](DexApi.md#DexGetDepositDTOsHistorical) | **GET** /dapps/dex/DepositDTOs/historical | DepositDTOs (historical) 🔥
[**DexGetDepositsHistorical**](DexApi.md#DexGetDepositsHistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical)
[**DexGetOrderDTOsHistorical**](DexApi.md#DexGetOrderDTOsHistorical) | **GET** /dapps/dex/OrderDTOs/historical | OrderDTOs (historical) 🔥
[**DexGetOrdersHistorical**](DexApi.md#DexGetOrdersHistorical) | **GET** /dapps/dex/orders/historical | Orders (historical)
[**DexGetPriceDTOsHistorical**](DexApi.md#DexGetPriceDTOsHistorical) | **GET** /dapps/dex/PriceDTOs/historical | PriceDTOs (historical) 🔥
[**DexGetPricesHistorical**](DexApi.md#DexGetPricesHistorical) | **GET** /dapps/dex/prices/historical | Prices (historical)
[**DexGetSolutionDTOsHistorical**](DexApi.md#DexGetSolutionDTOsHistorical) | **GET** /dapps/dex/SolutionDTOs/historical | SolutionDTOs (historical) 🔥
[**DexGetSolutionsHistorical**](DexApi.md#DexGetSolutionsHistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical)
[**DexGetStatsDTOsHistorical**](DexApi.md#DexGetStatsDTOsHistorical) | **GET** /dapps/dex/StatsDTOs/historical | StatsDTOs (historical) 🔥
[**DexGetStatsHistorical**](DexApi.md#DexGetStatsHistorical) | **GET** /dapps/dex/stats/historical | Stats (historical)
[**DexGetTokenDTOsHistorical**](DexApi.md#DexGetTokenDTOsHistorical) | **GET** /dapps/dex/TokenDTOs/historical | TokenDTOs (historical) 🔥
[**DexGetTokensHistorical**](DexApi.md#DexGetTokensHistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical) 🔥
[**DexGetTradeDTOsHistorical**](DexApi.md#DexGetTradeDTOsHistorical) | **GET** /dapps/dex/TradeDTOs/historical | TradeDTOs (historical) 🔥
[**DexGetTradesHistorical**](DexApi.md#DexGetTradesHistorical) | **GET** /dapps/dex/trades/historical | Trades (historical) 🔥
[**DexGetUserDTOsHistorical**](DexApi.md#DexGetUserDTOsHistorical) | **GET** /dapps/dex/UserDTOs/historical | UserDTOs (historical) 🔥
[**DexGetUsersHistorical**](DexApi.md#DexGetUsersHistorical) | **GET** /dapps/dex/users/historical | Users (historical)
[**DexGetWithdrawDTOsHistorical**](DexApi.md#DexGetWithdrawDTOsHistorical) | **GET** /dapps/dex/WithdrawDTOs/historical | WithdrawDTOs (historical) 🔥
[**DexGetWithdrawRequestDTOsHistorical**](DexApi.md#DexGetWithdrawRequestDTOsHistorical) | **GET** /dapps/dex/WithdrawRequestDTOs/historical | WithdrawRequestDTOs (historical) 🔥
[**DexGetWithdrawsHistorical**](DexApi.md#DexGetWithdrawsHistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical)
[**DexGetWithdrawsRequestsHistorical**](DexApi.md#DexGetWithdrawsRequestsHistorical) | **GET** /dapps/dex/withdrawsRequests/historical | WithdrawsRequests (historical)


# **DexGetBatchDTOsHistorical**
> array[DexBatchDTO] DexGetBatchDTOsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

BatchDTOs (historical) 🔥

Gets BatchDTOs.

### Example
```R
library(openapi)

# BatchDTOs (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetBatchDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$DexGetBatchDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

# **DexGetBatchesHistorical**
> array[DexBatchDTO] DexGetBatchesHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)

Batches (historical)

Gets batches.

### Example
```R
library(openapi)

# Batches (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetBatchesHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_datedata_file = "result.txt")
result <- api_instance$DexGetBatchesHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
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

# **DexGetDepositDTOsHistorical**
> array[DexDepositDTO] DexGetDepositDTOsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

DepositDTOs (historical) 🔥

Gets DepositDTOs.

### Example
```R
library(openapi)

# DepositDTOs (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetDepositDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$DexGetDepositDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

# **DexGetDepositsHistorical**
> array[DexDepositDTO] DexGetDepositsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, token_id = var.token_id)

Deposits (historical)

Gets deposits.

### Example
```R
library(openapi)

# Deposits (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_token_id <- "token_id_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetDepositsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_iddata_file = "result.txt")
result <- api_instance$DexGetDepositsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_id)
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

# **DexGetOrderDTOsHistorical**
> array[DexOrderDTO] DexGetOrderDTOsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

OrderDTOs (historical) 🔥

Gets OrderDTOs.

### Example
```R
library(openapi)

# OrderDTOs (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetOrderDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$DexGetOrderDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

# **DexGetOrdersHistorical**
> array[DexOrderDTO] DexGetOrdersHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, token_id = var.token_id)

Orders (historical)

Gets orders.

### Example
```R
library(openapi)

# Orders (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_token_id <- "token_id_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetOrdersHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_iddata_file = "result.txt")
result <- api_instance$DexGetOrdersHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_id)
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

# **DexGetPriceDTOsHistorical**
> array[DexPriceDTO] DexGetPriceDTOsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

PriceDTOs (historical) 🔥

Gets PriceDTOs.

### Example
```R
library(openapi)

# PriceDTOs (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetPriceDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$DexGetPriceDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

# **DexGetPricesHistorical**
> array[DexPriceDTO] DexGetPricesHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, token_id = var.token_id)

Prices (historical)

Gets prices.

### Example
```R
library(openapi)

# Prices (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_token_id <- "token_id_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetPricesHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_iddata_file = "result.txt")
result <- api_instance$DexGetPricesHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_id)
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

# **DexGetSolutionDTOsHistorical**
> array[DexSolutionDTO] DexGetSolutionDTOsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

SolutionDTOs (historical) 🔥

Gets SolutionDTOs.

### Example
```R
library(openapi)

# SolutionDTOs (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetSolutionDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$DexGetSolutionDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

# **DexGetSolutionsHistorical**
> array[DexSolutionDTO] DexGetSolutionsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, token_id = var.token_id)

Solutions (historical)

Gets solutions.

### Example
```R
library(openapi)

# Solutions (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_token_id <- "token_id_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetSolutionsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_iddata_file = "result.txt")
result <- api_instance$DexGetSolutionsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_id)
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

# **DexGetStatsDTOsHistorical**
> array[DexStatsDTO] DexGetStatsDTOsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

StatsDTOs (historical) 🔥

Gets StatsDTOs.

### Example
```R
library(openapi)

# StatsDTOs (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetStatsDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$DexGetStatsDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

# **DexGetStatsHistorical**
> array[DexStatsDTO] DexGetStatsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)

Stats (historical)

Gets stats.

### Example
```R
library(openapi)

# Stats (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetStatsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_datedata_file = "result.txt")
result <- api_instance$DexGetStatsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
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

# **DexGetTokenDTOsHistorical**
> array[DexTokenDTO] DexGetTokenDTOsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

TokenDTOs (historical) 🔥

Gets TokenDTOs.

### Example
```R
library(openapi)

# TokenDTOs (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetTokenDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$DexGetTokenDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

# **DexGetTokensHistorical**
> array[DexTokenDTO] DexGetTokensHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, token_id = var.token_id)

Tokens (historical) 🔥

Gets tokens.

### Example
```R
library(openapi)

# Tokens (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_token_id <- "token_id_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetTokensHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_iddata_file = "result.txt")
result <- api_instance$DexGetTokensHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_id)
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

# **DexGetTradeDTOsHistorical**
> array[DexTradeDTO] DexGetTradeDTOsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

TradeDTOs (historical) 🔥

Gets TradeDTOs.

### Example
```R
library(openapi)

# TradeDTOs (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetTradeDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$DexGetTradeDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

# **DexGetTradesHistorical**
> array[DexTradeDTO] DexGetTradesHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)

Trades (historical) 🔥

Gets trades.

### Example
```R
library(openapi)

# Trades (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetTradesHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_datedata_file = "result.txt")
result <- api_instance$DexGetTradesHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
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

# **DexGetUserDTOsHistorical**
> array[DexUserDTO] DexGetUserDTOsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

UserDTOs (historical) 🔥

Gets UserDTOs.

### Example
```R
library(openapi)

# UserDTOs (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetUserDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$DexGetUserDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

# **DexGetUsersHistorical**
> array[DexUserDTO] DexGetUsersHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)

Users (historical)

Gets users.

### Example
```R
library(openapi)

# Users (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetUsersHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_datedata_file = "result.txt")
result <- api_instance$DexGetUsersHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
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

# **DexGetWithdrawDTOsHistorical**
> array[DexWithdrawDTO] DexGetWithdrawDTOsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

WithdrawDTOs (historical) 🔥

Gets WithdrawDTOs.

### Example
```R
library(openapi)

# WithdrawDTOs (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetWithdrawDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$DexGetWithdrawDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

# **DexGetWithdrawRequestDTOsHistorical**
> array[DexWithdrawRequestDTO] DexGetWithdrawRequestDTOsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

WithdrawRequestDTOs (historical) 🔥

Gets WithdrawRequestDTOs.

### Example
```R
library(openapi)

# WithdrawRequestDTOs (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetWithdrawRequestDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$DexGetWithdrawRequestDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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
> array[DexWithdrawDTO] DexGetWithdrawsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, token_id = var.token_id)

Withdraws (historical)

Gets withdraws.

### Example
```R
library(openapi)

# Withdraws (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_token_id <- "token_id_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetWithdrawsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_iddata_file = "result.txt")
result <- api_instance$DexGetWithdrawsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_id)
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

# **DexGetWithdrawsRequestsHistorical**
> array[DexWithdrawRequestDTO] DexGetWithdrawsRequestsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, token_id = var.token_id)

WithdrawsRequests (historical)

Gets withdraws requests.

### Example
```R
library(openapi)

# WithdrawsRequests (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_token_id <- "token_id_example" # character |  (Optional)

api_instance <- DexApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetWithdrawsRequestsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_iddata_file = "result.txt")
result <- api_instance$DexGetWithdrawsRequestsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_id)
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

