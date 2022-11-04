# \CurveApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DappsCurveAccountsHistoricalGet**](CurveApi.md#DappsCurveAccountsHistoricalGet) | **Get** /dapps/curve/accounts/historical | 
[**DappsCurveAddLiquidityEventHistoricalGet**](CurveApi.md#DappsCurveAddLiquidityEventHistoricalGet) | **Get** /dapps/curve/addLiquidityEvent/historical | 
[**DappsCurveAdminFeeChangeLogHistoricalGet**](CurveApi.md#DappsCurveAdminFeeChangeLogHistoricalGet) | **Get** /dapps/curve/adminFeeChangeLog/historical | 
[**DappsCurveAmplificationCoeffChangeLogHistoricalGet**](CurveApi.md#DappsCurveAmplificationCoeffChangeLogHistoricalGet) | **Get** /dapps/curve/amplificationCoeffChangeLog/historical | 
[**DappsCurveCoinsHistoricalGet**](CurveApi.md#DappsCurveCoinsHistoricalGet) | **Get** /dapps/curve/coins/historical | 
[**DappsCurveContractsHistoricalGet**](CurveApi.md#DappsCurveContractsHistoricalGet) | **Get** /dapps/curve/contracts/historical | 
[**DappsCurveContractsVersionHistoricalGet**](CurveApi.md#DappsCurveContractsVersionHistoricalGet) | **Get** /dapps/curve/contractsVersion/historical | 
[**DappsCurveDailyVolumeHistoricalGet**](CurveApi.md#DappsCurveDailyVolumeHistoricalGet) | **Get** /dapps/curve/dailyVolume/historical | 
[**DappsCurveFeeChangeLogHistoricalGet**](CurveApi.md#DappsCurveFeeChangeLogHistoricalGet) | **Get** /dapps/curve/feeChangeLog/historical | 
[**DappsCurveGaugeDepositHistoricalGet**](CurveApi.md#DappsCurveGaugeDepositHistoricalGet) | **Get** /dapps/curve/gaugeDeposit/historical | 
[**DappsCurveGaugeHistoricalGet**](CurveApi.md#DappsCurveGaugeHistoricalGet) | **Get** /dapps/curve/gauge/historical | 
[**DappsCurveGaugeLiquidityHistoricalGet**](CurveApi.md#DappsCurveGaugeLiquidityHistoricalGet) | **Get** /dapps/curve/gaugeLiquidity/historical | 
[**DappsCurveGaugeTotalWeightHistoricalGet**](CurveApi.md#DappsCurveGaugeTotalWeightHistoricalGet) | **Get** /dapps/curve/gaugeTotalWeight/historical | 
[**DappsCurveGaugeTypeHistoricalGet**](CurveApi.md#DappsCurveGaugeTypeHistoricalGet) | **Get** /dapps/curve/gaugeType/historical | 
[**DappsCurveGaugeTypeWeightHistoricalGet**](CurveApi.md#DappsCurveGaugeTypeWeightHistoricalGet) | **Get** /dapps/curve/gaugeTypeWeight/historical | 
[**DappsCurveGaugeWeightHistoricalGet**](CurveApi.md#DappsCurveGaugeWeightHistoricalGet) | **Get** /dapps/curve/gaugeWeight/historical | 
[**DappsCurveGaugeWeightVoteHistoricalGet**](CurveApi.md#DappsCurveGaugeWeightVoteHistoricalGet) | **Get** /dapps/curve/gaugeWeightVote/historical | 
[**DappsCurveGaugeWithdrawHistoricalGet**](CurveApi.md#DappsCurveGaugeWithdrawHistoricalGet) | **Get** /dapps/curve/gaugeWithdraw/historical | 
[**DappsCurveHourlyVolumeHistoricalGet**](CurveApi.md#DappsCurveHourlyVolumeHistoricalGet) | **Get** /dapps/curve/hourlyVolume/historical | 
[**DappsCurveLpTokenHistoricalGet**](CurveApi.md#DappsCurveLpTokenHistoricalGet) | **Get** /dapps/curve/lpToken/historical | 
[**DappsCurvePoolsHistoricalGet**](CurveApi.md#DappsCurvePoolsHistoricalGet) | **Get** /dapps/curve/pools/historical | 
[**DappsCurveProposalsHistoricalGet**](CurveApi.md#DappsCurveProposalsHistoricalGet) | **Get** /dapps/curve/proposals/historical | 
[**DappsCurveProposalsVoteHistoricalGet**](CurveApi.md#DappsCurveProposalsVoteHistoricalGet) | **Get** /dapps/curve/proposalsVote/historical | 
[**DappsCurveRemoveLiquidityEventHistoricalGet**](CurveApi.md#DappsCurveRemoveLiquidityEventHistoricalGet) | **Get** /dapps/curve/removeLiquidityEvent/historical | 
[**DappsCurveRemoveLiquidityOneEventHistoricalGet**](CurveApi.md#DappsCurveRemoveLiquidityOneEventHistoricalGet) | **Get** /dapps/curve/removeLiquidityOneEvent/historical | 
[**DappsCurveSwapsHistoricalGet**](CurveApi.md#DappsCurveSwapsHistoricalGet) | **Get** /dapps/curve/swaps/historical | 
[**DappsCurveSystemStateHistoricalGet**](CurveApi.md#DappsCurveSystemStateHistoricalGet) | **Get** /dapps/curve/systemState/historical | 
[**DappsCurveTokensHistoricalGet**](CurveApi.md#DappsCurveTokensHistoricalGet) | **Get** /dapps/curve/tokens/historical | 
[**DappsCurveTransferOwnershipEventHistoricalGet**](CurveApi.md#DappsCurveTransferOwnershipEventHistoricalGet) | **Get** /dapps/curve/transferOwnershipEvent/historical | 
[**DappsCurveUnderlyingCoinHistoricalGet**](CurveApi.md#DappsCurveUnderlyingCoinHistoricalGet) | **Get** /dapps/curve/underlyingCoin/historical | 
[**DappsCurveVotingAppHistoricalGet**](CurveApi.md#DappsCurveVotingAppHistoricalGet) | **Get** /dapps/curve/votingApp/historical | 
[**DappsCurveWeeklyVolumeHistoricalGet**](CurveApi.md#DappsCurveWeeklyVolumeHistoricalGet) | **Get** /dapps/curve/weeklyVolume/historical | 



## DappsCurveAccountsHistoricalGet

> DappsCurveAccountsHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveAccountsHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveAccountsHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveAccountsHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveAddLiquidityEventHistoricalGet

> DappsCurveAddLiquidityEventHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)
    poolId := "poolId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveAddLiquidityEventHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveAddLiquidityEventHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveAddLiquidityEventHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveAdminFeeChangeLogHistoricalGet

> DappsCurveAdminFeeChangeLogHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)
    poolId := "poolId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveAdminFeeChangeLogHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveAdminFeeChangeLogHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveAdminFeeChangeLogHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveAmplificationCoeffChangeLogHistoricalGet

> DappsCurveAmplificationCoeffChangeLogHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)
    poolId := "poolId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveAmplificationCoeffChangeLogHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveAmplificationCoeffChangeLogHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveAmplificationCoeffChangeLogHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveCoinsHistoricalGet

> DappsCurveCoinsHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)
    poolId := "poolId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveCoinsHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveCoinsHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveCoinsHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveContractsHistoricalGet

> DappsCurveContractsHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)
    poolId := "poolId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveContractsHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveContractsHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveContractsHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveContractsVersionHistoricalGet

> DappsCurveContractsVersionHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)
    poolId := "poolId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveContractsVersionHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveContractsVersionHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveContractsVersionHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveDailyVolumeHistoricalGet

> DappsCurveDailyVolumeHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)
    poolId := "poolId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveDailyVolumeHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveDailyVolumeHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveDailyVolumeHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveFeeChangeLogHistoricalGet

> DappsCurveFeeChangeLogHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)
    poolId := "poolId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveFeeChangeLogHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveFeeChangeLogHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveFeeChangeLogHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveGaugeDepositHistoricalGet

> DappsCurveGaugeDepositHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveGaugeDepositHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveGaugeDepositHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveGaugeDepositHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveGaugeHistoricalGet

> DappsCurveGaugeHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)
    poolId := "poolId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveGaugeHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveGaugeHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveGaugeHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveGaugeLiquidityHistoricalGet

> DappsCurveGaugeLiquidityHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveGaugeLiquidityHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveGaugeLiquidityHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveGaugeLiquidityHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveGaugeTotalWeightHistoricalGet

> DappsCurveGaugeTotalWeightHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveGaugeTotalWeightHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveGaugeTotalWeightHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveGaugeTotalWeightHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveGaugeTypeHistoricalGet

> DappsCurveGaugeTypeHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveGaugeTypeHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveGaugeTypeHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveGaugeTypeHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveGaugeTypeWeightHistoricalGet

> DappsCurveGaugeTypeWeightHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveGaugeTypeWeightHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveGaugeTypeWeightHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveGaugeTypeWeightHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveGaugeWeightHistoricalGet

> DappsCurveGaugeWeightHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveGaugeWeightHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveGaugeWeightHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveGaugeWeightHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveGaugeWeightVoteHistoricalGet

> DappsCurveGaugeWeightVoteHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveGaugeWeightVoteHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveGaugeWeightVoteHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveGaugeWeightVoteHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveGaugeWithdrawHistoricalGet

> DappsCurveGaugeWithdrawHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveGaugeWithdrawHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveGaugeWithdrawHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveGaugeWithdrawHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveHourlyVolumeHistoricalGet

> DappsCurveHourlyVolumeHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)
    poolId := "poolId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveHourlyVolumeHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveHourlyVolumeHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveHourlyVolumeHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveLpTokenHistoricalGet

> DappsCurveLpTokenHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)
    poolId := "poolId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveLpTokenHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveLpTokenHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveLpTokenHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurvePoolsHistoricalGet

> DappsCurvePoolsHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)
    poolId := "poolId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurvePoolsHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurvePoolsHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurvePoolsHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveProposalsHistoricalGet

> DappsCurveProposalsHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveProposalsHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveProposalsHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveProposalsHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveProposalsVoteHistoricalGet

> DappsCurveProposalsVoteHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveProposalsVoteHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveProposalsVoteHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveProposalsVoteHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveRemoveLiquidityEventHistoricalGet

> DappsCurveRemoveLiquidityEventHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)
    poolId := "poolId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveRemoveLiquidityEventHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveRemoveLiquidityEventHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveRemoveLiquidityEventHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveRemoveLiquidityOneEventHistoricalGet

> DappsCurveRemoveLiquidityOneEventHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)
    poolId := "poolId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveRemoveLiquidityOneEventHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveRemoveLiquidityOneEventHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveRemoveLiquidityOneEventHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveSwapsHistoricalGet

> DappsCurveSwapsHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)
    poolId := "poolId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveSwapsHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveSwapsHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveSwapsHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveSystemStateHistoricalGet

> DappsCurveSystemStateHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveSystemStateHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveSystemStateHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveSystemStateHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveTokensHistoricalGet

> DappsCurveTokensHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)
    tokenId := "tokenId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveTokensHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveTokensHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveTokensHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **tokenId** | **string** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveTransferOwnershipEventHistoricalGet

> DappsCurveTransferOwnershipEventHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)
    poolId := "poolId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveTransferOwnershipEventHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveTransferOwnershipEventHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveTransferOwnershipEventHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveUnderlyingCoinHistoricalGet

> DappsCurveUnderlyingCoinHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)
    poolId := "poolId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveUnderlyingCoinHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveUnderlyingCoinHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveUnderlyingCoinHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveVotingAppHistoricalGet

> DappsCurveVotingAppHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveVotingAppHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveVotingAppHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveVotingAppHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DappsCurveWeeklyVolumeHistoricalGet

> DappsCurveWeeklyVolumeHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "./openapi"
)

func main() {
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)
    poolId := "poolId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CurveApi.DappsCurveWeeklyVolumeHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CurveApi.DappsCurveWeeklyVolumeHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsCurveWeeklyVolumeHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

