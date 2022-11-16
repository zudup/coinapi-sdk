# \SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CurveGetExchangesCurrent**](SushiswapApi.md#CurveGetExchangesCurrent) | **Get** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
[**DexGetTradesCurrent**](SushiswapApi.md#DexGetTradesCurrent) | **Get** /dapps/sushiswap/trades/current | Trades (current) 🔥
[**SushiswapGetPoolsCurrent**](SushiswapApi.md#SushiswapGetPoolsCurrent) | **Get** /dapps/sushiswap/pools/current | Pools (current) 🔥
[**SushiswapGetSwapsCurrent**](SushiswapApi.md#SushiswapGetSwapsCurrent) | **Get** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
[**SushiswapGetTokensCurrent**](SushiswapApi.md#SushiswapGetTokensCurrent) | **Get** /dapps/sushiswap/tokens/current | Tokens (current) 🔥



## CurveGetExchangesCurrent

> []CurveExchangeDTO CurveGetExchangesCurrent(ctx).Execute()

Exchanges (current) 🔥



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
    resp, r, err := apiClient.SushiswapApi.CurveGetExchangesCurrent(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.CurveGetExchangesCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CurveGetExchangesCurrent`: []CurveExchangeDTO
    fmt.Fprintf(os.Stdout, "Response from `SushiswapApi.CurveGetExchangesCurrent`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiCurveGetExchangesCurrentRequest struct via the builder pattern


### Return type

[**[]CurveExchangeDTO**](CurveExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetTradesCurrent

> []DexTradeDTO DexGetTradesCurrent(ctx).Execute()

Trades (current) 🔥



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
    resp, r, err := apiClient.SushiswapApi.DexGetTradesCurrent(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.DexGetTradesCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DexGetTradesCurrent`: []DexTradeDTO
    fmt.Fprintf(os.Stdout, "Response from `SushiswapApi.DexGetTradesCurrent`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiDexGetTradesCurrentRequest struct via the builder pattern


### Return type

[**[]DexTradeDTO**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SushiswapGetPoolsCurrent

> []SushiswapPairDTO SushiswapGetPoolsCurrent(ctx).Execute()

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

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.SushiswapApi.SushiswapGetPoolsCurrent(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.SushiswapGetPoolsCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SushiswapGetPoolsCurrent`: []SushiswapPairDTO
    fmt.Fprintf(os.Stdout, "Response from `SushiswapApi.SushiswapGetPoolsCurrent`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiSushiswapGetPoolsCurrentRequest struct via the builder pattern


### Return type

[**[]SushiswapPairDTO**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SushiswapGetSwapsCurrent

> []SushiswapSwapDTO SushiswapGetSwapsCurrent(ctx).Execute()

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
    resp, r, err := apiClient.SushiswapApi.SushiswapGetSwapsCurrent(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.SushiswapGetSwapsCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SushiswapGetSwapsCurrent`: []SushiswapSwapDTO
    fmt.Fprintf(os.Stdout, "Response from `SushiswapApi.SushiswapGetSwapsCurrent`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiSushiswapGetSwapsCurrentRequest struct via the builder pattern


### Return type

[**[]SushiswapSwapDTO**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SushiswapGetTokensCurrent

> []SushiswapTokenDTO SushiswapGetTokensCurrent(ctx).Execute()

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
    resp, r, err := apiClient.SushiswapApi.SushiswapGetTokensCurrent(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.SushiswapGetTokensCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SushiswapGetTokensCurrent`: []SushiswapTokenDTO
    fmt.Fprintf(os.Stdout, "Response from `SushiswapApi.SushiswapGetTokensCurrent`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiSushiswapGetTokensCurrentRequest struct via the builder pattern


### Return type

[**[]SushiswapTokenDTO**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

