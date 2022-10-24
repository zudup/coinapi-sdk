# openapi.api.LiquidityPositionApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet**](LiquidityPositionApi.md#chainschainiddappsuniswapv2liquiditypositionhistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/liquidityPosition/historical | 


# **chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet**
> chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = LiquidityPositionApi();
final chainId = chainId_example; // String | 
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling LiquidityPositionApi->chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**|  | 
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
