# \DexApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DexGetBatchDTOsHistorical**](DexApi.md#DexGetBatchDTOsHistorical) | **Get** /dapps/dex/BatchDTOs/historical | BatchDTOs (historical) 🔥
[**DexGetBatchesHistorical**](DexApi.md#DexGetBatchesHistorical) | **Get** /dapps/dex/batches/historical | Batches (historical)
[**DexGetDepositDTOsHistorical**](DexApi.md#DexGetDepositDTOsHistorical) | **Get** /dapps/dex/DepositDTOs/historical | DepositDTOs (historical) 🔥
[**DexGetDepositsHistorical**](DexApi.md#DexGetDepositsHistorical) | **Get** /dapps/dex/deposits/historical | Deposits (historical)
[**DexGetOrderDTOsHistorical**](DexApi.md#DexGetOrderDTOsHistorical) | **Get** /dapps/dex/OrderDTOs/historical | OrderDTOs (historical) 🔥
[**DexGetOrdersHistorical**](DexApi.md#DexGetOrdersHistorical) | **Get** /dapps/dex/orders/historical | Orders (historical)
[**DexGetPriceDTOsHistorical**](DexApi.md#DexGetPriceDTOsHistorical) | **Get** /dapps/dex/PriceDTOs/historical | PriceDTOs (historical) 🔥
[**DexGetPricesHistorical**](DexApi.md#DexGetPricesHistorical) | **Get** /dapps/dex/prices/historical | Prices (historical)
[**DexGetSolutionDTOsHistorical**](DexApi.md#DexGetSolutionDTOsHistorical) | **Get** /dapps/dex/SolutionDTOs/historical | SolutionDTOs (historical) 🔥
[**DexGetSolutionsHistorical**](DexApi.md#DexGetSolutionsHistorical) | **Get** /dapps/dex/solutions/historical | Solutions (historical)
[**DexGetStatsDTOsHistorical**](DexApi.md#DexGetStatsDTOsHistorical) | **Get** /dapps/dex/StatsDTOs/historical | StatsDTOs (historical) 🔥
[**DexGetStatsHistorical**](DexApi.md#DexGetStatsHistorical) | **Get** /dapps/dex/stats/historical | Stats (historical)
[**DexGetTokenDTOsHistorical**](DexApi.md#DexGetTokenDTOsHistorical) | **Get** /dapps/dex/TokenDTOs/historical | TokenDTOs (historical) 🔥
[**DexGetTokensHistorical**](DexApi.md#DexGetTokensHistorical) | **Get** /dapps/dex/tokens/historical | Tokens (historical) 🔥
[**DexGetTradeDTOsHistorical**](DexApi.md#DexGetTradeDTOsHistorical) | **Get** /dapps/dex/TradeDTOs/historical | TradeDTOs (historical) 🔥
[**DexGetTradesHistorical**](DexApi.md#DexGetTradesHistorical) | **Get** /dapps/dex/trades/historical | Trades (historical) 🔥
[**DexGetUserDTOsHistorical**](DexApi.md#DexGetUserDTOsHistorical) | **Get** /dapps/dex/UserDTOs/historical | UserDTOs (historical) 🔥
[**DexGetUsersHistorical**](DexApi.md#DexGetUsersHistorical) | **Get** /dapps/dex/users/historical | Users (historical)
[**DexGetWithdrawDTOsHistorical**](DexApi.md#DexGetWithdrawDTOsHistorical) | **Get** /dapps/dex/WithdrawDTOs/historical | WithdrawDTOs (historical) 🔥
[**DexGetWithdrawRequestDTOsHistorical**](DexApi.md#DexGetWithdrawRequestDTOsHistorical) | **Get** /dapps/dex/WithdrawRequestDTOs/historical | WithdrawRequestDTOs (historical) 🔥
[**DexGetWithdrawsHistorical**](DexApi.md#DexGetWithdrawsHistorical) | **Get** /dapps/dex/withdraws/historical | Withdraws (historical)
[**DexGetWithdrawsRequestsHistorical**](DexApi.md#DexGetWithdrawsRequestsHistorical) | **Get** /dapps/dex/withdrawsRequests/historical | WithdrawsRequests (historical)



## DexGetBatchDTOsHistorical

> []DexBatchDTO DexGetBatchDTOsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()

BatchDTOs (historical) 🔥



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
    resp, r, err := apiClient.DexApi.DexGetBatchDTOsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DexGetBatchDTOsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DexGetBatchDTOsHistorical`: []DexBatchDTO
    fmt.Fprintf(os.Stdout, "Response from `DexApi.DexGetBatchDTOsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDexGetBatchDTOsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

[**[]DexBatchDTO**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetBatchesHistorical

> []DexBatchDTO DexGetBatchesHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()

Batches (historical)



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
    resp, r, err := apiClient.DexApi.DexGetBatchesHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DexGetBatchesHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DexGetBatchesHistorical`: []DexBatchDTO
    fmt.Fprintf(os.Stdout, "Response from `DexApi.DexGetBatchesHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDexGetBatchesHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 

### Return type

[**[]DexBatchDTO**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetDepositDTOsHistorical

> []DexDepositDTO DexGetDepositDTOsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()

DepositDTOs (historical) 🔥



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
    resp, r, err := apiClient.DexApi.DexGetDepositDTOsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DexGetDepositDTOsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DexGetDepositDTOsHistorical`: []DexDepositDTO
    fmt.Fprintf(os.Stdout, "Response from `DexApi.DexGetDepositDTOsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDexGetDepositDTOsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

[**[]DexDepositDTO**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetDepositsHistorical

> []DexDepositDTO DexGetDepositsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()

Deposits (historical)



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
    resp, r, err := apiClient.DexApi.DexGetDepositsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DexGetDepositsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DexGetDepositsHistorical`: []DexDepositDTO
    fmt.Fprintf(os.Stdout, "Response from `DexApi.DexGetDepositsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDexGetDepositsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **tokenId** | **string** |  | 

### Return type

[**[]DexDepositDTO**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetOrderDTOsHistorical

> []DexOrderDTO DexGetOrderDTOsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()

OrderDTOs (historical) 🔥



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
    resp, r, err := apiClient.DexApi.DexGetOrderDTOsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DexGetOrderDTOsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DexGetOrderDTOsHistorical`: []DexOrderDTO
    fmt.Fprintf(os.Stdout, "Response from `DexApi.DexGetOrderDTOsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDexGetOrderDTOsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

[**[]DexOrderDTO**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetOrdersHistorical

> []DexOrderDTO DexGetOrdersHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()

Orders (historical)



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
    resp, r, err := apiClient.DexApi.DexGetOrdersHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DexGetOrdersHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DexGetOrdersHistorical`: []DexOrderDTO
    fmt.Fprintf(os.Stdout, "Response from `DexApi.DexGetOrdersHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDexGetOrdersHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **tokenId** | **string** |  | 

### Return type

[**[]DexOrderDTO**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetPriceDTOsHistorical

> []DexPriceDTO DexGetPriceDTOsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()

PriceDTOs (historical) 🔥



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
    resp, r, err := apiClient.DexApi.DexGetPriceDTOsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DexGetPriceDTOsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DexGetPriceDTOsHistorical`: []DexPriceDTO
    fmt.Fprintf(os.Stdout, "Response from `DexApi.DexGetPriceDTOsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDexGetPriceDTOsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

[**[]DexPriceDTO**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetPricesHistorical

> []DexPriceDTO DexGetPricesHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()

Prices (historical)



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
    resp, r, err := apiClient.DexApi.DexGetPricesHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DexGetPricesHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DexGetPricesHistorical`: []DexPriceDTO
    fmt.Fprintf(os.Stdout, "Response from `DexApi.DexGetPricesHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDexGetPricesHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **tokenId** | **string** |  | 

### Return type

[**[]DexPriceDTO**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetSolutionDTOsHistorical

> []DexSolutionDTO DexGetSolutionDTOsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()

SolutionDTOs (historical) 🔥



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
    resp, r, err := apiClient.DexApi.DexGetSolutionDTOsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DexGetSolutionDTOsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DexGetSolutionDTOsHistorical`: []DexSolutionDTO
    fmt.Fprintf(os.Stdout, "Response from `DexApi.DexGetSolutionDTOsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDexGetSolutionDTOsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

[**[]DexSolutionDTO**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetSolutionsHistorical

> []DexSolutionDTO DexGetSolutionsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()

Solutions (historical)



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
    resp, r, err := apiClient.DexApi.DexGetSolutionsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DexGetSolutionsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DexGetSolutionsHistorical`: []DexSolutionDTO
    fmt.Fprintf(os.Stdout, "Response from `DexApi.DexGetSolutionsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDexGetSolutionsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **tokenId** | **string** |  | 

### Return type

[**[]DexSolutionDTO**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetStatsDTOsHistorical

> []DexStatsDTO DexGetStatsDTOsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()

StatsDTOs (historical) 🔥



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
    resp, r, err := apiClient.DexApi.DexGetStatsDTOsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DexGetStatsDTOsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DexGetStatsDTOsHistorical`: []DexStatsDTO
    fmt.Fprintf(os.Stdout, "Response from `DexApi.DexGetStatsDTOsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDexGetStatsDTOsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

[**[]DexStatsDTO**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetStatsHistorical

> []DexStatsDTO DexGetStatsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()

Stats (historical)



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
    resp, r, err := apiClient.DexApi.DexGetStatsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DexGetStatsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DexGetStatsHistorical`: []DexStatsDTO
    fmt.Fprintf(os.Stdout, "Response from `DexApi.DexGetStatsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDexGetStatsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 

### Return type

[**[]DexStatsDTO**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetTokenDTOsHistorical

> []DexTokenDTO DexGetTokenDTOsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()

TokenDTOs (historical) 🔥



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
    resp, r, err := apiClient.DexApi.DexGetTokenDTOsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DexGetTokenDTOsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DexGetTokenDTOsHistorical`: []DexTokenDTO
    fmt.Fprintf(os.Stdout, "Response from `DexApi.DexGetTokenDTOsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDexGetTokenDTOsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

[**[]DexTokenDTO**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetTokensHistorical

> []DexTokenDTO DexGetTokensHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()

Tokens (historical) 🔥



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
    resp, r, err := apiClient.DexApi.DexGetTokensHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DexGetTokensHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DexGetTokensHistorical`: []DexTokenDTO
    fmt.Fprintf(os.Stdout, "Response from `DexApi.DexGetTokensHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDexGetTokensHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **tokenId** | **string** |  | 

### Return type

[**[]DexTokenDTO**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetTradeDTOsHistorical

> []DexTradeDTO DexGetTradeDTOsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()

TradeDTOs (historical) 🔥



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
    resp, r, err := apiClient.DexApi.DexGetTradeDTOsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DexGetTradeDTOsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DexGetTradeDTOsHistorical`: []DexTradeDTO
    fmt.Fprintf(os.Stdout, "Response from `DexApi.DexGetTradeDTOsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDexGetTradeDTOsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

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


## DexGetTradesHistorical

> []DexTradeDTO DexGetTradesHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()

Trades (historical) 🔥



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
    resp, r, err := apiClient.DexApi.DexGetTradesHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DexGetTradesHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DexGetTradesHistorical`: []DexTradeDTO
    fmt.Fprintf(os.Stdout, "Response from `DexApi.DexGetTradesHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDexGetTradesHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 

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


## DexGetUserDTOsHistorical

> []DexUserDTO DexGetUserDTOsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()

UserDTOs (historical) 🔥



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
    resp, r, err := apiClient.DexApi.DexGetUserDTOsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DexGetUserDTOsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DexGetUserDTOsHistorical`: []DexUserDTO
    fmt.Fprintf(os.Stdout, "Response from `DexApi.DexGetUserDTOsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDexGetUserDTOsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

[**[]DexUserDTO**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetUsersHistorical

> []DexUserDTO DexGetUsersHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()

Users (historical)



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
    resp, r, err := apiClient.DexApi.DexGetUsersHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DexGetUsersHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DexGetUsersHistorical`: []DexUserDTO
    fmt.Fprintf(os.Stdout, "Response from `DexApi.DexGetUsersHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDexGetUsersHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 

### Return type

[**[]DexUserDTO**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetWithdrawDTOsHistorical

> []DexWithdrawDTO DexGetWithdrawDTOsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()

WithdrawDTOs (historical) 🔥



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
    resp, r, err := apiClient.DexApi.DexGetWithdrawDTOsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DexGetWithdrawDTOsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DexGetWithdrawDTOsHistorical`: []DexWithdrawDTO
    fmt.Fprintf(os.Stdout, "Response from `DexApi.DexGetWithdrawDTOsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDexGetWithdrawDTOsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

[**[]DexWithdrawDTO**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetWithdrawRequestDTOsHistorical

> []DexWithdrawRequestDTO DexGetWithdrawRequestDTOsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()

WithdrawRequestDTOs (historical) 🔥



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
    resp, r, err := apiClient.DexApi.DexGetWithdrawRequestDTOsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DexGetWithdrawRequestDTOsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DexGetWithdrawRequestDTOsHistorical`: []DexWithdrawRequestDTO
    fmt.Fprintf(os.Stdout, "Response from `DexApi.DexGetWithdrawRequestDTOsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDexGetWithdrawRequestDTOsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

[**[]DexWithdrawRequestDTO**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetWithdrawsHistorical

> []DexWithdrawDTO DexGetWithdrawsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()

Withdraws (historical)



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
    resp, r, err := apiClient.DexApi.DexGetWithdrawsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DexGetWithdrawsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DexGetWithdrawsHistorical`: []DexWithdrawDTO
    fmt.Fprintf(os.Stdout, "Response from `DexApi.DexGetWithdrawsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDexGetWithdrawsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **tokenId** | **string** |  | 

### Return type

[**[]DexWithdrawDTO**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DexGetWithdrawsRequestsHistorical

> []DexWithdrawRequestDTO DexGetWithdrawsRequestsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()

WithdrawsRequests (historical)



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
    resp, r, err := apiClient.DexApi.DexGetWithdrawsRequestsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DexGetWithdrawsRequestsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DexGetWithdrawsRequestsHistorical`: []DexWithdrawRequestDTO
    fmt.Fprintf(os.Stdout, "Response from `DexApi.DexGetWithdrawsRequestsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDexGetWithdrawsRequestsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **tokenId** | **string** |  | 

### Return type

[**[]DexWithdrawRequestDTO**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

