# DexApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dexGetBatchesHistorical**](DexApi.md#dexGetBatchesHistorical) | **GET** /dapps/dex/batches/historical-manual | Batches (historical)
[**dexGetDepositsHistorical**](DexApi.md#dexGetDepositsHistorical) | **GET** /dapps/dex/deposits/historical-manual | Deposits (historical)
[**dexGetOrdersHistorical**](DexApi.md#dexGetOrdersHistorical) | **GET** /dapps/dex/orders/historical-manual | Orders (historical)
[**dexGetPricesHistorical**](DexApi.md#dexGetPricesHistorical) | **GET** /dapps/dex/prices/historical-manual | Prices (historical)
[**dexGetSolutionsHistorical**](DexApi.md#dexGetSolutionsHistorical) | **GET** /dapps/dex/solutions/historical-manual | Solutions (historical)
[**dexGetStatsHistorical**](DexApi.md#dexGetStatsHistorical) | **GET** /dapps/dex/stats/historical-manual | Stats (historical)
[**dexGetTokensHistorical**](DexApi.md#dexGetTokensHistorical) | **GET** /dapps/dex/tokens/historical-manual | Tokens (historical) 🔥
[**dexGetTradesHistorical**](DexApi.md#dexGetTradesHistorical) | **GET** /dapps/dex/trades/historical-manual | Trades (historical) 🔥
[**dexGetUsersHistorical**](DexApi.md#dexGetUsersHistorical) | **GET** /dapps/dex/users/historical-manual | Users (historical)
[**dexGetWithdrawsHistorical**](DexApi.md#dexGetWithdrawsHistorical) | **GET** /dapps/dex/withdraws/historical-manual | Withdraws (historical)
[**dexGetWithdrawsRequestsHistorical**](DexApi.md#dexGetWithdrawsRequestsHistorical) | **GET** /dapps/dex/withdrawsRequests/historical-manual | WithdrawsRequests (historical)



## dexGetBatchesHistorical

> List&lt;DexBatchDTO&gt; dexGetBatchesHistorical(startBlock, endBlock, startDate, endDate)

Batches (historical)

Gets batches.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    List<DexBatchDTO> result = apiInstance.dexGetBatchesHistorical(startBlock, endBlock, startDate, endDate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexGetBatchesHistorical");
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

[**List&lt;DexBatchDTO&gt;**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetDepositsHistorical

> List&lt;DexDepositDTO&gt; dexGetDepositsHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Deposits (historical)

Gets deposits.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String tokenId = null; // String | 
try {
    List<DexDepositDTO> result = apiInstance.dexGetDepositsHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexGetDepositsHistorical");
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

[**List&lt;DexDepositDTO&gt;**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetOrdersHistorical

> List&lt;DexOrderDTO&gt; dexGetOrdersHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Orders (historical)

Gets orders.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String tokenId = null; // String | 
try {
    List<DexOrderDTO> result = apiInstance.dexGetOrdersHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexGetOrdersHistorical");
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

[**List&lt;DexOrderDTO&gt;**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetPricesHistorical

> List&lt;DexPriceDTO&gt; dexGetPricesHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Prices (historical)

Gets prices.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String tokenId = null; // String | 
try {
    List<DexPriceDTO> result = apiInstance.dexGetPricesHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexGetPricesHistorical");
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

[**List&lt;DexPriceDTO&gt;**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetSolutionsHistorical

> List&lt;DexSolutionDTO&gt; dexGetSolutionsHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Solutions (historical)

Gets solutions.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String tokenId = null; // String | 
try {
    List<DexSolutionDTO> result = apiInstance.dexGetSolutionsHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexGetSolutionsHistorical");
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

[**List&lt;DexSolutionDTO&gt;**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetStatsHistorical

> List&lt;DexStatsDTO&gt; dexGetStatsHistorical(startBlock, endBlock, startDate, endDate)

Stats (historical)

Gets stats.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    List<DexStatsDTO> result = apiInstance.dexGetStatsHistorical(startBlock, endBlock, startDate, endDate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexGetStatsHistorical");
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

[**List&lt;DexStatsDTO&gt;**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetTokensHistorical

> List&lt;DexTokenDTO&gt; dexGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Tokens (historical) 🔥

Gets tokens.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String tokenId = null; // String | 
try {
    List<DexTokenDTO> result = apiInstance.dexGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexGetTokensHistorical");
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

[**List&lt;DexTokenDTO&gt;**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetTradesHistorical

> List&lt;DexTradeDTO&gt; dexGetTradesHistorical(startBlock, endBlock, startDate, endDate)

Trades (historical) 🔥

Gets trades.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    List<DexTradeDTO> result = apiInstance.dexGetTradesHistorical(startBlock, endBlock, startDate, endDate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexGetTradesHistorical");
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

[**List&lt;DexTradeDTO&gt;**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetUsersHistorical

> List&lt;DexUserDTO&gt; dexGetUsersHistorical(startBlock, endBlock, startDate, endDate)

Users (historical)

Gets users.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    List<DexUserDTO> result = apiInstance.dexGetUsersHistorical(startBlock, endBlock, startDate, endDate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexGetUsersHistorical");
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

[**List&lt;DexUserDTO&gt;**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetWithdrawsHistorical

> List&lt;DexWithdrawDTO&gt; dexGetWithdrawsHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Withdraws (historical)

Gets withdraws.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String tokenId = null; // String | 
try {
    List<DexWithdrawDTO> result = apiInstance.dexGetWithdrawsHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexGetWithdrawsHistorical");
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

[**List&lt;DexWithdrawDTO&gt;**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dexGetWithdrawsRequestsHistorical

> List&lt;DexWithdrawRequestDTO&gt; dexGetWithdrawsRequestsHistorical(startBlock, endBlock, startDate, endDate, tokenId)

WithdrawsRequests (historical)

Gets withdraws requests.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DexApi;

DexApi apiInstance = new DexApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String tokenId = null; // String | 
try {
    List<DexWithdrawRequestDTO> result = apiInstance.dexGetWithdrawsRequestsHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DexApi#dexGetWithdrawsRequestsHistorical");
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

[**List&lt;DexWithdrawRequestDTO&gt;**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

