# UniswapV3Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswapV3GetBundlesCurrent**](UniswapV3Api.md#uniswapV3GetBundlesCurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current)
[**uniswapV3GetBurnsCurrent**](UniswapV3Api.md#uniswapV3GetBurnsCurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current)
[**uniswapV3GetDayDataCurrent**](UniswapV3Api.md#uniswapV3GetDayDataCurrent) | **GET** /dapps/uniswapv3/dayData/current | DayData (current)
[**uniswapV3GetFactoryCurrent**](UniswapV3Api.md#uniswapV3GetFactoryCurrent) | **GET** /dapps/uniswapv3/factory/current | Factory (current)
[**uniswapV3GetMintsCurrent**](UniswapV3Api.md#uniswapV3GetMintsCurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current)
[**uniswapV3GetPoolsCurrent**](UniswapV3Api.md#uniswapV3GetPoolsCurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current) 🔥
[**uniswapV3GetPoolsDayDataCurrent**](UniswapV3Api.md#uniswapV3GetPoolsDayDataCurrent) | **GET** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current)
[**uniswapV3GetPoolsHourDataCurrent**](UniswapV3Api.md#uniswapV3GetPoolsHourDataCurrent) | **GET** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current)
[**uniswapV3GetPositionsCurrent**](UniswapV3Api.md#uniswapV3GetPositionsCurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current)
[**uniswapV3GetPositionsSnapshotsCurrent**](UniswapV3Api.md#uniswapV3GetPositionsSnapshotsCurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current)
[**uniswapV3GetSwapsCurrent**](UniswapV3Api.md#uniswapV3GetSwapsCurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥
[**uniswapV3GetTicksCurrent**](UniswapV3Api.md#uniswapV3GetTicksCurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current)
[**uniswapV3GetTicksDayDataCurrent**](UniswapV3Api.md#uniswapV3GetTicksDayDataCurrent) | **GET** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current)
[**uniswapV3GetTokensCurrent**](UniswapV3Api.md#uniswapV3GetTokensCurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥
[**uniswapV3GetTokensDayDataCurrent**](UniswapV3Api.md#uniswapV3GetTokensDayDataCurrent) | **GET** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current)
[**uniswapV3GetTokensHourDataCurrent**](UniswapV3Api.md#uniswapV3GetTokensHourDataCurrent) | **GET** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current)


<a name="uniswapV3GetBundlesCurrent"></a>
# **uniswapV3GetBundlesCurrent**
> kotlin.collections.List&lt;UniswapV3BundleV3DTO&gt; uniswapV3GetBundlesCurrent()

Bundles (current)

Gets bundles.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
try {
    val result : kotlin.collections.List<UniswapV3BundleV3DTO> = apiInstance.uniswapV3GetBundlesCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#uniswapV3GetBundlesCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#uniswapV3GetBundlesCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;UniswapV3BundleV3DTO&gt;**](UniswapV3BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV3GetBurnsCurrent"></a>
# **uniswapV3GetBurnsCurrent**
> kotlin.collections.List&lt;UniswapV3BurnV3DTO&gt; uniswapV3GetBurnsCurrent(filterPoolId)

Burns (current)

Gets burns.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val filterPoolId : kotlin.String = filterPoolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV3BurnV3DTO> = apiInstance.uniswapV3GetBurnsCurrent(filterPoolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#uniswapV3GetBurnsCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#uniswapV3GetBurnsCurrent")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV3BurnV3DTO&gt;**](UniswapV3BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV3GetDayDataCurrent"></a>
# **uniswapV3GetDayDataCurrent**
> kotlin.collections.List&lt;UniswapV3UniswapDayDataV3DTO&gt; uniswapV3GetDayDataCurrent()

DayData (current)

Gets uniswapv3 day data.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
try {
    val result : kotlin.collections.List<UniswapV3UniswapDayDataV3DTO> = apiInstance.uniswapV3GetDayDataCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#uniswapV3GetDayDataCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#uniswapV3GetDayDataCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;UniswapV3UniswapDayDataV3DTO&gt;**](UniswapV3UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV3GetFactoryCurrent"></a>
# **uniswapV3GetFactoryCurrent**
> kotlin.collections.List&lt;UniswapV3FactoryV3DTO&gt; uniswapV3GetFactoryCurrent()

Factory (current)

Gets factory.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
try {
    val result : kotlin.collections.List<UniswapV3FactoryV3DTO> = apiInstance.uniswapV3GetFactoryCurrent()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#uniswapV3GetFactoryCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#uniswapV3GetFactoryCurrent")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;UniswapV3FactoryV3DTO&gt;**](UniswapV3FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV3GetMintsCurrent"></a>
# **uniswapV3GetMintsCurrent**
> kotlin.collections.List&lt;UniswapV3MintV3DTO&gt; uniswapV3GetMintsCurrent(filterPoolId)

Mints (current)

Gets mints.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val filterPoolId : kotlin.String = filterPoolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV3MintV3DTO> = apiInstance.uniswapV3GetMintsCurrent(filterPoolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#uniswapV3GetMintsCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#uniswapV3GetMintsCurrent")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV3MintV3DTO&gt;**](UniswapV3MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV3GetPoolsCurrent"></a>
# **uniswapV3GetPoolsCurrent**
> kotlin.collections.List&lt;UniswapV3PoolV3DTO&gt; uniswapV3GetPoolsCurrent(filterPoolId)

Pools (current) 🔥

Gets pools.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val filterPoolId : kotlin.String = filterPoolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV3PoolV3DTO> = apiInstance.uniswapV3GetPoolsCurrent(filterPoolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#uniswapV3GetPoolsCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#uniswapV3GetPoolsCurrent")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV3PoolV3DTO&gt;**](UniswapV3PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV3GetPoolsDayDataCurrent"></a>
# **uniswapV3GetPoolsDayDataCurrent**
> kotlin.collections.List&lt;UniswapV3PoolDayDataV3DTO&gt; uniswapV3GetPoolsDayDataCurrent(filterPoolId)

PoolsDayData (current)

Gets pools day data.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val filterPoolId : kotlin.String = filterPoolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV3PoolDayDataV3DTO> = apiInstance.uniswapV3GetPoolsDayDataCurrent(filterPoolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#uniswapV3GetPoolsDayDataCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#uniswapV3GetPoolsDayDataCurrent")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV3PoolDayDataV3DTO&gt;**](UniswapV3PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV3GetPoolsHourDataCurrent"></a>
# **uniswapV3GetPoolsHourDataCurrent**
> kotlin.collections.List&lt;UniswapV3PoolHourDataV3DTO&gt; uniswapV3GetPoolsHourDataCurrent(filterPoolId)

PoolsHourData (current)

Gets pools hour data.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val filterPoolId : kotlin.String = filterPoolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV3PoolHourDataV3DTO> = apiInstance.uniswapV3GetPoolsHourDataCurrent(filterPoolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#uniswapV3GetPoolsHourDataCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#uniswapV3GetPoolsHourDataCurrent")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV3PoolHourDataV3DTO&gt;**](UniswapV3PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV3GetPositionsCurrent"></a>
# **uniswapV3GetPositionsCurrent**
> kotlin.collections.List&lt;UniswapV3PositionV3DTO&gt; uniswapV3GetPositionsCurrent(filterPoolId)

Positions (current)

Gets positions.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val filterPoolId : kotlin.String = filterPoolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV3PositionV3DTO> = apiInstance.uniswapV3GetPositionsCurrent(filterPoolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#uniswapV3GetPositionsCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#uniswapV3GetPositionsCurrent")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV3PositionV3DTO&gt;**](UniswapV3PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV3GetPositionsSnapshotsCurrent"></a>
# **uniswapV3GetPositionsSnapshotsCurrent**
> kotlin.collections.List&lt;UniswapV3PositionSnapshotV3DTO&gt; uniswapV3GetPositionsSnapshotsCurrent(filterPoolId)

PositionsSnapshots (current)

Gets positions snapshots.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val filterPoolId : kotlin.String = filterPoolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV3PositionSnapshotV3DTO> = apiInstance.uniswapV3GetPositionsSnapshotsCurrent(filterPoolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#uniswapV3GetPositionsSnapshotsCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#uniswapV3GetPositionsSnapshotsCurrent")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV3PositionSnapshotV3DTO&gt;**](UniswapV3PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV3GetSwapsCurrent"></a>
# **uniswapV3GetSwapsCurrent**
> kotlin.collections.List&lt;UniswapV3SwapV3DTO&gt; uniswapV3GetSwapsCurrent(filterPoolId)

Swaps (current) 🔥

Gets swaps.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val filterPoolId : kotlin.String = filterPoolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV3SwapV3DTO> = apiInstance.uniswapV3GetSwapsCurrent(filterPoolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#uniswapV3GetSwapsCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#uniswapV3GetSwapsCurrent")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV3SwapV3DTO&gt;**](UniswapV3SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV3GetTicksCurrent"></a>
# **uniswapV3GetTicksCurrent**
> kotlin.collections.List&lt;UniswapV3TickV3DTO&gt; uniswapV3GetTicksCurrent(filterPoolId)

Ticks (current)

Gets ticks.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val filterPoolId : kotlin.String = filterPoolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV3TickV3DTO> = apiInstance.uniswapV3GetTicksCurrent(filterPoolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#uniswapV3GetTicksCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#uniswapV3GetTicksCurrent")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV3TickV3DTO&gt;**](UniswapV3TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV3GetTicksDayDataCurrent"></a>
# **uniswapV3GetTicksDayDataCurrent**
> kotlin.collections.List&lt;UniswapV3TickDayDataV3DTO&gt; uniswapV3GetTicksDayDataCurrent(filterPoolId)

TicksDayData (current)

Gets ticks day data.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val filterPoolId : kotlin.String = filterPoolId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV3TickDayDataV3DTO> = apiInstance.uniswapV3GetTicksDayDataCurrent(filterPoolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#uniswapV3GetTicksDayDataCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#uniswapV3GetTicksDayDataCurrent")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV3TickDayDataV3DTO&gt;**](UniswapV3TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV3GetTokensCurrent"></a>
# **uniswapV3GetTokensCurrent**
> kotlin.collections.List&lt;UniswapV3TokenV3DTO&gt; uniswapV3GetTokensCurrent(filterTokenId)

Tokens (current) 🔥

Gets tokens.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val filterTokenId : kotlin.String = filterTokenId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV3TokenV3DTO> = apiInstance.uniswapV3GetTokensCurrent(filterTokenId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#uniswapV3GetTokensCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#uniswapV3GetTokensCurrent")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTokenId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV3TokenV3DTO&gt;**](UniswapV3TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV3GetTokensDayDataCurrent"></a>
# **uniswapV3GetTokensDayDataCurrent**
> kotlin.collections.List&lt;UniswapV3TokenV3DayDataDTO&gt; uniswapV3GetTokensDayDataCurrent(filterTokenId)

TokensDayData (current)

Gets tokens day data.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val filterTokenId : kotlin.String = filterTokenId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV3TokenV3DayDataDTO> = apiInstance.uniswapV3GetTokensDayDataCurrent(filterTokenId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#uniswapV3GetTokensDayDataCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#uniswapV3GetTokensDayDataCurrent")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTokenId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV3TokenV3DayDataDTO&gt;**](UniswapV3TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV3GetTokensHourDataCurrent"></a>
# **uniswapV3GetTokensHourDataCurrent**
> kotlin.collections.List&lt;UniswapV3TokenHourDataV3DTO&gt; uniswapV3GetTokensHourDataCurrent(filterTokenId)

TokensHourData (current)

Gets tokens hour data.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val filterTokenId : kotlin.String = filterTokenId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV3TokenHourDataV3DTO> = apiInstance.uniswapV3GetTokensHourDataCurrent(filterTokenId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#uniswapV3GetTokensHourDataCurrent")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#uniswapV3GetTokensHourDataCurrent")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTokenId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV3TokenHourDataV3DTO&gt;**](UniswapV3TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

