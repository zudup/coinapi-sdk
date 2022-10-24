# OrdersAPI

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**OrdersAPI_chainsChainIdDappsCowOrdersHistoricalGet**](OrdersAPI.md#OrdersAPI_chainsChainIdDappsCowOrdersHistoricalGet) | **GET** /chains/{chain_id}/dapps/cow/orders/historical | 


# **OrdersAPI_chainsChainIdDappsCowOrdersHistoricalGet**
```c
void OrdersAPI_chainsChainIdDappsCowOrdersHistoricalGet(apiClient_t *apiClient, char * chain_id, long startBlock, long endBlock, char startDate, char endDate);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**chain_id** | **char \*** |  | 
**startBlock** | **long** |  | [optional] 
**endBlock** | **long** |  | [optional] 
**startDate** | **char** |  | [optional] 
**endDate** | **char** |  | [optional] 

### Return type

void

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

