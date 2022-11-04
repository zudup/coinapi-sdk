# SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dappsSushiswapBundlesHistoricalGet**](SushiswapApi.md#dappsSushiswapBundlesHistoricalGet) | **GET** /dapps/sushiswap/bundles/historical | 
[**dappsSushiswapBurnsHistoricalGet**](SushiswapApi.md#dappsSushiswapBurnsHistoricalGet) | **GET** /dapps/sushiswap/burns/historical | 
[**dappsSushiswapDayDataHistoricalGet**](SushiswapApi.md#dappsSushiswapDayDataHistoricalGet) | **GET** /dapps/sushiswap/dayData/historical | 
[**dappsSushiswapFactoryHistoricalGet**](SushiswapApi.md#dappsSushiswapFactoryHistoricalGet) | **GET** /dapps/sushiswap/factory/historical | 
[**dappsSushiswapHourDataHistoricalGet**](SushiswapApi.md#dappsSushiswapHourDataHistoricalGet) | **GET** /dapps/sushiswap/hourData/historical | 
[**dappsSushiswapLiquidityPositionHistoricalGet**](SushiswapApi.md#dappsSushiswapLiquidityPositionHistoricalGet) | **GET** /dapps/sushiswap/liquidityPosition/historical | 
[**dappsSushiswapLiquidityPositionSnapshotsHistoricalGet**](SushiswapApi.md#dappsSushiswapLiquidityPositionSnapshotsHistoricalGet) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | 
[**dappsSushiswapMintsHistoricalGet**](SushiswapApi.md#dappsSushiswapMintsHistoricalGet) | **GET** /dapps/sushiswap/mints/historical | 
[**dappsSushiswapPoolDayDataHistoricalGet**](SushiswapApi.md#dappsSushiswapPoolDayDataHistoricalGet) | **GET** /dapps/sushiswap/poolDayData/historical | 
[**dappsSushiswapPoolHourDataHistoricalGet**](SushiswapApi.md#dappsSushiswapPoolHourDataHistoricalGet) | **GET** /dapps/sushiswap/poolHourData/historical | 
[**dappsSushiswapPoolsCurrentGet**](SushiswapApi.md#dappsSushiswapPoolsCurrentGet) | **GET** /dapps/sushiswap/pools/current | GetPools
[**dappsSushiswapPoolsHistoricalGet**](SushiswapApi.md#dappsSushiswapPoolsHistoricalGet) | **GET** /dapps/sushiswap/pools/historical | GetPools (historical)
[**dappsSushiswapSwapsCurrentGet**](SushiswapApi.md#dappsSushiswapSwapsCurrentGet) | **GET** /dapps/sushiswap/swaps/current | GetSwaps
[**dappsSushiswapSwapsHistoricalGet**](SushiswapApi.md#dappsSushiswapSwapsHistoricalGet) | **GET** /dapps/sushiswap/swaps/historical | GetSwaps (historical)
[**dappsSushiswapTokenDayDataHistoricalGet**](SushiswapApi.md#dappsSushiswapTokenDayDataHistoricalGet) | **GET** /dapps/sushiswap/tokenDayData/historical | 
[**dappsSushiswapTokensCurrentGet**](SushiswapApi.md#dappsSushiswapTokensCurrentGet) | **GET** /dapps/sushiswap/tokens/current | GetTokens
[**dappsSushiswapTokensHistoricalGet**](SushiswapApi.md#dappsSushiswapTokensHistoricalGet) | **GET** /dapps/sushiswap/tokens/historical | GetTokens (historical)
[**dappsSushiswapTransactionsHistoricalGet**](SushiswapApi.md#dappsSushiswapTransactionsHistoricalGet) | **GET** /dapps/sushiswap/transactions/historical | 
[**dappsSushiswapUsersHistoricalGet**](SushiswapApi.md#dappsSushiswapUsersHistoricalGet) | **GET** /dapps/sushiswap/users/historical | 


<a name="dappsSushiswapBundlesHistoricalGet"></a>
# **dappsSushiswapBundlesHistoricalGet**
> dappsSushiswapBundlesHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.dappsSushiswapBundlesHistoricalGet(startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#dappsSushiswapBundlesHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#dappsSushiswapBundlesHistoricalGet")
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

<a name="dappsSushiswapBurnsHistoricalGet"></a>
# **dappsSushiswapBurnsHistoricalGet**
> dappsSushiswapBurnsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.dappsSushiswapBurnsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#dappsSushiswapBurnsHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#dappsSushiswapBurnsHistoricalGet")
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsSushiswapDayDataHistoricalGet"></a>
# **dappsSushiswapDayDataHistoricalGet**
> dappsSushiswapDayDataHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.dappsSushiswapDayDataHistoricalGet(startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#dappsSushiswapDayDataHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#dappsSushiswapDayDataHistoricalGet")
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

<a name="dappsSushiswapFactoryHistoricalGet"></a>
# **dappsSushiswapFactoryHistoricalGet**
> dappsSushiswapFactoryHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.dappsSushiswapFactoryHistoricalGet(startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#dappsSushiswapFactoryHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#dappsSushiswapFactoryHistoricalGet")
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

<a name="dappsSushiswapHourDataHistoricalGet"></a>
# **dappsSushiswapHourDataHistoricalGet**
> dappsSushiswapHourDataHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.dappsSushiswapHourDataHistoricalGet(startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#dappsSushiswapHourDataHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#dappsSushiswapHourDataHistoricalGet")
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

<a name="dappsSushiswapLiquidityPositionHistoricalGet"></a>
# **dappsSushiswapLiquidityPositionHistoricalGet**
> dappsSushiswapLiquidityPositionHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.dappsSushiswapLiquidityPositionHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#dappsSushiswapLiquidityPositionHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#dappsSushiswapLiquidityPositionHistoricalGet")
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsSushiswapLiquidityPositionSnapshotsHistoricalGet"></a>
# **dappsSushiswapLiquidityPositionSnapshotsHistoricalGet**
> dappsSushiswapLiquidityPositionSnapshotsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.dappsSushiswapLiquidityPositionSnapshotsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#dappsSushiswapLiquidityPositionSnapshotsHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#dappsSushiswapLiquidityPositionSnapshotsHistoricalGet")
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsSushiswapMintsHistoricalGet"></a>
# **dappsSushiswapMintsHistoricalGet**
> dappsSushiswapMintsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.dappsSushiswapMintsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#dappsSushiswapMintsHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#dappsSushiswapMintsHistoricalGet")
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsSushiswapPoolDayDataHistoricalGet"></a>
# **dappsSushiswapPoolDayDataHistoricalGet**
> dappsSushiswapPoolDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.dappsSushiswapPoolDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#dappsSushiswapPoolDayDataHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#dappsSushiswapPoolDayDataHistoricalGet")
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsSushiswapPoolHourDataHistoricalGet"></a>
# **dappsSushiswapPoolHourDataHistoricalGet**
> dappsSushiswapPoolHourDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.dappsSushiswapPoolHourDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#dappsSushiswapPoolHourDataHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#dappsSushiswapPoolHourDataHistoricalGet")
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsSushiswapPoolsCurrentGet"></a>
# **dappsSushiswapPoolsCurrentGet**
> kotlin.collections.List&lt;SushiswapPairDTO&gt; dappsSushiswapPoolsCurrentGet()

GetPools

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
try {
    val result : kotlin.collections.List<SushiswapPairDTO> = apiInstance.dappsSushiswapPoolsCurrentGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#dappsSushiswapPoolsCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#dappsSushiswapPoolsCurrentGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;SushiswapPairDTO&gt;**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dappsSushiswapPoolsHistoricalGet"></a>
# **dappsSushiswapPoolsHistoricalGet**
> kotlin.collections.List&lt;SushiswapPairDTO&gt; dappsSushiswapPoolsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)

GetPools (historical)

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<SushiswapPairDTO> = apiInstance.dappsSushiswapPoolsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#dappsSushiswapPoolsHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#dappsSushiswapPoolsHistoricalGet")
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

[**kotlin.collections.List&lt;SushiswapPairDTO&gt;**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dappsSushiswapSwapsCurrentGet"></a>
# **dappsSushiswapSwapsCurrentGet**
> kotlin.collections.List&lt;SushiswapSwapDTO&gt; dappsSushiswapSwapsCurrentGet()

GetSwaps

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
try {
    val result : kotlin.collections.List<SushiswapSwapDTO> = apiInstance.dappsSushiswapSwapsCurrentGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#dappsSushiswapSwapsCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#dappsSushiswapSwapsCurrentGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;SushiswapSwapDTO&gt;**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dappsSushiswapSwapsHistoricalGet"></a>
# **dappsSushiswapSwapsHistoricalGet**
> kotlin.collections.List&lt;SushiswapSwapDTO&gt; dappsSushiswapSwapsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)

GetSwaps (historical)

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<SushiswapSwapDTO> = apiInstance.dappsSushiswapSwapsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#dappsSushiswapSwapsHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#dappsSushiswapSwapsHistoricalGet")
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

[**kotlin.collections.List&lt;SushiswapSwapDTO&gt;**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dappsSushiswapTokenDayDataHistoricalGet"></a>
# **dappsSushiswapTokenDayDataHistoricalGet**
> dappsSushiswapTokenDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val tokenId : kotlin.String = tokenId_example // kotlin.String | 
try {
    apiInstance.dappsSushiswapTokenDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#dappsSushiswapTokenDayDataHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#dappsSushiswapTokenDayDataHistoricalGet")
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

<a name="dappsSushiswapTokensCurrentGet"></a>
# **dappsSushiswapTokensCurrentGet**
> kotlin.collections.List&lt;SushiswapTokenDTO&gt; dappsSushiswapTokensCurrentGet()

GetTokens

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
try {
    val result : kotlin.collections.List<SushiswapTokenDTO> = apiInstance.dappsSushiswapTokensCurrentGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#dappsSushiswapTokensCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#dappsSushiswapTokensCurrentGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;SushiswapTokenDTO&gt;**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dappsSushiswapTokensHistoricalGet"></a>
# **dappsSushiswapTokensHistoricalGet**
> kotlin.collections.List&lt;SushiswapTokenDTO&gt; dappsSushiswapTokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)

GetTokens (historical)

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val tokenId : kotlin.String = tokenId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<SushiswapTokenDTO> = apiInstance.dappsSushiswapTokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#dappsSushiswapTokensHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#dappsSushiswapTokensHistoricalGet")
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

[**kotlin.collections.List&lt;SushiswapTokenDTO&gt;**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="dappsSushiswapTransactionsHistoricalGet"></a>
# **dappsSushiswapTransactionsHistoricalGet**
> dappsSushiswapTransactionsHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.dappsSushiswapTransactionsHistoricalGet(startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#dappsSushiswapTransactionsHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#dappsSushiswapTransactionsHistoricalGet")
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

<a name="dappsSushiswapUsersHistoricalGet"></a>
# **dappsSushiswapUsersHistoricalGet**
> dappsSushiswapUsersHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.dappsSushiswapUsersHistoricalGet(startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#dappsSushiswapUsersHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#dappsSushiswapUsersHistoricalGet")
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

