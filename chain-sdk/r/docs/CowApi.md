# CowApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CowGetOrderDTOsHistorical**](CowApi.md#CowGetOrderDTOsHistorical) | **GET** /dapps/cow/OrderDTOs/historical | OrderDTOs (historical) 🔥
[**CowGetOrdersHistorical**](CowApi.md#CowGetOrdersHistorical) | **GET** /dapps/cow/orders/historical | Orders (historical)
[**CowGetSettlementDTOsHistorical**](CowApi.md#CowGetSettlementDTOsHistorical) | **GET** /dapps/cow/SettlementDTOs/historical | SettlementDTOs (historical) 🔥
[**CowGetSettlementsHistorical**](CowApi.md#CowGetSettlementsHistorical) | **GET** /dapps/cow/settlements/historical | Settlements (historical)
[**CowGetTokenDTOsHistorical**](CowApi.md#CowGetTokenDTOsHistorical) | **GET** /dapps/cow/TokenDTOs/historical | TokenDTOs (historical) 🔥
[**CowGetTokensHistorical**](CowApi.md#CowGetTokensHistorical) | **GET** /dapps/cow/tokens/historical | Tokens (historical) 🔥
[**CowGetTradeDTOsHistorical**](CowApi.md#CowGetTradeDTOsHistorical) | **GET** /dapps/cow/TradeDTOs/historical | TradeDTOs (historical) 🔥
[**CowGetTradesHistorical**](CowApi.md#CowGetTradesHistorical) | **GET** /dapps/cow/trades/historical | Trades (historical) 🔥
[**CowGetUserDTOsHistorical**](CowApi.md#CowGetUserDTOsHistorical) | **GET** /dapps/cow/UserDTOs/historical | UserDTOs (historical) 🔥
[**CowGetUsersHistorical**](CowApi.md#CowGetUsersHistorical) | **GET** /dapps/cow/users/historical | Users (historical)


# **CowGetOrderDTOsHistorical**
> array[CowOrderDTO] CowGetOrderDTOsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

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

api_instance <- CowApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CowGetOrderDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$CowGetOrderDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

[**array[CowOrderDTO]**](Cow.OrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CowGetOrdersHistorical**
> array[CowOrderDTO] CowGetOrdersHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)

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

api_instance <- CowApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CowGetOrdersHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_datedata_file = "result.txt")
result <- api_instance$CowGetOrdersHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
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

[**array[CowOrderDTO]**](Cow.OrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CowGetSettlementDTOsHistorical**
> array[CowSettlementDTO] CowGetSettlementDTOsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

SettlementDTOs (historical) 🔥

Gets SettlementDTOs.

### Example
```R
library(openapi)

# SettlementDTOs (historical) 🔥
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)
var_pool_id <- "pool_id_example" # character |  (Optional)

api_instance <- CowApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CowGetSettlementDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$CowGetSettlementDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

[**array[CowSettlementDTO]**](Cow.SettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CowGetSettlementsHistorical**
> array[CowSettlementDTO] CowGetSettlementsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)

Settlements (historical)

Gets settlements.

### Example
```R
library(openapi)

# Settlements (historical)
#
# prepare function argument(s)
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)

api_instance <- CowApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CowGetSettlementsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_datedata_file = "result.txt")
result <- api_instance$CowGetSettlementsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
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

[**array[CowSettlementDTO]**](Cow.SettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CowGetTokenDTOsHistorical**
> array[CowTokenDTO] CowGetTokenDTOsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

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

api_instance <- CowApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CowGetTokenDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$CowGetTokenDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

[**array[CowTokenDTO]**](Cow.TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CowGetTokensHistorical**
> array[CowTokenDTO] CowGetTokensHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, token_id = var.token_id)

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

api_instance <- CowApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CowGetTokensHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_iddata_file = "result.txt")
result <- api_instance$CowGetTokensHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, token_id = var_token_id)
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

[**array[CowTokenDTO]**](Cow.TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CowGetTradeDTOsHistorical**
> array[CowTradeDTO] CowGetTradeDTOsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

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

api_instance <- CowApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CowGetTradeDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$CowGetTradeDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

[**array[CowTradeDTO]**](Cow.TradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CowGetTradesHistorical**
> array[CowTradeDTO] CowGetTradesHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)

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

api_instance <- CowApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CowGetTradesHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_datedata_file = "result.txt")
result <- api_instance$CowGetTradesHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
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

[**array[CowTradeDTO]**](Cow.TradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CowGetUserDTOsHistorical**
> array[CowUserDTO] CowGetUserDTOsHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date, pool_id = var.pool_id)

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

api_instance <- CowApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CowGetUserDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_iddata_file = "result.txt")
result <- api_instance$CowGetUserDTOsHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date, pool_id = var_pool_id)
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

[**array[CowUserDTO]**](Cow.UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **CowGetUsersHistorical**
> array[CowUserDTO] CowGetUsersHistorical(start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)

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

api_instance <- CowApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CowGetUsersHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_datedata_file = "result.txt")
result <- api_instance$CowGetUsersHistorical(start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
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

[**array[CowUserDTO]**](Cow.UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

