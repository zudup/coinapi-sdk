# UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswapV2GetBundlesHistorical**](UniswapV2Api.md#uniswapV2GetBundlesHistorical) | **GET** /dapps/uniswapv2/bundles/historical | GetBundles (historical)
[**uniswapV2GetBurnsHistorical**](UniswapV2Api.md#uniswapV2GetBurnsHistorical) | **GET** /dapps/uniswapv2/burns/historical | GetBurns (historical)
[**uniswapV2GetDayDataHistorical**](UniswapV2Api.md#uniswapV2GetDayDataHistorical) | **GET** /dapps/uniswapv2/dayData/historical | GetDayData (historical)
[**uniswapV2GetFactoryHistorical**](UniswapV2Api.md#uniswapV2GetFactoryHistorical) | **GET** /dapps/uniswapv2/factory/historical | GetFactory (historical)
[**uniswapV2GetLiquidityPositionsHistorical**](UniswapV2Api.md#uniswapV2GetLiquidityPositionsHistorical) | **GET** /dapps/uniswapv2/liquidityPositions/historical | GetLiquidityPositions (historical)
[**uniswapV2GetLiquidityPositionsSnapshotsHistorical**](UniswapV2Api.md#uniswapV2GetLiquidityPositionsSnapshotsHistorical) | **GET** /dapps/uniswapv2/liquidityPositionsSnapshots/historical | GetLiquidityPositionsSnapshots (historical)
[**uniswapV2GetMintsHistorical**](UniswapV2Api.md#uniswapV2GetMintsHistorical) | **GET** /dapps/uniswapv2/mints/historical | GetMints (historical)
[**uniswapV2GetPoolsCurrent**](UniswapV2Api.md#uniswapV2GetPoolsCurrent) | **GET** /dapps/uniswapv2/pools/current | GetPools (current) 🔥
[**uniswapV2GetPoolsDayDataHistorical**](UniswapV2Api.md#uniswapV2GetPoolsDayDataHistorical) | **GET** /dapps/uniswapv2/poolsDayData/historical | GetPoolsDayData (historical)
[**uniswapV2GetPoolsHistorical**](UniswapV2Api.md#uniswapV2GetPoolsHistorical) | **GET** /dapps/uniswapv2/pools/historical | GetPools (historical) 🔥
[**uniswapV2GetPoolsHourDataHistorical**](UniswapV2Api.md#uniswapV2GetPoolsHourDataHistorical) | **GET** /dapps/uniswapv2/poolsHourData/historical | GetPoolsHourData (historical)
[**uniswapV2GetSwapsCurrent**](UniswapV2Api.md#uniswapV2GetSwapsCurrent) | **GET** /dapps/uniswapv2/swaps/current | GetSwaps (current) 🔥
[**uniswapV2GetSwapsHistorical**](UniswapV2Api.md#uniswapV2GetSwapsHistorical) | **GET** /dapps/uniswapv2/swaps/historical | GetSwaps (historical) 🔥
[**uniswapV2GetTokensCurrent**](UniswapV2Api.md#uniswapV2GetTokensCurrent) | **GET** /dapps/uniswapv2/tokens/current | GetTokens (current) 🔥
[**uniswapV2GetTokensDayDataHistorical**](UniswapV2Api.md#uniswapV2GetTokensDayDataHistorical) | **GET** /dapps/uniswapv2/tokensDayData/historical | GetTokensDayData (historical)
[**uniswapV2GetTokensHistorical**](UniswapV2Api.md#uniswapV2GetTokensHistorical) | **GET** /dapps/uniswapv2/tokens/historical | GetTokens (historical) 🔥
[**uniswapV2GetTransactionsHistorical**](UniswapV2Api.md#uniswapV2GetTransactionsHistorical) | **GET** /dapps/uniswapv2/transactions/historical | GetTransactions (historical)
[**uniswapV2GetUsersHistorical**](UniswapV2Api.md#uniswapV2GetUsersHistorical) | **GET** /dapps/uniswapv2/users/historical | GetUsers (historical)


<a name="uniswapV2GetBundlesHistorical"></a>
# **uniswapV2GetBundlesHistorical**
> kotlin.collections.List&lt;UniswapV2BundleV2DTO&gt; uniswapV2GetBundlesHistorical(startBlock, endBlock, startDate, endDate)

GetBundles (historical)

Gets bundles.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    val result : kotlin.collections.List<UniswapV2BundleV2DTO> = apiInstance.uniswapV2GetBundlesHistorical(startBlock, endBlock, startDate, endDate)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetBundlesHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetBundlesHistorical")
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

[**kotlin.collections.List&lt;UniswapV2BundleV2DTO&gt;**](UniswapV2BundleV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetBurnsHistorical"></a>
# **uniswapV2GetBurnsHistorical**
> kotlin.collections.List&lt;UniswapV2BurnV2DTO&gt; uniswapV2GetBurnsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetBurns (historical)

Gets burns.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV2BurnV2DTO> = apiInstance.uniswapV2GetBurnsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetBurnsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetBurnsHistorical")
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

[**kotlin.collections.List&lt;UniswapV2BurnV2DTO&gt;**](UniswapV2BurnV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetDayDataHistorical"></a>
# **uniswapV2GetDayDataHistorical**
> kotlin.collections.List&lt;UniswapV2UniswapDayDataV2DTO&gt; uniswapV2GetDayDataHistorical(startBlock, endBlock, startDate, endDate)

GetDayData (historical)

Gets uniswapv2 day data.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    val result : kotlin.collections.List<UniswapV2UniswapDayDataV2DTO> = apiInstance.uniswapV2GetDayDataHistorical(startBlock, endBlock, startDate, endDate)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetDayDataHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetDayDataHistorical")
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

[**kotlin.collections.List&lt;UniswapV2UniswapDayDataV2DTO&gt;**](UniswapV2UniswapDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetFactoryHistorical"></a>
# **uniswapV2GetFactoryHistorical**
> kotlin.collections.List&lt;UniswapV2UniswapFactoryV2DTO&gt; uniswapV2GetFactoryHistorical(startBlock, endBlock, startDate, endDate)

GetFactory (historical)

Gets factory.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    val result : kotlin.collections.List<UniswapV2UniswapFactoryV2DTO> = apiInstance.uniswapV2GetFactoryHistorical(startBlock, endBlock, startDate, endDate)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetFactoryHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetFactoryHistorical")
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

[**kotlin.collections.List&lt;UniswapV2UniswapFactoryV2DTO&gt;**](UniswapV2UniswapFactoryV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetLiquidityPositionsHistorical"></a>
# **uniswapV2GetLiquidityPositionsHistorical**
> kotlin.collections.List&lt;UniswapV2LiquidityPositionV2DTO&gt; uniswapV2GetLiquidityPositionsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetLiquidityPositions (historical)

Gets liquidity positions.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV2LiquidityPositionV2DTO> = apiInstance.uniswapV2GetLiquidityPositionsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetLiquidityPositionsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetLiquidityPositionsHistorical")
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

[**kotlin.collections.List&lt;UniswapV2LiquidityPositionV2DTO&gt;**](UniswapV2LiquidityPositionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetLiquidityPositionsSnapshotsHistorical"></a>
# **uniswapV2GetLiquidityPositionsSnapshotsHistorical**
> kotlin.collections.List&lt;UniswapV2LiquidityPositionSnapshotV2DTO&gt; uniswapV2GetLiquidityPositionsSnapshotsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetLiquidityPositionsSnapshots (historical)

Gets liquidity positions snapshots.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV2LiquidityPositionSnapshotV2DTO> = apiInstance.uniswapV2GetLiquidityPositionsSnapshotsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetLiquidityPositionsSnapshotsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetLiquidityPositionsSnapshotsHistorical")
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

[**kotlin.collections.List&lt;UniswapV2LiquidityPositionSnapshotV2DTO&gt;**](UniswapV2LiquidityPositionSnapshotV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetMintsHistorical"></a>
# **uniswapV2GetMintsHistorical**
> kotlin.collections.List&lt;UniswapV2MintV2DTO&gt; uniswapV2GetMintsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetMints (historical)

Gets mints.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV2MintV2DTO> = apiInstance.uniswapV2GetMintsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetMintsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetMintsHistorical")
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

[**kotlin.collections.List&lt;UniswapV2MintV2DTO&gt;**](UniswapV2MintV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetPoolsCurrent"></a>
# **uniswapV2GetPoolsCurrent**
> kotlin.collections.List&lt;UniswapV2PairV2DTO&gt; uniswapV2GetPoolsCurrent(filterPoolId)

GetPools (current) 🔥

Gets pools.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val filterPoolId : kotlin.String = filterPoolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV2PairV2DTO> = apiInstance.uniswapV2GetPoolsCurrent(filterPoolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetPoolsCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetPoolsCurrent")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV2PairV2DTO&gt;**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetPoolsDayDataHistorical"></a>
# **uniswapV2GetPoolsDayDataHistorical**
> kotlin.collections.List&lt;UniswapV2PairDayDataV2DTO&gt; uniswapV2GetPoolsDayDataHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetPoolsDayData (historical)

Gets pools day data.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV2PairDayDataV2DTO> = apiInstance.uniswapV2GetPoolsDayDataHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetPoolsDayDataHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetPoolsDayDataHistorical")
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

[**kotlin.collections.List&lt;UniswapV2PairDayDataV2DTO&gt;**](UniswapV2PairDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetPoolsHistorical"></a>
# **uniswapV2GetPoolsHistorical**
> kotlin.collections.List&lt;UniswapV2PairV2DTO&gt; uniswapV2GetPoolsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetPools (historical) 🔥

Gets pools.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV2PairV2DTO> = apiInstance.uniswapV2GetPoolsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetPoolsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetPoolsHistorical")
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

[**kotlin.collections.List&lt;UniswapV2PairV2DTO&gt;**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetPoolsHourDataHistorical"></a>
# **uniswapV2GetPoolsHourDataHistorical**
> kotlin.collections.List&lt;UniswapV2PairHourDataV2DTO&gt; uniswapV2GetPoolsHourDataHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetPoolsHourData (historical)

Gets pools tracked each our.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV2PairHourDataV2DTO> = apiInstance.uniswapV2GetPoolsHourDataHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetPoolsHourDataHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetPoolsHourDataHistorical")
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

[**kotlin.collections.List&lt;UniswapV2PairHourDataV2DTO&gt;**](UniswapV2PairHourDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetSwapsCurrent"></a>
# **uniswapV2GetSwapsCurrent**
> kotlin.collections.List&lt;UniswapV2SwapV2DTO&gt; uniswapV2GetSwapsCurrent()

GetSwaps (current) 🔥

Gets swaps.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
try {
    val result : kotlin.collections.List<UniswapV2SwapV2DTO> = apiInstance.uniswapV2GetSwapsCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetSwapsCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetSwapsCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;UniswapV2SwapV2DTO&gt;**](UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetSwapsHistorical"></a>
# **uniswapV2GetSwapsHistorical**
> kotlin.collections.List&lt;UniswapV2SwapV2DTO&gt; uniswapV2GetSwapsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetSwaps (historical) 🔥

Gets swaps.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV2SwapV2DTO> = apiInstance.uniswapV2GetSwapsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetSwapsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetSwapsHistorical")
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

[**kotlin.collections.List&lt;UniswapV2SwapV2DTO&gt;**](UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetTokensCurrent"></a>
# **uniswapV2GetTokensCurrent**
> kotlin.collections.List&lt;UniswapV2TokenV2DTO&gt; uniswapV2GetTokensCurrent()

GetTokens (current) 🔥

Gets tokens.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
try {
    val result : kotlin.collections.List<UniswapV2TokenV2DTO> = apiInstance.uniswapV2GetTokensCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetTokensCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetTokensCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;UniswapV2TokenV2DTO&gt;**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetTokensDayDataHistorical"></a>
# **uniswapV2GetTokensDayDataHistorical**
> kotlin.collections.List&lt;UniswapV2TokenDayDataV2DTO&gt; uniswapV2GetTokensDayDataHistorical(startBlock, endBlock, startDate, endDate, tokenId)

GetTokensDayData (historical)

Gets tokens day data.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val tokenId : kotlin.String = tokenId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV2TokenDayDataV2DTO> = apiInstance.uniswapV2GetTokensDayDataHistorical(startBlock, endBlock, startDate, endDate, tokenId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetTokensDayDataHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetTokensDayDataHistorical")
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

[**kotlin.collections.List&lt;UniswapV2TokenDayDataV2DTO&gt;**](UniswapV2TokenDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetTokensHistorical"></a>
# **uniswapV2GetTokensHistorical**
> kotlin.collections.List&lt;UniswapV2TokenV2DTO&gt; uniswapV2GetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId)

GetTokens (historical) 🔥

Gets tokens.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val tokenId : kotlin.String = tokenId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV2TokenV2DTO> = apiInstance.uniswapV2GetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetTokensHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetTokensHistorical")
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

[**kotlin.collections.List&lt;UniswapV2TokenV2DTO&gt;**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetTransactionsHistorical"></a>
# **uniswapV2GetTransactionsHistorical**
> kotlin.collections.List&lt;UniswapV2TransactionV2DTO&gt; uniswapV2GetTransactionsHistorical(startBlock, endBlock, startDate, endDate)

GetTransactions (historical)

Gets transactions.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    val result : kotlin.collections.List<UniswapV2TransactionV2DTO> = apiInstance.uniswapV2GetTransactionsHistorical(startBlock, endBlock, startDate, endDate)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetTransactionsHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetTransactionsHistorical")
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

[**kotlin.collections.List&lt;UniswapV2TransactionV2DTO&gt;**](UniswapV2TransactionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetUsersHistorical"></a>
# **uniswapV2GetUsersHistorical**
> kotlin.collections.List&lt;UniswapV2UserV2DTO&gt; uniswapV2GetUsersHistorical(startBlock, endBlock, startDate, endDate)

GetUsers (historical)

Gets users.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    val result : kotlin.collections.List<UniswapV2UserV2DTO> = apiInstance.uniswapV2GetUsersHistorical(startBlock, endBlock, startDate, endDate)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetUsersHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetUsersHistorical")
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

[**kotlin.collections.List&lt;UniswapV2UserV2DTO&gt;**](UniswapV2UserV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

