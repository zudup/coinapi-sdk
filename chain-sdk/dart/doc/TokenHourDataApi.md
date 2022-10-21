# openapi.api.TokenHourDataApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet**](TokenHourDataApi.md#chainschainiddappsuniswapv3tokenhourdatahistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokenHourData/historical | 


# **chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet**
> chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = TokenHourDataApi();
final chainId = chainId_example; // String | 
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final tokenId = tokenId_example; // String | 

try {
    api_instance.chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId);
} catch (e) {
    print('Exception when calling TokenHourDataApi->chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet: $e\n');
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
 **tokenId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

