# PoiAPI

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**PoiAPI_chainsChainIdDappsUniswapv3PoiHistoricalGet**](PoiAPI.md#PoiAPI_chainsChainIdDappsUniswapv3PoiHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poi/historical | 


# **PoiAPI_chainsChainIdDappsUniswapv3PoiHistoricalGet**
```c
void PoiAPI_chainsChainIdDappsUniswapv3PoiHistoricalGet(apiClient_t *apiClient, char * chain_id, long startBlock, long endBlock, char startDate, char endDate);
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
