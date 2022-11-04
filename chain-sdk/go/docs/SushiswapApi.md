# \SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DappsSushiswapBundlesHistoricalGet**](SushiswapApi.md#DappsSushiswapBundlesHistoricalGet) | **Get** /dapps/sushiswap/bundles/historical | 
[**DappsSushiswapBurnsHistoricalGet**](SushiswapApi.md#DappsSushiswapBurnsHistoricalGet) | **Get** /dapps/sushiswap/burns/historical | 
[**DappsSushiswapDayDataHistoricalGet**](SushiswapApi.md#DappsSushiswapDayDataHistoricalGet) | **Get** /dapps/sushiswap/dayData/historical | 
[**DappsSushiswapFactoryHistoricalGet**](SushiswapApi.md#DappsSushiswapFactoryHistoricalGet) | **Get** /dapps/sushiswap/factory/historical | 
[**DappsSushiswapHourDataHistoricalGet**](SushiswapApi.md#DappsSushiswapHourDataHistoricalGet) | **Get** /dapps/sushiswap/hourData/historical | 
[**DappsSushiswapLiquidityPositionHistoricalGet**](SushiswapApi.md#DappsSushiswapLiquidityPositionHistoricalGet) | **Get** /dapps/sushiswap/liquidityPosition/historical | 
[**DappsSushiswapLiquidityPositionSnapshotsHistoricalGet**](SushiswapApi.md#DappsSushiswapLiquidityPositionSnapshotsHistoricalGet) | **Get** /dapps/sushiswap/liquidityPositionSnapshots/historical | 
[**DappsSushiswapMintsHistoricalGet**](SushiswapApi.md#DappsSushiswapMintsHistoricalGet) | **Get** /dapps/sushiswap/mints/historical | 
[**DappsSushiswapPoolDayDataHistoricalGet**](SushiswapApi.md#DappsSushiswapPoolDayDataHistoricalGet) | **Get** /dapps/sushiswap/poolDayData/historical | 
[**DappsSushiswapPoolHourDataHistoricalGet**](SushiswapApi.md#DappsSushiswapPoolHourDataHistoricalGet) | **Get** /dapps/sushiswap/poolHourData/historical | 
[**DappsSushiswapPoolsCurrentGet**](SushiswapApi.md#DappsSushiswapPoolsCurrentGet) | **Get** /dapps/sushiswap/pools/current | GetPools
[**DappsSushiswapPoolsHistoricalGet**](SushiswapApi.md#DappsSushiswapPoolsHistoricalGet) | **Get** /dapps/sushiswap/pools/historical | GetPools (historical)
[**DappsSushiswapSwapsCurrentGet**](SushiswapApi.md#DappsSushiswapSwapsCurrentGet) | **Get** /dapps/sushiswap/swaps/current | GetSwaps
[**DappsSushiswapSwapsHistoricalGet**](SushiswapApi.md#DappsSushiswapSwapsHistoricalGet) | **Get** /dapps/sushiswap/swaps/historical | GetSwaps (historical)
[**DappsSushiswapTokenDayDataHistoricalGet**](SushiswapApi.md#DappsSushiswapTokenDayDataHistoricalGet) | **Get** /dapps/sushiswap/tokenDayData/historical | 
[**DappsSushiswapTokensCurrentGet**](SushiswapApi.md#DappsSushiswapTokensCurrentGet) | **Get** /dapps/sushiswap/tokens/current | GetTokens
[**DappsSushiswapTokensHistoricalGet**](SushiswapApi.md#DappsSushiswapTokensHistoricalGet) | **Get** /dapps/sushiswap/tokens/historical | GetTokens (historical)
[**DappsSushiswapTransactionsHistoricalGet**](SushiswapApi.md#DappsSushiswapTransactionsHistoricalGet) | **Get** /dapps/sushiswap/transactions/historical | 
[**DappsSushiswapUsersHistoricalGet**](SushiswapApi.md#DappsSushiswapUsersHistoricalGet) | **Get** /dapps/sushiswap/users/historical | 



## DappsSushiswapBundlesHistoricalGet

> DappsSushiswapBundlesHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()



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
    resp, r, err := apiClient.SushiswapApi.DappsSushiswapBundlesHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.DappsSushiswapBundlesHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsSushiswapBundlesHistoricalGetRequest struct via the builder pattern


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


## DappsSushiswapBurnsHistoricalGet

> DappsSushiswapBurnsHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()



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
    resp, r, err := apiClient.SushiswapApi.DappsSushiswapBurnsHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.DappsSushiswapBurnsHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsSushiswapBurnsHistoricalGetRequest struct via the builder pattern


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


## DappsSushiswapDayDataHistoricalGet

> DappsSushiswapDayDataHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()



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
    resp, r, err := apiClient.SushiswapApi.DappsSushiswapDayDataHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.DappsSushiswapDayDataHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsSushiswapDayDataHistoricalGetRequest struct via the builder pattern


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


## DappsSushiswapFactoryHistoricalGet

> DappsSushiswapFactoryHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()



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
    resp, r, err := apiClient.SushiswapApi.DappsSushiswapFactoryHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.DappsSushiswapFactoryHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsSushiswapFactoryHistoricalGetRequest struct via the builder pattern


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


## DappsSushiswapHourDataHistoricalGet

> DappsSushiswapHourDataHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()



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
    resp, r, err := apiClient.SushiswapApi.DappsSushiswapHourDataHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.DappsSushiswapHourDataHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsSushiswapHourDataHistoricalGetRequest struct via the builder pattern


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


## DappsSushiswapLiquidityPositionHistoricalGet

> DappsSushiswapLiquidityPositionHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()



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
    resp, r, err := apiClient.SushiswapApi.DappsSushiswapLiquidityPositionHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.DappsSushiswapLiquidityPositionHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsSushiswapLiquidityPositionHistoricalGetRequest struct via the builder pattern


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


## DappsSushiswapLiquidityPositionSnapshotsHistoricalGet

> DappsSushiswapLiquidityPositionSnapshotsHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()



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
    resp, r, err := apiClient.SushiswapApi.DappsSushiswapLiquidityPositionSnapshotsHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.DappsSushiswapLiquidityPositionSnapshotsHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsSushiswapLiquidityPositionSnapshotsHistoricalGetRequest struct via the builder pattern


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


## DappsSushiswapMintsHistoricalGet

> DappsSushiswapMintsHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()



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
    resp, r, err := apiClient.SushiswapApi.DappsSushiswapMintsHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.DappsSushiswapMintsHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsSushiswapMintsHistoricalGetRequest struct via the builder pattern


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


## DappsSushiswapPoolDayDataHistoricalGet

> DappsSushiswapPoolDayDataHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()



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
    resp, r, err := apiClient.SushiswapApi.DappsSushiswapPoolDayDataHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.DappsSushiswapPoolDayDataHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsSushiswapPoolDayDataHistoricalGetRequest struct via the builder pattern


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


## DappsSushiswapPoolHourDataHistoricalGet

> DappsSushiswapPoolHourDataHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()



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
    resp, r, err := apiClient.SushiswapApi.DappsSushiswapPoolHourDataHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.DappsSushiswapPoolHourDataHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsSushiswapPoolHourDataHistoricalGetRequest struct via the builder pattern


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


## DappsSushiswapPoolsCurrentGet

> []SushiswapPairDTO DappsSushiswapPoolsCurrentGet(ctx).Execute()

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

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.SushiswapApi.DappsSushiswapPoolsCurrentGet(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.DappsSushiswapPoolsCurrentGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DappsSushiswapPoolsCurrentGet`: []SushiswapPairDTO
    fmt.Fprintf(os.Stdout, "Response from `SushiswapApi.DappsSushiswapPoolsCurrentGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiDappsSushiswapPoolsCurrentGetRequest struct via the builder pattern


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


## DappsSushiswapPoolsHistoricalGet

> []SushiswapPairDTO DappsSushiswapPoolsHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()

GetPools (historical)

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
    resp, r, err := apiClient.SushiswapApi.DappsSushiswapPoolsHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.DappsSushiswapPoolsHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DappsSushiswapPoolsHistoricalGet`: []SushiswapPairDTO
    fmt.Fprintf(os.Stdout, "Response from `SushiswapApi.DappsSushiswapPoolsHistoricalGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsSushiswapPoolsHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

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


## DappsSushiswapSwapsCurrentGet

> []SushiswapSwapDTO DappsSushiswapSwapsCurrentGet(ctx).Execute()

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

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.SushiswapApi.DappsSushiswapSwapsCurrentGet(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.DappsSushiswapSwapsCurrentGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DappsSushiswapSwapsCurrentGet`: []SushiswapSwapDTO
    fmt.Fprintf(os.Stdout, "Response from `SushiswapApi.DappsSushiswapSwapsCurrentGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiDappsSushiswapSwapsCurrentGetRequest struct via the builder pattern


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


## DappsSushiswapSwapsHistoricalGet

> []SushiswapSwapDTO DappsSushiswapSwapsHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()

GetSwaps (historical)

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
    resp, r, err := apiClient.SushiswapApi.DappsSushiswapSwapsHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.DappsSushiswapSwapsHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DappsSushiswapSwapsHistoricalGet`: []SushiswapSwapDTO
    fmt.Fprintf(os.Stdout, "Response from `SushiswapApi.DappsSushiswapSwapsHistoricalGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsSushiswapSwapsHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

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


## DappsSushiswapTokenDayDataHistoricalGet

> DappsSushiswapTokenDayDataHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()



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
    resp, r, err := apiClient.SushiswapApi.DappsSushiswapTokenDayDataHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.DappsSushiswapTokenDayDataHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsSushiswapTokenDayDataHistoricalGetRequest struct via the builder pattern


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


## DappsSushiswapTokensCurrentGet

> []SushiswapTokenDTO DappsSushiswapTokensCurrentGet(ctx).Execute()

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

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.SushiswapApi.DappsSushiswapTokensCurrentGet(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.DappsSushiswapTokensCurrentGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DappsSushiswapTokensCurrentGet`: []SushiswapTokenDTO
    fmt.Fprintf(os.Stdout, "Response from `SushiswapApi.DappsSushiswapTokensCurrentGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiDappsSushiswapTokensCurrentGetRequest struct via the builder pattern


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


## DappsSushiswapTokensHistoricalGet

> []SushiswapTokenDTO DappsSushiswapTokensHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()

GetTokens (historical)

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
    resp, r, err := apiClient.SushiswapApi.DappsSushiswapTokensHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.DappsSushiswapTokensHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DappsSushiswapTokensHistoricalGet`: []SushiswapTokenDTO
    fmt.Fprintf(os.Stdout, "Response from `SushiswapApi.DappsSushiswapTokensHistoricalGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsSushiswapTokensHistoricalGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **tokenId** | **string** |  | 

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


## DappsSushiswapTransactionsHistoricalGet

> DappsSushiswapTransactionsHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()



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
    resp, r, err := apiClient.SushiswapApi.DappsSushiswapTransactionsHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.DappsSushiswapTransactionsHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsSushiswapTransactionsHistoricalGetRequest struct via the builder pattern


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


## DappsSushiswapUsersHistoricalGet

> DappsSushiswapUsersHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()



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
    resp, r, err := apiClient.SushiswapApi.DappsSushiswapUsersHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SushiswapApi.DappsSushiswapUsersHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsSushiswapUsersHistoricalGetRequest struct via the builder pattern


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

