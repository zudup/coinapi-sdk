# SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sushiswapGetBundlesHistorical**](SushiswapApi.md#sushiswapGetBundlesHistorical) | **GET** /dapps/sushiswap/bundles/historical | GetBundles (historical)
[**sushiswapGetBurnsHistorical**](SushiswapApi.md#sushiswapGetBurnsHistorical) | **GET** /dapps/sushiswap/burns/historical | GetBurns (historical)
[**sushiswapGetDayDataHistorical**](SushiswapApi.md#sushiswapGetDayDataHistorical) | **GET** /dapps/sushiswap/dayData/historical | GetDayData (historical)
[**sushiswapGetFactoryHistorical**](SushiswapApi.md#sushiswapGetFactoryHistorical) | **GET** /dapps/sushiswap/factory/historical | GetFactory (historical)
[**sushiswapGetHourDataHistorical**](SushiswapApi.md#sushiswapGetHourDataHistorical) | **GET** /dapps/sushiswap/hourData/historical | GetHourData (historical)
[**sushiswapGetLiquidityPositionHistorical**](SushiswapApi.md#sushiswapGetLiquidityPositionHistorical) | **GET** /dapps/sushiswap/liquidityPosition/historical | GetLiquidityPosition (historical)
[**sushiswapGetLiquidityPositionSnapshotHistorical**](SushiswapApi.md#sushiswapGetLiquidityPositionSnapshotHistorical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | GetLiquidityPositionSnapshot (historical)
[**sushiswapGetMintsHistorical**](SushiswapApi.md#sushiswapGetMintsHistorical) | **GET** /dapps/sushiswap/mints/historical | GetMints (historical)
[**sushiswapGetPoolsCurrent**](SushiswapApi.md#sushiswapGetPoolsCurrent) | **GET** /dapps/sushiswap/pools/current | GetPools (current)
[**sushiswapGetPoolsDayDataHistorical**](SushiswapApi.md#sushiswapGetPoolsDayDataHistorical) | **GET** /dapps/sushiswap/poolsDayData/historical | GetPoolsDayData (historical)
[**sushiswapGetPoolsHistorical**](SushiswapApi.md#sushiswapGetPoolsHistorical) | **GET** /dapps/sushiswap/pools/historical | GetPools (historical)
[**sushiswapGetPoolsHourDataHistorical**](SushiswapApi.md#sushiswapGetPoolsHourDataHistorical) | **GET** /dapps/sushiswap/poolsHourData/historical | GetPoolsHourData (historical)
[**sushiswapGetSwapsCurrent**](SushiswapApi.md#sushiswapGetSwapsCurrent) | **GET** /dapps/sushiswap/swaps/current | GetSwaps (current)
[**sushiswapGetSwapsHistorical**](SushiswapApi.md#sushiswapGetSwapsHistorical) | **GET** /dapps/sushiswap/swaps/historical | GetSwaps (historical)
[**sushiswapGetTokensCurrent**](SushiswapApi.md#sushiswapGetTokensCurrent) | **GET** /dapps/sushiswap/tokens/current | GetTokens (current)
[**sushiswapGetTokensDayDataHistorical**](SushiswapApi.md#sushiswapGetTokensDayDataHistorical) | **GET** /dapps/sushiswap/tokensDayData/historical | GetTokensDayData (historical)
[**sushiswapGetTokensHistorical**](SushiswapApi.md#sushiswapGetTokensHistorical) | **GET** /dapps/sushiswap/tokens/historical | GetTokens (historical)
[**sushiswapGetTransactionsHistorical**](SushiswapApi.md#sushiswapGetTransactionsHistorical) | **GET** /dapps/sushiswap/transactions/historical | GetTransactions (historical)
[**sushiswapGetUsersHistorical**](SushiswapApi.md#sushiswapGetUsersHistorical) | **GET** /dapps/sushiswap/users/historical | GetUsers (historical)


<a name="sushiswapGetBundlesHistorical"></a>
# **sushiswapGetBundlesHistorical**
> kotlin.collections.List&lt;SushiswapBundleDTO&gt; sushiswapGetBundlesHistorical(startBlock, endBlock, startDate, endDate)

GetBundles (historical)

Gets bundles.

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
    val result : kotlin.collections.List<SushiswapBundleDTO> = apiInstance.sushiswapGetBundlesHistorical(startBlock, endBlock, startDate, endDate)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#sushiswapGetBundlesHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#sushiswapGetBundlesHistorical")
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

[**kotlin.collections.List&lt;SushiswapBundleDTO&gt;**](SushiswapBundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="sushiswapGetBurnsHistorical"></a>
# **sushiswapGetBurnsHistorical**
> kotlin.collections.List&lt;SushiswapBurnDTO&gt; sushiswapGetBurnsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetBurns (historical)

Gets burns.

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
    val result : kotlin.collections.List<SushiswapBurnDTO> = apiInstance.sushiswapGetBurnsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#sushiswapGetBurnsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#sushiswapGetBurnsHistorical")
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

[**kotlin.collections.List&lt;SushiswapBurnDTO&gt;**](SushiswapBurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="sushiswapGetDayDataHistorical"></a>
# **sushiswapGetDayDataHistorical**
> kotlin.collections.List&lt;SushiswapDayDataDTO&gt; sushiswapGetDayDataHistorical(startBlock, endBlock, startDate, endDate)

GetDayData (historical)

Gets day data.

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
    val result : kotlin.collections.List<SushiswapDayDataDTO> = apiInstance.sushiswapGetDayDataHistorical(startBlock, endBlock, startDate, endDate)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#sushiswapGetDayDataHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#sushiswapGetDayDataHistorical")
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

[**kotlin.collections.List&lt;SushiswapDayDataDTO&gt;**](SushiswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="sushiswapGetFactoryHistorical"></a>
# **sushiswapGetFactoryHistorical**
> kotlin.collections.List&lt;SushiswapFactoryDTO&gt; sushiswapGetFactoryHistorical(startBlock, endBlock, startDate, endDate)

GetFactory (historical)

Gets factory.

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
    val result : kotlin.collections.List<SushiswapFactoryDTO> = apiInstance.sushiswapGetFactoryHistorical(startBlock, endBlock, startDate, endDate)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#sushiswapGetFactoryHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#sushiswapGetFactoryHistorical")
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

[**kotlin.collections.List&lt;SushiswapFactoryDTO&gt;**](SushiswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="sushiswapGetHourDataHistorical"></a>
# **sushiswapGetHourDataHistorical**
> kotlin.collections.List&lt;SushiswapHourDataDTO&gt; sushiswapGetHourDataHistorical(startBlock, endBlock, startDate, endDate)

GetHourData (historical)

Gets hour data.

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
    val result : kotlin.collections.List<SushiswapHourDataDTO> = apiInstance.sushiswapGetHourDataHistorical(startBlock, endBlock, startDate, endDate)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#sushiswapGetHourDataHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#sushiswapGetHourDataHistorical")
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

[**kotlin.collections.List&lt;SushiswapHourDataDTO&gt;**](SushiswapHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="sushiswapGetLiquidityPositionHistorical"></a>
# **sushiswapGetLiquidityPositionHistorical**
> kotlin.collections.List&lt;SushiswapLiquidityPositionDTO&gt; sushiswapGetLiquidityPositionHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetLiquidityPosition (historical)

Gets liquidity position.

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
    val result : kotlin.collections.List<SushiswapLiquidityPositionDTO> = apiInstance.sushiswapGetLiquidityPositionHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#sushiswapGetLiquidityPositionHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#sushiswapGetLiquidityPositionHistorical")
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

[**kotlin.collections.List&lt;SushiswapLiquidityPositionDTO&gt;**](SushiswapLiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="sushiswapGetLiquidityPositionSnapshotHistorical"></a>
# **sushiswapGetLiquidityPositionSnapshotHistorical**
> kotlin.collections.List&lt;SushiswapLiquidityPositionSnapshotDTO&gt; sushiswapGetLiquidityPositionSnapshotHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetLiquidityPositionSnapshot (historical)

Gets liquidity position snapshot.

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
    val result : kotlin.collections.List<SushiswapLiquidityPositionSnapshotDTO> = apiInstance.sushiswapGetLiquidityPositionSnapshotHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#sushiswapGetLiquidityPositionSnapshotHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#sushiswapGetLiquidityPositionSnapshotHistorical")
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

[**kotlin.collections.List&lt;SushiswapLiquidityPositionSnapshotDTO&gt;**](SushiswapLiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="sushiswapGetMintsHistorical"></a>
# **sushiswapGetMintsHistorical**
> kotlin.collections.List&lt;SushiswapMintDTO&gt; sushiswapGetMintsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetMints (historical)

Gets mints.

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
    val result : kotlin.collections.List<SushiswapMintDTO> = apiInstance.sushiswapGetMintsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#sushiswapGetMintsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#sushiswapGetMintsHistorical")
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

[**kotlin.collections.List&lt;SushiswapMintDTO&gt;**](SushiswapMintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="sushiswapGetPoolsCurrent"></a>
# **sushiswapGetPoolsCurrent**
> kotlin.collections.List&lt;SushiswapPairDTO&gt; sushiswapGetPoolsCurrent()

GetPools (current)

Gets pools.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
try {
    val result : kotlin.collections.List<SushiswapPairDTO> = apiInstance.sushiswapGetPoolsCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#sushiswapGetPoolsCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#sushiswapGetPoolsCurrent")
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

<a name="sushiswapGetPoolsDayDataHistorical"></a>
# **sushiswapGetPoolsDayDataHistorical**
> kotlin.collections.List&lt;SushiswapPairDayDataDTO&gt; sushiswapGetPoolsDayDataHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetPoolsDayData (historical)

Gets pools day data.

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
    val result : kotlin.collections.List<SushiswapPairDayDataDTO> = apiInstance.sushiswapGetPoolsDayDataHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#sushiswapGetPoolsDayDataHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#sushiswapGetPoolsDayDataHistorical")
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

[**kotlin.collections.List&lt;SushiswapPairDayDataDTO&gt;**](SushiswapPairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="sushiswapGetPoolsHistorical"></a>
# **sushiswapGetPoolsHistorical**
> kotlin.collections.List&lt;SushiswapPairDTO&gt; sushiswapGetPoolsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetPools (historical)

Gets list of pools for given filters.

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
    val result : kotlin.collections.List<SushiswapPairDTO> = apiInstance.sushiswapGetPoolsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#sushiswapGetPoolsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#sushiswapGetPoolsHistorical")
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

<a name="sushiswapGetPoolsHourDataHistorical"></a>
# **sushiswapGetPoolsHourDataHistorical**
> kotlin.collections.List&lt;SushiswapPairHourDataDTO&gt; sushiswapGetPoolsHourDataHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetPoolsHourData (historical)

Gets pools tracked each our.

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
    val result : kotlin.collections.List<SushiswapPairHourDataDTO> = apiInstance.sushiswapGetPoolsHourDataHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#sushiswapGetPoolsHourDataHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#sushiswapGetPoolsHourDataHistorical")
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

[**kotlin.collections.List&lt;SushiswapPairHourDataDTO&gt;**](SushiswapPairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="sushiswapGetSwapsCurrent"></a>
# **sushiswapGetSwapsCurrent**
> kotlin.collections.List&lt;SushiswapSwapDTO&gt; sushiswapGetSwapsCurrent()

GetSwaps (current)

Gets swaps.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
try {
    val result : kotlin.collections.List<SushiswapSwapDTO> = apiInstance.sushiswapGetSwapsCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#sushiswapGetSwapsCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#sushiswapGetSwapsCurrent")
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

<a name="sushiswapGetSwapsHistorical"></a>
# **sushiswapGetSwapsHistorical**
> kotlin.collections.List&lt;SushiswapSwapDTO&gt; sushiswapGetSwapsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetSwaps (historical)

Gets list of swaps for given filters.

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
    val result : kotlin.collections.List<SushiswapSwapDTO> = apiInstance.sushiswapGetSwapsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#sushiswapGetSwapsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#sushiswapGetSwapsHistorical")
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

<a name="sushiswapGetTokensCurrent"></a>
# **sushiswapGetTokensCurrent**
> kotlin.collections.List&lt;SushiswapTokenDTO&gt; sushiswapGetTokensCurrent()

GetTokens (current)

Gets tokens.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SushiswapApi()
try {
    val result : kotlin.collections.List<SushiswapTokenDTO> = apiInstance.sushiswapGetTokensCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#sushiswapGetTokensCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#sushiswapGetTokensCurrent")
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

<a name="sushiswapGetTokensDayDataHistorical"></a>
# **sushiswapGetTokensDayDataHistorical**
> kotlin.collections.List&lt;SushiswapTokenDayDataDTO&gt; sushiswapGetTokensDayDataHistorical(startBlock, endBlock, startDate, endDate, tokenId)

GetTokensDayData (historical)

Gets tokens day data.

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
    val result : kotlin.collections.List<SushiswapTokenDayDataDTO> = apiInstance.sushiswapGetTokensDayDataHistorical(startBlock, endBlock, startDate, endDate, tokenId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#sushiswapGetTokensDayDataHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#sushiswapGetTokensDayDataHistorical")
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

[**kotlin.collections.List&lt;SushiswapTokenDayDataDTO&gt;**](SushiswapTokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="sushiswapGetTokensHistorical"></a>
# **sushiswapGetTokensHistorical**
> kotlin.collections.List&lt;SushiswapTokenDTO&gt; sushiswapGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId)

GetTokens (historical)

Gets list of tokens for given filters.

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
    val result : kotlin.collections.List<SushiswapTokenDTO> = apiInstance.sushiswapGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#sushiswapGetTokensHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#sushiswapGetTokensHistorical")
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

<a name="sushiswapGetTransactionsHistorical"></a>
# **sushiswapGetTransactionsHistorical**
> kotlin.collections.List&lt;SushiswapTransactionDTO&gt; sushiswapGetTransactionsHistorical(startBlock, endBlock, startDate, endDate)

GetTransactions (historical)

Gets transactions.

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
    val result : kotlin.collections.List<SushiswapTransactionDTO> = apiInstance.sushiswapGetTransactionsHistorical(startBlock, endBlock, startDate, endDate)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#sushiswapGetTransactionsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#sushiswapGetTransactionsHistorical")
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

[**kotlin.collections.List&lt;SushiswapTransactionDTO&gt;**](SushiswapTransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="sushiswapGetUsersHistorical"></a>
# **sushiswapGetUsersHistorical**
> kotlin.collections.List&lt;SushiswapUserDTO&gt; sushiswapGetUsersHistorical(startBlock, endBlock, startDate, endDate)

GetUsers (historical)

Gets users.

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
    val result : kotlin.collections.List<SushiswapUserDTO> = apiInstance.sushiswapGetUsersHistorical(startBlock, endBlock, startDate, endDate)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SushiswapApi#sushiswapGetUsersHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SushiswapApi#sushiswapGetUsersHistorical")
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

[**kotlin.collections.List&lt;SushiswapUserDTO&gt;**](SushiswapUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

