# CurveApi

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


<a name="dappsCurveAccountsHistoricalGet"></a>
# **dappsCurveAccountsHistoricalGet**
> dappsCurveAccountsHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.dappsCurveAccountsHistoricalGet(startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveAccountsHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveAccountsHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveAddLiquidityEventHistoricalGet"></a>
# **dappsCurveAddLiquidityEventHistoricalGet**
> dappsCurveAddLiquidityEventHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.dappsCurveAddLiquidityEventHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveAddLiquidityEventHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveAddLiquidityEventHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveAdminFeeChangeLogHistoricalGet"></a>
# **dappsCurveAdminFeeChangeLogHistoricalGet**
> dappsCurveAdminFeeChangeLogHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.dappsCurveAdminFeeChangeLogHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveAdminFeeChangeLogHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveAdminFeeChangeLogHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveAmplificationCoeffChangeLogHistoricalGet"></a>
# **dappsCurveAmplificationCoeffChangeLogHistoricalGet**
> dappsCurveAmplificationCoeffChangeLogHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.dappsCurveAmplificationCoeffChangeLogHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveAmplificationCoeffChangeLogHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveAmplificationCoeffChangeLogHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveCoinsHistoricalGet"></a>
# **dappsCurveCoinsHistoricalGet**
> dappsCurveCoinsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.dappsCurveCoinsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveCoinsHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveCoinsHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveContractsHistoricalGet"></a>
# **dappsCurveContractsHistoricalGet**
> dappsCurveContractsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.dappsCurveContractsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveContractsHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveContractsHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveContractsVersionHistoricalGet"></a>
# **dappsCurveContractsVersionHistoricalGet**
> dappsCurveContractsVersionHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.dappsCurveContractsVersionHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveContractsVersionHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveContractsVersionHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveDailyVolumeHistoricalGet"></a>
# **dappsCurveDailyVolumeHistoricalGet**
> dappsCurveDailyVolumeHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.dappsCurveDailyVolumeHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveDailyVolumeHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveDailyVolumeHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveFeeChangeLogHistoricalGet"></a>
# **dappsCurveFeeChangeLogHistoricalGet**
> dappsCurveFeeChangeLogHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.dappsCurveFeeChangeLogHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveFeeChangeLogHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveFeeChangeLogHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveGaugeDepositHistoricalGet"></a>
# **dappsCurveGaugeDepositHistoricalGet**
> dappsCurveGaugeDepositHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.dappsCurveGaugeDepositHistoricalGet(startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveGaugeDepositHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveGaugeDepositHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveGaugeHistoricalGet"></a>
# **dappsCurveGaugeHistoricalGet**
> dappsCurveGaugeHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.dappsCurveGaugeHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveGaugeHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveGaugeHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveGaugeLiquidityHistoricalGet"></a>
# **dappsCurveGaugeLiquidityHistoricalGet**
> dappsCurveGaugeLiquidityHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.dappsCurveGaugeLiquidityHistoricalGet(startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveGaugeLiquidityHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveGaugeLiquidityHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveGaugeTotalWeightHistoricalGet"></a>
# **dappsCurveGaugeTotalWeightHistoricalGet**
> dappsCurveGaugeTotalWeightHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.dappsCurveGaugeTotalWeightHistoricalGet(startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveGaugeTotalWeightHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveGaugeTotalWeightHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveGaugeTypeHistoricalGet"></a>
# **dappsCurveGaugeTypeHistoricalGet**
> dappsCurveGaugeTypeHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.dappsCurveGaugeTypeHistoricalGet(startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveGaugeTypeHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveGaugeTypeHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveGaugeTypeWeightHistoricalGet"></a>
# **dappsCurveGaugeTypeWeightHistoricalGet**
> dappsCurveGaugeTypeWeightHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.dappsCurveGaugeTypeWeightHistoricalGet(startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveGaugeTypeWeightHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveGaugeTypeWeightHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveGaugeWeightHistoricalGet"></a>
# **dappsCurveGaugeWeightHistoricalGet**
> dappsCurveGaugeWeightHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.dappsCurveGaugeWeightHistoricalGet(startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveGaugeWeightHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveGaugeWeightHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveGaugeWeightVoteHistoricalGet"></a>
# **dappsCurveGaugeWeightVoteHistoricalGet**
> dappsCurveGaugeWeightVoteHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.dappsCurveGaugeWeightVoteHistoricalGet(startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveGaugeWeightVoteHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveGaugeWeightVoteHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveGaugeWithdrawHistoricalGet"></a>
# **dappsCurveGaugeWithdrawHistoricalGet**
> dappsCurveGaugeWithdrawHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.dappsCurveGaugeWithdrawHistoricalGet(startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveGaugeWithdrawHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveGaugeWithdrawHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveHourlyVolumeHistoricalGet"></a>
# **dappsCurveHourlyVolumeHistoricalGet**
> dappsCurveHourlyVolumeHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.dappsCurveHourlyVolumeHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveHourlyVolumeHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveHourlyVolumeHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveLpTokenHistoricalGet"></a>
# **dappsCurveLpTokenHistoricalGet**
> dappsCurveLpTokenHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.dappsCurveLpTokenHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveLpTokenHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveLpTokenHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurvePoolsHistoricalGet"></a>
# **dappsCurvePoolsHistoricalGet**
> dappsCurvePoolsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.dappsCurvePoolsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurvePoolsHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurvePoolsHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveProposalsHistoricalGet"></a>
# **dappsCurveProposalsHistoricalGet**
> dappsCurveProposalsHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.dappsCurveProposalsHistoricalGet(startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveProposalsHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveProposalsHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveProposalsVoteHistoricalGet"></a>
# **dappsCurveProposalsVoteHistoricalGet**
> dappsCurveProposalsVoteHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.dappsCurveProposalsVoteHistoricalGet(startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveProposalsVoteHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveProposalsVoteHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveRemoveLiquidityEventHistoricalGet"></a>
# **dappsCurveRemoveLiquidityEventHistoricalGet**
> dappsCurveRemoveLiquidityEventHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.dappsCurveRemoveLiquidityEventHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveRemoveLiquidityEventHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveRemoveLiquidityEventHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveRemoveLiquidityOneEventHistoricalGet"></a>
# **dappsCurveRemoveLiquidityOneEventHistoricalGet**
> dappsCurveRemoveLiquidityOneEventHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.dappsCurveRemoveLiquidityOneEventHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveRemoveLiquidityOneEventHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveRemoveLiquidityOneEventHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveSwapsHistoricalGet"></a>
# **dappsCurveSwapsHistoricalGet**
> dappsCurveSwapsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.dappsCurveSwapsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveSwapsHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveSwapsHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveSystemStateHistoricalGet"></a>
# **dappsCurveSystemStateHistoricalGet**
> dappsCurveSystemStateHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.dappsCurveSystemStateHistoricalGet(startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveSystemStateHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveSystemStateHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveTokensHistoricalGet"></a>
# **dappsCurveTokensHistoricalGet**
> dappsCurveTokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val tokenId : kotlin.String = tokenId_example // kotlin.String | 
try {
    apiInstance.dappsCurveTokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveTokensHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveTokensHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **tokenId** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveTransferOwnershipEventHistoricalGet"></a>
# **dappsCurveTransferOwnershipEventHistoricalGet**
> dappsCurveTransferOwnershipEventHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.dappsCurveTransferOwnershipEventHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveTransferOwnershipEventHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveTransferOwnershipEventHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveUnderlyingCoinHistoricalGet"></a>
# **dappsCurveUnderlyingCoinHistoricalGet**
> dappsCurveUnderlyingCoinHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.dappsCurveUnderlyingCoinHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveUnderlyingCoinHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveUnderlyingCoinHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveVotingAppHistoricalGet"></a>
# **dappsCurveVotingAppHistoricalGet**
> dappsCurveVotingAppHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.dappsCurveVotingAppHistoricalGet(startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveVotingAppHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveVotingAppHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="dappsCurveWeeklyVolumeHistoricalGet"></a>
# **dappsCurveWeeklyVolumeHistoricalGet**
> dappsCurveWeeklyVolumeHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CurveApi()
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val poolId : kotlin.String = poolId_example // kotlin.String | 
try {
    apiInstance.dappsCurveWeeklyVolumeHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)
} catch (e: ClientException) {
    println("4xx response calling CurveApi#dappsCurveWeeklyVolumeHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CurveApi#dappsCurveWeeklyVolumeHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]
 **poolId** | **kotlin.String**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

