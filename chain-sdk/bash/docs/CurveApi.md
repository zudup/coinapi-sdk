# CurveApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**dappsCurveAccountsHistoricalGet**](CurveApi.md#dappsCurveAccountsHistoricalGet) | **GET** /dapps/curve/accounts/historical | 
[**dappsCurveAddLiquidityEventHistoricalGet**](CurveApi.md#dappsCurveAddLiquidityEventHistoricalGet) | **GET** /dapps/curve/addLiquidityEvent/historical | 
[**dappsCurveAdminFeeChangeLogHistoricalGet**](CurveApi.md#dappsCurveAdminFeeChangeLogHistoricalGet) | **GET** /dapps/curve/adminFeeChangeLog/historical | 
[**dappsCurveAmplificationCoeffChangeLogHistoricalGet**](CurveApi.md#dappsCurveAmplificationCoeffChangeLogHistoricalGet) | **GET** /dapps/curve/amplificationCoeffChangeLog/historical | 
[**dappsCurveCoinsHistoricalGet**](CurveApi.md#dappsCurveCoinsHistoricalGet) | **GET** /dapps/curve/coins/historical | 
[**dappsCurveContractsHistoricalGet**](CurveApi.md#dappsCurveContractsHistoricalGet) | **GET** /dapps/curve/contracts/historical | 
[**dappsCurveContractsVersionHistoricalGet**](CurveApi.md#dappsCurveContractsVersionHistoricalGet) | **GET** /dapps/curve/contractsVersion/historical | 
[**dappsCurveDailyVolumeHistoricalGet**](CurveApi.md#dappsCurveDailyVolumeHistoricalGet) | **GET** /dapps/curve/dailyVolume/historical | 
[**dappsCurveFeeChangeLogHistoricalGet**](CurveApi.md#dappsCurveFeeChangeLogHistoricalGet) | **GET** /dapps/curve/feeChangeLog/historical | 
[**dappsCurveGaugeDepositHistoricalGet**](CurveApi.md#dappsCurveGaugeDepositHistoricalGet) | **GET** /dapps/curve/gaugeDeposit/historical | 
[**dappsCurveGaugeHistoricalGet**](CurveApi.md#dappsCurveGaugeHistoricalGet) | **GET** /dapps/curve/gauge/historical | 
[**dappsCurveGaugeLiquidityHistoricalGet**](CurveApi.md#dappsCurveGaugeLiquidityHistoricalGet) | **GET** /dapps/curve/gaugeLiquidity/historical | 
[**dappsCurveGaugeTotalWeightHistoricalGet**](CurveApi.md#dappsCurveGaugeTotalWeightHistoricalGet) | **GET** /dapps/curve/gaugeTotalWeight/historical | 
[**dappsCurveGaugeTypeHistoricalGet**](CurveApi.md#dappsCurveGaugeTypeHistoricalGet) | **GET** /dapps/curve/gaugeType/historical | 
[**dappsCurveGaugeTypeWeightHistoricalGet**](CurveApi.md#dappsCurveGaugeTypeWeightHistoricalGet) | **GET** /dapps/curve/gaugeTypeWeight/historical | 
[**dappsCurveGaugeWeightHistoricalGet**](CurveApi.md#dappsCurveGaugeWeightHistoricalGet) | **GET** /dapps/curve/gaugeWeight/historical | 
[**dappsCurveGaugeWeightVoteHistoricalGet**](CurveApi.md#dappsCurveGaugeWeightVoteHistoricalGet) | **GET** /dapps/curve/gaugeWeightVote/historical | 
[**dappsCurveGaugeWithdrawHistoricalGet**](CurveApi.md#dappsCurveGaugeWithdrawHistoricalGet) | **GET** /dapps/curve/gaugeWithdraw/historical | 
[**dappsCurveHourlyVolumeHistoricalGet**](CurveApi.md#dappsCurveHourlyVolumeHistoricalGet) | **GET** /dapps/curve/hourlyVolume/historical | 
[**dappsCurveLpTokenHistoricalGet**](CurveApi.md#dappsCurveLpTokenHistoricalGet) | **GET** /dapps/curve/lpToken/historical | 
[**dappsCurvePoolsHistoricalGet**](CurveApi.md#dappsCurvePoolsHistoricalGet) | **GET** /dapps/curve/pools/historical | 
[**dappsCurveProposalsHistoricalGet**](CurveApi.md#dappsCurveProposalsHistoricalGet) | **GET** /dapps/curve/proposals/historical | 
[**dappsCurveProposalsVoteHistoricalGet**](CurveApi.md#dappsCurveProposalsVoteHistoricalGet) | **GET** /dapps/curve/proposalsVote/historical | 
[**dappsCurveRemoveLiquidityEventHistoricalGet**](CurveApi.md#dappsCurveRemoveLiquidityEventHistoricalGet) | **GET** /dapps/curve/removeLiquidityEvent/historical | 
[**dappsCurveRemoveLiquidityOneEventHistoricalGet**](CurveApi.md#dappsCurveRemoveLiquidityOneEventHistoricalGet) | **GET** /dapps/curve/removeLiquidityOneEvent/historical | 
[**dappsCurveSwapsHistoricalGet**](CurveApi.md#dappsCurveSwapsHistoricalGet) | **GET** /dapps/curve/swaps/historical | 
[**dappsCurveSystemStateHistoricalGet**](CurveApi.md#dappsCurveSystemStateHistoricalGet) | **GET** /dapps/curve/systemState/historical | 
[**dappsCurveTokensHistoricalGet**](CurveApi.md#dappsCurveTokensHistoricalGet) | **GET** /dapps/curve/tokens/historical | 
[**dappsCurveTransferOwnershipEventHistoricalGet**](CurveApi.md#dappsCurveTransferOwnershipEventHistoricalGet) | **GET** /dapps/curve/transferOwnershipEvent/historical | 
[**dappsCurveUnderlyingCoinHistoricalGet**](CurveApi.md#dappsCurveUnderlyingCoinHistoricalGet) | **GET** /dapps/curve/underlyingCoin/historical | 
[**dappsCurveVotingAppHistoricalGet**](CurveApi.md#dappsCurveVotingAppHistoricalGet) | **GET** /dapps/curve/votingApp/historical | 
[**dappsCurveWeeklyVolumeHistoricalGet**](CurveApi.md#dappsCurveWeeklyVolumeHistoricalGet) | **GET** /dapps/curve/weeklyVolume/historical | 



## dappsCurveAccountsHistoricalGet



### Example

```bash
 dappsCurveAccountsHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveAddLiquidityEventHistoricalGet



### Example

```bash
 dappsCurveAddLiquidityEventHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveAdminFeeChangeLogHistoricalGet



### Example

```bash
 dappsCurveAdminFeeChangeLogHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveAmplificationCoeffChangeLogHistoricalGet



### Example

```bash
 dappsCurveAmplificationCoeffChangeLogHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveCoinsHistoricalGet



### Example

```bash
 dappsCurveCoinsHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveContractsHistoricalGet



### Example

```bash
 dappsCurveContractsHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveContractsVersionHistoricalGet



### Example

```bash
 dappsCurveContractsVersionHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveDailyVolumeHistoricalGet



### Example

```bash
 dappsCurveDailyVolumeHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveFeeChangeLogHistoricalGet



### Example

```bash
 dappsCurveFeeChangeLogHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveGaugeDepositHistoricalGet



### Example

```bash
 dappsCurveGaugeDepositHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveGaugeHistoricalGet



### Example

```bash
 dappsCurveGaugeHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveGaugeLiquidityHistoricalGet



### Example

```bash
 dappsCurveGaugeLiquidityHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveGaugeTotalWeightHistoricalGet



### Example

```bash
 dappsCurveGaugeTotalWeightHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveGaugeTypeHistoricalGet



### Example

```bash
 dappsCurveGaugeTypeHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveGaugeTypeWeightHistoricalGet



### Example

```bash
 dappsCurveGaugeTypeWeightHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveGaugeWeightHistoricalGet



### Example

```bash
 dappsCurveGaugeWeightHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveGaugeWeightVoteHistoricalGet



### Example

```bash
 dappsCurveGaugeWeightVoteHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveGaugeWithdrawHistoricalGet



### Example

```bash
 dappsCurveGaugeWithdrawHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveHourlyVolumeHistoricalGet



### Example

```bash
 dappsCurveHourlyVolumeHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveLpTokenHistoricalGet



### Example

```bash
 dappsCurveLpTokenHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurvePoolsHistoricalGet



### Example

```bash
 dappsCurvePoolsHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveProposalsHistoricalGet



### Example

```bash
 dappsCurveProposalsHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveProposalsVoteHistoricalGet



### Example

```bash
 dappsCurveProposalsVoteHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveRemoveLiquidityEventHistoricalGet



### Example

```bash
 dappsCurveRemoveLiquidityEventHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveRemoveLiquidityOneEventHistoricalGet



### Example

```bash
 dappsCurveRemoveLiquidityOneEventHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveSwapsHistoricalGet



### Example

```bash
 dappsCurveSwapsHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveSystemStateHistoricalGet



### Example

```bash
 dappsCurveSystemStateHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveTokensHistoricalGet



### Example

```bash
 dappsCurveTokensHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  tokenId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **tokenId** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveTransferOwnershipEventHistoricalGet



### Example

```bash
 dappsCurveTransferOwnershipEventHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveUnderlyingCoinHistoricalGet



### Example

```bash
 dappsCurveUnderlyingCoinHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveVotingAppHistoricalGet



### Example

```bash
 dappsCurveVotingAppHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dappsCurveWeeklyVolumeHistoricalGet



### Example

```bash
 dappsCurveWeeklyVolumeHistoricalGet  startBlock=value  endBlock=value  startDate=value  endDate=value  poolId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **integer** |  | [optional] [default to null]
 **endBlock** | **integer** |  | [optional] [default to null]
 **startDate** | **string** |  | [optional] [default to null]
 **endDate** | **string** |  | [optional] [default to null]
 **poolId** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

