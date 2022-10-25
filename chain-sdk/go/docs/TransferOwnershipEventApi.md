# \TransferOwnershipEventApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ChainsChainIdDappsCurveTransferOwnershipEventHistoricalGet**](TransferOwnershipEventApi.md#ChainsChainIdDappsCurveTransferOwnershipEventHistoricalGet) | **Get** /chains/{chain_id}/dapps/curve/transferOwnershipEvent/historical | 



## ChainsChainIdDappsCurveTransferOwnershipEventHistoricalGet

> ChainsChainIdDappsCurveTransferOwnershipEventHistoricalGet(ctx, chainId).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()



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
    chainId := "chainId_example" // string | 
    startBlock := int64(789) // int64 |  (optional)
    endBlock := int64(789) // int64 |  (optional)
    startDate := time.Now() // time.Time |  (optional)
    endDate := time.Now() // time.Time |  (optional)
    poolId := "poolId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.TransferOwnershipEventApi.ChainsChainIdDappsCurveTransferOwnershipEventHistoricalGet(context.Background(), chainId).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TransferOwnershipEventApi.ChainsChainIdDappsCurveTransferOwnershipEventHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**chainId** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiChainsChainIdDappsCurveTransferOwnershipEventHistoricalGetRequest struct via the builder pattern


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

