# BurnsAPI

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**BurnsAPI_chainsChainIdDappsSushiswapBurnsHistoricalGet**](BurnsAPI.md#BurnsAPI_chainsChainIdDappsSushiswapBurnsHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/burns/historical | 
[**BurnsAPI_chainsChainIdDappsUniswapv2BurnsHistoricalGet**](BurnsAPI.md#BurnsAPI_chainsChainIdDappsUniswapv2BurnsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/burns/historical | 
[**BurnsAPI_chainsChainIdDappsUniswapv3BurnsHistoricalGet**](BurnsAPI.md#BurnsAPI_chainsChainIdDappsUniswapv3BurnsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/burns/historical | 


# **BurnsAPI_chainsChainIdDappsSushiswapBurnsHistoricalGet**
```c
void BurnsAPI_chainsChainIdDappsSushiswapBurnsHistoricalGet(apiClient_t *apiClient, char * chain_id, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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
**poolId** | **char \*** |  | [optional] 

### Return type

void

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BurnsAPI_chainsChainIdDappsUniswapv2BurnsHistoricalGet**
```c
void BurnsAPI_chainsChainIdDappsUniswapv2BurnsHistoricalGet(apiClient_t *apiClient, char * chain_id, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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
**poolId** | **char \*** |  | [optional] 

### Return type

void

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BurnsAPI_chainsChainIdDappsUniswapv3BurnsHistoricalGet**
```c
void BurnsAPI_chainsChainIdDappsUniswapv3BurnsHistoricalGet(apiClient_t *apiClient, char * chain_id, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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
**poolId** | **char \*** |  | [optional] 

### Return type

void

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

