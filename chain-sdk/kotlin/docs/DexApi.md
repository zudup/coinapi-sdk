# DexApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dexGetBatchDTOsHistorical**](DexApi.md#dexGetBatchDTOsHistorical) | **GET** /dapps/dex/BatchDTOs/historical | BatchDTOs (historical) 🔥
[**dexGetBatchesHistorical**](DexApi.md#dexGetBatchesHistorical) | **GET** /dapps/dex/batches/historical | Batches (historical)
[**dexGetDepositDTOsHistorical**](DexApi.md#dexGetDepositDTOsHistorical) | **GET** /dapps/dex/DepositDTOs/historical | DepositDTOs (historical) 🔥
[**dexGetDepositsHistorical**](DexApi.md#dexGetDepositsHistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical)
[**dexGetOrderDTOsHistorical**](DexApi.md#dexGetOrderDTOsHistorical) | **GET** /dapps/dex/OrderDTOs/historical | OrderDTOs (historical) 🔥
[**dexGetOrdersHistorical**](DexApi.md#dexGetOrdersHistorical) | **GET** /dapps/dex/orders/historical | Orders (historical)
[**dexGetPriceDTOsHistorical**](DexApi.md#dexGetPriceDTOsHistorical) | **GET** /dapps/dex/PriceDTOs/historical | PriceDTOs (historical) 🔥
[**dexGetPricesHistorical**](DexApi.md#dexGetPricesHistorical) | **GET** /dapps/dex/prices/historical | Prices (historical)
[**dexGetSolutionDTOsHistorical**](DexApi.md#dexGetSolutionDTOsHistorical) | **GET** /dapps/dex/SolutionDTOs/historical | SolutionDTOs (historical) 🔥
[**dexGetSolutionsHistorical**](DexApi.md#dexGetSolutionsHistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical)
[**dexGetStatsDTOsHistorical**](DexApi.md#dexGetStatsDTOsHistorical) | **GET** /dapps/dex/StatsDTOs/historical | StatsDTOs (historical) 🔥
[**dexGetStatsHistorical**](DexApi.md#dexGetStatsHistorical) | **GET** /dapps/dex/stats/historical | Stats (historical)
[**dexGetTokenDTOsHistorical**](DexApi.md#dexGetTokenDTOsHistorical) | **GET** /dapps/dex/TokenDTOs/historical | TokenDTOs (historical) 🔥
[**dexGetTokensHistorical**](DexApi.md#dexGetTokensHistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical) 🔥
[**dexGetTradeDTOsHistorical**](DexApi.md#dexGetTradeDTOsHistorical) | **GET** /dapps/dex/TradeDTOs/historical | TradeDTOs (historical) 🔥
[**dexGetTradesHistorical**](DexApi.md#dexGetTradesHistorical) | **GET** /dapps/dex/trades/historical | Trades (historical) 🔥
[**dexGetUserDTOsHistorical**](DexApi.md#dexGetUserDTOsHistorical) | **GET** /dapps/dex/UserDTOs/historical | UserDTOs (historical) 🔥
[**dexGetUsersHistorical**](DexApi.md#dexGetUsersHistorical) | **GET** /dapps/dex/users/historical | Users (historical)
[**dexGetWithdrawDTOsHistorical**](DexApi.md#dexGetWithdrawDTOsHistorical) | **GET** /dapps/dex/WithdrawDTOs/historical | WithdrawDTOs (historical) 🔥
[**dexGetWithdrawRequestDTOsHistorical**](DexApi.md#dexGetWithdrawRequestDTOsHistorical) | **GET** /dapps/dex/WithdrawRequestDTOs/historical | WithdrawRequestDTOs (historical) 🔥
[**dexGetWithdrawsHistorical**](DexApi.md#dexGetWithdrawsHistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical)
[**dexGetWithdrawsRequestsHistorical**](DexApi.md#dexGetWithdrawsRequestsHistorical) | **GET** /dapps/dex/withdrawsRequests/historical | WithdrawsRequests (historical)


<a name="dexGetBatchDTOsHistorical"></a>
# **dexGetBatchDTOsHistorical**
> kotlin.collections.List&lt;DexBatchDTO&gt; dexGetBatchDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

BatchDTOs (historical) 🔥

Gets BatchDTOs.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<DexBatchDTO> = apiInstance.dexGetBatchDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetBatchDTOsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetBatchDTOsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexBatchDTO&gt;**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dexGetBatchesHistorical"></a>
# **dexGetBatchesHistorical**
> kotlin.collections.List&lt;DexBatchDTO&gt; dexGetBatchesHistorical(startBlock, endBlock, startDate, endDate)

Batches (historical)

Gets batches.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    val result : kotlin.collections.List<DexBatchDTO> = apiInstance.dexGetBatchesHistorical(startBlock, endBlock, startDate, endDate)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetBatchesHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetBatchesHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexBatchDTO&gt;**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dexGetDepositDTOsHistorical"></a>
# **dexGetDepositDTOsHistorical**
> kotlin.collections.List&lt;DexDepositDTO&gt; dexGetDepositDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

DepositDTOs (historical) 🔥

Gets DepositDTOs.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<DexDepositDTO> = apiInstance.dexGetDepositDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetDepositDTOsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetDepositDTOsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexDepositDTO&gt;**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dexGetDepositsHistorical"></a>
# **dexGetDepositsHistorical**
> kotlin.collections.List&lt;DexDepositDTO&gt; dexGetDepositsHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Deposits (historical)

Gets deposits.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val tokenId : kotlin.String = tokenId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<DexDepositDTO> = apiInstance.dexGetDepositsHistorical(startBlock, endBlock, startDate, endDate, tokenId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetDepositsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetDepositsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **tokenId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexDepositDTO&gt;**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dexGetOrderDTOsHistorical"></a>
# **dexGetOrderDTOsHistorical**
> kotlin.collections.List&lt;DexOrderDTO&gt; dexGetOrderDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

OrderDTOs (historical) 🔥

Gets OrderDTOs.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<DexOrderDTO> = apiInstance.dexGetOrderDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetOrderDTOsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetOrderDTOsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexOrderDTO&gt;**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dexGetOrdersHistorical"></a>
# **dexGetOrdersHistorical**
> kotlin.collections.List&lt;DexOrderDTO&gt; dexGetOrdersHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Orders (historical)

Gets orders.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val tokenId : kotlin.String = tokenId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<DexOrderDTO> = apiInstance.dexGetOrdersHistorical(startBlock, endBlock, startDate, endDate, tokenId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetOrdersHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetOrdersHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **tokenId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexOrderDTO&gt;**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dexGetPriceDTOsHistorical"></a>
# **dexGetPriceDTOsHistorical**
> kotlin.collections.List&lt;DexPriceDTO&gt; dexGetPriceDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

PriceDTOs (historical) 🔥

Gets PriceDTOs.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<DexPriceDTO> = apiInstance.dexGetPriceDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetPriceDTOsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetPriceDTOsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexPriceDTO&gt;**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dexGetPricesHistorical"></a>
# **dexGetPricesHistorical**
> kotlin.collections.List&lt;DexPriceDTO&gt; dexGetPricesHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Prices (historical)

Gets prices.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val tokenId : kotlin.String = tokenId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<DexPriceDTO> = apiInstance.dexGetPricesHistorical(startBlock, endBlock, startDate, endDate, tokenId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetPricesHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetPricesHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **tokenId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexPriceDTO&gt;**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dexGetSolutionDTOsHistorical"></a>
# **dexGetSolutionDTOsHistorical**
> kotlin.collections.List&lt;DexSolutionDTO&gt; dexGetSolutionDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

SolutionDTOs (historical) 🔥

Gets SolutionDTOs.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<DexSolutionDTO> = apiInstance.dexGetSolutionDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetSolutionDTOsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetSolutionDTOsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexSolutionDTO&gt;**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dexGetSolutionsHistorical"></a>
# **dexGetSolutionsHistorical**
> kotlin.collections.List&lt;DexSolutionDTO&gt; dexGetSolutionsHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Solutions (historical)

Gets solutions.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val tokenId : kotlin.String = tokenId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<DexSolutionDTO> = apiInstance.dexGetSolutionsHistorical(startBlock, endBlock, startDate, endDate, tokenId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetSolutionsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetSolutionsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **tokenId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexSolutionDTO&gt;**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dexGetStatsDTOsHistorical"></a>
# **dexGetStatsDTOsHistorical**
> kotlin.collections.List&lt;DexStatsDTO&gt; dexGetStatsDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

StatsDTOs (historical) 🔥

Gets StatsDTOs.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<DexStatsDTO> = apiInstance.dexGetStatsDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetStatsDTOsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetStatsDTOsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexStatsDTO&gt;**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dexGetStatsHistorical"></a>
# **dexGetStatsHistorical**
> kotlin.collections.List&lt;DexStatsDTO&gt; dexGetStatsHistorical(startBlock, endBlock, startDate, endDate)

Stats (historical)

Gets stats.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    val result : kotlin.collections.List<DexStatsDTO> = apiInstance.dexGetStatsHistorical(startBlock, endBlock, startDate, endDate)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetStatsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetStatsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexStatsDTO&gt;**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dexGetTokenDTOsHistorical"></a>
# **dexGetTokenDTOsHistorical**
> kotlin.collections.List&lt;DexTokenDTO&gt; dexGetTokenDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TokenDTOs (historical) 🔥

Gets TokenDTOs.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<DexTokenDTO> = apiInstance.dexGetTokenDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetTokenDTOsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetTokenDTOsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexTokenDTO&gt;**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dexGetTokensHistorical"></a>
# **dexGetTokensHistorical**
> kotlin.collections.List&lt;DexTokenDTO&gt; dexGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Tokens (historical) 🔥

Gets tokens.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val tokenId : kotlin.String = tokenId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<DexTokenDTO> = apiInstance.dexGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetTokensHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetTokensHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **tokenId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexTokenDTO&gt;**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dexGetTradeDTOsHistorical"></a>
# **dexGetTradeDTOsHistorical**
> kotlin.collections.List&lt;DexTradeDTO&gt; dexGetTradeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TradeDTOs (historical) 🔥

Gets TradeDTOs.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<DexTradeDTO> = apiInstance.dexGetTradeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetTradeDTOsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetTradeDTOsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexTradeDTO&gt;**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dexGetTradesHistorical"></a>
# **dexGetTradesHistorical**
> kotlin.collections.List&lt;DexTradeDTO&gt; dexGetTradesHistorical(startBlock, endBlock, startDate, endDate)

Trades (historical) 🔥

Gets trades.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    val result : kotlin.collections.List<DexTradeDTO> = apiInstance.dexGetTradesHistorical(startBlock, endBlock, startDate, endDate)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetTradesHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetTradesHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexTradeDTO&gt;**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dexGetUserDTOsHistorical"></a>
# **dexGetUserDTOsHistorical**
> kotlin.collections.List&lt;DexUserDTO&gt; dexGetUserDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

UserDTOs (historical) 🔥

Gets UserDTOs.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<DexUserDTO> = apiInstance.dexGetUserDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetUserDTOsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetUserDTOsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexUserDTO&gt;**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dexGetUsersHistorical"></a>
# **dexGetUsersHistorical**
> kotlin.collections.List&lt;DexUserDTO&gt; dexGetUsersHistorical(startBlock, endBlock, startDate, endDate)

Users (historical)

Gets users.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    val result : kotlin.collections.List<DexUserDTO> = apiInstance.dexGetUsersHistorical(startBlock, endBlock, startDate, endDate)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetUsersHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetUsersHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexUserDTO&gt;**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dexGetWithdrawDTOsHistorical"></a>
# **dexGetWithdrawDTOsHistorical**
> kotlin.collections.List&lt;DexWithdrawDTO&gt; dexGetWithdrawDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

WithdrawDTOs (historical) 🔥

Gets WithdrawDTOs.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<DexWithdrawDTO> = apiInstance.dexGetWithdrawDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetWithdrawDTOsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetWithdrawDTOsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexWithdrawDTO&gt;**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dexGetWithdrawRequestDTOsHistorical"></a>
# **dexGetWithdrawRequestDTOsHistorical**
> kotlin.collections.List&lt;DexWithdrawRequestDTO&gt; dexGetWithdrawRequestDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

WithdrawRequestDTOs (historical) 🔥

Gets WithdrawRequestDTOs.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<DexWithdrawRequestDTO> = apiInstance.dexGetWithdrawRequestDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetWithdrawRequestDTOsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetWithdrawRequestDTOsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexWithdrawRequestDTO&gt;**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dexGetWithdrawsHistorical"></a>
# **dexGetWithdrawsHistorical**
> kotlin.collections.List&lt;DexWithdrawDTO&gt; dexGetWithdrawsHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Withdraws (historical)

Gets withdraws.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val tokenId : kotlin.String = tokenId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<DexWithdrawDTO> = apiInstance.dexGetWithdrawsHistorical(startBlock, endBlock, startDate, endDate, tokenId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetWithdrawsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetWithdrawsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **tokenId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexWithdrawDTO&gt;**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dexGetWithdrawsRequestsHistorical"></a>
# **dexGetWithdrawsRequestsHistorical**
> kotlin.collections.List&lt;DexWithdrawRequestDTO&gt; dexGetWithdrawsRequestsHistorical(startBlock, endBlock, startDate, endDate, tokenId)

WithdrawsRequests (historical)

Gets withdraws requests.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DexApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val tokenId : kotlin.String = tokenId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<DexWithdrawRequestDTO> = apiInstance.dexGetWithdrawsRequestsHistorical(startBlock, endBlock, startDate, endDate, tokenId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dexGetWithdrawsRequestsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dexGetWithdrawsRequestsHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **tokenId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;DexWithdrawRequestDTO&gt;**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

