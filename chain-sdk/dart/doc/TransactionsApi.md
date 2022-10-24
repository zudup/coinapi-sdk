# openapi.api.TransactionsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsSushiswapTransactionsHistoricalGet**](TransactionsApi.md#chainschainiddappssushiswaptransactionshistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/transactions/historical | 
[**chainsChainIdDappsUniswapv2TransactionsHistoricalGet**](TransactionsApi.md#chainschainiddappsuniswapv2transactionshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/transactions/historical | 
[**chainsChainIdDappsUniswapv3TransactionsHistoricalGet**](TransactionsApi.md#chainschainiddappsuniswapv3transactionshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/transactions/historical | 


# **chainsChainIdDappsSushiswapTransactionsHistoricalGet**
> chainsChainIdDappsSushiswapTransactionsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = TransactionsApi();
final chainId = chainId_example; // String | 
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.chainsChainIdDappsSushiswapTransactionsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling TransactionsApi->chainsChainIdDappsSushiswapTransactionsHistoricalGet: $e\n');
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

# **chainsChainIdDappsUniswapv2TransactionsHistoricalGet**
> chainsChainIdDappsUniswapv2TransactionsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = TransactionsApi();
final chainId = chainId_example; // String | 
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.chainsChainIdDappsUniswapv2TransactionsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling TransactionsApi->chainsChainIdDappsUniswapv2TransactionsHistoricalGet: $e\n');
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

# **chainsChainIdDappsUniswapv3TransactionsHistoricalGet**
> chainsChainIdDappsUniswapv3TransactionsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = TransactionsApi();
final chainId = chainId_example; // String | 
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.chainsChainIdDappsUniswapv3TransactionsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling TransactionsApi->chainsChainIdDappsUniswapv3TransactionsHistoricalGet: $e\n');
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

