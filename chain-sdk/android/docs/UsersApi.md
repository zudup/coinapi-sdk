# UsersApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsCowUsersHistoricalGet**](UsersApi.md#chainsChainIdDappsCowUsersHistoricalGet) | **GET** /chains/{chain_id}/dapps/cow/users/historical | 
[**chainsChainIdDappsSushiswapUsersHistoricalGet**](UsersApi.md#chainsChainIdDappsSushiswapUsersHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/users/historical | 
[**chainsChainIdDappsUniswapv2UsersHistoricalGet**](UsersApi.md#chainsChainIdDappsUniswapv2UsersHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/users/historical | 



## chainsChainIdDappsCowUsersHistoricalGet

> chainsChainIdDappsCowUsersHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example

```java
// Import classes:
//import org.openapitools.client.api.UsersApi;

UsersApi apiInstance = new UsersApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    apiInstance.chainsChainIdDappsCowUsersHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling UsersApi#chainsChainIdDappsCowUsersHistoricalGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**|  | [default to null]
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


## chainsChainIdDappsSushiswapUsersHistoricalGet

> chainsChainIdDappsSushiswapUsersHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example

```java
// Import classes:
//import org.openapitools.client.api.UsersApi;

UsersApi apiInstance = new UsersApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    apiInstance.chainsChainIdDappsSushiswapUsersHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling UsersApi#chainsChainIdDappsSushiswapUsersHistoricalGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**|  | [default to null]
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


## chainsChainIdDappsUniswapv2UsersHistoricalGet

> chainsChainIdDappsUniswapv2UsersHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example

```java
// Import classes:
//import org.openapitools.client.api.UsersApi;

UsersApi apiInstance = new UsersApi();
String chainId = null; // String | 
Long startBlock = null; // Long | 
Long endBlock = null; // Long | 
Date startDate = null; // Date | 
Date endDate = null; // Date | 
try {
    apiInstance.chainsChainIdDappsUniswapv2UsersHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch (ApiException e) {
    System.err.println("Exception when calling UsersApi#chainsChainIdDappsUniswapv2UsersHistoricalGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**|  | [default to null]
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

