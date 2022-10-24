# LiquidityPositionAPI

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**LiquidityPositionAPI_chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet**](LiquidityPositionAPI.md#LiquidityPositionAPI_chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/liquidityPosition/historical | 
[**LiquidityPositionAPI_chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet**](LiquidityPositionAPI.md#LiquidityPositionAPI_chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/liquidityPosition/historical | 


# **LiquidityPositionAPI_chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet**
```c
void LiquidityPositionAPI_chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet(apiClient_t *apiClient, char * chain_id, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

# **LiquidityPositionAPI_chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet**
```c
void LiquidityPositionAPI_chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet(apiClient_t *apiClient, char * chain_id, long startBlock, long endBlock, char startDate, char endDate, char * poolId);
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

