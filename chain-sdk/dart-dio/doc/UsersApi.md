# openapi.api.UsersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsSushiswapUsersHistoricalGet**](UsersApi.md#chainschainiddappssushiswapusershistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/users/historical | 
[**chainsChainIdDappsUniswapv2UsersHistoricalGet**](UsersApi.md#chainschainiddappsuniswapv2usershistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/users/historical | 


# **chainsChainIdDappsSushiswapUsersHistoricalGet**
> chainsChainIdDappsSushiswapUsersHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUsersApi();
final String chainId = chainId_example; // String | 
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api.chainsChainIdDappsSushiswapUsersHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch on DioError (e) {
    print('Exception when calling UsersApi->chainsChainIdDappsSushiswapUsersHistoricalGet: $e\n');
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

# **chainsChainIdDappsUniswapv2UsersHistoricalGet**
> chainsChainIdDappsUniswapv2UsersHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUsersApi();
final String chainId = chainId_example; // String | 
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api.chainsChainIdDappsUniswapv2UsersHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch on DioError (e) {
    print('Exception when calling UsersApi->chainsChainIdDappsUniswapv2UsersHistoricalGet: $e\n');
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

