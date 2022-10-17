# UniswapV3Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsUniswapv3BundleCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3BundleCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles
[**chainsChainIdDappsUniswapv3BurnsCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3BurnsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns
[**chainsChainIdDappsUniswapv3FactoryCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3FactoryCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory
[**chainsChainIdDappsUniswapv3MintsCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3MintsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints
[**chainsChainIdDappsUniswapv3PoolsCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3PoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools
[**chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData
[**chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData
[**chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot
[**chainsChainIdDappsUniswapv3PositionsCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3PositionsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions
[**chainsChainIdDappsUniswapv3SwapsCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3SwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps
[**chainsChainIdDappsUniswapv3TicksCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3TicksCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks
[**chainsChainIdDappsUniswapv3TicksDayDataCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3TicksDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData
[**chainsChainIdDappsUniswapv3TokensCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3TokensCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens
[**chainsChainIdDappsUniswapv3TokensDayDataCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3TokensDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData
[**chainsChainIdDappsUniswapv3TokensHourDataCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3TokensHourDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData
[**chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData


<a name="chainsChainIdDappsUniswapv3BundleCurrentGet"></a>
# **chainsChainIdDappsUniswapv3BundleCurrentGet**
> kotlin.collections.List&lt;BundleV3DTO&gt; chainsChainIdDappsUniswapv3BundleCurrentGet(chainId)

GetBundles

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val chainId : kotlin.String = chainId_example // kotlin.String | Chain id
try {
    val result : kotlin.collections.List<BundleV3DTO> = apiInstance.chainsChainIdDappsUniswapv3BundleCurrentGet(chainId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3BundleCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3BundleCurrentGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **kotlin.String**| Chain id |

### Return type

[**kotlin.collections.List&lt;BundleV3DTO&gt;**](BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="chainsChainIdDappsUniswapv3BurnsCurrentGet"></a>
# **chainsChainIdDappsUniswapv3BurnsCurrentGet**
> kotlin.collections.List&lt;BurnV3DTO&gt; chainsChainIdDappsUniswapv3BurnsCurrentGet(chainId, filterPoolId)

GetBurns

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val chainId : kotlin.String = chainId_example // kotlin.String | Chain id
val filterPoolId : kotlin.String = filterPoolId_example // kotlin.String | Filter pool id
try {
    val result : kotlin.collections.List<BurnV3DTO> = apiInstance.chainsChainIdDappsUniswapv3BurnsCurrentGet(chainId, filterPoolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3BurnsCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3BurnsCurrentGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **kotlin.String**| Chain id |
 **filterPoolId** | **kotlin.String**| Filter pool id | [optional]

### Return type

[**kotlin.collections.List&lt;BurnV3DTO&gt;**](BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="chainsChainIdDappsUniswapv3FactoryCurrentGet"></a>
# **chainsChainIdDappsUniswapv3FactoryCurrentGet**
> kotlin.collections.List&lt;FactoryV3DTO&gt; chainsChainIdDappsUniswapv3FactoryCurrentGet(chainId)

GetFactory

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val chainId : kotlin.String = chainId_example // kotlin.String | Chain id
try {
    val result : kotlin.collections.List<FactoryV3DTO> = apiInstance.chainsChainIdDappsUniswapv3FactoryCurrentGet(chainId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3FactoryCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3FactoryCurrentGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **kotlin.String**| Chain id |

### Return type

[**kotlin.collections.List&lt;FactoryV3DTO&gt;**](FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="chainsChainIdDappsUniswapv3MintsCurrentGet"></a>
# **chainsChainIdDappsUniswapv3MintsCurrentGet**
> kotlin.collections.List&lt;MintV3DTO&gt; chainsChainIdDappsUniswapv3MintsCurrentGet(chainId, filterPoolId)

GetMints

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val chainId : kotlin.String = chainId_example // kotlin.String | Chain id
val filterPoolId : kotlin.String = filterPoolId_example // kotlin.String | Filter pool id
try {
    val result : kotlin.collections.List<MintV3DTO> = apiInstance.chainsChainIdDappsUniswapv3MintsCurrentGet(chainId, filterPoolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3MintsCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3MintsCurrentGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **kotlin.String**| Chain id |
 **filterPoolId** | **kotlin.String**| Filter pool id | [optional]

### Return type

[**kotlin.collections.List&lt;MintV3DTO&gt;**](MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="chainsChainIdDappsUniswapv3PoolsCurrentGet"></a>
# **chainsChainIdDappsUniswapv3PoolsCurrentGet**
> kotlin.collections.List&lt;PoolV3DTO&gt; chainsChainIdDappsUniswapv3PoolsCurrentGet(chainId, filterPoolId)

GetPools

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val chainId : kotlin.String = chainId_example // kotlin.String | Chain id
val filterPoolId : kotlin.String = filterPoolId_example // kotlin.String | Filter pool id
try {
    val result : kotlin.collections.List<PoolV3DTO> = apiInstance.chainsChainIdDappsUniswapv3PoolsCurrentGet(chainId, filterPoolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3PoolsCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3PoolsCurrentGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **kotlin.String**| Chain id |
 **filterPoolId** | **kotlin.String**| Filter pool id | [optional]

### Return type

[**kotlin.collections.List&lt;PoolV3DTO&gt;**](PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet"></a>
# **chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet**
> kotlin.collections.List&lt;PoolDayDataV3DTO&gt; chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet(chainId, filterPoolId)

GetPoolsDayData

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val chainId : kotlin.String = chainId_example // kotlin.String | Chain id
val filterPoolId : kotlin.String = filterPoolId_example // kotlin.String | Filter pool id
try {
    val result : kotlin.collections.List<PoolDayDataV3DTO> = apiInstance.chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet(chainId, filterPoolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **kotlin.String**| Chain id |
 **filterPoolId** | **kotlin.String**| Filter pool id | [optional]

### Return type

[**kotlin.collections.List&lt;PoolDayDataV3DTO&gt;**](PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet"></a>
# **chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet**
> kotlin.collections.List&lt;PoolHourDataV3DTO&gt; chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet(chainId, filterPoolId)

GetPoolsHourData

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val chainId : kotlin.String = chainId_example // kotlin.String | Chain id
val filterPoolId : kotlin.String = filterPoolId_example // kotlin.String | Filter pool id
try {
    val result : kotlin.collections.List<PoolHourDataV3DTO> = apiInstance.chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet(chainId, filterPoolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **kotlin.String**| Chain id |
 **filterPoolId** | **kotlin.String**| Filter pool id | [optional]

### Return type

[**kotlin.collections.List&lt;PoolHourDataV3DTO&gt;**](PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet"></a>
# **chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet**
> kotlin.collections.List&lt;PositionSnapshotV3DTO&gt; chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet(chainId, filterPoolId)

GetPositionSnapshot

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val chainId : kotlin.String = chainId_example // kotlin.String | Chain id
val filterPoolId : kotlin.String = filterPoolId_example // kotlin.String | Filter pool id
try {
    val result : kotlin.collections.List<PositionSnapshotV3DTO> = apiInstance.chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet(chainId, filterPoolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **kotlin.String**| Chain id |
 **filterPoolId** | **kotlin.String**| Filter pool id | [optional]

### Return type

[**kotlin.collections.List&lt;PositionSnapshotV3DTO&gt;**](PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="chainsChainIdDappsUniswapv3PositionsCurrentGet"></a>
# **chainsChainIdDappsUniswapv3PositionsCurrentGet**
> kotlin.collections.List&lt;PositionV3DTO&gt; chainsChainIdDappsUniswapv3PositionsCurrentGet(chainId, filterPoolId)

GetPositions

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val chainId : kotlin.String = chainId_example // kotlin.String | Chain id
val filterPoolId : kotlin.String = filterPoolId_example // kotlin.String | Filter pool id
try {
    val result : kotlin.collections.List<PositionV3DTO> = apiInstance.chainsChainIdDappsUniswapv3PositionsCurrentGet(chainId, filterPoolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3PositionsCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3PositionsCurrentGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **kotlin.String**| Chain id |
 **filterPoolId** | **kotlin.String**| Filter pool id | [optional]

### Return type

[**kotlin.collections.List&lt;PositionV3DTO&gt;**](PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="chainsChainIdDappsUniswapv3SwapsCurrentGet"></a>
# **chainsChainIdDappsUniswapv3SwapsCurrentGet**
> kotlin.collections.List&lt;SwapV3DTO&gt; chainsChainIdDappsUniswapv3SwapsCurrentGet(chainId, filterPoolId)

GetSwaps

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val chainId : kotlin.String = chainId_example // kotlin.String | Chain id
val filterPoolId : kotlin.String = filterPoolId_example // kotlin.String | Filter pool id
try {
    val result : kotlin.collections.List<SwapV3DTO> = apiInstance.chainsChainIdDappsUniswapv3SwapsCurrentGet(chainId, filterPoolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3SwapsCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3SwapsCurrentGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **kotlin.String**| Chain id |
 **filterPoolId** | **kotlin.String**| Filter pool id | [optional]

### Return type

[**kotlin.collections.List&lt;SwapV3DTO&gt;**](SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="chainsChainIdDappsUniswapv3TicksCurrentGet"></a>
# **chainsChainIdDappsUniswapv3TicksCurrentGet**
> kotlin.collections.List&lt;TickV3DTO&gt; chainsChainIdDappsUniswapv3TicksCurrentGet(chainId, filterPoolId)

GetTicks

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val chainId : kotlin.String = chainId_example // kotlin.String | Chain id
val filterPoolId : kotlin.String = filterPoolId_example // kotlin.String | Filter pool id
try {
    val result : kotlin.collections.List<TickV3DTO> = apiInstance.chainsChainIdDappsUniswapv3TicksCurrentGet(chainId, filterPoolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3TicksCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3TicksCurrentGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **kotlin.String**| Chain id |
 **filterPoolId** | **kotlin.String**| Filter pool id | [optional]

### Return type

[**kotlin.collections.List&lt;TickV3DTO&gt;**](TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="chainsChainIdDappsUniswapv3TicksDayDataCurrentGet"></a>
# **chainsChainIdDappsUniswapv3TicksDayDataCurrentGet**
> kotlin.collections.List&lt;TickDayDataV3DTO&gt; chainsChainIdDappsUniswapv3TicksDayDataCurrentGet(chainId, filterPoolId)

GetTicksDayData

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val chainId : kotlin.String = chainId_example // kotlin.String | Chain id
val filterPoolId : kotlin.String = filterPoolId_example // kotlin.String | Filter pool id
try {
    val result : kotlin.collections.List<TickDayDataV3DTO> = apiInstance.chainsChainIdDappsUniswapv3TicksDayDataCurrentGet(chainId, filterPoolId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3TicksDayDataCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3TicksDayDataCurrentGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **kotlin.String**| Chain id |
 **filterPoolId** | **kotlin.String**| Filter pool id | [optional]

### Return type

[**kotlin.collections.List&lt;TickDayDataV3DTO&gt;**](TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="chainsChainIdDappsUniswapv3TokensCurrentGet"></a>
# **chainsChainIdDappsUniswapv3TokensCurrentGet**
> kotlin.collections.List&lt;TokenV3DTO&gt; chainsChainIdDappsUniswapv3TokensCurrentGet(chainId, filterTokenId)

GetTokens

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val chainId : kotlin.String = chainId_example // kotlin.String | Chain id
val filterTokenId : kotlin.String = filterTokenId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<TokenV3DTO> = apiInstance.chainsChainIdDappsUniswapv3TokensCurrentGet(chainId, filterTokenId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3TokensCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3TokensCurrentGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **kotlin.String**| Chain id |
 **filterTokenId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;TokenV3DTO&gt;**](TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="chainsChainIdDappsUniswapv3TokensDayDataCurrentGet"></a>
# **chainsChainIdDappsUniswapv3TokensDayDataCurrentGet**
> kotlin.collections.List&lt;TokenV3DayDataDTO&gt; chainsChainIdDappsUniswapv3TokensDayDataCurrentGet(chainId, filterTokenId)

GetTokensDayData

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val chainId : kotlin.String = chainId_example // kotlin.String | Chain id
val filterTokenId : kotlin.String = filterTokenId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<TokenV3DayDataDTO> = apiInstance.chainsChainIdDappsUniswapv3TokensDayDataCurrentGet(chainId, filterTokenId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3TokensDayDataCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3TokensDayDataCurrentGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **kotlin.String**| Chain id |
 **filterTokenId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;TokenV3DayDataDTO&gt;**](TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="chainsChainIdDappsUniswapv3TokensHourDataCurrentGet"></a>
# **chainsChainIdDappsUniswapv3TokensHourDataCurrentGet**
> kotlin.collections.List&lt;TokenHourDataV3DTO&gt; chainsChainIdDappsUniswapv3TokensHourDataCurrentGet(chainId, filterTokenId)

GetTokensHourData

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val chainId : kotlin.String = chainId_example // kotlin.String | Chain id
val filterTokenId : kotlin.String = filterTokenId_example // kotlin.String | 
try {
    val result : kotlin.collections.List<TokenHourDataV3DTO> = apiInstance.chainsChainIdDappsUniswapv3TokensHourDataCurrentGet(chainId, filterTokenId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3TokensHourDataCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3TokensHourDataCurrentGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **kotlin.String**| Chain id |
 **filterTokenId** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;TokenHourDataV3DTO&gt;**](TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet"></a>
# **chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet**
> kotlin.collections.List&lt;UniswapDayDataV3DTO&gt; chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet(chainId)

GetUniswapDayData

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV3Api()
val chainId : kotlin.String = chainId_example // kotlin.String | Chain id
try {
    val result : kotlin.collections.List<UniswapDayDataV3DTO> = apiInstance.chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet(chainId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV3Api#chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **kotlin.String**| Chain id |

### Return type

[**kotlin.collections.List&lt;UniswapDayDataV3DTO&gt;**](UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

