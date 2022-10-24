# LiquidityPositionSnapshotsAPI

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**LiquidityPositionSnapshotsAPI_chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet**](LiquidityPositionSnapshotsAPI.md#LiquidityPositionSnapshotsAPI_chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/liquidityPositionSnapshots/historical | 
[**LiquidityPositionSnapshotsAPI_chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet**](LiquidityPositionSnapshotsAPI.md#LiquidityPositionSnapshotsAPI_chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/liquidityPositionSnapshots/historical | 


# **LiquidityPositionSnapshotsAPI_chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet**
```c
void LiquidityPositionSnapshotsAPI_chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet(apiClient_t *apiClient, char * chain_id, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

# **LiquidityPositionSnapshotsAPI_chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet**
```c
void LiquidityPositionSnapshotsAPI_chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet(apiClient_t *apiClient, char * chain_id, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

