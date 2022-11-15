# openapi.api.CurveApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**curveGetAccountDTOsHistorical**](CurveApi.md#curvegetaccountdtoshistorical) | **GET** /dapps/curve/AccountDTOs/historical | AccountDTOs (historical) 🔥
[**curveGetAccountsHistorical**](CurveApi.md#curvegetaccountshistorical) | **GET** /dapps/curve/accounts/historical | Accounts (historical)
[**curveGetAddLiquidityEventDTOsHistorical**](CurveApi.md#curvegetaddliquidityeventdtoshistorical) | **GET** /dapps/curve/AddLiquidityEventDTOs/historical | AddLiquidityEventDTOs (historical) 🔥
[**curveGetAddLiquidityEventsHistorical**](CurveApi.md#curvegetaddliquidityeventshistorical) | **GET** /dapps/curve/addLiquidityEvents/historical | AddLiquidityEvents (historical)
[**curveGetAdminFeeChangeLogDTOsHistorical**](CurveApi.md#curvegetadminfeechangelogdtoshistorical) | **GET** /dapps/curve/AdminFeeChangeLogDTOs/historical | AdminFeeChangeLogDTOs (historical) 🔥
[**curveGetAdminFeeChangeLogsHistorical**](CurveApi.md#curvegetadminfeechangelogshistorical) | **GET** /dapps/curve/adminFeeChangeLogs/historical | AdminFeeChangeLogs (historical)
[**curveGetAmplificationCoeffChangeLogDTOsHistorical**](CurveApi.md#curvegetamplificationcoeffchangelogdtoshistorical) | **GET** /dapps/curve/AmplificationCoeffChangeLogDTOs/historical | AmplificationCoeffChangeLogDTOs (historical) 🔥
[**curveGetAmplificationCoeffChangeLogsHistorical**](CurveApi.md#curvegetamplificationcoeffchangelogshistorical) | **GET** /dapps/curve/amplificationCoeffChangeLogs/historical | AmplificationCoeffChangeLogs (historical)
[**curveGetCoinDTOsHistorical**](CurveApi.md#curvegetcoindtoshistorical) | **GET** /dapps/curve/CoinDTOs/historical | CoinDTOs (historical) 🔥
[**curveGetCoinsHistorical**](CurveApi.md#curvegetcoinshistorical) | **GET** /dapps/curve/coins/historical | Coins (historical)
[**curveGetContractDTOsHistorical**](CurveApi.md#curvegetcontractdtoshistorical) | **GET** /dapps/curve/ContractDTOs/historical | ContractDTOs (historical) 🔥
[**curveGetContractVersionDTOsHistorical**](CurveApi.md#curvegetcontractversiondtoshistorical) | **GET** /dapps/curve/ContractVersionDTOs/historical | ContractVersionDTOs (historical) 🔥
[**curveGetContractsHistorical**](CurveApi.md#curvegetcontractshistorical) | **GET** /dapps/curve/contracts/historical | Contracts (historical)
[**curveGetContractsVersionsHistorical**](CurveApi.md#curvegetcontractsversionshistorical) | **GET** /dapps/curve/contractsVersions/historical | ContractsVersions (historical)
[**curveGetDailyVolumeDTOsHistorical**](CurveApi.md#curvegetdailyvolumedtoshistorical) | **GET** /dapps/curve/DailyVolumeDTOs/historical | DailyVolumeDTOs (historical) 🔥
[**curveGetDailyVolumesHistorical**](CurveApi.md#curvegetdailyvolumeshistorical) | **GET** /dapps/curve/dailyVolumes/historical | DailyVolumes (historical)
[**curveGetExchangeDTOsHistorical**](CurveApi.md#curvegetexchangedtoshistorical) | **GET** /dapps/curve/ExchangeDTOs/historical | ExchangeDTOs (historical) 🔥
[**curveGetExchangesHistorical**](CurveApi.md#curvegetexchangeshistorical) | **GET** /dapps/curve/exchanges/historical | Exchanges (historical) 🔥
[**curveGetFeeChangeLogDTOsHistorical**](CurveApi.md#curvegetfeechangelogdtoshistorical) | **GET** /dapps/curve/FeeChangeLogDTOs/historical | FeeChangeLogDTOs (historical) 🔥
[**curveGetFeeChangeLogsHistorical**](CurveApi.md#curvegetfeechangelogshistorical) | **GET** /dapps/curve/feeChangeLogs/historical | FeeChangeLogs (historical)
[**curveGetGaugeDTOsHistorical**](CurveApi.md#curvegetgaugedtoshistorical) | **GET** /dapps/curve/GaugeDTOs/historical | GaugeDTOs (historical) 🔥
[**curveGetGaugeDepositDTOsHistorical**](CurveApi.md#curvegetgaugedepositdtoshistorical) | **GET** /dapps/curve/GaugeDepositDTOs/historical | GaugeDepositDTOs (historical) 🔥
[**curveGetGaugeLiquidityDTOsHistorical**](CurveApi.md#curvegetgaugeliquiditydtoshistorical) | **GET** /dapps/curve/GaugeLiquidityDTOs/historical | GaugeLiquidityDTOs (historical) 🔥
[**curveGetGaugeTotalWeightDTOsHistorical**](CurveApi.md#curvegetgaugetotalweightdtoshistorical) | **GET** /dapps/curve/GaugeTotalWeightDTOs/historical | GaugeTotalWeightDTOs (historical) 🔥
[**curveGetGaugeTypeDTOsHistorical**](CurveApi.md#curvegetgaugetypedtoshistorical) | **GET** /dapps/curve/GaugeTypeDTOs/historical | GaugeTypeDTOs (historical) 🔥
[**curveGetGaugeTypeWeightDTOsHistorical**](CurveApi.md#curvegetgaugetypeweightdtoshistorical) | **GET** /dapps/curve/GaugeTypeWeightDTOs/historical | GaugeTypeWeightDTOs (historical) 🔥
[**curveGetGaugeWeightDTOsHistorical**](CurveApi.md#curvegetgaugeweightdtoshistorical) | **GET** /dapps/curve/GaugeWeightDTOs/historical | GaugeWeightDTOs (historical) 🔥
[**curveGetGaugeWeightVoteDTOsHistorical**](CurveApi.md#curvegetgaugeweightvotedtoshistorical) | **GET** /dapps/curve/GaugeWeightVoteDTOs/historical | GaugeWeightVoteDTOs (historical) 🔥
[**curveGetGaugeWithdrawDTOsHistorical**](CurveApi.md#curvegetgaugewithdrawdtoshistorical) | **GET** /dapps/curve/GaugeWithdrawDTOs/historical | GaugeWithdrawDTOs (historical) 🔥
[**curveGetGaugesDepositsHistorical**](CurveApi.md#curvegetgaugesdepositshistorical) | **GET** /dapps/curve/gaugesDeposits/historical | GaugesDeposits (historical)
[**curveGetGaugesHistorical**](CurveApi.md#curvegetgaugeshistorical) | **GET** /dapps/curve/gauges/historical | Gauges (historical)
[**curveGetGaugesLiquidityHistorical**](CurveApi.md#curvegetgaugesliquidityhistorical) | **GET** /dapps/curve/gaugesLiquidity/historical | GaugesLiquidity (historical)
[**curveGetGaugesTotalWeightsHistorical**](CurveApi.md#curvegetgaugestotalweightshistorical) | **GET** /dapps/curve/gaugesTotalWeights/historical | GaugesTotalWeights (historical)
[**curveGetGaugesTypesHistorical**](CurveApi.md#curvegetgaugestypeshistorical) | **GET** /dapps/curve/gaugesTypes/historical | GaugesTypes (historical)
[**curveGetGaugesTypesWeightsHistorical**](CurveApi.md#curvegetgaugestypesweightshistorical) | **GET** /dapps/curve/gaugesTypesWeights/historical | GaugesTypesWeights (historical)
[**curveGetGaugesWeightsHistorical**](CurveApi.md#curvegetgaugesweightshistorical) | **GET** /dapps/curve/gaugesWeights/historical | GaugesWeights (historical)
[**curveGetGaugesWeightsVotesHistorical**](CurveApi.md#curvegetgaugesweightsvoteshistorical) | **GET** /dapps/curve/gaugesWeightsVotes/historical | GaugesWeightsVotes (historical)
[**curveGetGaugesWithdrawHistorical**](CurveApi.md#curvegetgaugeswithdrawhistorical) | **GET** /dapps/curve/gaugesWithdraws/historical | GaugesWithdraw (historical)
[**curveGetHourlyVolumeDTOsHistorical**](CurveApi.md#curvegethourlyvolumedtoshistorical) | **GET** /dapps/curve/HourlyVolumeDTOs/historical | HourlyVolumeDTOs (historical) 🔥
[**curveGetHourlyVolumesHistorical**](CurveApi.md#curvegethourlyvolumeshistorical) | **GET** /dapps/curve/hourlyVolumes/historical | HourlyVolumes (historical)
[**curveGetLpTokenDTOsHistorical**](CurveApi.md#curvegetlptokendtoshistorical) | **GET** /dapps/curve/LpTokenDTOs/historical | LpTokenDTOs (historical) 🔥
[**curveGetLpTokensHistorical**](CurveApi.md#curvegetlptokenshistorical) | **GET** /dapps/curve/lpTokens/historical | LpTokens (historical)
[**curveGetPoolDTOsHistorical**](CurveApi.md#curvegetpooldtoshistorical) | **GET** /dapps/curve/PoolDTOs/historical | PoolDTOs (historical) 🔥
[**curveGetPoolsHistorical**](CurveApi.md#curvegetpoolshistorical) | **GET** /dapps/curve/pools/historical | Pools (historical) 🔥
[**curveGetProposalDTOsHistorical**](CurveApi.md#curvegetproposaldtoshistorical) | **GET** /dapps/curve/ProposalDTOs/historical | ProposalDTOs (historical) 🔥
[**curveGetProposalVoteDTOsHistorical**](CurveApi.md#curvegetproposalvotedtoshistorical) | **GET** /dapps/curve/ProposalVoteDTOs/historical | ProposalVoteDTOs (historical) 🔥
[**curveGetProposalsHistorical**](CurveApi.md#curvegetproposalshistorical) | **GET** /dapps/curve/proposals/historical | Proposals (historical)
[**curveGetProposalsVotesHistorical**](CurveApi.md#curvegetproposalsvoteshistorical) | **GET** /dapps/curve/proposalsVotes/historical | ProposalsVotes (historical)
[**curveGetRemoveLiquidityEventDTOsHistorical**](CurveApi.md#curvegetremoveliquidityeventdtoshistorical) | **GET** /dapps/curve/RemoveLiquidityEventDTOs/historical | RemoveLiquidityEventDTOs (historical) 🔥
[**curveGetRemoveLiquidityEventsHistorical**](CurveApi.md#curvegetremoveliquidityeventshistorical) | **GET** /dapps/curve/removeLiquidityEvents/historical | RemoveLiquidityEvents (historical)
[**curveGetRemoveLiquidityOneEventDTOsHistorical**](CurveApi.md#curvegetremoveliquidityoneeventdtoshistorical) | **GET** /dapps/curve/RemoveLiquidityOneEventDTOs/historical | RemoveLiquidityOneEventDTOs (historical) 🔥
[**curveGetRemoveLiquidityOneEventsHistorical**](CurveApi.md#curvegetremoveliquidityoneeventshistorical) | **GET** /dapps/curve/removeLiquidityOneEvents/historical | RemoveLiquidityOneEvents (historical)
[**curveGetSystemStateDTOsHistorical**](CurveApi.md#curvegetsystemstatedtoshistorical) | **GET** /dapps/curve/SystemStateDTOs/historical | SystemStateDTOs (historical) 🔥
[**curveGetSystemStatesHistorical**](CurveApi.md#curvegetsystemstateshistorical) | **GET** /dapps/curve/systemStates/historical | SystemStates (historical)
[**curveGetTokenDTOsHistorical**](CurveApi.md#curvegettokendtoshistorical) | **GET** /dapps/curve/TokenDTOs/historical | TokenDTOs (historical) 🔥
[**curveGetTokensHistorical**](CurveApi.md#curvegettokenshistorical) | **GET** /dapps/curve/tokens/historical | Tokens (historical) 🔥
[**curveGetTransferOwnershipEventDTOsHistorical**](CurveApi.md#curvegettransferownershipeventdtoshistorical) | **GET** /dapps/curve/TransferOwnershipEventDTOs/historical | TransferOwnershipEventDTOs (historical) 🔥
[**curveGetTransferOwnershipEventsHistorical**](CurveApi.md#curvegettransferownershipeventshistorical) | **GET** /dapps/curve/transferOwnershipEvents/historical | TransferOwnershipEvents (historical)
[**curveGetUnderlyingCoinDTOsHistorical**](CurveApi.md#curvegetunderlyingcoindtoshistorical) | **GET** /dapps/curve/UnderlyingCoinDTOs/historical | UnderlyingCoinDTOs (historical) 🔥
[**curveGetUnderlyingCoinsHistorical**](CurveApi.md#curvegetunderlyingcoinshistorical) | **GET** /dapps/curve/underlyingCoins/historical | UnderlyingCoins (historical)
[**curveGetVotingAppDTOsHistorical**](CurveApi.md#curvegetvotingappdtoshistorical) | **GET** /dapps/curve/VotingAppDTOs/historical | VotingAppDTOs (historical) 🔥
[**curveGetVotingAppsHistorical**](CurveApi.md#curvegetvotingappshistorical) | **GET** /dapps/curve/votingApps/historical | VotingApps (historical)
[**curveGetWeeklyVolumeDTOsHistorical**](CurveApi.md#curvegetweeklyvolumedtoshistorical) | **GET** /dapps/curve/WeeklyVolumeDTOs/historical | WeeklyVolumeDTOs (historical) 🔥
[**curveGetWeeklyVolumesHistorical**](CurveApi.md#curvegetweeklyvolumeshistorical) | **GET** /dapps/curve/weeklyVolumes/historical | WeeklyVolumes (historical)


# **curveGetAccountDTOsHistorical**
> BuiltList<CurveAccountDTO> curveGetAccountDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

AccountDTOs (historical) 🔥

Gets AccountDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetAccountDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetAccountDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveAccountDTO&gt;**](CurveAccountDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetAccountsHistorical**
> BuiltList<CurveAccountDTO> curveGetAccountsHistorical(startBlock, endBlock, startDate, endDate)

Accounts (historical)

Gets accounts.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.curveGetAccountsHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetAccountsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

[**BuiltList&lt;CurveAccountDTO&gt;**](CurveAccountDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetAddLiquidityEventDTOsHistorical**
> BuiltList<CurveAddLiquidityEventDTO> curveGetAddLiquidityEventDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

AddLiquidityEventDTOs (historical) 🔥

Gets AddLiquidityEventDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetAddLiquidityEventDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetAddLiquidityEventDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveAddLiquidityEventDTO&gt;**](CurveAddLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetAddLiquidityEventsHistorical**
> BuiltList<CurveAddLiquidityEventDTO> curveGetAddLiquidityEventsHistorical(startBlock, endBlock, startDate, endDate, poolId)

AddLiquidityEvents (historical)

Gets add liquidity events.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetAddLiquidityEventsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetAddLiquidityEventsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveAddLiquidityEventDTO&gt;**](CurveAddLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetAdminFeeChangeLogDTOsHistorical**
> BuiltList<CurveAdminFeeChangeLogDTO> curveGetAdminFeeChangeLogDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

AdminFeeChangeLogDTOs (historical) 🔥

Gets AdminFeeChangeLogDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetAdminFeeChangeLogDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetAdminFeeChangeLogDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveAdminFeeChangeLogDTO&gt;**](CurveAdminFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetAdminFeeChangeLogsHistorical**
> BuiltList<CurveAdminFeeChangeLogDTO> curveGetAdminFeeChangeLogsHistorical(startBlock, endBlock, startDate, endDate, poolId)

AdminFeeChangeLogs (historical)

Gets admin fee change logs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetAdminFeeChangeLogsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetAdminFeeChangeLogsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveAdminFeeChangeLogDTO&gt;**](CurveAdminFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetAmplificationCoeffChangeLogDTOsHistorical**
> BuiltList<CurveAmplificationCoeffChangeLogDTO> curveGetAmplificationCoeffChangeLogDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

AmplificationCoeffChangeLogDTOs (historical) 🔥

Gets AmplificationCoeffChangeLogDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetAmplificationCoeffChangeLogDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetAmplificationCoeffChangeLogDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveAmplificationCoeffChangeLogDTO&gt;**](CurveAmplificationCoeffChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetAmplificationCoeffChangeLogsHistorical**
> BuiltList<CurveAmplificationCoeffChangeLogDTO> curveGetAmplificationCoeffChangeLogsHistorical(startBlock, endBlock, startDate, endDate, poolId)

AmplificationCoeffChangeLogs (historical)

Gets amplification coeff change logs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetAmplificationCoeffChangeLogsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetAmplificationCoeffChangeLogsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveAmplificationCoeffChangeLogDTO&gt;**](CurveAmplificationCoeffChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetCoinDTOsHistorical**
> BuiltList<CurveCoinDTO> curveGetCoinDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

CoinDTOs (historical) 🔥

Gets CoinDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetCoinDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetCoinDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveCoinDTO&gt;**](CurveCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetCoinsHistorical**
> BuiltList<CurveCoinDTO> curveGetCoinsHistorical(startBlock, endBlock, startDate, endDate, poolId)

Coins (historical)

Gets coins.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetCoinsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetCoinsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveCoinDTO&gt;**](CurveCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetContractDTOsHistorical**
> BuiltList<CurveContractDTO> curveGetContractDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

ContractDTOs (historical) 🔥

Gets ContractDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetContractDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetContractDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveContractDTO&gt;**](CurveContractDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetContractVersionDTOsHistorical**
> BuiltList<CurveContractVersionDTO> curveGetContractVersionDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

ContractVersionDTOs (historical) 🔥

Gets ContractVersionDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetContractVersionDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetContractVersionDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveContractVersionDTO&gt;**](CurveContractVersionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetContractsHistorical**
> BuiltList<CurveContractDTO> curveGetContractsHistorical(startBlock, endBlock, startDate, endDate, poolId)

Contracts (historical)

Gets contracts.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetContractsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetContractsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveContractDTO&gt;**](CurveContractDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetContractsVersionsHistorical**
> BuiltList<CurveContractVersionDTO> curveGetContractsVersionsHistorical(startBlock, endBlock, startDate, endDate, poolId)

ContractsVersions (historical)

Gets contracts versions.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetContractsVersionsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetContractsVersionsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveContractVersionDTO&gt;**](CurveContractVersionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetDailyVolumeDTOsHistorical**
> BuiltList<CurveDailyVolumeDTO> curveGetDailyVolumeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

DailyVolumeDTOs (historical) 🔥

Gets DailyVolumeDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetDailyVolumeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetDailyVolumeDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveDailyVolumeDTO&gt;**](CurveDailyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetDailyVolumesHistorical**
> BuiltList<CurveDailyVolumeDTO> curveGetDailyVolumesHistorical(startBlock, endBlock, startDate, endDate, poolId)

DailyVolumes (historical)

Gets daily volumes.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetDailyVolumesHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetDailyVolumesHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveDailyVolumeDTO&gt;**](CurveDailyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetExchangeDTOsHistorical**
> BuiltList<CurveExchangeDTO> curveGetExchangeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

ExchangeDTOs (historical) 🔥

Gets ExchangeDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetExchangeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetExchangeDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveExchangeDTO&gt;**](CurveExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetExchangesHistorical**
> BuiltList<CurveExchangeDTO> curveGetExchangesHistorical(startBlock, endBlock, startDate, endDate, poolId)

Exchanges (historical) 🔥

Gets exchanges.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetExchangesHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetExchangesHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveExchangeDTO&gt;**](CurveExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetFeeChangeLogDTOsHistorical**
> BuiltList<CurveFeeChangeLogDTO> curveGetFeeChangeLogDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

FeeChangeLogDTOs (historical) 🔥

Gets FeeChangeLogDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetFeeChangeLogDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetFeeChangeLogDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveFeeChangeLogDTO&gt;**](CurveFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetFeeChangeLogsHistorical**
> BuiltList<CurveFeeChangeLogDTO> curveGetFeeChangeLogsHistorical(startBlock, endBlock, startDate, endDate, poolId)

FeeChangeLogs (historical)

Gets fee change logs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetFeeChangeLogsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetFeeChangeLogsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveFeeChangeLogDTO&gt;**](CurveFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugeDTOsHistorical**
> BuiltList<CurveGaugeDTO> curveGetGaugeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GaugeDTOs (historical) 🔥

Gets GaugeDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetGaugeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugeDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveGaugeDTO&gt;**](CurveGaugeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugeDepositDTOsHistorical**
> BuiltList<CurveGaugeDepositDTO> curveGetGaugeDepositDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GaugeDepositDTOs (historical) 🔥

Gets GaugeDepositDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetGaugeDepositDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugeDepositDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveGaugeDepositDTO&gt;**](CurveGaugeDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugeLiquidityDTOsHistorical**
> BuiltList<CurveGaugeLiquidityDTO> curveGetGaugeLiquidityDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GaugeLiquidityDTOs (historical) 🔥

Gets GaugeLiquidityDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetGaugeLiquidityDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugeLiquidityDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveGaugeLiquidityDTO&gt;**](CurveGaugeLiquidityDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugeTotalWeightDTOsHistorical**
> BuiltList<CurveGaugeTotalWeightDTO> curveGetGaugeTotalWeightDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GaugeTotalWeightDTOs (historical) 🔥

Gets GaugeTotalWeightDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetGaugeTotalWeightDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugeTotalWeightDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveGaugeTotalWeightDTO&gt;**](CurveGaugeTotalWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugeTypeDTOsHistorical**
> BuiltList<CurveGaugeTypeDTO> curveGetGaugeTypeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GaugeTypeDTOs (historical) 🔥

Gets GaugeTypeDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetGaugeTypeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugeTypeDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveGaugeTypeDTO&gt;**](CurveGaugeTypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugeTypeWeightDTOsHistorical**
> BuiltList<CurveGaugeTypeWeightDTO> curveGetGaugeTypeWeightDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GaugeTypeWeightDTOs (historical) 🔥

Gets GaugeTypeWeightDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetGaugeTypeWeightDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugeTypeWeightDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveGaugeTypeWeightDTO&gt;**](CurveGaugeTypeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugeWeightDTOsHistorical**
> BuiltList<CurveGaugeWeightDTO> curveGetGaugeWeightDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GaugeWeightDTOs (historical) 🔥

Gets GaugeWeightDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetGaugeWeightDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugeWeightDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveGaugeWeightDTO&gt;**](CurveGaugeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugeWeightVoteDTOsHistorical**
> BuiltList<CurveGaugeWeightVoteDTO> curveGetGaugeWeightVoteDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GaugeWeightVoteDTOs (historical) 🔥

Gets GaugeWeightVoteDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetGaugeWeightVoteDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugeWeightVoteDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveGaugeWeightVoteDTO&gt;**](CurveGaugeWeightVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugeWithdrawDTOsHistorical**
> BuiltList<CurveGaugeWithdrawDTO> curveGetGaugeWithdrawDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GaugeWithdrawDTOs (historical) 🔥

Gets GaugeWithdrawDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetGaugeWithdrawDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugeWithdrawDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveGaugeWithdrawDTO&gt;**](CurveGaugeWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugesDepositsHistorical**
> BuiltList<CurveGaugeDepositDTO> curveGetGaugesDepositsHistorical(startBlock, endBlock, startDate, endDate)

GaugesDeposits (historical)

Gets gauges deposits.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.curveGetGaugesDepositsHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugesDepositsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

[**BuiltList&lt;CurveGaugeDepositDTO&gt;**](CurveGaugeDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugesHistorical**
> BuiltList<CurveGaugeDTO> curveGetGaugesHistorical(startBlock, endBlock, startDate, endDate, poolId)

Gauges (historical)

Gets gauges.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetGaugesHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugesHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveGaugeDTO&gt;**](CurveGaugeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugesLiquidityHistorical**
> BuiltList<CurveGaugeLiquidityDTO> curveGetGaugesLiquidityHistorical(startBlock, endBlock, startDate, endDate)

GaugesLiquidity (historical)

Gets gauges liquidity.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.curveGetGaugesLiquidityHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugesLiquidityHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

[**BuiltList&lt;CurveGaugeLiquidityDTO&gt;**](CurveGaugeLiquidityDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugesTotalWeightsHistorical**
> BuiltList<CurveGaugeTotalWeightDTO> curveGetGaugesTotalWeightsHistorical(startBlock, endBlock, startDate, endDate)

GaugesTotalWeights (historical)

Gets gauges total weights.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.curveGetGaugesTotalWeightsHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugesTotalWeightsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

[**BuiltList&lt;CurveGaugeTotalWeightDTO&gt;**](CurveGaugeTotalWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugesTypesHistorical**
> BuiltList<CurveGaugeTypeDTO> curveGetGaugesTypesHistorical(startBlock, endBlock, startDate, endDate)

GaugesTypes (historical)

Gets gauges types.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.curveGetGaugesTypesHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugesTypesHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

[**BuiltList&lt;CurveGaugeTypeDTO&gt;**](CurveGaugeTypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugesTypesWeightsHistorical**
> BuiltList<CurveGaugeTypeWeightDTO> curveGetGaugesTypesWeightsHistorical(startBlock, endBlock, startDate, endDate)

GaugesTypesWeights (historical)

Gets gauges types weights.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.curveGetGaugesTypesWeightsHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugesTypesWeightsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

[**BuiltList&lt;CurveGaugeTypeWeightDTO&gt;**](CurveGaugeTypeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugesWeightsHistorical**
> BuiltList<CurveGaugeWeightDTO> curveGetGaugesWeightsHistorical(startBlock, endBlock, startDate, endDate)

GaugesWeights (historical)

Gets gauges weights.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.curveGetGaugesWeightsHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugesWeightsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

[**BuiltList&lt;CurveGaugeWeightDTO&gt;**](CurveGaugeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugesWeightsVotesHistorical**
> BuiltList<CurveGaugeWeightVoteDTO> curveGetGaugesWeightsVotesHistorical(startBlock, endBlock, startDate, endDate)

GaugesWeightsVotes (historical)

Gets gauges weights votes.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.curveGetGaugesWeightsVotesHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugesWeightsVotesHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

[**BuiltList&lt;CurveGaugeWeightVoteDTO&gt;**](CurveGaugeWeightVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetGaugesWithdrawHistorical**
> BuiltList<CurveGaugeWithdrawDTO> curveGetGaugesWithdrawHistorical(startBlock, endBlock, startDate, endDate)

GaugesWithdraw (historical)

Gets gauges withdraws.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.curveGetGaugesWithdrawHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetGaugesWithdrawHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

[**BuiltList&lt;CurveGaugeWithdrawDTO&gt;**](CurveGaugeWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetHourlyVolumeDTOsHistorical**
> BuiltList<CurveHourlyVolumeDTO> curveGetHourlyVolumeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

HourlyVolumeDTOs (historical) 🔥

Gets HourlyVolumeDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetHourlyVolumeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetHourlyVolumeDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveHourlyVolumeDTO&gt;**](CurveHourlyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetHourlyVolumesHistorical**
> BuiltList<CurveHourlyVolumeDTO> curveGetHourlyVolumesHistorical(startBlock, endBlock, startDate, endDate, poolId)

HourlyVolumes (historical)

Gets hourly volumes.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetHourlyVolumesHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetHourlyVolumesHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveHourlyVolumeDTO&gt;**](CurveHourlyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetLpTokenDTOsHistorical**
> BuiltList<CurveLpTokenDTO> curveGetLpTokenDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

LpTokenDTOs (historical) 🔥

Gets LpTokenDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetLpTokenDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetLpTokenDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveLpTokenDTO&gt;**](CurveLpTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetLpTokensHistorical**
> BuiltList<CurveLpTokenDTO> curveGetLpTokensHistorical(startBlock, endBlock, startDate, endDate, poolId)

LpTokens (historical)

Gets lp tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetLpTokensHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetLpTokensHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveLpTokenDTO&gt;**](CurveLpTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetPoolDTOsHistorical**
> BuiltList<CurvePoolDTO> curveGetPoolDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

PoolDTOs (historical) 🔥

Gets PoolDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetPoolDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetPoolDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurvePoolDTO&gt;**](CurvePoolDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetPoolsHistorical**
> BuiltList<CurvePoolDTO> curveGetPoolsHistorical(startBlock, endBlock, startDate, endDate, poolId)

Pools (historical) 🔥

Gets pools.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetPoolsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetPoolsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurvePoolDTO&gt;**](CurvePoolDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetProposalDTOsHistorical**
> BuiltList<CurveProposalDTO> curveGetProposalDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

ProposalDTOs (historical) 🔥

Gets ProposalDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetProposalDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetProposalDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveProposalDTO&gt;**](CurveProposalDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetProposalVoteDTOsHistorical**
> BuiltList<CurveProposalVoteDTO> curveGetProposalVoteDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

ProposalVoteDTOs (historical) 🔥

Gets ProposalVoteDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetProposalVoteDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetProposalVoteDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveProposalVoteDTO&gt;**](CurveProposalVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetProposalsHistorical**
> BuiltList<CurveProposalDTO> curveGetProposalsHistorical(startBlock, endBlock, startDate, endDate)

Proposals (historical)

Gets proposals.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.curveGetProposalsHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetProposalsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

[**BuiltList&lt;CurveProposalDTO&gt;**](CurveProposalDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetProposalsVotesHistorical**
> BuiltList<CurveProposalVoteDTO> curveGetProposalsVotesHistorical(startBlock, endBlock, startDate, endDate)

ProposalsVotes (historical)

Gets proposals votes.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.curveGetProposalsVotesHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetProposalsVotesHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

[**BuiltList&lt;CurveProposalVoteDTO&gt;**](CurveProposalVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetRemoveLiquidityEventDTOsHistorical**
> BuiltList<CurveRemoveLiquidityEventDTO> curveGetRemoveLiquidityEventDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

RemoveLiquidityEventDTOs (historical) 🔥

Gets RemoveLiquidityEventDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetRemoveLiquidityEventDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetRemoveLiquidityEventDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveRemoveLiquidityEventDTO&gt;**](CurveRemoveLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetRemoveLiquidityEventsHistorical**
> BuiltList<CurveRemoveLiquidityEventDTO> curveGetRemoveLiquidityEventsHistorical(startBlock, endBlock, startDate, endDate, poolId)

RemoveLiquidityEvents (historical)

Gets remove liquidity events.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetRemoveLiquidityEventsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetRemoveLiquidityEventsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveRemoveLiquidityEventDTO&gt;**](CurveRemoveLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetRemoveLiquidityOneEventDTOsHistorical**
> BuiltList<CurveRemoveLiquidityOneEventDTO> curveGetRemoveLiquidityOneEventDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

RemoveLiquidityOneEventDTOs (historical) 🔥

Gets RemoveLiquidityOneEventDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetRemoveLiquidityOneEventDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetRemoveLiquidityOneEventDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveRemoveLiquidityOneEventDTO&gt;**](CurveRemoveLiquidityOneEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetRemoveLiquidityOneEventsHistorical**
> BuiltList<CurveRemoveLiquidityOneEventDTO> curveGetRemoveLiquidityOneEventsHistorical(startBlock, endBlock, startDate, endDate, poolId)

RemoveLiquidityOneEvents (historical)

Gets remove liquidity one events.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetRemoveLiquidityOneEventsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetRemoveLiquidityOneEventsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveRemoveLiquidityOneEventDTO&gt;**](CurveRemoveLiquidityOneEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetSystemStateDTOsHistorical**
> BuiltList<CurveSystemStateDTO> curveGetSystemStateDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

SystemStateDTOs (historical) 🔥

Gets SystemStateDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetSystemStateDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetSystemStateDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveSystemStateDTO&gt;**](CurveSystemStateDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetSystemStatesHistorical**
> BuiltList<CurveSystemStateDTO> curveGetSystemStatesHistorical(startBlock, endBlock, startDate, endDate)

SystemStates (historical)

Gets system states.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.curveGetSystemStatesHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetSystemStatesHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

[**BuiltList&lt;CurveSystemStateDTO&gt;**](CurveSystemStateDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetTokenDTOsHistorical**
> BuiltList<CurveTokenDTO> curveGetTokenDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TokenDTOs (historical) 🔥

Gets TokenDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetTokenDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetTokenDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveTokenDTO&gt;**](CurveTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetTokensHistorical**
> BuiltList<CurveTokenDTO> curveGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Tokens (historical) 🔥

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String tokenId = tokenId_example; // String | 

try {
    final response = api.curveGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetTokensHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **tokenId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveTokenDTO&gt;**](CurveTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetTransferOwnershipEventDTOsHistorical**
> BuiltList<CurveTransferOwnershipEventDTO> curveGetTransferOwnershipEventDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TransferOwnershipEventDTOs (historical) 🔥

Gets TransferOwnershipEventDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetTransferOwnershipEventDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetTransferOwnershipEventDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveTransferOwnershipEventDTO&gt;**](CurveTransferOwnershipEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetTransferOwnershipEventsHistorical**
> BuiltList<CurveTransferOwnershipEventDTO> curveGetTransferOwnershipEventsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TransferOwnershipEvents (historical)

Gets transfer ownership events.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetTransferOwnershipEventsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetTransferOwnershipEventsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveTransferOwnershipEventDTO&gt;**](CurveTransferOwnershipEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetUnderlyingCoinDTOsHistorical**
> BuiltList<CurveUnderlyingCoinDTO> curveGetUnderlyingCoinDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

UnderlyingCoinDTOs (historical) 🔥

Gets UnderlyingCoinDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetUnderlyingCoinDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetUnderlyingCoinDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveUnderlyingCoinDTO&gt;**](CurveUnderlyingCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetUnderlyingCoinsHistorical**
> BuiltList<CurveUnderlyingCoinDTO> curveGetUnderlyingCoinsHistorical(startBlock, endBlock, startDate, endDate, poolId)

UnderlyingCoins (historical)

Gets underlying coins.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetUnderlyingCoinsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetUnderlyingCoinsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveUnderlyingCoinDTO&gt;**](CurveUnderlyingCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetVotingAppDTOsHistorical**
> BuiltList<CurveVotingAppDTO> curveGetVotingAppDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

VotingAppDTOs (historical) 🔥

Gets VotingAppDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetVotingAppDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetVotingAppDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveVotingAppDTO&gt;**](CurveVotingAppDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetVotingAppsHistorical**
> BuiltList<CurveVotingAppDTO> curveGetVotingAppsHistorical(startBlock, endBlock, startDate, endDate)

VotingApps (historical)

Gets voting apps.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.curveGetVotingAppsHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetVotingAppsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

[**BuiltList&lt;CurveVotingAppDTO&gt;**](CurveVotingAppDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetWeeklyVolumeDTOsHistorical**
> BuiltList<CurveWeeklyVolumeDTO> curveGetWeeklyVolumeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

WeeklyVolumeDTOs (historical) 🔥

Gets WeeklyVolumeDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetWeeklyVolumeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetWeeklyVolumeDTOsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveWeeklyVolumeDTO&gt;**](CurveWeeklyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curveGetWeeklyVolumesHistorical**
> BuiltList<CurveWeeklyVolumeDTO> curveGetWeeklyVolumesHistorical(startBlock, endBlock, startDate, endDate, poolId)

WeeklyVolumes (historical)

Gets weekly volumes.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCurveApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.curveGetWeeklyVolumesHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CurveApi->curveGetWeeklyVolumesHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CurveWeeklyVolumeDTO&gt;**](CurveWeeklyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

