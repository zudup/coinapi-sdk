# UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswapV2GetBundleV2sHistorical**](UniswapV2Api.md#uniswapV2GetBundleV2sHistorical) | **GET** /dapps/uniswapv2/bundlev2s/historical | BundleV2s (historical) 🔥
[**uniswapV2GetBurnV2sHistorical**](UniswapV2Api.md#uniswapV2GetBurnV2sHistorical) | **GET** /dapps/uniswapv2/burnv2s/historical | BurnV2s (historical) 🔥
[**uniswapV2GetLiquidityPositionSnapshotV2sHistorical**](UniswapV2Api.md#uniswapV2GetLiquidityPositionSnapshotV2sHistorical) | **GET** /dapps/uniswapv2/liquiditypositionsnapshotv2s/historical | LiquidityPositionSnapshotV2s (historical) 🔥
[**uniswapV2GetLiquidityPositionV2sHistorical**](UniswapV2Api.md#uniswapV2GetLiquidityPositionV2sHistorical) | **GET** /dapps/uniswapv2/liquiditypositionv2s/historical | LiquidityPositionV2s (historical) 🔥
[**uniswapV2GetMintV2sHistorical**](UniswapV2Api.md#uniswapV2GetMintV2sHistorical) | **GET** /dapps/uniswapv2/mintv2s/historical | MintV2s (historical) 🔥
[**uniswapV2GetPairDayDataV2sHistorical**](UniswapV2Api.md#uniswapV2GetPairDayDataV2sHistorical) | **GET** /dapps/uniswapv2/pairdaydatav2s/historical | PairDayDataV2s (historical) 🔥
[**uniswapV2GetPairHourDataV2sHistorical**](UniswapV2Api.md#uniswapV2GetPairHourDataV2sHistorical) | **GET** /dapps/uniswapv2/pairhourdatav2s/historical | PairHourDataV2s (historical) 🔥
[**uniswapV2GetPairV2sHistorical**](UniswapV2Api.md#uniswapV2GetPairV2sHistorical) | **GET** /dapps/uniswapv2/pairv2s/historical | PairV2s (historical) 🔥
[**uniswapV2GetPoolsCurrent**](UniswapV2Api.md#uniswapV2GetPoolsCurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
[**uniswapV2GetSwapV2sHistorical**](UniswapV2Api.md#uniswapV2GetSwapV2sHistorical) | **GET** /dapps/uniswapv2/swapv2s/historical | SwapV2s (historical) 🔥
[**uniswapV2GetSwapsCurrent**](UniswapV2Api.md#uniswapV2GetSwapsCurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
[**uniswapV2GetTokenDayDataV2sHistorical**](UniswapV2Api.md#uniswapV2GetTokenDayDataV2sHistorical) | **GET** /dapps/uniswapv2/tokendaydatav2s/historical | TokenDayDataV2s (historical) 🔥
[**uniswapV2GetTokenV2sHistorical**](UniswapV2Api.md#uniswapV2GetTokenV2sHistorical) | **GET** /dapps/uniswapv2/tokenv2s/historical | TokenV2s (historical) 🔥
[**uniswapV2GetTokensCurrent**](UniswapV2Api.md#uniswapV2GetTokensCurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥
[**uniswapV2GetTransactionV2sHistorical**](UniswapV2Api.md#uniswapV2GetTransactionV2sHistorical) | **GET** /dapps/uniswapv2/transactionv2s/historical | TransactionV2s (historical) 🔥
[**uniswapV2GetUniswapDayDataV2sHistorical**](UniswapV2Api.md#uniswapV2GetUniswapDayDataV2sHistorical) | **GET** /dapps/uniswapv2/uniswapdaydatav2s/historical | UniswapDayDataV2s (historical) 🔥
[**uniswapV2GetUniswapFactoryV2sHistorical**](UniswapV2Api.md#uniswapV2GetUniswapFactoryV2sHistorical) | **GET** /dapps/uniswapv2/uniswapfactoryv2s/historical | UniswapFactoryV2s (historical) 🔥
[**uniswapV2GetUserV2sHistorical**](UniswapV2Api.md#uniswapV2GetUserV2sHistorical) | **GET** /dapps/uniswapv2/userv2s/historical | UserV2s (historical) 🔥


<a name="uniswapV2GetBundleV2sHistorical"></a>
# **uniswapV2GetBundleV2sHistorical**
> kotlin.collections.List&lt;UniswapV2BundleV2DTO&gt; uniswapV2GetBundleV2sHistorical(startBlock, endBlock, startDate, endDate, id)

BundleV2s (historical) 🔥

Gets bundlev2s.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | Constant 1.
try {
    val result : kotlin.collections.List<UniswapV2BundleV2DTO> = apiInstance.uniswapV2GetBundleV2sHistorical(startBlock, endBlock, startDate, endDate, id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetBundleV2sHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetBundleV2sHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**| Constant 1. | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV2BundleV2DTO&gt;**](UniswapV2BundleV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetBurnV2sHistorical"></a>
# **uniswapV2GetBurnV2sHistorical**
> kotlin.collections.List&lt;UniswapV2BurnV2DTO&gt; uniswapV2GetBurnV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair)

BurnV2s (historical) 🔥

Gets burnv2s.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | Transaction hash plus index in the transaction burn array
val pair : kotlin.String = pair_example // kotlin.String | Reference to pair.
try {
    val result : kotlin.collections.List<UniswapV2BurnV2DTO> = apiInstance.uniswapV2GetBurnV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetBurnV2sHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetBurnV2sHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**| Transaction hash plus index in the transaction burn array | [optional]
 **pair** | **kotlin.String**| Reference to pair. | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV2BurnV2DTO&gt;**](UniswapV2BurnV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetLiquidityPositionSnapshotV2sHistorical"></a>
# **uniswapV2GetLiquidityPositionSnapshotV2sHistorical**
> kotlin.collections.List&lt;UniswapV2LiquidityPositionSnapshotV2DTO&gt; uniswapV2GetLiquidityPositionSnapshotV2sHistorical(startBlock, endBlock, startDate, endDate, id, user, pair)

LiquidityPositionSnapshotV2s (historical) 🔥

Gets liquiditypositionsnapshotv2s.

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
val id : kotlin.String = id_example // kotlin.String | 
val user : kotlin.String = user_example // kotlin.String | 
val pair : kotlin.String = pair_example // kotlin.String | 
try {
    val result : kotlin.collections.List<UniswapV2LiquidityPositionSnapshotV2DTO> = apiInstance.uniswapV2GetLiquidityPositionSnapshotV2sHistorical(startBlock, endBlock, startDate, endDate, id, user, pair)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetLiquidityPositionSnapshotV2sHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetLiquidityPositionSnapshotV2sHistorical")
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
 **id** | **kotlin.String**|  | [optional]
 **user** | **kotlin.String**|  | [optional]
 **pair** | **kotlin.String**|  | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV2LiquidityPositionSnapshotV2DTO&gt;**](UniswapV2LiquidityPositionSnapshotV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetLiquidityPositionV2sHistorical"></a>
# **uniswapV2GetLiquidityPositionV2sHistorical**
> kotlin.collections.List&lt;UniswapV2LiquidityPositionV2DTO&gt; uniswapV2GetLiquidityPositionV2sHistorical(startBlock, endBlock, startDate, endDate, id, user, pair)

LiquidityPositionV2s (historical) 🔥

Gets liquiditypositionv2s.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | User address and pair address concatenated with a dash.
val user : kotlin.String = user_example // kotlin.String | Reference to user.
val pair : kotlin.String = pair_example // kotlin.String | Reference to the pair liquidity is being provided on.
try {
    val result : kotlin.collections.List<UniswapV2LiquidityPositionV2DTO> = apiInstance.uniswapV2GetLiquidityPositionV2sHistorical(startBlock, endBlock, startDate, endDate, id, user, pair)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetLiquidityPositionV2sHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetLiquidityPositionV2sHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**| User address and pair address concatenated with a dash. | [optional]
 **user** | **kotlin.String**| Reference to user. | [optional]
 **pair** | **kotlin.String**| Reference to the pair liquidity is being provided on. | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV2LiquidityPositionV2DTO&gt;**](UniswapV2LiquidityPositionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetMintV2sHistorical"></a>
# **uniswapV2GetMintV2sHistorical**
> kotlin.collections.List&lt;UniswapV2MintV2DTO&gt; uniswapV2GetMintV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair)

MintV2s (historical) 🔥

Gets mintv2s.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | Transaction hash plus index in the transaction mint array.
val pair : kotlin.String = pair_example // kotlin.String | Reference to pair.
try {
    val result : kotlin.collections.List<UniswapV2MintV2DTO> = apiInstance.uniswapV2GetMintV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetMintV2sHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetMintV2sHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**| Transaction hash plus index in the transaction mint array. | [optional]
 **pair** | **kotlin.String**| Reference to pair. | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV2MintV2DTO&gt;**](UniswapV2MintV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetPairDayDataV2sHistorical"></a>
# **uniswapV2GetPairDayDataV2sHistorical**
> kotlin.collections.List&lt;UniswapV2PairDayDataV2DTO&gt; uniswapV2GetPairDayDataV2sHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1)

PairDayDataV2s (historical) 🔥

Gets pairdaydatav2s.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | 
val token0 : kotlin.String = token0_example // kotlin.String | Reference to token0.
val token1 : kotlin.String = token1_example // kotlin.String | Reference to token1.
try {
    val result : kotlin.collections.List<UniswapV2PairDayDataV2DTO> = apiInstance.uniswapV2GetPairDayDataV2sHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetPairDayDataV2sHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetPairDayDataV2sHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**|  | [optional]
 **token0** | **kotlin.String**| Reference to token0. | [optional]
 **token1** | **kotlin.String**| Reference to token1. | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV2PairDayDataV2DTO&gt;**](UniswapV2PairDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetPairHourDataV2sHistorical"></a>
# **uniswapV2GetPairHourDataV2sHistorical**
> kotlin.collections.List&lt;UniswapV2PairHourDataV2DTO&gt; uniswapV2GetPairHourDataV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair)

PairHourDataV2s (historical) 🔥

Gets pairhourdatav2s.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | 
val pair : kotlin.String = pair_example // kotlin.String | Address for pair contract.
try {
    val result : kotlin.collections.List<UniswapV2PairHourDataV2DTO> = apiInstance.uniswapV2GetPairHourDataV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetPairHourDataV2sHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetPairHourDataV2sHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**|  | [optional]
 **pair** | **kotlin.String**| Address for pair contract. | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV2PairHourDataV2DTO&gt;**](UniswapV2PairHourDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetPairV2sHistorical"></a>
# **uniswapV2GetPairV2sHistorical**
> kotlin.collections.List&lt;UniswapV2PairV2DTO&gt; uniswapV2GetPairV2sHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1)

PairV2s (historical) 🔥

Gets pairv2s.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | Pair contract address.
val token0 : kotlin.String = token0_example // kotlin.String | Reference to token0 as stored in pair contract.
val token1 : kotlin.String = token1_example // kotlin.String | Reference to token1 as stored in pair contract.
try {
    val result : kotlin.collections.List<UniswapV2PairV2DTO> = apiInstance.uniswapV2GetPairV2sHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetPairV2sHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetPairV2sHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**| Pair contract address. | [optional]
 **token0** | **kotlin.String**| Reference to token0 as stored in pair contract. | [optional]
 **token1** | **kotlin.String**| Reference to token1 as stored in pair contract. | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV2PairV2DTO&gt;**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetPoolsCurrent"></a>
# **uniswapV2GetPoolsCurrent**
> kotlin.collections.List&lt;UniswapV2PairV2DTO&gt; uniswapV2GetPoolsCurrent(filterPoolId)

Pools (current) 🔥

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

<a name="uniswapV2GetSwapV2sHistorical"></a>
# **uniswapV2GetSwapV2sHistorical**
> kotlin.collections.List&lt;UniswapV2SwapV2DTO&gt; uniswapV2GetSwapV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair)

SwapV2s (historical) 🔥

Gets swapv2s.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | Transaction hash plus index in Transaction swap array.
val pair : kotlin.String = pair_example // kotlin.String | Reference to pair.
try {
    val result : kotlin.collections.List<UniswapV2SwapV2DTO> = apiInstance.uniswapV2GetSwapV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetSwapV2sHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetSwapV2sHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**| Transaction hash plus index in Transaction swap array. | [optional]
 **pair** | **kotlin.String**| Reference to pair. | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV2SwapV2DTO&gt;**](UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetSwapsCurrent"></a>
# **uniswapV2GetSwapsCurrent**
> kotlin.collections.List&lt;UniswapV2SwapV2DTO&gt; uniswapV2GetSwapsCurrent()

Swaps (current) 🔥

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

<a name="uniswapV2GetTokenDayDataV2sHistorical"></a>
# **uniswapV2GetTokenDayDataV2sHistorical**
> kotlin.collections.List&lt;UniswapV2TokenDayDataV2DTO&gt; uniswapV2GetTokenDayDataV2sHistorical(startBlock, endBlock, startDate, endDate, id)

TokenDayDataV2s (historical) 🔥

Gets tokendaydatav2s.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | Token address and day id (day start timestamp in unix / 86400) concatenated with a dash.
try {
    val result : kotlin.collections.List<UniswapV2TokenDayDataV2DTO> = apiInstance.uniswapV2GetTokenDayDataV2sHistorical(startBlock, endBlock, startDate, endDate, id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetTokenDayDataV2sHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetTokenDayDataV2sHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**| Token address and day id (day start timestamp in unix / 86400) concatenated with a dash. | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV2TokenDayDataV2DTO&gt;**](UniswapV2TokenDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetTokenV2sHistorical"></a>
# **uniswapV2GetTokenV2sHistorical**
> kotlin.collections.List&lt;UniswapV2TokenV2DTO&gt; uniswapV2GetTokenV2sHistorical(startBlock, endBlock, startDate, endDate, id, symbol, name)

TokenV2s (historical) 🔥

Gets tokenv2s.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | Token address.
val symbol : kotlin.String = symbol_example // kotlin.String | Token symbol.
val name : kotlin.String = name_example // kotlin.String | Token name.
try {
    val result : kotlin.collections.List<UniswapV2TokenV2DTO> = apiInstance.uniswapV2GetTokenV2sHistorical(startBlock, endBlock, startDate, endDate, id, symbol, name)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetTokenV2sHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetTokenV2sHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**| Token address. | [optional]
 **symbol** | **kotlin.String**| Token symbol. | [optional]
 **name** | **kotlin.String**| Token name. | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV2TokenV2DTO&gt;**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetTokensCurrent"></a>
# **uniswapV2GetTokensCurrent**
> kotlin.collections.List&lt;UniswapV2TokenV2DTO&gt; uniswapV2GetTokensCurrent()

Tokens (current) 🔥

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

<a name="uniswapV2GetTransactionV2sHistorical"></a>
# **uniswapV2GetTransactionV2sHistorical**
> kotlin.collections.List&lt;UniswapV2TransactionV2DTO&gt; uniswapV2GetTransactionV2sHistorical(startBlock, endBlock, startDate, endDate, id)

TransactionV2s (historical) 🔥

Gets transactionv2s.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | Ethereum transaction hash.
try {
    val result : kotlin.collections.List<UniswapV2TransactionV2DTO> = apiInstance.uniswapV2GetTransactionV2sHistorical(startBlock, endBlock, startDate, endDate, id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetTransactionV2sHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetTransactionV2sHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**| Ethereum transaction hash. | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV2TransactionV2DTO&gt;**](UniswapV2TransactionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetUniswapDayDataV2sHistorical"></a>
# **uniswapV2GetUniswapDayDataV2sHistorical**
> kotlin.collections.List&lt;UniswapV2UniswapDayDataV2DTO&gt; uniswapV2GetUniswapDayDataV2sHistorical(startBlock, endBlock, startDate, endDate, id)

UniswapDayDataV2s (historical) 🔥

Gets uniswapdaydatav2s.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | Unix timestamp for start of day / 86400 giving a unique day index.
try {
    val result : kotlin.collections.List<UniswapV2UniswapDayDataV2DTO> = apiInstance.uniswapV2GetUniswapDayDataV2sHistorical(startBlock, endBlock, startDate, endDate, id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetUniswapDayDataV2sHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetUniswapDayDataV2sHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**| Unix timestamp for start of day / 86400 giving a unique day index. | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV2UniswapDayDataV2DTO&gt;**](UniswapV2UniswapDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetUniswapFactoryV2sHistorical"></a>
# **uniswapV2GetUniswapFactoryV2sHistorical**
> kotlin.collections.List&lt;UniswapV2UniswapFactoryV2DTO&gt; uniswapV2GetUniswapFactoryV2sHistorical(startBlock, endBlock, startDate, endDate, id)

UniswapFactoryV2s (historical) 🔥

Gets uniswapfactoryv2s.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | Factory address.
try {
    val result : kotlin.collections.List<UniswapV2UniswapFactoryV2DTO> = apiInstance.uniswapV2GetUniswapFactoryV2sHistorical(startBlock, endBlock, startDate, endDate, id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetUniswapFactoryV2sHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetUniswapFactoryV2sHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**| Factory address. | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV2UniswapFactoryV2DTO&gt;**](UniswapV2UniswapFactoryV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="uniswapV2GetUserV2sHistorical"></a>
# **uniswapV2GetUserV2sHistorical**
> kotlin.collections.List&lt;UniswapV2UserV2DTO&gt; uniswapV2GetUserV2sHistorical(startBlock, endBlock, startDate, endDate, id)

UserV2s (historical) 🔥

Gets userv2s.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = UniswapV2Api()
val startBlock : kotlin.Long = 789 // kotlin.Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
val endBlock : kotlin.Long = 789 // kotlin.Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | The end date of timeframe.
val id : kotlin.String = id_example // kotlin.String | User address.
try {
    val result : kotlin.collections.List<UniswapV2UserV2DTO> = apiInstance.uniswapV2GetUserV2sHistorical(startBlock, endBlock, startDate, endDate, id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UniswapV2Api#uniswapV2GetUserV2sHistorical")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UniswapV2Api#uniswapV2GetUserV2sHistorical")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **kotlin.Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **java.time.OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **java.time.OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **kotlin.String**| User address. | [optional]

### Return type

[**kotlin.collections.List&lt;UniswapV2UserV2DTO&gt;**](UniswapV2UserV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

