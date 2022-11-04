# CowApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dappsCowOrdersHistoricalGet**](CowApi.md#dappsCowOrdersHistoricalGet) | **GET** /dapps/cow/orders/historical | 
[**dappsCowSettlementHistoricalGet**](CowApi.md#dappsCowSettlementHistoricalGet) | **GET** /dapps/cow/settlement/historical | 
[**dappsCowTokensHistoricalGet**](CowApi.md#dappsCowTokensHistoricalGet) | **GET** /dapps/cow/tokens/historical | 
[**dappsCowTradesHistoricalGet**](CowApi.md#dappsCowTradesHistoricalGet) | **GET** /dapps/cow/trades/historical | 
[**dappsCowUsersHistoricalGet**](CowApi.md#dappsCowUsersHistoricalGet) | **GET** /dapps/cow/users/historical | 



## dappsCowOrdersHistoricalGet

> dappsCowOrdersHistoricalGet(startBlock, endBlock, startDate, endDate)



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
    apiInstance.dappsCowOrdersHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling CowApi#dappsCowOrdersHistoricalGet");
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


## dappsCowSettlementHistoricalGet

> dappsCowSettlementHistoricalGet(startBlock, endBlock, startDate, endDate)



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
    apiInstance.dappsCowSettlementHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling CowApi#dappsCowSettlementHistoricalGet");
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


## dappsCowTokensHistoricalGet

> dappsCowTokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



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
    apiInstance.dappsCowTokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
} catch (ApiException e) {
    System.err.println("Exception when calling CowApi#dappsCowTokensHistoricalGet");
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


## dappsCowTradesHistoricalGet

> dappsCowTradesHistoricalGet(startBlock, endBlock, startDate, endDate)



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
    apiInstance.dappsCowTradesHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling CowApi#dappsCowTradesHistoricalGet");
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


## dappsCowUsersHistoricalGet

> dappsCowUsersHistoricalGet(startBlock, endBlock, startDate, endDate)



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
    apiInstance.dappsCowUsersHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling CowApi#dappsCowUsersHistoricalGet");
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

