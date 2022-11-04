# UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dappsUniswapv2BundlesHistoricalGet**](UniswapV2Api.md#dappsUniswapv2BundlesHistoricalGet) | **GET** /dapps/uniswapv2/bundles/historical | 
[**dappsUniswapv2BurnsHistoricalGet**](UniswapV2Api.md#dappsUniswapv2BurnsHistoricalGet) | **GET** /dapps/uniswapv2/burns/historical | 
[**dappsUniswapv2DayDataHistoricalGet**](UniswapV2Api.md#dappsUniswapv2DayDataHistoricalGet) | **GET** /dapps/uniswapv2/dayData/historical | 
[**dappsUniswapv2FactoryHistoricalGet**](UniswapV2Api.md#dappsUniswapv2FactoryHistoricalGet) | **GET** /dapps/uniswapv2/factory/historical | 
[**dappsUniswapv2LiquidityPositionHistoricalGet**](UniswapV2Api.md#dappsUniswapv2LiquidityPositionHistoricalGet) | **GET** /dapps/uniswapv2/liquidityPosition/historical | 
[**dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet**](UniswapV2Api.md#dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet) | **GET** /dapps/uniswapv2/liquidityPositionSnapshots/historical | 
[**dappsUniswapv2MintsHistoricalGet**](UniswapV2Api.md#dappsUniswapv2MintsHistoricalGet) | **GET** /dapps/uniswapv2/mints/historical | 
[**dappsUniswapv2PoolDayDataHistoricalGet**](UniswapV2Api.md#dappsUniswapv2PoolDayDataHistoricalGet) | **GET** /dapps/uniswapv2/poolDayData/historical | 
[**dappsUniswapv2PoolHourDataHistoricalGet**](UniswapV2Api.md#dappsUniswapv2PoolHourDataHistoricalGet) | **GET** /dapps/uniswapv2/poolHourData/historical | 
[**dappsUniswapv2PoolsCurrentGet**](UniswapV2Api.md#dappsUniswapv2PoolsCurrentGet) | **GET** /dapps/uniswapv2/pools/current | GetPools
[**dappsUniswapv2PoolsHistoricalGet**](UniswapV2Api.md#dappsUniswapv2PoolsHistoricalGet) | **GET** /dapps/uniswapv2/pools/historical | 
[**dappsUniswapv2SwapsCurrentGet**](UniswapV2Api.md#dappsUniswapv2SwapsCurrentGet) | **GET** /dapps/uniswapv2/swaps/current | GetSwaps
[**dappsUniswapv2SwapsHistoricalGet**](UniswapV2Api.md#dappsUniswapv2SwapsHistoricalGet) | **GET** /dapps/uniswapv2/swaps/historical | 
[**dappsUniswapv2TokenDayDataHistoricalGet**](UniswapV2Api.md#dappsUniswapv2TokenDayDataHistoricalGet) | **GET** /dapps/uniswapv2/tokenDayData/historical | 
[**dappsUniswapv2TokensCurrentGet**](UniswapV2Api.md#dappsUniswapv2TokensCurrentGet) | **GET** /dapps/uniswapv2/tokens/current | GetTokens
[**dappsUniswapv2TokensHistoricalGet**](UniswapV2Api.md#dappsUniswapv2TokensHistoricalGet) | **GET** /dapps/uniswapv2/tokens/historical | 
[**dappsUniswapv2TransactionsHistoricalGet**](UniswapV2Api.md#dappsUniswapv2TransactionsHistoricalGet) | **GET** /dapps/uniswapv2/transactions/historical | 
[**dappsUniswapv2UsersHistoricalGet**](UniswapV2Api.md#dappsUniswapv2UsersHistoricalGet) | **GET** /dapps/uniswapv2/users/historical | 



## dappsUniswapv2BundlesHistoricalGet

> dappsUniswapv2BundlesHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    apiInstance.dappsUniswapv2BundlesHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#dappsUniswapv2BundlesHistoricalGet");
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


## dappsUniswapv2BurnsHistoricalGet

> dappsUniswapv2BurnsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    apiInstance.dappsUniswapv2BurnsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#dappsUniswapv2BurnsHistoricalGet");
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


## dappsUniswapv2DayDataHistoricalGet

> dappsUniswapv2DayDataHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    apiInstance.dappsUniswapv2DayDataHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#dappsUniswapv2DayDataHistoricalGet");
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


## dappsUniswapv2FactoryHistoricalGet

> dappsUniswapv2FactoryHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    apiInstance.dappsUniswapv2FactoryHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#dappsUniswapv2FactoryHistoricalGet");
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


## dappsUniswapv2LiquidityPositionHistoricalGet

> dappsUniswapv2LiquidityPositionHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    apiInstance.dappsUniswapv2LiquidityPositionHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#dappsUniswapv2LiquidityPositionHistoricalGet");
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


## dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet

> dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    apiInstance.dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet");
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


## dappsUniswapv2MintsHistoricalGet

> dappsUniswapv2MintsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    apiInstance.dappsUniswapv2MintsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#dappsUniswapv2MintsHistoricalGet");
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


## dappsUniswapv2PoolDayDataHistoricalGet

> dappsUniswapv2PoolDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    apiInstance.dappsUniswapv2PoolDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#dappsUniswapv2PoolDayDataHistoricalGet");
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


## dappsUniswapv2PoolHourDataHistoricalGet

> dappsUniswapv2PoolHourDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    apiInstance.dappsUniswapv2PoolHourDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#dappsUniswapv2PoolHourDataHistoricalGet");
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


## dappsUniswapv2PoolsCurrentGet

> List&lt;PairV2DTO&gt; dappsUniswapv2PoolsCurrentGet(filterPoolId)

GetPools

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
String filterPoolId = null; // String | Filter pool id
try {
    List<PairV2DTO> result = apiInstance.dappsUniswapv2PoolsCurrentGet(filterPoolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#dappsUniswapv2PoolsCurrentGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**| Filter pool id | [optional] [default to null]

### Return type

[**List&lt;PairV2DTO&gt;**](PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dappsUniswapv2PoolsHistoricalGet

> dappsUniswapv2PoolsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    apiInstance.dappsUniswapv2PoolsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#dappsUniswapv2PoolsHistoricalGet");
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


## dappsUniswapv2SwapsCurrentGet

> List&lt;SwapV2DTO&gt; dappsUniswapv2SwapsCurrentGet()

GetSwaps

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
try {
    List<SwapV2DTO> result = apiInstance.dappsUniswapv2SwapsCurrentGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#dappsUniswapv2SwapsCurrentGet");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;SwapV2DTO&gt;**](SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dappsUniswapv2SwapsHistoricalGet

> dappsUniswapv2SwapsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    apiInstance.dappsUniswapv2SwapsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#dappsUniswapv2SwapsHistoricalGet");
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


## dappsUniswapv2TokenDayDataHistoricalGet

> dappsUniswapv2TokenDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String tokenId = null; // String | 
try {
    apiInstance.dappsUniswapv2TokenDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#dappsUniswapv2TokenDayDataHistoricalGet");
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


## dappsUniswapv2TokensCurrentGet

> List&lt;TokenV2DTO&gt; dappsUniswapv2TokensCurrentGet()

GetTokens

### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
try {
    List<TokenV2DTO> result = apiInstance.dappsUniswapv2TokensCurrentGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#dappsUniswapv2TokensCurrentGet");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;TokenV2DTO&gt;**](TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dappsUniswapv2TokensHistoricalGet

> dappsUniswapv2TokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String tokenId = null; // String | 
try {
    apiInstance.dappsUniswapv2TokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#dappsUniswapv2TokensHistoricalGet");
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


## dappsUniswapv2TransactionsHistoricalGet

> dappsUniswapv2TransactionsHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    apiInstance.dappsUniswapv2TransactionsHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#dappsUniswapv2TransactionsHistoricalGet");
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


## dappsUniswapv2UsersHistoricalGet

> dappsUniswapv2UsersHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example

```java
// Import classes:
//import org.openapitools.client.api.UniswapV2Api;

UniswapV2Api apiInstance = new UniswapV2Api();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    apiInstance.dappsUniswapv2UsersHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling UniswapV2Api#dappsUniswapv2UsersHistoricalGet");
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

