# SettlementAPI

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SettlementAPI_chainsChainIdDappsCowSettlementHistoricalGet**](SettlementAPI.md#SettlementAPI_chainsChainIdDappsCowSettlementHistoricalGet) | **GET** /chains/{chain_id}/dapps/cow/settlement/historical | 


# **SettlementAPI_chainsChainIdDappsCowSettlementHistoricalGet**
```c
void SettlementAPI_chainsChainIdDappsCowSettlementHistoricalGet(apiClient_t *apiClient, char * chain_id, long startBlock, long endBlock, char startDate, char endDate);
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

