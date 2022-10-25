# TransferOwnershipEventAPI

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**TransferOwnershipEventAPI_chainsChainIdDappsCurveTransferOwnershipEventHistoricalGet**](TransferOwnershipEventAPI.md#TransferOwnershipEventAPI_chainsChainIdDappsCurveTransferOwnershipEventHistoricalGet) | **GET** /chains/{chain_id}/dapps/curve/transferOwnershipEvent/historical | 


# **TransferOwnershipEventAPI_chainsChainIdDappsCurveTransferOwnershipEventHistoricalGet**
```c
void TransferOwnershipEventAPI_chainsChainIdDappsCurveTransferOwnershipEventHistoricalGet(apiClient_t *apiClient, char * chain_id, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

