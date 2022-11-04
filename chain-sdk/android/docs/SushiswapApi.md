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
[**dappsSushiswapPoolsHistoricalGet**](SushiswapApi.md#dappsSushiswapPoolsHistoricalGet) | **GET** /dapps/sushiswap/pools/historical | GetPools
[**dappsSushiswapSwapsCurrentGet**](SushiswapApi.md#dappsSushiswapSwapsCurrentGet) | **GET** /dapps/sushiswap/swaps/current | GetSwaps
[**dappsSushiswapSwapsHistoricalGet**](SushiswapApi.md#dappsSushiswapSwapsHistoricalGet) | **GET** /dapps/sushiswap/swaps/historical | GetSwaps (historical)
[**dappsSushiswapTokenDayDataHistoricalGet**](SushiswapApi.md#dappsSushiswapTokenDayDataHistoricalGet) | **GET** /dapps/sushiswap/tokenDayData/historical | 
[**dappsSushiswapTokensCurrentGet**](SushiswapApi.md#dappsSushiswapTokensCurrentGet) | **GET** /dapps/sushiswap/tokens/current | GetTokens
[**dappsSushiswapTokensHistoricalGet**](SushiswapApi.md#dappsSushiswapTokensHistoricalGet) | **GET** /dapps/sushiswap/tokens/historical | GetTokens
[**dappsSushiswapTransactionsHistoricalGet**](SushiswapApi.md#dappsSushiswapTransactionsHistoricalGet) | **GET** /dapps/sushiswap/transactions/historical | 
[**dappsSushiswapUsersHistoricalGet**](SushiswapApi.md#dappsSushiswapUsersHistoricalGet) | **GET** /dapps/sushiswap/users/historical | 



## dappsSushiswapBundlesHistoricalGet

> dappsSushiswapBundlesHistoricalGet(startBlock, endBlock, startDate, endDate)



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
    apiInstance.dappsSushiswapBundlesHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#dappsSushiswapBundlesHistoricalGet");
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsSushiswapBurnsHistoricalGet

> dappsSushiswapBurnsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



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
    apiInstance.dappsSushiswapBurnsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#dappsSushiswapBurnsHistoricalGet");
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsSushiswapDayDataHistoricalGet

> dappsSushiswapDayDataHistoricalGet(startBlock, endBlock, startDate, endDate)



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
    apiInstance.dappsSushiswapDayDataHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#dappsSushiswapDayDataHistoricalGet");
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsSushiswapFactoryHistoricalGet

> dappsSushiswapFactoryHistoricalGet(startBlock, endBlock, startDate, endDate)



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
    apiInstance.dappsSushiswapFactoryHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#dappsSushiswapFactoryHistoricalGet");
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsSushiswapHourDataHistoricalGet

> dappsSushiswapHourDataHistoricalGet(startBlock, endBlock, startDate, endDate)



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
    apiInstance.dappsSushiswapHourDataHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#dappsSushiswapHourDataHistoricalGet");
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsSushiswapLiquidityPositionHistoricalGet

> dappsSushiswapLiquidityPositionHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



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
    apiInstance.dappsSushiswapLiquidityPositionHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#dappsSushiswapLiquidityPositionHistoricalGet");
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsSushiswapLiquidityPositionSnapshotsHistoricalGet

> dappsSushiswapLiquidityPositionSnapshotsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



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
    apiInstance.dappsSushiswapLiquidityPositionSnapshotsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#dappsSushiswapLiquidityPositionSnapshotsHistoricalGet");
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsSushiswapMintsHistoricalGet

> dappsSushiswapMintsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



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
    apiInstance.dappsSushiswapMintsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#dappsSushiswapMintsHistoricalGet");
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsSushiswapPoolDayDataHistoricalGet

> dappsSushiswapPoolDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



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
    apiInstance.dappsSushiswapPoolDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#dappsSushiswapPoolDayDataHistoricalGet");
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsSushiswapPoolHourDataHistoricalGet

> dappsSushiswapPoolHourDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



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
    apiInstance.dappsSushiswapPoolHourDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#dappsSushiswapPoolHourDataHistoricalGet");
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsSushiswapPoolsCurrentGet

> List&lt;PairDTO&gt; dappsSushiswapPoolsCurrentGet()

GetPools

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
try {
    List<PairDTO> result = apiInstance.dappsSushiswapPoolsCurrentGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#dappsSushiswapPoolsCurrentGet");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;PairDTO&gt;**](PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dappsSushiswapPoolsHistoricalGet

> List&lt;PairDTO&gt; dappsSushiswapPoolsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)

GetPools

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
    List<PairDTO> result = apiInstance.dappsSushiswapPoolsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#dappsSushiswapPoolsHistoricalGet");
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

[**List&lt;PairDTO&gt;**](PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dappsSushiswapSwapsCurrentGet

> List&lt;SwapDTO&gt; dappsSushiswapSwapsCurrentGet()

GetSwaps

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
try {
    List<SwapDTO> result = apiInstance.dappsSushiswapSwapsCurrentGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#dappsSushiswapSwapsCurrentGet");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;SwapDTO&gt;**](SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dappsSushiswapSwapsHistoricalGet

> List&lt;SwapDTO&gt; dappsSushiswapSwapsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)

GetSwaps (historical)

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
    List<SwapDTO> result = apiInstance.dappsSushiswapSwapsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#dappsSushiswapSwapsHistoricalGet");
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

[**List&lt;SwapDTO&gt;**](SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dappsSushiswapTokenDayDataHistoricalGet

> dappsSushiswapTokenDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



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
    apiInstance.dappsSushiswapTokenDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#dappsSushiswapTokenDayDataHistoricalGet");
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsSushiswapTokensCurrentGet

> List&lt;TokenDTO&gt; dappsSushiswapTokensCurrentGet()

GetTokens

### Example

```java
// Import classes:
//import org.openapitools.client.api.SushiswapApi;

SushiswapApi apiInstance = new SushiswapApi();
try {
    List<TokenDTO> result = apiInstance.dappsSushiswapTokensCurrentGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#dappsSushiswapTokensCurrentGet");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;TokenDTO&gt;**](TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dappsSushiswapTokensHistoricalGet

> List&lt;TokenDTO&gt; dappsSushiswapTokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)

GetTokens

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
    List<TokenDTO> result = apiInstance.dappsSushiswapTokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#dappsSushiswapTokensHistoricalGet");
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

[**List&lt;TokenDTO&gt;**](TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dappsSushiswapTransactionsHistoricalGet

> dappsSushiswapTransactionsHistoricalGet(startBlock, endBlock, startDate, endDate)



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
    apiInstance.dappsSushiswapTransactionsHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#dappsSushiswapTransactionsHistoricalGet");
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsSushiswapUsersHistoricalGet

> dappsSushiswapUsersHistoricalGet(startBlock, endBlock, startDate, endDate)



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
    apiInstance.dappsSushiswapUsersHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling SushiswapApi#dappsSushiswapUsersHistoricalGet");
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

