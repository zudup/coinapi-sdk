# openapi.api.AdminFeeChangeLogApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsCurveAdminFeeChangeLogHistoricalGet**](AdminFeeChangeLogApi.md#chainschainiddappscurveadminfeechangeloghistoricalget) | **GET** /chains/{chain_id}/dapps/curve/adminFeeChangeLog/historical | 


# **chainsChainIdDappsCurveAdminFeeChangeLogHistoricalGet**
> chainsChainIdDappsCurveAdminFeeChangeLogHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAdminFeeChangeLogApi();
final String chainId = chainId_example; // String | 
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    api.chainsChainIdDappsCurveAdminFeeChangeLogHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId);
} catch on DioError (e) {
    print('Exception when calling AdminFeeChangeLogApi->chainsChainIdDappsCurveAdminFeeChangeLogHistoricalGet: $e\n');
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

