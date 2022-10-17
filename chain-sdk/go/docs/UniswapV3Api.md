# \UniswapV3Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ChainsChainIdDappsUniswapv3BundleCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3BundleCurrentGet) | **Get** /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles
[**ChainsChainIdDappsUniswapv3BurnsCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3BurnsCurrentGet) | **Get** /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns
[**ChainsChainIdDappsUniswapv3FactoryCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3FactoryCurrentGet) | **Get** /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory
[**ChainsChainIdDappsUniswapv3MintsCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3MintsCurrentGet) | **Get** /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints
[**ChainsChainIdDappsUniswapv3PoolsCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3PoolsCurrentGet) | **Get** /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools
[**ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet) | **Get** /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData
[**ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet) | **Get** /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData
[**ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet) | **Get** /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot
[**ChainsChainIdDappsUniswapv3PositionsCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3PositionsCurrentGet) | **Get** /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions
[**ChainsChainIdDappsUniswapv3SwapsCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3SwapsCurrentGet) | **Get** /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps
[**ChainsChainIdDappsUniswapv3TicksCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3TicksCurrentGet) | **Get** /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks
[**ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet) | **Get** /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData
[**ChainsChainIdDappsUniswapv3TokensCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3TokensCurrentGet) | **Get** /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens
[**ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet) | **Get** /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData
[**ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet) | **Get** /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData
[**ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet) | **Get** /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData



## ChainsChainIdDappsUniswapv3BundleCurrentGet

> []BundleV3DTO ChainsChainIdDappsUniswapv3BundleCurrentGet(ctx, chainId).Execute()

GetBundles

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
    resp, r, err := apiClient.UniswapV3Api.ChainsChainIdDappsUniswapv3BundleCurrentGet(context.Background(), chainId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.ChainsChainIdDappsUniswapv3BundleCurrentGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ChainsChainIdDappsUniswapv3BundleCurrentGet`: []BundleV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.ChainsChainIdDappsUniswapv3BundleCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**chainId** | **string** | Chain id | 

### Other Parameters

Other parameters are passed through a pointer to a apiChainsChainIdDappsUniswapv3BundleCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]BundleV3DTO**](BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3BurnsCurrentGet

> []BurnV3DTO ChainsChainIdDappsUniswapv3BurnsCurrentGet(ctx, chainId).FilterPoolId(filterPoolId).Execute()

GetBurns

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
    filterPoolId := "filterPoolId_example" // string | Filter pool id (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.UniswapV3Api.ChainsChainIdDappsUniswapv3BurnsCurrentGet(context.Background(), chainId).FilterPoolId(filterPoolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.ChainsChainIdDappsUniswapv3BurnsCurrentGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ChainsChainIdDappsUniswapv3BurnsCurrentGet`: []BurnV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.ChainsChainIdDappsUniswapv3BurnsCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**chainId** | **string** | Chain id | 

### Other Parameters

Other parameters are passed through a pointer to a apiChainsChainIdDappsUniswapv3BurnsCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **filterPoolId** | **string** | Filter pool id | 

### Return type

[**[]BurnV3DTO**](BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3FactoryCurrentGet

> []FactoryV3DTO ChainsChainIdDappsUniswapv3FactoryCurrentGet(ctx, chainId).Execute()

GetFactory

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
    resp, r, err := apiClient.UniswapV3Api.ChainsChainIdDappsUniswapv3FactoryCurrentGet(context.Background(), chainId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.ChainsChainIdDappsUniswapv3FactoryCurrentGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ChainsChainIdDappsUniswapv3FactoryCurrentGet`: []FactoryV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.ChainsChainIdDappsUniswapv3FactoryCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**chainId** | **string** | Chain id | 

### Other Parameters

Other parameters are passed through a pointer to a apiChainsChainIdDappsUniswapv3FactoryCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]FactoryV3DTO**](FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3MintsCurrentGet

> []MintV3DTO ChainsChainIdDappsUniswapv3MintsCurrentGet(ctx, chainId).FilterPoolId(filterPoolId).Execute()

GetMints

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
    filterPoolId := "filterPoolId_example" // string | Filter pool id (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.UniswapV3Api.ChainsChainIdDappsUniswapv3MintsCurrentGet(context.Background(), chainId).FilterPoolId(filterPoolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.ChainsChainIdDappsUniswapv3MintsCurrentGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ChainsChainIdDappsUniswapv3MintsCurrentGet`: []MintV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.ChainsChainIdDappsUniswapv3MintsCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**chainId** | **string** | Chain id | 

### Other Parameters

Other parameters are passed through a pointer to a apiChainsChainIdDappsUniswapv3MintsCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **filterPoolId** | **string** | Filter pool id | 

### Return type

[**[]MintV3DTO**](MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3PoolsCurrentGet

> []PoolV3DTO ChainsChainIdDappsUniswapv3PoolsCurrentGet(ctx, chainId).FilterPoolId(filterPoolId).Execute()

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
    filterPoolId := "filterPoolId_example" // string | Filter pool id (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.UniswapV3Api.ChainsChainIdDappsUniswapv3PoolsCurrentGet(context.Background(), chainId).FilterPoolId(filterPoolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.ChainsChainIdDappsUniswapv3PoolsCurrentGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ChainsChainIdDappsUniswapv3PoolsCurrentGet`: []PoolV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.ChainsChainIdDappsUniswapv3PoolsCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**chainId** | **string** | Chain id | 

### Other Parameters

Other parameters are passed through a pointer to a apiChainsChainIdDappsUniswapv3PoolsCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **filterPoolId** | **string** | Filter pool id | 

### Return type

[**[]PoolV3DTO**](PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet

> []PoolDayDataV3DTO ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet(ctx, chainId).FilterPoolId(filterPoolId).Execute()

GetPoolsDayData

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
    filterPoolId := "filterPoolId_example" // string | Filter pool id (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.UniswapV3Api.ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet(context.Background(), chainId).FilterPoolId(filterPoolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet`: []PoolDayDataV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**chainId** | **string** | Chain id | 

### Other Parameters

Other parameters are passed through a pointer to a apiChainsChainIdDappsUniswapv3PoolsDayDataCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **filterPoolId** | **string** | Filter pool id | 

### Return type

[**[]PoolDayDataV3DTO**](PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet

> []PoolHourDataV3DTO ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet(ctx, chainId).FilterPoolId(filterPoolId).Execute()

GetPoolsHourData

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
    filterPoolId := "filterPoolId_example" // string | Filter pool id (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.UniswapV3Api.ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet(context.Background(), chainId).FilterPoolId(filterPoolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet`: []PoolHourDataV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**chainId** | **string** | Chain id | 

### Other Parameters

Other parameters are passed through a pointer to a apiChainsChainIdDappsUniswapv3PoolsHourDataCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **filterPoolId** | **string** | Filter pool id | 

### Return type

[**[]PoolHourDataV3DTO**](PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet

> []PositionSnapshotV3DTO ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet(ctx, chainId).FilterPoolId(filterPoolId).Execute()

GetPositionSnapshot

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
    filterPoolId := "filterPoolId_example" // string | Filter pool id (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.UniswapV3Api.ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet(context.Background(), chainId).FilterPoolId(filterPoolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet`: []PositionSnapshotV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**chainId** | **string** | Chain id | 

### Other Parameters

Other parameters are passed through a pointer to a apiChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **filterPoolId** | **string** | Filter pool id | 

### Return type

[**[]PositionSnapshotV3DTO**](PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3PositionsCurrentGet

> []PositionV3DTO ChainsChainIdDappsUniswapv3PositionsCurrentGet(ctx, chainId).FilterPoolId(filterPoolId).Execute()

GetPositions

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
    filterPoolId := "filterPoolId_example" // string | Filter pool id (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.UniswapV3Api.ChainsChainIdDappsUniswapv3PositionsCurrentGet(context.Background(), chainId).FilterPoolId(filterPoolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.ChainsChainIdDappsUniswapv3PositionsCurrentGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ChainsChainIdDappsUniswapv3PositionsCurrentGet`: []PositionV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.ChainsChainIdDappsUniswapv3PositionsCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**chainId** | **string** | Chain id | 

### Other Parameters

Other parameters are passed through a pointer to a apiChainsChainIdDappsUniswapv3PositionsCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **filterPoolId** | **string** | Filter pool id | 

### Return type

[**[]PositionV3DTO**](PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3SwapsCurrentGet

> []SwapV3DTO ChainsChainIdDappsUniswapv3SwapsCurrentGet(ctx, chainId).FilterPoolId(filterPoolId).Execute()

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
    filterPoolId := "filterPoolId_example" // string | Filter pool id (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.UniswapV3Api.ChainsChainIdDappsUniswapv3SwapsCurrentGet(context.Background(), chainId).FilterPoolId(filterPoolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.ChainsChainIdDappsUniswapv3SwapsCurrentGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ChainsChainIdDappsUniswapv3SwapsCurrentGet`: []SwapV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.ChainsChainIdDappsUniswapv3SwapsCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**chainId** | **string** | Chain id | 

### Other Parameters

Other parameters are passed through a pointer to a apiChainsChainIdDappsUniswapv3SwapsCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **filterPoolId** | **string** | Filter pool id | 

### Return type

[**[]SwapV3DTO**](SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3TicksCurrentGet

> []TickV3DTO ChainsChainIdDappsUniswapv3TicksCurrentGet(ctx, chainId).FilterPoolId(filterPoolId).Execute()

GetTicks

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
    filterPoolId := "filterPoolId_example" // string | Filter pool id (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.UniswapV3Api.ChainsChainIdDappsUniswapv3TicksCurrentGet(context.Background(), chainId).FilterPoolId(filterPoolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.ChainsChainIdDappsUniswapv3TicksCurrentGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ChainsChainIdDappsUniswapv3TicksCurrentGet`: []TickV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.ChainsChainIdDappsUniswapv3TicksCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**chainId** | **string** | Chain id | 

### Other Parameters

Other parameters are passed through a pointer to a apiChainsChainIdDappsUniswapv3TicksCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **filterPoolId** | **string** | Filter pool id | 

### Return type

[**[]TickV3DTO**](TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet

> []TickDayDataV3DTO ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet(ctx, chainId).FilterPoolId(filterPoolId).Execute()

GetTicksDayData

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
    filterPoolId := "filterPoolId_example" // string | Filter pool id (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.UniswapV3Api.ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet(context.Background(), chainId).FilterPoolId(filterPoolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet`: []TickDayDataV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**chainId** | **string** | Chain id | 

### Other Parameters

Other parameters are passed through a pointer to a apiChainsChainIdDappsUniswapv3TicksDayDataCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **filterPoolId** | **string** | Filter pool id | 

### Return type

[**[]TickDayDataV3DTO**](TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3TokensCurrentGet

> []TokenV3DTO ChainsChainIdDappsUniswapv3TokensCurrentGet(ctx, chainId).FilterTokenId(filterTokenId).Execute()

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
    filterTokenId := "filterTokenId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.UniswapV3Api.ChainsChainIdDappsUniswapv3TokensCurrentGet(context.Background(), chainId).FilterTokenId(filterTokenId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.ChainsChainIdDappsUniswapv3TokensCurrentGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ChainsChainIdDappsUniswapv3TokensCurrentGet`: []TokenV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.ChainsChainIdDappsUniswapv3TokensCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**chainId** | **string** | Chain id | 

### Other Parameters

Other parameters are passed through a pointer to a apiChainsChainIdDappsUniswapv3TokensCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **filterTokenId** | **string** |  | 

### Return type

[**[]TokenV3DTO**](TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet

> []TokenV3DayDataDTO ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet(ctx, chainId).FilterTokenId(filterTokenId).Execute()

GetTokensDayData

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
    filterTokenId := "filterTokenId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.UniswapV3Api.ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet(context.Background(), chainId).FilterTokenId(filterTokenId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet`: []TokenV3DayDataDTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**chainId** | **string** | Chain id | 

### Other Parameters

Other parameters are passed through a pointer to a apiChainsChainIdDappsUniswapv3TokensDayDataCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **filterTokenId** | **string** |  | 

### Return type

[**[]TokenV3DayDataDTO**](TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet

> []TokenHourDataV3DTO ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet(ctx, chainId).FilterTokenId(filterTokenId).Execute()

GetTokensHourData

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
    filterTokenId := "filterTokenId_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.UniswapV3Api.ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet(context.Background(), chainId).FilterTokenId(filterTokenId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet`: []TokenHourDataV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**chainId** | **string** | Chain id | 

### Other Parameters

Other parameters are passed through a pointer to a apiChainsChainIdDappsUniswapv3TokensHourDataCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **filterTokenId** | **string** |  | 

### Return type

[**[]TokenHourDataV3DTO**](TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet

> []UniswapDayDataV3DTO ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet(ctx, chainId).Execute()

GetUniswapDayData

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
    resp, r, err := apiClient.UniswapV3Api.ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet(context.Background(), chainId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `UniswapV3Api.ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet`: []UniswapDayDataV3DTO
    fmt.Fprintf(os.Stdout, "Response from `UniswapV3Api.ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**chainId** | **string** | Chain id | 

### Other Parameters

Other parameters are passed through a pointer to a apiChainsChainIdDappsUniswapv3UniswapDayDataCurrentGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]UniswapDayDataV3DTO**](UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

