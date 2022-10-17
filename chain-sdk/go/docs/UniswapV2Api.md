# \UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ChainsChainIdDappsUniswapv2PoolsCurrentGet**](UniswapV2Api.md#ChainsChainIdDappsUniswapv2PoolsCurrentGet) | **Get** /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools
[**ChainsChainIdDappsUniswapv2SwapsCurrentGet**](UniswapV2Api.md#ChainsChainIdDappsUniswapv2SwapsCurrentGet) | **Get** /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps
[**ChainsChainIdDappsUniswapv2TokensCurrentGet**](UniswapV2Api.md#ChainsChainIdDappsUniswapv2TokensCurrentGet) | **Get** /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens



## ChainsChainIdDappsUniswapv2PoolsCurrentGet

> []PairV2DTO ChainsChainIdDappsUniswapv2PoolsCurrentGet(ctx, chainId).Execute()

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
    resp, r, err := apiClient.UniswapV2Api.ChainsChainIdDappsUniswapv2PoolsCurrentGet(context.Background(), chainId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV2Api.ChainsChainIdDappsUniswapv2PoolsCurrentGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ChainsChainIdDappsUniswapv2PoolsCurrentGet`: []PairV2DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV2Api.ChainsChainIdDappsUniswapv2PoolsCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**chainId** | **string** | Chain id | 

### Other Parameters

Other parameters are passed through a pointer to a apiChainsChainIdDappsUniswapv2PoolsCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]PairV2DTO**](PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv2SwapsCurrentGet

> []SwapV2DTO ChainsChainIdDappsUniswapv2SwapsCurrentGet(ctx, chainId).Execute()

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
    resp, r, err := apiClient.UniswapV2Api.ChainsChainIdDappsUniswapv2SwapsCurrentGet(context.Background(), chainId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV2Api.ChainsChainIdDappsUniswapv2SwapsCurrentGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ChainsChainIdDappsUniswapv2SwapsCurrentGet`: []SwapV2DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV2Api.ChainsChainIdDappsUniswapv2SwapsCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**chainId** | **string** | Chain id | 

### Other Parameters

Other parameters are passed through a pointer to a apiChainsChainIdDappsUniswapv2SwapsCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]SwapV2DTO**](SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv2TokensCurrentGet

> []TokenV2DTO ChainsChainIdDappsUniswapv2TokensCurrentGet(ctx, chainId).Execute()

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
    resp, r, err := apiClient.UniswapV2Api.ChainsChainIdDappsUniswapv2TokensCurrentGet(context.Background(), chainId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV2Api.ChainsChainIdDappsUniswapv2TokensCurrentGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ChainsChainIdDappsUniswapv2TokensCurrentGet`: []TokenV2DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV2Api.ChainsChainIdDappsUniswapv2TokensCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**chainId** | **string** | Chain id | 

### Other Parameters

Other parameters are passed through a pointer to a apiChainsChainIdDappsUniswapv2TokensCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]TokenV2DTO**](TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

