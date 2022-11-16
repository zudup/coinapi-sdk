# \UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**UniswapV2GetPoolsCurrent**](UniswapV2Api.md#UniswapV2GetPoolsCurrent) | **Get** /dapps/uniswapv2/pools/current | Pools (current) 🔥
[**UniswapV2GetSwapsCurrent**](UniswapV2Api.md#UniswapV2GetSwapsCurrent) | **Get** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
[**UniswapV2GetTokensCurrent**](UniswapV2Api.md#UniswapV2GetTokensCurrent) | **Get** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥



## UniswapV2GetPoolsCurrent

> []UniswapV2PairV2DTO UniswapV2GetPoolsCurrent(ctx).FilterPoolId(filterPoolId).Execute()

Pools (current) 🔥



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
    filterPoolId := "filterPoolId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.UniswapV2Api.UniswapV2GetPoolsCurrent(context.Background()).FilterPoolId(filterPoolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV2Api.UniswapV2GetPoolsCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `UniswapV2GetPoolsCurrent`: []UniswapV2PairV2DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV2Api.UniswapV2GetPoolsCurrent`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUniswapV2GetPoolsCurrentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **string** |  | 

### Return type

[**[]UniswapV2PairV2DTO**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UniswapV2GetSwapsCurrent

> []UniswapV2SwapV2DTO UniswapV2GetSwapsCurrent(ctx).Execute()

Swaps (current) 🔥



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

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.UniswapV2Api.UniswapV2GetSwapsCurrent(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV2Api.UniswapV2GetSwapsCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `UniswapV2GetSwapsCurrent`: []UniswapV2SwapV2DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV2Api.UniswapV2GetSwapsCurrent`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiUniswapV2GetSwapsCurrentRequest struct via the builder pattern


### Return type

[**[]UniswapV2SwapV2DTO**](UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UniswapV2GetTokensCurrent

> []UniswapV2TokenV2DTO UniswapV2GetTokensCurrent(ctx).Execute()

Tokens (current) 🔥



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

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.UniswapV2Api.UniswapV2GetTokensCurrent(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV2Api.UniswapV2GetTokensCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `UniswapV2GetTokensCurrent`: []UniswapV2TokenV2DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV2Api.UniswapV2GetTokensCurrent`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiUniswapV2GetTokensCurrentRequest struct via the builder pattern


### Return type

[**[]UniswapV2TokenV2DTO**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

