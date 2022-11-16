# \UniswapV3Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**UniswapV3GetBundlesCurrent**](UniswapV3Api.md#UniswapV3GetBundlesCurrent) | **Get** /dapps/uniswapv3/bundles/current | Bundles (current)
[**UniswapV3GetBurnsCurrent**](UniswapV3Api.md#UniswapV3GetBurnsCurrent) | **Get** /dapps/uniswapv3/burns/current | Burns (current)
[**UniswapV3GetDayDataCurrent**](UniswapV3Api.md#UniswapV3GetDayDataCurrent) | **Get** /dapps/uniswapv3/dayData/current | DayData (current)
[**UniswapV3GetFactoryCurrent**](UniswapV3Api.md#UniswapV3GetFactoryCurrent) | **Get** /dapps/uniswapv3/factory/current | Factory (current)
[**UniswapV3GetMintsCurrent**](UniswapV3Api.md#UniswapV3GetMintsCurrent) | **Get** /dapps/uniswapv3/mints/current | Mints (current)
[**UniswapV3GetPoolsCurrent**](UniswapV3Api.md#UniswapV3GetPoolsCurrent) | **Get** /dapps/uniswapv3/pools/current | Pools (current) 🔥
[**UniswapV3GetPoolsDayDataCurrent**](UniswapV3Api.md#UniswapV3GetPoolsDayDataCurrent) | **Get** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current)
[**UniswapV3GetPoolsHourDataCurrent**](UniswapV3Api.md#UniswapV3GetPoolsHourDataCurrent) | **Get** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current)
[**UniswapV3GetPositionsCurrent**](UniswapV3Api.md#UniswapV3GetPositionsCurrent) | **Get** /dapps/uniswapv3/positions/current | Positions (current)
[**UniswapV3GetPositionsSnapshotsCurrent**](UniswapV3Api.md#UniswapV3GetPositionsSnapshotsCurrent) | **Get** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current)
[**UniswapV3GetSwapsCurrent**](UniswapV3Api.md#UniswapV3GetSwapsCurrent) | **Get** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥
[**UniswapV3GetTicksCurrent**](UniswapV3Api.md#UniswapV3GetTicksCurrent) | **Get** /dapps/uniswapv3/ticks/current | Ticks (current)
[**UniswapV3GetTicksDayDataCurrent**](UniswapV3Api.md#UniswapV3GetTicksDayDataCurrent) | **Get** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current)
[**UniswapV3GetTokensCurrent**](UniswapV3Api.md#UniswapV3GetTokensCurrent) | **Get** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥
[**UniswapV3GetTokensDayDataCurrent**](UniswapV3Api.md#UniswapV3GetTokensDayDataCurrent) | **Get** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current)
[**UniswapV3GetTokensHourDataCurrent**](UniswapV3Api.md#UniswapV3GetTokensHourDataCurrent) | **Get** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current)



## UniswapV3GetBundlesCurrent

> []UniswapV3BundleV3DTO UniswapV3GetBundlesCurrent(ctx).Execute()

Bundles (current)



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
    resp, r, err := apiClient.UniswapV3Api.UniswapV3GetBundlesCurrent(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.UniswapV3GetBundlesCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `UniswapV3GetBundlesCurrent`: []UniswapV3BundleV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.UniswapV3GetBundlesCurrent`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiUniswapV3GetBundlesCurrentRequest struct via the builder pattern


### Return type

[**[]UniswapV3BundleV3DTO**](UniswapV3BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UniswapV3GetBurnsCurrent

> []UniswapV3BurnV3DTO UniswapV3GetBurnsCurrent(ctx).FilterPoolId(filterPoolId).Execute()

Burns (current)



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
    resp, r, err := apiClient.UniswapV3Api.UniswapV3GetBurnsCurrent(context.Background()).FilterPoolId(filterPoolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.UniswapV3GetBurnsCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `UniswapV3GetBurnsCurrent`: []UniswapV3BurnV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.UniswapV3GetBurnsCurrent`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUniswapV3GetBurnsCurrentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **string** |  | 

### Return type

[**[]UniswapV3BurnV3DTO**](UniswapV3BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UniswapV3GetDayDataCurrent

> []UniswapV3UniswapDayDataV3DTO UniswapV3GetDayDataCurrent(ctx).Execute()

DayData (current)



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
    resp, r, err := apiClient.UniswapV3Api.UniswapV3GetDayDataCurrent(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.UniswapV3GetDayDataCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `UniswapV3GetDayDataCurrent`: []UniswapV3UniswapDayDataV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.UniswapV3GetDayDataCurrent`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiUniswapV3GetDayDataCurrentRequest struct via the builder pattern


### Return type

[**[]UniswapV3UniswapDayDataV3DTO**](UniswapV3UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UniswapV3GetFactoryCurrent

> []UniswapV3FactoryV3DTO UniswapV3GetFactoryCurrent(ctx).Execute()

Factory (current)



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
    resp, r, err := apiClient.UniswapV3Api.UniswapV3GetFactoryCurrent(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.UniswapV3GetFactoryCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `UniswapV3GetFactoryCurrent`: []UniswapV3FactoryV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.UniswapV3GetFactoryCurrent`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiUniswapV3GetFactoryCurrentRequest struct via the builder pattern


### Return type

[**[]UniswapV3FactoryV3DTO**](UniswapV3FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UniswapV3GetMintsCurrent

> []UniswapV3MintV3DTO UniswapV3GetMintsCurrent(ctx).FilterPoolId(filterPoolId).Execute()

Mints (current)



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
    resp, r, err := apiClient.UniswapV3Api.UniswapV3GetMintsCurrent(context.Background()).FilterPoolId(filterPoolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.UniswapV3GetMintsCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `UniswapV3GetMintsCurrent`: []UniswapV3MintV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.UniswapV3GetMintsCurrent`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUniswapV3GetMintsCurrentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **string** |  | 

### Return type

[**[]UniswapV3MintV3DTO**](UniswapV3MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UniswapV3GetPoolsCurrent

> []UniswapV3PoolV3DTO UniswapV3GetPoolsCurrent(ctx).FilterPoolId(filterPoolId).Execute()

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
    resp, r, err := apiClient.UniswapV3Api.UniswapV3GetPoolsCurrent(context.Background()).FilterPoolId(filterPoolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.UniswapV3GetPoolsCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `UniswapV3GetPoolsCurrent`: []UniswapV3PoolV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.UniswapV3GetPoolsCurrent`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUniswapV3GetPoolsCurrentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **string** |  | 

### Return type

[**[]UniswapV3PoolV3DTO**](UniswapV3PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UniswapV3GetPoolsDayDataCurrent

> []UniswapV3PoolDayDataV3DTO UniswapV3GetPoolsDayDataCurrent(ctx).FilterPoolId(filterPoolId).Execute()

PoolsDayData (current)



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
    resp, r, err := apiClient.UniswapV3Api.UniswapV3GetPoolsDayDataCurrent(context.Background()).FilterPoolId(filterPoolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.UniswapV3GetPoolsDayDataCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `UniswapV3GetPoolsDayDataCurrent`: []UniswapV3PoolDayDataV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.UniswapV3GetPoolsDayDataCurrent`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUniswapV3GetPoolsDayDataCurrentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **string** |  | 

### Return type

[**[]UniswapV3PoolDayDataV3DTO**](UniswapV3PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UniswapV3GetPoolsHourDataCurrent

> []UniswapV3PoolHourDataV3DTO UniswapV3GetPoolsHourDataCurrent(ctx).FilterPoolId(filterPoolId).Execute()

PoolsHourData (current)



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
    resp, r, err := apiClient.UniswapV3Api.UniswapV3GetPoolsHourDataCurrent(context.Background()).FilterPoolId(filterPoolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.UniswapV3GetPoolsHourDataCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `UniswapV3GetPoolsHourDataCurrent`: []UniswapV3PoolHourDataV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.UniswapV3GetPoolsHourDataCurrent`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUniswapV3GetPoolsHourDataCurrentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **string** |  | 

### Return type

[**[]UniswapV3PoolHourDataV3DTO**](UniswapV3PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UniswapV3GetPositionsCurrent

> []UniswapV3PositionV3DTO UniswapV3GetPositionsCurrent(ctx).FilterPoolId(filterPoolId).Execute()

Positions (current)



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
    resp, r, err := apiClient.UniswapV3Api.UniswapV3GetPositionsCurrent(context.Background()).FilterPoolId(filterPoolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.UniswapV3GetPositionsCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `UniswapV3GetPositionsCurrent`: []UniswapV3PositionV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.UniswapV3GetPositionsCurrent`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUniswapV3GetPositionsCurrentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **string** |  | 

### Return type

[**[]UniswapV3PositionV3DTO**](UniswapV3PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UniswapV3GetPositionsSnapshotsCurrent

> []UniswapV3PositionSnapshotV3DTO UniswapV3GetPositionsSnapshotsCurrent(ctx).FilterPoolId(filterPoolId).Execute()

PositionsSnapshots (current)



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
    resp, r, err := apiClient.UniswapV3Api.UniswapV3GetPositionsSnapshotsCurrent(context.Background()).FilterPoolId(filterPoolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.UniswapV3GetPositionsSnapshotsCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `UniswapV3GetPositionsSnapshotsCurrent`: []UniswapV3PositionSnapshotV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.UniswapV3GetPositionsSnapshotsCurrent`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUniswapV3GetPositionsSnapshotsCurrentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **string** |  | 

### Return type

[**[]UniswapV3PositionSnapshotV3DTO**](UniswapV3PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UniswapV3GetSwapsCurrent

> []UniswapV3SwapV3DTO UniswapV3GetSwapsCurrent(ctx).FilterPoolId(filterPoolId).Execute()

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
    filterPoolId := "filterPoolId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.UniswapV3Api.UniswapV3GetSwapsCurrent(context.Background()).FilterPoolId(filterPoolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.UniswapV3GetSwapsCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `UniswapV3GetSwapsCurrent`: []UniswapV3SwapV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.UniswapV3GetSwapsCurrent`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUniswapV3GetSwapsCurrentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **string** |  | 

### Return type

[**[]UniswapV3SwapV3DTO**](UniswapV3SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UniswapV3GetTicksCurrent

> []UniswapV3TickV3DTO UniswapV3GetTicksCurrent(ctx).FilterPoolId(filterPoolId).Execute()

Ticks (current)



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
    resp, r, err := apiClient.UniswapV3Api.UniswapV3GetTicksCurrent(context.Background()).FilterPoolId(filterPoolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.UniswapV3GetTicksCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `UniswapV3GetTicksCurrent`: []UniswapV3TickV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.UniswapV3GetTicksCurrent`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUniswapV3GetTicksCurrentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **string** |  | 

### Return type

[**[]UniswapV3TickV3DTO**](UniswapV3TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UniswapV3GetTicksDayDataCurrent

> []UniswapV3TickDayDataV3DTO UniswapV3GetTicksDayDataCurrent(ctx).FilterPoolId(filterPoolId).Execute()

TicksDayData (current)



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
    resp, r, err := apiClient.UniswapV3Api.UniswapV3GetTicksDayDataCurrent(context.Background()).FilterPoolId(filterPoolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.UniswapV3GetTicksDayDataCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `UniswapV3GetTicksDayDataCurrent`: []UniswapV3TickDayDataV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.UniswapV3GetTicksDayDataCurrent`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUniswapV3GetTicksDayDataCurrentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **string** |  | 

### Return type

[**[]UniswapV3TickDayDataV3DTO**](UniswapV3TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UniswapV3GetTokensCurrent

> []UniswapV3TokenV3DTO UniswapV3GetTokensCurrent(ctx).FilterTokenId(filterTokenId).Execute()

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
    filterTokenId := "filterTokenId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.UniswapV3Api.UniswapV3GetTokensCurrent(context.Background()).FilterTokenId(filterTokenId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.UniswapV3GetTokensCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `UniswapV3GetTokensCurrent`: []UniswapV3TokenV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.UniswapV3GetTokensCurrent`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUniswapV3GetTokensCurrentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTokenId** | **string** |  | 

### Return type

[**[]UniswapV3TokenV3DTO**](UniswapV3TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UniswapV3GetTokensDayDataCurrent

> []UniswapV3TokenV3DayDataDTO UniswapV3GetTokensDayDataCurrent(ctx).FilterTokenId(filterTokenId).Execute()

TokensDayData (current)



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
    filterTokenId := "filterTokenId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.UniswapV3Api.UniswapV3GetTokensDayDataCurrent(context.Background()).FilterTokenId(filterTokenId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.UniswapV3GetTokensDayDataCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `UniswapV3GetTokensDayDataCurrent`: []UniswapV3TokenV3DayDataDTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.UniswapV3GetTokensDayDataCurrent`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUniswapV3GetTokensDayDataCurrentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTokenId** | **string** |  | 

### Return type

[**[]UniswapV3TokenV3DayDataDTO**](UniswapV3TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UniswapV3GetTokensHourDataCurrent

> []UniswapV3TokenHourDataV3DTO UniswapV3GetTokensHourDataCurrent(ctx).FilterTokenId(filterTokenId).Execute()

TokensHourData (current)



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
    filterTokenId := "filterTokenId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.UniswapV3Api.UniswapV3GetTokensHourDataCurrent(context.Background()).FilterTokenId(filterTokenId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.UniswapV3GetTokensHourDataCurrent``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `UniswapV3GetTokensHourDataCurrent`: []UniswapV3TokenHourDataV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.UniswapV3GetTokensHourDataCurrent`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUniswapV3GetTokensHourDataCurrentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTokenId** | **string** |  | 

### Return type

[**[]UniswapV3TokenHourDataV3DTO**](UniswapV3TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

