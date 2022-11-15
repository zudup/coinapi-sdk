# CowApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cowGetOrderDTOsHistorical**](CowApi.md#cowGetOrderDTOsHistorical) | **GET** /dapps/cow/OrderDTOs/historical | OrderDTOs (historical) 🔥
[**cowGetOrdersHistorical**](CowApi.md#cowGetOrdersHistorical) | **GET** /dapps/cow/orders/historical | Orders (historical)
[**cowGetSettlementDTOsHistorical**](CowApi.md#cowGetSettlementDTOsHistorical) | **GET** /dapps/cow/SettlementDTOs/historical | SettlementDTOs (historical) 🔥
[**cowGetSettlementsHistorical**](CowApi.md#cowGetSettlementsHistorical) | **GET** /dapps/cow/settlements/historical | Settlements (historical)
[**cowGetTokenDTOsHistorical**](CowApi.md#cowGetTokenDTOsHistorical) | **GET** /dapps/cow/TokenDTOs/historical | TokenDTOs (historical) 🔥
[**cowGetTokensHistorical**](CowApi.md#cowGetTokensHistorical) | **GET** /dapps/cow/tokens/historical | Tokens (historical) 🔥
[**cowGetTradeDTOsHistorical**](CowApi.md#cowGetTradeDTOsHistorical) | **GET** /dapps/cow/TradeDTOs/historical | TradeDTOs (historical) 🔥
[**cowGetTradesHistorical**](CowApi.md#cowGetTradesHistorical) | **GET** /dapps/cow/trades/historical | Trades (historical) 🔥
[**cowGetUserDTOsHistorical**](CowApi.md#cowGetUserDTOsHistorical) | **GET** /dapps/cow/UserDTOs/historical | UserDTOs (historical) 🔥
[**cowGetUsersHistorical**](CowApi.md#cowGetUsersHistorical) | **GET** /dapps/cow/users/historical | Users (historical)



## cowGetOrderDTOsHistorical

> List&lt;CowOrderDTO&gt; cowGetOrderDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

OrderDTOs (historical) 🔥

Gets OrderDTOs.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CowApi;

CowApi apiInstance = new CowApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    List<CowOrderDTO> result = apiInstance.cowGetOrderDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CowApi#cowGetOrderDTOsHistorical");
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

[**List&lt;CowOrderDTO&gt;**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowGetOrdersHistorical

> List&lt;CowOrderDTO&gt; cowGetOrdersHistorical(startBlock, endBlock, startDate, endDate)

Orders (historical)

Gets orders.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CowApi;

CowApi apiInstance = new CowApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    List<CowOrderDTO> result = apiInstance.cowGetOrdersHistorical(startBlock, endBlock, startDate, endDate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CowApi#cowGetOrdersHistorical");
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

[**List&lt;CowOrderDTO&gt;**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowGetSettlementDTOsHistorical

> List&lt;CowSettlementDTO&gt; cowGetSettlementDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

SettlementDTOs (historical) 🔥

Gets SettlementDTOs.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CowApi;

CowApi apiInstance = new CowApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    List<CowSettlementDTO> result = apiInstance.cowGetSettlementDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CowApi#cowGetSettlementDTOsHistorical");
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

[**List&lt;CowSettlementDTO&gt;**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowGetSettlementsHistorical

> List&lt;CowSettlementDTO&gt; cowGetSettlementsHistorical(startBlock, endBlock, startDate, endDate)

Settlements (historical)

Gets settlements.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CowApi;

CowApi apiInstance = new CowApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    List<CowSettlementDTO> result = apiInstance.cowGetSettlementsHistorical(startBlock, endBlock, startDate, endDate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CowApi#cowGetSettlementsHistorical");
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

[**List&lt;CowSettlementDTO&gt;**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowGetTokenDTOsHistorical

> List&lt;CowTokenDTO&gt; cowGetTokenDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TokenDTOs (historical) 🔥

Gets TokenDTOs.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CowApi;

CowApi apiInstance = new CowApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    List<CowTokenDTO> result = apiInstance.cowGetTokenDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CowApi#cowGetTokenDTOsHistorical");
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

[**List&lt;CowTokenDTO&gt;**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowGetTokensHistorical

> List&lt;CowTokenDTO&gt; cowGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Tokens (historical) 🔥

Gets tokens.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CowApi;

CowApi apiInstance = new CowApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String tokenId = null; // String | 
try {
    List<CowTokenDTO> result = apiInstance.cowGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CowApi#cowGetTokensHistorical");
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

[**List&lt;CowTokenDTO&gt;**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowGetTradeDTOsHistorical

> List&lt;CowTradeDTO&gt; cowGetTradeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TradeDTOs (historical) 🔥

Gets TradeDTOs.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CowApi;

CowApi apiInstance = new CowApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    List<CowTradeDTO> result = apiInstance.cowGetTradeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CowApi#cowGetTradeDTOsHistorical");
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

[**List&lt;CowTradeDTO&gt;**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowGetTradesHistorical

> List&lt;CowTradeDTO&gt; cowGetTradesHistorical(startBlock, endBlock, startDate, endDate)

Trades (historical) 🔥

Gets trades.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CowApi;

CowApi apiInstance = new CowApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    List<CowTradeDTO> result = apiInstance.cowGetTradesHistorical(startBlock, endBlock, startDate, endDate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CowApi#cowGetTradesHistorical");
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

[**List&lt;CowTradeDTO&gt;**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowGetUserDTOsHistorical

> List&lt;CowUserDTO&gt; cowGetUserDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

UserDTOs (historical) 🔥

Gets UserDTOs.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CowApi;

CowApi apiInstance = new CowApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
String poolId = null; // String | 
try {
    List<CowUserDTO> result = apiInstance.cowGetUserDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CowApi#cowGetUserDTOsHistorical");
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

[**List&lt;CowUserDTO&gt;**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## cowGetUsersHistorical

> List&lt;CowUserDTO&gt; cowGetUsersHistorical(startBlock, endBlock, startDate, endDate)

Users (historical)

Gets users.

### Example

```java
// Import classes:
//import org.openapitools.client.api.CowApi;

CowApi apiInstance = new CowApi();
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    List<CowUserDTO> result = apiInstance.cowGetUsersHistorical(startBlock, endBlock, startDate, endDate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CowApi#cowGetUsersHistorical");
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

[**List&lt;CowUserDTO&gt;**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

