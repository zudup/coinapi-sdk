# DexApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dappsDexBatchHistoricalGet**](DexApi.md#dappsDexBatchHistoricalGet) | **GET** /dapps/dex/batch/historical | 
[**dappsDexOrdersHistoricalGet**](DexApi.md#dappsDexOrdersHistoricalGet) | **GET** /dapps/dex/orders/historical | 
[**dappsDexPricesHistoricalGet**](DexApi.md#dappsDexPricesHistoricalGet) | **GET** /dapps/dex/prices/historical | 
[**dappsDexSolutionHistoricalGet**](DexApi.md#dappsDexSolutionHistoricalGet) | **GET** /dapps/dex/solution/historical | 
[**dappsDexStatsHistoricalGet**](DexApi.md#dappsDexStatsHistoricalGet) | **GET** /dapps/dex/stats/historical | 
[**dappsDexTokensHistoricalGet**](DexApi.md#dappsDexTokensHistoricalGet) | **GET** /dapps/dex/tokens/historical | 
[**dappsDexTradesHistoricalGet**](DexApi.md#dappsDexTradesHistoricalGet) | **GET** /dapps/dex/trades/historical | 
[**dappsDexUsersHistoricalGet**](DexApi.md#dappsDexUsersHistoricalGet) | **GET** /dapps/dex/users/historical | 
[**dappsDexWithdrawHistoricalGet**](DexApi.md#dappsDexWithdrawHistoricalGet) | **GET** /dapps/dex/withdraw/historical | 
[**dappsDexWithdrawRequestHistoricalGet**](DexApi.md#dappsDexWithdrawRequestHistoricalGet) | **GET** /dapps/dex/withdrawRequest/historical | 


<a name="dappsDexBatchHistoricalGet"></a>
# **dappsDexBatchHistoricalGet**
> dappsDexBatchHistoricalGet(startBlock, endBlock, startDate, endDate)



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
    apiInstance.dappsDexBatchHistoricalGet(startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dappsDexBatchHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dappsDexBatchHistoricalGet")
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsDexOrdersHistoricalGet"></a>
# **dappsDexOrdersHistoricalGet**
> dappsDexOrdersHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



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
    apiInstance.dappsDexOrdersHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dappsDexOrdersHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dappsDexOrdersHistoricalGet")
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsDexPricesHistoricalGet"></a>
# **dappsDexPricesHistoricalGet**
> dappsDexPricesHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



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
    apiInstance.dappsDexPricesHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dappsDexPricesHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dappsDexPricesHistoricalGet")
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsDexSolutionHistoricalGet"></a>
# **dappsDexSolutionHistoricalGet**
> dappsDexSolutionHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



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
    apiInstance.dappsDexSolutionHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dappsDexSolutionHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dappsDexSolutionHistoricalGet")
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsDexStatsHistoricalGet"></a>
# **dappsDexStatsHistoricalGet**
> dappsDexStatsHistoricalGet(startBlock, endBlock, startDate, endDate)



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
    apiInstance.dappsDexStatsHistoricalGet(startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dappsDexStatsHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dappsDexStatsHistoricalGet")
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsDexTokensHistoricalGet"></a>
# **dappsDexTokensHistoricalGet**
> dappsDexTokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



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
    apiInstance.dappsDexTokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dappsDexTokensHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dappsDexTokensHistoricalGet")
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsDexTradesHistoricalGet"></a>
# **dappsDexTradesHistoricalGet**
> dappsDexTradesHistoricalGet(startBlock, endBlock, startDate, endDate)



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
    apiInstance.dappsDexTradesHistoricalGet(startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dappsDexTradesHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dappsDexTradesHistoricalGet")
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsDexUsersHistoricalGet"></a>
# **dappsDexUsersHistoricalGet**
> dappsDexUsersHistoricalGet(startBlock, endBlock, startDate, endDate)



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
    apiInstance.dappsDexUsersHistoricalGet(startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dappsDexUsersHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dappsDexUsersHistoricalGet")
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsDexWithdrawHistoricalGet"></a>
# **dappsDexWithdrawHistoricalGet**
> dappsDexWithdrawHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



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
    apiInstance.dappsDexWithdrawHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dappsDexWithdrawHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dappsDexWithdrawHistoricalGet")
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsDexWithdrawRequestHistoricalGet"></a>
# **dappsDexWithdrawRequestHistoricalGet**
> dappsDexWithdrawRequestHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



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
    apiInstance.dappsDexWithdrawRequestHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)
} catch (e: ClientException) {
    println("4xx response calling DexApi#dappsDexWithdrawRequestHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DexApi#dappsDexWithdrawRequestHistoricalGet")
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

