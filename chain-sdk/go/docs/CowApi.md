# \CowApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CowGetOrderDTOsHistorical**](CowApi.md#CowGetOrderDTOsHistorical) | **Get** /dapps/cow/OrderDTOs/historical | OrderDTOs (historical) 🔥
[**CowGetOrdersHistorical**](CowApi.md#CowGetOrdersHistorical) | **Get** /dapps/cow/orders/historical | Orders (historical)
[**CowGetSettlementDTOsHistorical**](CowApi.md#CowGetSettlementDTOsHistorical) | **Get** /dapps/cow/SettlementDTOs/historical | SettlementDTOs (historical) 🔥
[**CowGetSettlementsHistorical**](CowApi.md#CowGetSettlementsHistorical) | **Get** /dapps/cow/settlements/historical | Settlements (historical)
[**CowGetTokenDTOsHistorical**](CowApi.md#CowGetTokenDTOsHistorical) | **Get** /dapps/cow/TokenDTOs/historical | TokenDTOs (historical) 🔥
[**CowGetTokensHistorical**](CowApi.md#CowGetTokensHistorical) | **Get** /dapps/cow/tokens/historical | Tokens (historical) 🔥
[**CowGetTradeDTOsHistorical**](CowApi.md#CowGetTradeDTOsHistorical) | **Get** /dapps/cow/TradeDTOs/historical | TradeDTOs (historical) 🔥
[**CowGetTradesHistorical**](CowApi.md#CowGetTradesHistorical) | **Get** /dapps/cow/trades/historical | Trades (historical) 🔥
[**CowGetUserDTOsHistorical**](CowApi.md#CowGetUserDTOsHistorical) | **Get** /dapps/cow/UserDTOs/historical | UserDTOs (historical) 🔥
[**CowGetUsersHistorical**](CowApi.md#CowGetUsersHistorical) | **Get** /dapps/cow/users/historical | Users (historical)



## CowGetOrderDTOsHistorical

> []CowOrderDTO CowGetOrderDTOsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()

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
    resp, r, err := apiClient.CowApi.CowGetOrderDTOsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CowApi.CowGetOrderDTOsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CowGetOrderDTOsHistorical`: []CowOrderDTO
    fmt.Fprintf(os.Stdout, "Response from `CowApi.CowGetOrderDTOsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCowGetOrderDTOsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

[**[]CowOrderDTO**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowGetOrdersHistorical

> []CowOrderDTO CowGetOrdersHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()

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

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CowApi.CowGetOrdersHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CowApi.CowGetOrdersHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CowGetOrdersHistorical`: []CowOrderDTO
    fmt.Fprintf(os.Stdout, "Response from `CowApi.CowGetOrdersHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCowGetOrdersHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 

### Return type

[**[]CowOrderDTO**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowGetSettlementDTOsHistorical

> []CowSettlementDTO CowGetSettlementDTOsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()

SettlementDTOs (historical) 🔥



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
    resp, r, err := apiClient.CowApi.CowGetSettlementDTOsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CowApi.CowGetSettlementDTOsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CowGetSettlementDTOsHistorical`: []CowSettlementDTO
    fmt.Fprintf(os.Stdout, "Response from `CowApi.CowGetSettlementDTOsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCowGetSettlementDTOsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

[**[]CowSettlementDTO**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowGetSettlementsHistorical

> []CowSettlementDTO CowGetSettlementsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()

Settlements (historical)



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
    resp, r, err := apiClient.CowApi.CowGetSettlementsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CowApi.CowGetSettlementsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CowGetSettlementsHistorical`: []CowSettlementDTO
    fmt.Fprintf(os.Stdout, "Response from `CowApi.CowGetSettlementsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCowGetSettlementsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 

### Return type

[**[]CowSettlementDTO**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowGetTokenDTOsHistorical

> []CowTokenDTO CowGetTokenDTOsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()

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
    resp, r, err := apiClient.CowApi.CowGetTokenDTOsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CowApi.CowGetTokenDTOsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CowGetTokenDTOsHistorical`: []CowTokenDTO
    fmt.Fprintf(os.Stdout, "Response from `CowApi.CowGetTokenDTOsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCowGetTokenDTOsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

[**[]CowTokenDTO**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowGetTokensHistorical

> []CowTokenDTO CowGetTokensHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()

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
    resp, r, err := apiClient.CowApi.CowGetTokensHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).TokenId(tokenId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CowApi.CowGetTokensHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CowGetTokensHistorical`: []CowTokenDTO
    fmt.Fprintf(os.Stdout, "Response from `CowApi.CowGetTokensHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCowGetTokensHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **tokenId** | **string** |  | 

### Return type

[**[]CowTokenDTO**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowGetTradeDTOsHistorical

> []CowTradeDTO CowGetTradeDTOsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()

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
    resp, r, err := apiClient.CowApi.CowGetTradeDTOsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CowApi.CowGetTradeDTOsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CowGetTradeDTOsHistorical`: []CowTradeDTO
    fmt.Fprintf(os.Stdout, "Response from `CowApi.CowGetTradeDTOsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCowGetTradeDTOsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

[**[]CowTradeDTO**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowGetTradesHistorical

> []CowTradeDTO CowGetTradesHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()

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
    resp, r, err := apiClient.CowApi.CowGetTradesHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CowApi.CowGetTradesHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CowGetTradesHistorical`: []CowTradeDTO
    fmt.Fprintf(os.Stdout, "Response from `CowApi.CowGetTradesHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCowGetTradesHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 

### Return type

[**[]CowTradeDTO**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowGetUserDTOsHistorical

> []CowUserDTO CowGetUserDTOsHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()

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
    resp, r, err := apiClient.CowApi.CowGetUserDTOsHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).PoolId(poolId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CowApi.CowGetUserDTOsHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CowGetUserDTOsHistorical`: []CowUserDTO
    fmt.Fprintf(os.Stdout, "Response from `CowApi.CowGetUserDTOsHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCowGetUserDTOsHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 
 **poolId** | **string** |  | 

### Return type

[**[]CowUserDTO**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowGetUsersHistorical

> []CowUserDTO CowGetUsersHistorical(ctx).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()

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
    resp, r, err := apiClient.CowApi.CowGetUsersHistorical(context.Background()).StartBlock(startBlock).EndBlock(endBlock).StartDate(startDate).EndDate(endDate).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CowApi.CowGetUsersHistorical``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CowGetUsersHistorical`: []CowUserDTO
    fmt.Fprintf(os.Stdout, "Response from `CowApi.CowGetUsersHistorical`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCowGetUsersHistoricalRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int64** |  | 
 **endBlock** | **int64** |  | 
 **startDate** | **time.Time** |  | 
 **endDate** | **time.Time** |  | 

### Return type

[**[]CowUserDTO**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

