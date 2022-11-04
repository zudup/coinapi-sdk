# \DexApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DappsDexBatchHistoricalGet**](DexApi.md#DappsDexBatchHistoricalGet) | **Get** /dapps/dex/batch/historical | 
[**DappsDexOrdersHistoricalGet**](DexApi.md#DappsDexOrdersHistoricalGet) | **Get** /dapps/dex/orders/historical | 
[**DappsDexPricesHistoricalGet**](DexApi.md#DappsDexPricesHistoricalGet) | **Get** /dapps/dex/prices/historical | 
[**DappsDexSolutionHistoricalGet**](DexApi.md#DappsDexSolutionHistoricalGet) | **Get** /dapps/dex/solution/historical | 
[**DappsDexStatsHistoricalGet**](DexApi.md#DappsDexStatsHistoricalGet) | **Get** /dapps/dex/stats/historical | 
[**DappsDexTokensHistoricalGet**](DexApi.md#DappsDexTokensHistoricalGet) | **Get** /dapps/dex/tokens/historical | 
[**DappsDexTradesHistoricalGet**](DexApi.md#DappsDexTradesHistoricalGet) | **Get** /dapps/dex/trades/historical | 
[**DappsDexUsersHistoricalGet**](DexApi.md#DappsDexUsersHistoricalGet) | **Get** /dapps/dex/users/historical | 
[**DappsDexWithdrawHistoricalGet**](DexApi.md#DappsDexWithdrawHistoricalGet) | **Get** /dapps/dex/withdraw/historical | 
[**DappsDexWithdrawRequestHistoricalGet**](DexApi.md#DappsDexWithdrawRequestHistoricalGet) | **Get** /dapps/dex/withdrawRequest/historical | 



## DappsDexBatchHistoricalGet

> DappsDexBatchHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()



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
    resp, r, err := apiClient.DexApi.DappsDexBatchHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DappsDexBatchHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsDexBatchHistoricalGetRequest struct via the builder pattern


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


## DappsDexOrdersHistoricalGet

> DappsDexOrdersHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()



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
    resp, r, err := apiClient.DexApi.DappsDexOrdersHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DappsDexOrdersHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsDexOrdersHistoricalGetRequest struct via the builder pattern


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


## DappsDexPricesHistoricalGet

> DappsDexPricesHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()



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
    resp, r, err := apiClient.DexApi.DappsDexPricesHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DappsDexPricesHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsDexPricesHistoricalGetRequest struct via the builder pattern


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


## DappsDexSolutionHistoricalGet

> DappsDexSolutionHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()



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
    resp, r, err := apiClient.DexApi.DappsDexSolutionHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DappsDexSolutionHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsDexSolutionHistoricalGetRequest struct via the builder pattern


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


## DappsDexStatsHistoricalGet

> DappsDexStatsHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()



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
    resp, r, err := apiClient.DexApi.DappsDexStatsHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DappsDexStatsHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsDexStatsHistoricalGetRequest struct via the builder pattern


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


## DappsDexTokensHistoricalGet

> DappsDexTokensHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()



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
    resp, r, err := apiClient.DexApi.DappsDexTokensHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DappsDexTokensHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsDexTokensHistoricalGetRequest struct via the builder pattern


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


## DappsDexTradesHistoricalGet

> DappsDexTradesHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()



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
    resp, r, err := apiClient.DexApi.DappsDexTradesHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DappsDexTradesHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsDexTradesHistoricalGetRequest struct via the builder pattern


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


## DappsDexUsersHistoricalGet

> DappsDexUsersHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()



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
    resp, r, err := apiClient.DexApi.DappsDexUsersHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DappsDexUsersHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsDexUsersHistoricalGetRequest struct via the builder pattern


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


## DappsDexWithdrawHistoricalGet

> DappsDexWithdrawHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()



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
    resp, r, err := apiClient.DexApi.DappsDexWithdrawHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DappsDexWithdrawHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsDexWithdrawHistoricalGetRequest struct via the builder pattern


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


## DappsDexWithdrawRequestHistoricalGet

> DappsDexWithdrawRequestHistoricalGet(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()



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
    resp, r, err := apiClient.DexApi.DappsDexWithdrawRequestHistoricalGet(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DexApi.DappsDexWithdrawRequestHistoricalGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDappsDexWithdrawRequestHistoricalGetRequest struct via the builder pattern


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

