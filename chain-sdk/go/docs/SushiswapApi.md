# \SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ChainsChainIdDappsSushiswapPoolsCurrentGet**](SushiswapApi.md#ChainsChainIdDappsSushiswapPoolsCurrentGet) | **Get** /chains/{chain_id}/dapps/sushiswap/pools/current | GetPools
[**ChainsChainIdDappsSushiswapSwapsCurrentGet**](SushiswapApi.md#ChainsChainIdDappsSushiswapSwapsCurrentGet) | **Get** /chains/{chain_id}/dapps/sushiswap/swaps/current | GetSwaps
[**ChainsChainIdDappsSushiswapTokensCurrentGet**](SushiswapApi.md#ChainsChainIdDappsSushiswapTokensCurrentGet) | **Get** /chains/{chain_id}/dapps/sushiswap/tokens/current | GetTokens



## ChainsChainIdDappsSushiswapPoolsCurrentGet

> []PairDTO ChainsChainIdDappsSushiswapPoolsCurrentGet(ctx, chainId).Execute()

GetPools



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    chainId := "chainId_example" // string | Chain id

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.SushiswapApi.ChainsChainIdDappsSushiswapPoolsCurrentGet(context.Background(), chainId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.ChainsChainIdDappsSushiswapPoolsCurrentGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ChainsChainIdDappsSushiswapPoolsCurrentGet`: []PairDTO
    fmt.Fprintf(os.Stdout, "Response from `SushiswapApi.ChainsChainIdDappsSushiswapPoolsCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**chainId** | **string** | Chain id | 

### Other Parameters

Other parameters are passed through a pointer to a apiChainsChainIdDappsSushiswapPoolsCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]PairDTO**](PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsSushiswapSwapsCurrentGet

> []SwapDTO ChainsChainIdDappsSushiswapSwapsCurrentGet(ctx, chainId).Execute()

GetSwaps

### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    chainId := "chainId_example" // string | Chain id

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.SushiswapApi.ChainsChainIdDappsSushiswapSwapsCurrentGet(context.Background(), chainId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.ChainsChainIdDappsSushiswapSwapsCurrentGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ChainsChainIdDappsSushiswapSwapsCurrentGet`: []SwapDTO
    fmt.Fprintf(os.Stdout, "Response from `SushiswapApi.ChainsChainIdDappsSushiswapSwapsCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**chainId** | **string** | Chain id | 

### Other Parameters

Other parameters are passed through a pointer to a apiChainsChainIdDappsSushiswapSwapsCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]SwapDTO**](SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsSushiswapTokensCurrentGet

> []TokenDTO ChainsChainIdDappsSushiswapTokensCurrentGet(ctx, chainId).Execute()

GetTokens

### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    chainId := "chainId_example" // string | Chain id

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.SushiswapApi.ChainsChainIdDappsSushiswapTokensCurrentGet(context.Background(), chainId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.ChainsChainIdDappsSushiswapTokensCurrentGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ChainsChainIdDappsSushiswapTokensCurrentGet`: []TokenDTO
    fmt.Fprintf(os.Stdout, "Response from `SushiswapApi.ChainsChainIdDappsSushiswapTokensCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**chainId** | **string** | Chain id | 

### Other Parameters

Other parameters are passed through a pointer to a apiChainsChainIdDappsSushiswapTokensCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]TokenDTO**](TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

