# openapi.api.HourDataApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsSushiswapHourDataHistoricalGet**](HourDataApi.md#chainschainiddappssushiswaphourdatahistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/hourData/historical | 


# **chainsChainIdDappsSushiswapHourDataHistoricalGet**
> chainsChainIdDappsSushiswapHourDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getHourDataApi();
final String chainId = chainId_example; // String | 
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api.chainsChainIdDappsSushiswapHourDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch on DioError (e) {
    print('Exception when calling HourDataApi->chainsChainIdDappsSushiswapHourDataHistoricalGet: $e\n');
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

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
