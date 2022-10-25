# GaugeWeightAPI

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GaugeWeightAPI_chainsChainIdDappsCurveGaugeWeightHistoricalGet**](GaugeWeightAPI.md#GaugeWeightAPI_chainsChainIdDappsCurveGaugeWeightHistoricalGet) | **GET** /chains/{chain_id}/dapps/curve/gaugeWeight/historical | 


# **GaugeWeightAPI_chainsChainIdDappsCurveGaugeWeightHistoricalGet**
```c
void GaugeWeightAPI_chainsChainIdDappsCurveGaugeWeightHistoricalGet(apiClient_t *apiClient, char * chain_id, long startBlock, long endBlock, char startDate, char endDate);
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
