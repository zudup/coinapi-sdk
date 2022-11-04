# OnChainApi.CurveApi

All URIs are relative to *https://onchain.coinapi.io*

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

> dappsCurveAccountsHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.dappsCurveAccountsHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveAddLiquidityEventHistoricalGet

> dappsCurveAddLiquidityEventHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsCurveAddLiquidityEventHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveAdminFeeChangeLogHistoricalGet

> dappsCurveAdminFeeChangeLogHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsCurveAdminFeeChangeLogHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveAmplificationCoeffChangeLogHistoricalGet

> dappsCurveAmplificationCoeffChangeLogHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsCurveAmplificationCoeffChangeLogHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveCoinsHistoricalGet

> dappsCurveCoinsHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsCurveCoinsHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveContractsHistoricalGet

> dappsCurveContractsHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsCurveContractsHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveContractsVersionHistoricalGet

> dappsCurveContractsVersionHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsCurveContractsVersionHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveDailyVolumeHistoricalGet

> dappsCurveDailyVolumeHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsCurveDailyVolumeHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveFeeChangeLogHistoricalGet

> dappsCurveFeeChangeLogHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsCurveFeeChangeLogHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveGaugeDepositHistoricalGet

> dappsCurveGaugeDepositHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.dappsCurveGaugeDepositHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveGaugeHistoricalGet

> dappsCurveGaugeHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsCurveGaugeHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveGaugeLiquidityHistoricalGet

> dappsCurveGaugeLiquidityHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.dappsCurveGaugeLiquidityHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveGaugeTotalWeightHistoricalGet

> dappsCurveGaugeTotalWeightHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.dappsCurveGaugeTotalWeightHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveGaugeTypeHistoricalGet

> dappsCurveGaugeTypeHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.dappsCurveGaugeTypeHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveGaugeTypeWeightHistoricalGet

> dappsCurveGaugeTypeWeightHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.dappsCurveGaugeTypeWeightHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveGaugeWeightHistoricalGet

> dappsCurveGaugeWeightHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.dappsCurveGaugeWeightHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveGaugeWeightVoteHistoricalGet

> dappsCurveGaugeWeightVoteHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.dappsCurveGaugeWeightVoteHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveGaugeWithdrawHistoricalGet

> dappsCurveGaugeWithdrawHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.dappsCurveGaugeWithdrawHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveHourlyVolumeHistoricalGet

> dappsCurveHourlyVolumeHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsCurveHourlyVolumeHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveLpTokenHistoricalGet

> dappsCurveLpTokenHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsCurveLpTokenHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurvePoolsHistoricalGet

> dappsCurvePoolsHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsCurvePoolsHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveProposalsHistoricalGet

> dappsCurveProposalsHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.dappsCurveProposalsHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveProposalsVoteHistoricalGet

> dappsCurveProposalsVoteHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.dappsCurveProposalsVoteHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveRemoveLiquidityEventHistoricalGet

> dappsCurveRemoveLiquidityEventHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsCurveRemoveLiquidityEventHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveRemoveLiquidityOneEventHistoricalGet

> dappsCurveRemoveLiquidityOneEventHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsCurveRemoveLiquidityOneEventHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveSwapsHistoricalGet

> dappsCurveSwapsHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsCurveSwapsHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveSystemStateHistoricalGet

> dappsCurveSystemStateHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.dappsCurveSystemStateHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveTokensHistoricalGet

> dappsCurveTokensHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'tokenId': "tokenId_example" // String | 
};
apiInstance.dappsCurveTokensHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **tokenId** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveTransferOwnershipEventHistoricalGet

> dappsCurveTransferOwnershipEventHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsCurveTransferOwnershipEventHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveUnderlyingCoinHistoricalGet

> dappsCurveUnderlyingCoinHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsCurveUnderlyingCoinHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveVotingAppHistoricalGet

> dappsCurveVotingAppHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00") // Date | 
};
apiInstance.dappsCurveVotingAppHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dappsCurveWeeklyVolumeHistoricalGet

> dappsCurveWeeklyVolumeHistoricalGet(opts)



### Example

```javascript
import OnChainApi from 'on_chain_api';

let apiInstance = new OnChainApi.CurveApi();
let opts = {
  'startBlock': 789, // Number | 
  'endBlock': 789, // Number | 
  'startDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'endDate': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'poolId': "poolId_example" // String | 
};
apiInstance.dappsCurveWeeklyVolumeHistoricalGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Number**|  | [optional] 
 **endBlock** | **Number**|  | [optional] 
 **startDate** | **Date**|  | [optional] 
 **endDate** | **Date**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

