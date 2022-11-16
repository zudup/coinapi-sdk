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



## uniswapV2GetBundleV2sHistorical

> List&lt;UniswapV2BundleV2DTO&gt; uniswapV2GetBundleV2sHistorical(startBlock, endBlock, startDate, endDate, id)

BundleV2s (historical) 🔥

Gets bundlev2s.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | Constant 1.
try {
    List<UniswapV2BundleV2DTO> result = apiInstance.uniswapV2GetBundleV2sHistorical(startBlock, endBlock, startDate, endDate, id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetBundleV2sHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**| Constant 1. | [optional] [default to null]

### Return type

[**List&lt;UniswapV2BundleV2DTO&gt;**](UniswapV2BundleV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetBurnV2sHistorical

> List&lt;UniswapV2BurnV2DTO&gt; uniswapV2GetBurnV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair)

BurnV2s (historical) 🔥

Gets burnv2s.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | Transaction hash plus index in the transaction burn array
String pair = null; // String | Reference to pair.
try {
    List<UniswapV2BurnV2DTO> result = apiInstance.uniswapV2GetBurnV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetBurnV2sHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**| Transaction hash plus index in the transaction burn array | [optional] [default to null]
 **pair** | **String**| Reference to pair. | [optional] [default to null]

### Return type

[**List&lt;UniswapV2BurnV2DTO&gt;**](UniswapV2BurnV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetLiquidityPositionSnapshotV2sHistorical

> List&lt;UniswapV2LiquidityPositionSnapshotV2DTO&gt; uniswapV2GetLiquidityPositionSnapshotV2sHistorical(startBlock, endBlock, startDate, endDate, id, user, pair)

LiquidityPositionSnapshotV2s (historical) 🔥

Gets liquiditypositionsnapshotv2s.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String id = null; // String | 
String user = null; // String | 
String pair = null; // String | 
try {
    List<UniswapV2LiquidityPositionSnapshotV2DTO> result = apiInstance.uniswapV2GetLiquidityPositionSnapshotV2sHistorical(startBlock, endBlock, startDate, endDate, id, user, pair);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetLiquidityPositionSnapshotV2sHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional] [default to null]
 **endBlock** | **Long**|  | [optional] [default to null]
 **startDate** | **Date**|  | [optional] [default to null]
 **endDate** | **Date**|  | [optional] [default to null]
 **id** | **String**|  | [optional] [default to null]
 **user** | **String**|  | [optional] [default to null]
 **pair** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;UniswapV2LiquidityPositionSnapshotV2DTO&gt;**](UniswapV2LiquidityPositionSnapshotV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetLiquidityPositionV2sHistorical

> List&lt;UniswapV2LiquidityPositionV2DTO&gt; uniswapV2GetLiquidityPositionV2sHistorical(startBlock, endBlock, startDate, endDate, id, user, pair)

LiquidityPositionV2s (historical) 🔥

Gets liquiditypositionv2s.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | User address and pair address concatenated with a dash.
String user = null; // String | Reference to user.
String pair = null; // String | Reference to the pair liquidity is being provided on.
try {
    List<UniswapV2LiquidityPositionV2DTO> result = apiInstance.uniswapV2GetLiquidityPositionV2sHistorical(startBlock, endBlock, startDate, endDate, id, user, pair);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetLiquidityPositionV2sHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**| User address and pair address concatenated with a dash. | [optional] [default to null]
 **user** | **String**| Reference to user. | [optional] [default to null]
 **pair** | **String**| Reference to the pair liquidity is being provided on. | [optional] [default to null]

### Return type

[**List&lt;UniswapV2LiquidityPositionV2DTO&gt;**](UniswapV2LiquidityPositionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetMintV2sHistorical

> List&lt;UniswapV2MintV2DTO&gt; uniswapV2GetMintV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair)

MintV2s (historical) 🔥

Gets mintv2s.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | Transaction hash plus index in the transaction mint array.
String pair = null; // String | Reference to pair.
try {
    List<UniswapV2MintV2DTO> result = apiInstance.uniswapV2GetMintV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetMintV2sHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**| Transaction hash plus index in the transaction mint array. | [optional] [default to null]
 **pair** | **String**| Reference to pair. | [optional] [default to null]

### Return type

[**List&lt;UniswapV2MintV2DTO&gt;**](UniswapV2MintV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetPairDayDataV2sHistorical

> List&lt;UniswapV2PairDayDataV2DTO&gt; uniswapV2GetPairDayDataV2sHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1)

PairDayDataV2s (historical) 🔥

Gets pairdaydatav2s.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | 
String token0 = null; // String | Reference to token0.
String token1 = null; // String | Reference to token1.
try {
    List<UniswapV2PairDayDataV2DTO> result = apiInstance.uniswapV2GetPairDayDataV2sHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetPairDayDataV2sHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**|  | [optional] [default to null]
 **token0** | **String**| Reference to token0. | [optional] [default to null]
 **token1** | **String**| Reference to token1. | [optional] [default to null]

### Return type

[**List&lt;UniswapV2PairDayDataV2DTO&gt;**](UniswapV2PairDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetPairHourDataV2sHistorical

> List&lt;UniswapV2PairHourDataV2DTO&gt; uniswapV2GetPairHourDataV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair)

PairHourDataV2s (historical) 🔥

Gets pairhourdatav2s.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | 
String pair = null; // String | Address for pair contract.
try {
    List<UniswapV2PairHourDataV2DTO> result = apiInstance.uniswapV2GetPairHourDataV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetPairHourDataV2sHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**|  | [optional] [default to null]
 **pair** | **String**| Address for pair contract. | [optional] [default to null]

### Return type

[**List&lt;UniswapV2PairHourDataV2DTO&gt;**](UniswapV2PairHourDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetPairV2sHistorical

> List&lt;UniswapV2PairV2DTO&gt; uniswapV2GetPairV2sHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1)

PairV2s (historical) 🔥

Gets pairv2s.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | Pair contract address.
String token0 = null; // String | Reference to token0 as stored in pair contract.
String token1 = null; // String | Reference to token1 as stored in pair contract.
try {
    List<UniswapV2PairV2DTO> result = apiInstance.uniswapV2GetPairV2sHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetPairV2sHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**| Pair contract address. | [optional] [default to null]
 **token0** | **String**| Reference to token0 as stored in pair contract. | [optional] [default to null]
 **token1** | **String**| Reference to token1 as stored in pair contract. | [optional] [default to null]

### Return type

[**List&lt;UniswapV2PairV2DTO&gt;**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetPoolsCurrent

> List&lt;UniswapV2PairV2DTO&gt; uniswapV2GetPoolsCurrent(filterPoolId)

Pools (current) 🔥

Gets pools.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
String filterPoolId = null; // String | 
try {
    List<UniswapV2PairV2DTO> result = apiInstance.uniswapV2GetPoolsCurrent(filterPoolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetPoolsCurrent");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;UniswapV2PairV2DTO&gt;**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetSwapV2sHistorical

> List&lt;UniswapV2SwapV2DTO&gt; uniswapV2GetSwapV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair)

SwapV2s (historical) 🔥

Gets swapv2s.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | Transaction hash plus index in Transaction swap array.
String pair = null; // String | Reference to pair.
try {
    List<UniswapV2SwapV2DTO> result = apiInstance.uniswapV2GetSwapV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetSwapV2sHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**| Transaction hash plus index in Transaction swap array. | [optional] [default to null]
 **pair** | **String**| Reference to pair. | [optional] [default to null]

### Return type

[**List&lt;UniswapV2SwapV2DTO&gt;**](UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetSwapsCurrent

> List&lt;UniswapV2SwapV2DTO&gt; uniswapV2GetSwapsCurrent()

Swaps (current) 🔥

Gets swaps.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
try {
    List<UniswapV2SwapV2DTO> result = apiInstance.uniswapV2GetSwapsCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetSwapsCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;UniswapV2SwapV2DTO&gt;**](UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetTokenDayDataV2sHistorical

> List&lt;UniswapV2TokenDayDataV2DTO&gt; uniswapV2GetTokenDayDataV2sHistorical(startBlock, endBlock, startDate, endDate, id)

TokenDayDataV2s (historical) 🔥

Gets tokendaydatav2s.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | Token address and day id (day start timestamp in unix / 86400) concatenated with a dash.
try {
    List<UniswapV2TokenDayDataV2DTO> result = apiInstance.uniswapV2GetTokenDayDataV2sHistorical(startBlock, endBlock, startDate, endDate, id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetTokenDayDataV2sHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**| Token address and day id (day start timestamp in unix / 86400) concatenated with a dash. | [optional] [default to null]

### Return type

[**List&lt;UniswapV2TokenDayDataV2DTO&gt;**](UniswapV2TokenDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetTokenV2sHistorical

> List&lt;UniswapV2TokenV2DTO&gt; uniswapV2GetTokenV2sHistorical(startBlock, endBlock, startDate, endDate, id, symbol, name)

TokenV2s (historical) 🔥

Gets tokenv2s.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | Token address.
String symbol = null; // String | Token symbol.
String name = null; // String | Token name.
try {
    List<UniswapV2TokenV2DTO> result = apiInstance.uniswapV2GetTokenV2sHistorical(startBlock, endBlock, startDate, endDate, id, symbol, name);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetTokenV2sHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**| Token address. | [optional] [default to null]
 **symbol** | **String**| Token symbol. | [optional] [default to null]
 **name** | **String**| Token name. | [optional] [default to null]

### Return type

[**List&lt;UniswapV2TokenV2DTO&gt;**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetTokensCurrent

> List&lt;UniswapV2TokenV2DTO&gt; uniswapV2GetTokensCurrent()

Tokens (current) 🔥

Gets tokens.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
try {
    List<UniswapV2TokenV2DTO> result = apiInstance.uniswapV2GetTokensCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetTokensCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;UniswapV2TokenV2DTO&gt;**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetTransactionV2sHistorical

> List&lt;UniswapV2TransactionV2DTO&gt; uniswapV2GetTransactionV2sHistorical(startBlock, endBlock, startDate, endDate, id)

TransactionV2s (historical) 🔥

Gets transactionv2s.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | Ethereum transaction hash.
try {
    List<UniswapV2TransactionV2DTO> result = apiInstance.uniswapV2GetTransactionV2sHistorical(startBlock, endBlock, startDate, endDate, id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetTransactionV2sHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**| Ethereum transaction hash. | [optional] [default to null]

### Return type

[**List&lt;UniswapV2TransactionV2DTO&gt;**](UniswapV2TransactionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetUniswapDayDataV2sHistorical

> List&lt;UniswapV2UniswapDayDataV2DTO&gt; uniswapV2GetUniswapDayDataV2sHistorical(startBlock, endBlock, startDate, endDate, id)

UniswapDayDataV2s (historical) 🔥

Gets uniswapdaydatav2s.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | Unix timestamp for start of day / 86400 giving a unique day index.
try {
    List<UniswapV2UniswapDayDataV2DTO> result = apiInstance.uniswapV2GetUniswapDayDataV2sHistorical(startBlock, endBlock, startDate, endDate, id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetUniswapDayDataV2sHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**| Unix timestamp for start of day / 86400 giving a unique day index. | [optional] [default to null]

### Return type

[**List&lt;UniswapV2UniswapDayDataV2DTO&gt;**](UniswapV2UniswapDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetUniswapFactoryV2sHistorical

> List&lt;UniswapV2UniswapFactoryV2DTO&gt; uniswapV2GetUniswapFactoryV2sHistorical(startBlock, endBlock, startDate, endDate, id)

UniswapFactoryV2s (historical) 🔥

Gets uniswapfactoryv2s.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | Factory address.
try {
    List<UniswapV2UniswapFactoryV2DTO> result = apiInstance.uniswapV2GetUniswapFactoryV2sHistorical(startBlock, endBlock, startDate, endDate, id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetUniswapFactoryV2sHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**| Factory address. | [optional] [default to null]

### Return type

[**List&lt;UniswapV2UniswapFactoryV2DTO&gt;**](UniswapV2UniswapFactoryV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## uniswapV2GetUserV2sHistorical

> List&lt;UniswapV2UserV2DTO&gt; uniswapV2GetUserV2sHistorical(startBlock, endBlock, startDate, endDate, id)

UserV2s (historical) 🔥

Gets userv2s.

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe.
String id = null; // String | User address.
try {
    List<UniswapV2UserV2DTO> result = apiInstance.uniswapV2GetUserV2sHistorical(startBlock, endBlock, startDate, endDate, id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#uniswapV2GetUserV2sHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe. | [optional] [default to null]
 **id** | **String**| User address. | [optional] [default to null]

### Return type

[**List&lt;UniswapV2UserV2DTO&gt;**](UniswapV2UserV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

