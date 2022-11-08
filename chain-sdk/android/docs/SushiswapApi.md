# SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**curveGetExchangesCurrent**](SushiswapApi.md#curveGetExchangesCurrent) | **GET** /dapps/sushiswap/exchanges/current | GetExchanges (current) 🔥
[**dexGetTradesCurrent**](SushiswapApi.md#dexGetTradesCurrent) | **GET** /dapps/sushiswap/trades/current | GetTrades (current) 🔥
[**sushiswapGetBundlesHistorical**](SushiswapApi.md#sushiswapGetBundlesHistorical) | **GET** /dapps/sushiswap/bundles/historical | GetBundles (historical)
[**sushiswapGetBurnsHistorical**](SushiswapApi.md#sushiswapGetBurnsHistorical) | **GET** /dapps/sushiswap/burns/historical | GetBurns (historical)
[**sushiswapGetDayDataHistorical**](SushiswapApi.md#sushiswapGetDayDataHistorical) | **GET** /dapps/sushiswap/dayData/historical | GetDayData (historical)
[**sushiswapGetFactoryHistorical**](SushiswapApi.md#sushiswapGetFactoryHistorical) | **GET** /dapps/sushiswap/factory/historical | GetFactory (historical)
[**sushiswapGetHourDataHistorical**](SushiswapApi.md#sushiswapGetHourDataHistorical) | **GET** /dapps/sushiswap/hourData/historical | GetHourData (historical)
[**sushiswapGetLiquidityPositionHistorical**](SushiswapApi.md#sushiswapGetLiquidityPositionHistorical) | **GET** /dapps/sushiswap/liquidityPosition/historical | GetLiquidityPosition (historical)
[**sushiswapGetLiquidityPositionSnapshotHistorical**](SushiswapApi.md#sushiswapGetLiquidityPositionSnapshotHistorical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | GetLiquidityPositionSnapshot (historical)
[**sushiswapGetMintsHistorical**](SushiswapApi.md#sushiswapGetMintsHistorical) | **GET** /dapps/sushiswap/mints/historical | GetMints (historical)
[**sushiswapGetPoolsCurrent**](SushiswapApi.md#sushiswapGetPoolsCurrent) | **GET** /dapps/sushiswap/pools/current | GetPools (current) 🔥
[**sushiswapGetPoolsDayDataHistorical**](SushiswapApi.md#sushiswapGetPoolsDayDataHistorical) | **GET** /dapps/sushiswap/poolsDayData/historical | GetPoolsDayData (historical)
[**sushiswapGetPoolsHistorical**](SushiswapApi.md#sushiswapGetPoolsHistorical) | **GET** /dapps/sushiswap/pools/historical | GetPools (historical) 🔥
[**sushiswapGetPoolsHourDataHistorical**](SushiswapApi.md#sushiswapGetPoolsHourDataHistorical) | **GET** /dapps/sushiswap/poolsHourData/historical | GetPoolsHourData (historical)
[**sushiswapGetSwapsCurrent**](SushiswapApi.md#sushiswapGetSwapsCurrent) | **GET** /dapps/sushiswap/swaps/current | GetSwaps (current) 🔥
[**sushiswapGetSwapsHistorical**](SushiswapApi.md#sushiswapGetSwapsHistorical) | **GET** /dapps/sushiswap/swaps/historical | GetSwaps (historical) 🔥
[**sushiswapGetTokensCurrent**](SushiswapApi.md#sushiswapGetTokensCurrent) | **GET** /dapps/sushiswap/tokens/current | GetTokens (current) 🔥
[**sushiswapGetTokensDayDataHistorical**](SushiswapApi.md#sushiswapGetTokensDayDataHistorical) | **GET** /dapps/sushiswap/tokensDayData/historical | GetTokensDayData (historical)
[**sushiswapGetTokensHistorical**](SushiswapApi.md#sushiswapGetTokensHistorical) | **GET** /dapps/sushiswap/tokens/historical | GetTokens (historical) 🔥
[**sushiswapGetTransactionsHistorical**](SushiswapApi.md#sushiswapGetTransactionsHistorical) | **GET** /dapps/sushiswap/transactions/historical | GetTransactions (historical)
[**sushiswapGetUsersHistorical**](SushiswapApi.md#sushiswapGetUsersHistorical) | **GET** /dapps/sushiswap/users/historical | GetUsers (historical)



## curveGetExchangesCurrent

> List&lt;CurveExchangeDTO&gt; curveGetExchangesCurrent()

GetExchanges (current) 🔥

Gets exchanges.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
try {
    List<CurveExchangeDTO> result = apiInstance.curveGetExchangesCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#curveGetExchangesCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;CurveExchangeDTO&gt;**](CurveExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetTradesCurrent

> List&lt;DexTradeDTO&gt; dexGetTradesCurrent()

GetTrades (current) 🔥

Gets trades.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
try {
    List<DexTradeDTO> result = apiInstance.dexGetTradesCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#dexGetTradesCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;DexTradeDTO&gt;**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetBundlesHistorical

> List&lt;SushiswapBundleDTO&gt; sushiswapGetBundlesHistorical(startBlock, endBlock, startDate, endDate)

GetBundles (historical)

Gets bundles.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
Long startBlock = null; // Long | AAAAAAAAAA
Long endBlock = null; // Long | BBBBBBBBBBBB
Date startDate = null; // Date | CCCCCCCCC
Date endDate = null; // Date | DDDDDDDDDDD
try {
    List<SushiswapBundleDTO> result = apiInstance.sushiswapGetBundlesHistorical(startBlock, endBlock, startDate, endDate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#sushiswapGetBundlesHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| AAAAAAAAAA | [optional] [default to null]
 **endBlock** | **Long**| BBBBBBBBBBBB | [optional] [default to null]
 **startDate** | **Date**| CCCCCCCCC | [optional] [default to null]
 **endDate** | **Date**| DDDDDDDDDDD | [optional] [default to null]

### Return type

[**List&lt;SushiswapBundleDTO&gt;**](SushiswapBundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetBurnsHistorical

> List&lt;SushiswapBurnDTO&gt; sushiswapGetBurnsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetBurns (historical)

Gets burns.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    List<SushiswapBurnDTO> result = apiInstance.sushiswapGetBurnsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#sushiswapGetBurnsHistorical");
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
 **poolId** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;SushiswapBurnDTO&gt;**](SushiswapBurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetDayDataHistorical

> List&lt;SushiswapDayDataDTO&gt; sushiswapGetDayDataHistorical(startBlock, endBlock, startDate, endDate)

GetDayData (historical)

Gets day data.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    List<SushiswapDayDataDTO> result = apiInstance.sushiswapGetDayDataHistorical(startBlock, endBlock, startDate, endDate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#sushiswapGetDayDataHistorical");
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

### Return type

[**List&lt;SushiswapDayDataDTO&gt;**](SushiswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetFactoryHistorical

> List&lt;SushiswapFactoryDTO&gt; sushiswapGetFactoryHistorical(startBlock, endBlock, startDate, endDate)

GetFactory (historical)

Gets factory.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    List<SushiswapFactoryDTO> result = apiInstance.sushiswapGetFactoryHistorical(startBlock, endBlock, startDate, endDate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#sushiswapGetFactoryHistorical");
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

### Return type

[**List&lt;SushiswapFactoryDTO&gt;**](SushiswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetHourDataHistorical

> List&lt;SushiswapHourDataDTO&gt; sushiswapGetHourDataHistorical(startBlock, endBlock, startDate, endDate)

GetHourData (historical)

Gets hour data.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    List<SushiswapHourDataDTO> result = apiInstance.sushiswapGetHourDataHistorical(startBlock, endBlock, startDate, endDate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#sushiswapGetHourDataHistorical");
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

### Return type

[**List&lt;SushiswapHourDataDTO&gt;**](SushiswapHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetLiquidityPositionHistorical

> List&lt;SushiswapLiquidityPositionDTO&gt; sushiswapGetLiquidityPositionHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetLiquidityPosition (historical)

Gets liquidity position.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    List<SushiswapLiquidityPositionDTO> result = apiInstance.sushiswapGetLiquidityPositionHistorical(startBlock, endBlock, startDate, endDate, poolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#sushiswapGetLiquidityPositionHistorical");
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
 **poolId** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;SushiswapLiquidityPositionDTO&gt;**](SushiswapLiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetLiquidityPositionSnapshotHistorical

> List&lt;SushiswapLiquidityPositionSnapshotDTO&gt; sushiswapGetLiquidityPositionSnapshotHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetLiquidityPositionSnapshot (historical)

Gets liquidity position snapshot.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    List<SushiswapLiquidityPositionSnapshotDTO> result = apiInstance.sushiswapGetLiquidityPositionSnapshotHistorical(startBlock, endBlock, startDate, endDate, poolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#sushiswapGetLiquidityPositionSnapshotHistorical");
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
 **poolId** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;SushiswapLiquidityPositionSnapshotDTO&gt;**](SushiswapLiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetMintsHistorical

> List&lt;SushiswapMintDTO&gt; sushiswapGetMintsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetMints (historical)

Gets mints.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    List<SushiswapMintDTO> result = apiInstance.sushiswapGetMintsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#sushiswapGetMintsHistorical");
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
 **poolId** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;SushiswapMintDTO&gt;**](SushiswapMintDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetPoolsCurrent

> List&lt;SushiswapPairDTO&gt; sushiswapGetPoolsCurrent()

GetPools (current) 🔥

Gets pools.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
try {
    List<SushiswapPairDTO> result = apiInstance.sushiswapGetPoolsCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#sushiswapGetPoolsCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;SushiswapPairDTO&gt;**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetPoolsDayDataHistorical

> List&lt;SushiswapPairDayDataDTO&gt; sushiswapGetPoolsDayDataHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetPoolsDayData (historical)

Gets pools day data.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    List<SushiswapPairDayDataDTO> result = apiInstance.sushiswapGetPoolsDayDataHistorical(startBlock, endBlock, startDate, endDate, poolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#sushiswapGetPoolsDayDataHistorical");
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
 **poolId** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;SushiswapPairDayDataDTO&gt;**](SushiswapPairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetPoolsHistorical

> List&lt;SushiswapPairDTO&gt; sushiswapGetPoolsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetPools (historical) 🔥

Gets list of pools for given filters.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe
String poolId = null; // String | The pool address.
try {
    List<SushiswapPairDTO> result = apiInstance.sushiswapGetPoolsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#sushiswapGetPoolsHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe | [optional] [default to null]
 **poolId** | **String**| The pool address. | [optional] [default to null]

### Return type

[**List&lt;SushiswapPairDTO&gt;**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetPoolsHourDataHistorical

> List&lt;SushiswapPairHourDataDTO&gt; sushiswapGetPoolsHourDataHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetPoolsHourData (historical)

Gets pools tracked each our.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    List<SushiswapPairHourDataDTO> result = apiInstance.sushiswapGetPoolsHourDataHistorical(startBlock, endBlock, startDate, endDate, poolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#sushiswapGetPoolsHourDataHistorical");
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
 **poolId** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;SushiswapPairHourDataDTO&gt;**](SushiswapPairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetSwapsCurrent

> List&lt;SushiswapSwapDTO&gt; sushiswapGetSwapsCurrent()

GetSwaps (current) 🔥

Gets swaps.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
try {
    List<SushiswapSwapDTO> result = apiInstance.sushiswapGetSwapsCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#sushiswapGetSwapsCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;SushiswapSwapDTO&gt;**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetSwapsHistorical

> List&lt;SushiswapSwapDTO&gt; sushiswapGetSwapsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetSwaps (historical) 🔥

Gets list of swaps for given filters.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe
String poolId = null; // String | The pool address.
try {
    List<SushiswapSwapDTO> result = apiInstance.sushiswapGetSwapsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#sushiswapGetSwapsHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe | [optional] [default to null]
 **poolId** | **String**| The pool address. | [optional] [default to null]

### Return type

[**List&lt;SushiswapSwapDTO&gt;**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetTokensCurrent

> List&lt;SushiswapTokenDTO&gt; sushiswapGetTokensCurrent()

GetTokens (current) 🔥

Gets tokens.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
try {
    List<SushiswapTokenDTO> result = apiInstance.sushiswapGetTokensCurrent();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#sushiswapGetTokensCurrent");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;SushiswapTokenDTO&gt;**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetTokensDayDataHistorical

> List&lt;SushiswapTokenDayDataDTO&gt; sushiswapGetTokensDayDataHistorical(startBlock, endBlock, startDate, endDate, tokenId)

GetTokensDayData (historical)

Gets tokens day data.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String tokenId = null; // String | 
try {
    List<SushiswapTokenDayDataDTO> result = apiInstance.sushiswapGetTokensDayDataHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#sushiswapGetTokensDayDataHistorical");
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
 **tokenId** | **String**|  | [optional] [default to null]

### Return type

[**List&lt;SushiswapTokenDayDataDTO&gt;**](SushiswapTokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetTokensHistorical

> List&lt;SushiswapTokenDTO&gt; sushiswapGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId)

GetTokens (historical) 🔥

Gets list of tokens for given filters.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
Long startBlock = null; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
Long endBlock = null; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
Date startDate = null; // Date | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
Date endDate = null; // Date | The end date of timeframe
String tokenId = null; // String | The token address.
try {
    List<SushiswapTokenDTO> result = apiInstance.sushiswapGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#sushiswapGetTokensHistorical");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] [default to null]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] [default to null]
 **startDate** | **Date**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] [default to null]
 **endDate** | **Date**| The end date of timeframe | [optional] [default to null]
 **tokenId** | **String**| The token address. | [optional] [default to null]

### Return type

[**List&lt;SushiswapTokenDTO&gt;**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetTransactionsHistorical

> List&lt;SushiswapTransactionDTO&gt; sushiswapGetTransactionsHistorical(startBlock, endBlock, startDate, endDate)

GetTransactions (historical)

Gets transactions.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    List<SushiswapTransactionDTO> result = apiInstance.sushiswapGetTransactionsHistorical(startBlock, endBlock, startDate, endDate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#sushiswapGetTransactionsHistorical");
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

### Return type

[**List&lt;SushiswapTransactionDTO&gt;**](SushiswapTransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## sushiswapGetUsersHistorical

> List&lt;SushiswapUserDTO&gt; sushiswapGetUsersHistorical(startBlock, endBlock, startDate, endDate)

GetUsers (historical)

Gets users.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    List<SushiswapUserDTO> result = apiInstance.sushiswapGetUsersHistorical(startBlock, endBlock, startDate, endDate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#sushiswapGetUsersHistorical");
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

### Return type

[**List&lt;SushiswapUserDTO&gt;**](SushiswapUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

