# openapi.api.UniswapDayDataApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsUniswapv2UniswapDayDataHistoricalGet**](UniswapDayDataApi.md#chainschainiddappsuniswapv2uniswapdaydatahistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/uniswapDayData/historical | 
[**chainsChainIdDappsUniswapv3UniswapDayDataHistoricalGet**](UniswapDayDataApi.md#chainschainiddappsuniswapv3uniswapdaydatahistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/historical | 


# **chainsChainIdDappsUniswapv2UniswapDayDataHistoricalGet**
> chainsChainIdDappsUniswapv2UniswapDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapDayDataApi();
final String chainId = chainId_example; // String | 
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api.chainsChainIdDappsUniswapv2UniswapDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch on DioError (e) {
    print('Exception when calling UniswapDayDataApi->chainsChainIdDappsUniswapv2UniswapDayDataHistoricalGet: $e\n');
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

# **chainsChainIdDappsUniswapv3UniswapDayDataHistoricalGet**
> chainsChainIdDappsUniswapv3UniswapDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapDayDataApi();
final String chainId = chainId_example; // String | 
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api.chainsChainIdDappsUniswapv3UniswapDayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch on DioError (e) {
    print('Exception when calling UniswapDayDataApi->chainsChainIdDappsUniswapv3UniswapDayDataHistoricalGet: $e\n');
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
