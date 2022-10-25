# openapi.api.WithdrawRequestApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsDexWithdrawRequestHistoricalGet**](WithdrawRequestApi.md#chainschainiddappsdexwithdrawrequesthistoricalget) | **GET** /chains/{chain_id}/dapps/dex/withdrawRequest/historical | 


# **chainsChainIdDappsDexWithdrawRequestHistoricalGet**
> chainsChainIdDappsDexWithdrawRequestHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getWithdrawRequestApi();
final String chainId = chainId_example; // String | 
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String tokenId = tokenId_example; // String | 

try {
    api.chainsChainIdDappsDexWithdrawRequestHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId);
} catch on DioError (e) {
    print('Exception when calling WithdrawRequestApi->chainsChainIdDappsDexWithdrawRequestHistoricalGet: $e\n');
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
