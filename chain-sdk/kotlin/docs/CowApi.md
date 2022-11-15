# CowApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cowGetOrderDTOsHistorical**](CowApi.md#cowGetOrderDTOsHistorical) | **GET** /dapps/cow/OrderDTOs/historical | OrderDTOs (historical) 🔥
[**cowGetOrdersHistorical**](CowApi.md#cowGetOrdersHistorical) | **GET** /dapps/cow/orders/historical | Orders (historical)
[**cowGetSettlementDTOsHistorical**](CowApi.md#cowGetSettlementDTOsHistorical) | **GET** /dapps/cow/SettlementDTOs/historical | SettlementDTOs (historical) 🔥
[**cowGetSettlementsHistorical**](CowApi.md#cowGetSettlementsHistorical) | **GET** /dapps/cow/settlements/historical | Settlements (historical)
[**cowGetTokenDTOsHistorical**](CowApi.md#cowGetTokenDTOsHistorical) | **GET** /dapps/cow/TokenDTOs/historical | TokenDTOs (historical) 🔥
[**cowGetTokensHistorical**](CowApi.md#cowGetTokensHistorical) | **GET** /dapps/cow/tokens/historical | Tokens (historical) 🔥
[**cowGetTradeDTOsHistorical**](CowApi.md#cowGetTradeDTOsHistorical) | **GET** /dapps/cow/TradeDTOs/historical | TradeDTOs (historical) 🔥
[**cowGetTradesHistorical**](CowApi.md#cowGetTradesHistorical) | **GET** /dapps/cow/trades/historical | Trades (historical) 🔥
[**cowGetUserDTOsHistorical**](CowApi.md#cowGetUserDTOsHistorical) | **GET** /dapps/cow/UserDTOs/historical | UserDTOs (historical) 🔥
[**cowGetUsersHistorical**](CowApi.md#cowGetUsersHistorical) | **GET** /dapps/cow/users/historical | Users (historical)


<a name="cowGetOrderDTOsHistorical"></a>
# **cowGetOrderDTOsHistorical**
> kotlin.collections.List&lt;CowOrderDTO&gt; cowGetOrderDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

OrderDTOs (historical) 🔥

Gets OrderDTOs.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CowApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<CowOrderDTO> = apiInstance.cowGetOrderDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CowApi#cowGetOrderDTOsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CowApi#cowGetOrderDTOsHistorical")
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

[**kotlin.collections.List&lt;CowOrderDTO&gt;**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="cowGetOrdersHistorical"></a>
# **cowGetOrdersHistorical**
> kotlin.collections.List&lt;CowOrderDTO&gt; cowGetOrdersHistorical(startBlock, endBlock, startDate, endDate)

Orders (historical)

Gets orders.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CowApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    val result : kotlin.collections.List<CowOrderDTO> = apiInstance.cowGetOrdersHistorical(startBlock, endBlock, startDate, endDate)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CowApi#cowGetOrdersHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CowApi#cowGetOrdersHistorical")
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

[**kotlin.collections.List&lt;CowOrderDTO&gt;**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="cowGetSettlementDTOsHistorical"></a>
# **cowGetSettlementDTOsHistorical**
> kotlin.collections.List&lt;CowSettlementDTO&gt; cowGetSettlementDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

SettlementDTOs (historical) 🔥

Gets SettlementDTOs.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CowApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<CowSettlementDTO> = apiInstance.cowGetSettlementDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CowApi#cowGetSettlementDTOsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CowApi#cowGetSettlementDTOsHistorical")
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

[**kotlin.collections.List&lt;CowSettlementDTO&gt;**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="cowGetSettlementsHistorical"></a>
# **cowGetSettlementsHistorical**
> kotlin.collections.List&lt;CowSettlementDTO&gt; cowGetSettlementsHistorical(startBlock, endBlock, startDate, endDate)

Settlements (historical)

Gets settlements.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CowApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    val result : kotlin.collections.List<CowSettlementDTO> = apiInstance.cowGetSettlementsHistorical(startBlock, endBlock, startDate, endDate)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CowApi#cowGetSettlementsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CowApi#cowGetSettlementsHistorical")
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

[**kotlin.collections.List&lt;CowSettlementDTO&gt;**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="cowGetTokenDTOsHistorical"></a>
# **cowGetTokenDTOsHistorical**
> kotlin.collections.List&lt;CowTokenDTO&gt; cowGetTokenDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TokenDTOs (historical) 🔥

Gets TokenDTOs.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CowApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<CowTokenDTO> = apiInstance.cowGetTokenDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CowApi#cowGetTokenDTOsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CowApi#cowGetTokenDTOsHistorical")
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

[**kotlin.collections.List&lt;CowTokenDTO&gt;**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="cowGetTokensHistorical"></a>
# **cowGetTokensHistorical**
> kotlin.collections.List&lt;CowTokenDTO&gt; cowGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Tokens (historical) 🔥

Gets tokens.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CowApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val tokenId : kotlin.String = tokenId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<CowTokenDTO> = apiInstance.cowGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CowApi#cowGetTokensHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CowApi#cowGetTokensHistorical")
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

[**kotlin.collections.List&lt;CowTokenDTO&gt;**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="cowGetTradeDTOsHistorical"></a>
# **cowGetTradeDTOsHistorical**
> kotlin.collections.List&lt;CowTradeDTO&gt; cowGetTradeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TradeDTOs (historical) 🔥

Gets TradeDTOs.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CowApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<CowTradeDTO> = apiInstance.cowGetTradeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CowApi#cowGetTradeDTOsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CowApi#cowGetTradeDTOsHistorical")
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

[**kotlin.collections.List&lt;CowTradeDTO&gt;**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="cowGetTradesHistorical"></a>
# **cowGetTradesHistorical**
> kotlin.collections.List&lt;CowTradeDTO&gt; cowGetTradesHistorical(startBlock, endBlock, startDate, endDate)

Trades (historical) 🔥

Gets trades.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CowApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    val result : kotlin.collections.List<CowTradeDTO> = apiInstance.cowGetTradesHistorical(startBlock, endBlock, startDate, endDate)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CowApi#cowGetTradesHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CowApi#cowGetTradesHistorical")
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

[**kotlin.collections.List&lt;CowTradeDTO&gt;**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="cowGetUserDTOsHistorical"></a>
# **cowGetUserDTOsHistorical**
> kotlin.collections.List&lt;CowUserDTO&gt; cowGetUserDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

UserDTOs (historical) 🔥

Gets UserDTOs.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CowApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<CowUserDTO> = apiInstance.cowGetUserDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CowApi#cowGetUserDTOsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CowApi#cowGetUserDTOsHistorical")
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

[**kotlin.collections.List&lt;CowUserDTO&gt;**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="cowGetUsersHistorical"></a>
# **cowGetUsersHistorical**
> kotlin.collections.List&lt;CowUserDTO&gt; cowGetUsersHistorical(startBlock, endBlock, startDate, endDate)

Users (historical)

Gets users.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CowApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    val result : kotlin.collections.List<CowUserDTO> = apiInstance.cowGetUsersHistorical(startBlock, endBlock, startDate, endDate)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CowApi#cowGetUsersHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CowApi#cowGetUsersHistorical")
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

[**kotlin.collections.List&lt;CowUserDTO&gt;**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

