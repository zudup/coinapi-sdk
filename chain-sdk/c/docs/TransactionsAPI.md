# TransactionsAPI

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**TransactionsAPI_chainsChainIdDappsSushiswapTransactionsHistoricalGet**](TransactionsAPI.md#TransactionsAPI_chainsChainIdDappsSushiswapTransactionsHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/transactions/historical | 
[**TransactionsAPI_chainsChainIdDappsUniswapv2TransactionsHistoricalGet**](TransactionsAPI.md#TransactionsAPI_chainsChainIdDappsUniswapv2TransactionsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/transactions/historical | 
[**TransactionsAPI_chainsChainIdDappsUniswapv3TransactionsHistoricalGet**](TransactionsAPI.md#TransactionsAPI_chainsChainIdDappsUniswapv3TransactionsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/transactions/historical | 


# **TransactionsAPI_chainsChainIdDappsSushiswapTransactionsHistoricalGet**
```c
void TransactionsAPI_chainsChainIdDappsSushiswapTransactionsHistoricalGet(apiClient_t *apiClient, char * chain_id, long startBlock, long endBlock, char startDate, char endDate);
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

# **TransactionsAPI_chainsChainIdDappsUniswapv2TransactionsHistoricalGet**
```c
void TransactionsAPI_chainsChainIdDappsUniswapv2TransactionsHistoricalGet(apiClient_t *apiClient, char * chain_id, long startBlock, long endBlock, char startDate, char endDate);
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

# **TransactionsAPI_chainsChainIdDappsUniswapv3TransactionsHistoricalGet**
```c
void TransactionsAPI_chainsChainIdDappsUniswapv3TransactionsHistoricalGet(apiClient_t *apiClient, char * chain_id, long startBlock, long endBlock, char startDate, char endDate);
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

