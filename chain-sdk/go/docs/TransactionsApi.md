# \TransactionsApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ChainsChainIdDappsUniswapv2TransactionsHistoricalGet**](TransactionsApi.md#ChainsChainIdDappsUniswapv2TransactionsHistoricalGet) | **Get** /chains/{chain_id}/dapps/uniswapv2/transactions/historical | 
[**ChainsChainIdDappsUniswapv3TransactionsHistoricalGet**](TransactionsApi.md#ChainsChainIdDappsUniswapv3TransactionsHistoricalGet) | **Get** /chains/{chain_id}/dapps/uniswapv3/transactions/historical | 



## ChainsChainIdDappsUniswapv2TransactionsHistoricalGet

> ChainsChainIdDappsUniswapv2TransactionsHistoricalGet(ctx, chainId).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()



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

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.TransactionsApi.ChainsChainIdDappsUniswapv2TransactionsHistoricalGet(context.Background(), chainId).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TransactionsApi.ChainsChainIdDappsUniswapv2TransactionsHistoricalGet``: %v\n", err)
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

Other parameters are passed through a pointer to a apiChainsChainIdDappsUniswapv2TransactionsHistoricalGetRequest struct via the builder pattern


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


## ChainsChainIdDappsUniswapv3TransactionsHistoricalGet

> ChainsChainIdDappsUniswapv3TransactionsHistoricalGet(ctx, chainId).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()



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

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.TransactionsApi.ChainsChainIdDappsUniswapv3TransactionsHistoricalGet(context.Background(), chainId).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TransactionsApi.ChainsChainIdDappsUniswapv3TransactionsHistoricalGet``: %v\n", err)
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

Other parameters are passed through a pointer to a apiChainsChainIdDappsUniswapv3TransactionsHistoricalGetRequest struct via the builder pattern


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
