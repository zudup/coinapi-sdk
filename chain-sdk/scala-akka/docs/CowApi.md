# CowApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cowGetOrderDTOsHistorical**](CowApi.md#cowGetOrderDTOsHistorical) | **GET** /dapps/cow/OrderDTOs/historical | OrderDTOs (historical) 🔥
[**cowGetOrderDTOsHistoricalWithHttpInfo**](CowApi.md#cowGetOrderDTOsHistoricalWithHttpInfo) | **GET** /dapps/cow/OrderDTOs/historical | OrderDTOs (historical) 🔥
[**cowGetOrdersHistorical**](CowApi.md#cowGetOrdersHistorical) | **GET** /dapps/cow/orders/historical | Orders (historical)
[**cowGetOrdersHistoricalWithHttpInfo**](CowApi.md#cowGetOrdersHistoricalWithHttpInfo) | **GET** /dapps/cow/orders/historical | Orders (historical)
[**cowGetSettlementDTOsHistorical**](CowApi.md#cowGetSettlementDTOsHistorical) | **GET** /dapps/cow/SettlementDTOs/historical | SettlementDTOs (historical) 🔥
[**cowGetSettlementDTOsHistoricalWithHttpInfo**](CowApi.md#cowGetSettlementDTOsHistoricalWithHttpInfo) | **GET** /dapps/cow/SettlementDTOs/historical | SettlementDTOs (historical) 🔥
[**cowGetSettlementsHistorical**](CowApi.md#cowGetSettlementsHistorical) | **GET** /dapps/cow/settlements/historical | Settlements (historical)
[**cowGetSettlementsHistoricalWithHttpInfo**](CowApi.md#cowGetSettlementsHistoricalWithHttpInfo) | **GET** /dapps/cow/settlements/historical | Settlements (historical)
[**cowGetTokenDTOsHistorical**](CowApi.md#cowGetTokenDTOsHistorical) | **GET** /dapps/cow/TokenDTOs/historical | TokenDTOs (historical) 🔥
[**cowGetTokenDTOsHistoricalWithHttpInfo**](CowApi.md#cowGetTokenDTOsHistoricalWithHttpInfo) | **GET** /dapps/cow/TokenDTOs/historical | TokenDTOs (historical) 🔥
[**cowGetTokensHistorical**](CowApi.md#cowGetTokensHistorical) | **GET** /dapps/cow/tokens/historical | Tokens (historical) 🔥
[**cowGetTokensHistoricalWithHttpInfo**](CowApi.md#cowGetTokensHistoricalWithHttpInfo) | **GET** /dapps/cow/tokens/historical | Tokens (historical) 🔥
[**cowGetTradeDTOsHistorical**](CowApi.md#cowGetTradeDTOsHistorical) | **GET** /dapps/cow/TradeDTOs/historical | TradeDTOs (historical) 🔥
[**cowGetTradeDTOsHistoricalWithHttpInfo**](CowApi.md#cowGetTradeDTOsHistoricalWithHttpInfo) | **GET** /dapps/cow/TradeDTOs/historical | TradeDTOs (historical) 🔥
[**cowGetTradesHistorical**](CowApi.md#cowGetTradesHistorical) | **GET** /dapps/cow/trades/historical | Trades (historical) 🔥
[**cowGetTradesHistoricalWithHttpInfo**](CowApi.md#cowGetTradesHistoricalWithHttpInfo) | **GET** /dapps/cow/trades/historical | Trades (historical) 🔥
[**cowGetUserDTOsHistorical**](CowApi.md#cowGetUserDTOsHistorical) | **GET** /dapps/cow/UserDTOs/historical | UserDTOs (historical) 🔥
[**cowGetUserDTOsHistoricalWithHttpInfo**](CowApi.md#cowGetUserDTOsHistoricalWithHttpInfo) | **GET** /dapps/cow/UserDTOs/historical | UserDTOs (historical) 🔥
[**cowGetUsersHistorical**](CowApi.md#cowGetUsersHistorical) | **GET** /dapps/cow/users/historical | Users (historical)
[**cowGetUsersHistoricalWithHttpInfo**](CowApi.md#cowGetUsersHistoricalWithHttpInfo) | **GET** /dapps/cow/users/historical | Users (historical)



## cowGetOrderDTOsHistorical

> cowGetOrderDTOsHistorical(cowGetOrderDTOsHistoricalRequest): ApiRequest[Seq[OrderDTO]]

OrderDTOs (historical) 🔥

Gets OrderDTOs.

### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = CowApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | 

    val endBlock: Long = 789 // Long | 

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val poolId: String = poolId_example // String | 
    
    val request = apiInstance.cowGetOrderDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling CowApi#cowGetOrderDTOsHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling CowApi#cowGetOrderDTOsHistorical")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional]
 **endBlock** | **Long**|  | [optional]
 **startDate** | **OffsetDateTime**|  | [optional]
 **endDate** | **OffsetDateTime**|  | [optional]
 **poolId** | **String**|  | [optional]

### Return type

ApiRequest[[**Seq[OrderDTO]**](OrderDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## cowGetOrdersHistorical

> cowGetOrdersHistorical(cowGetOrdersHistoricalRequest): ApiRequest[Seq[OrderDTO]]

Orders (historical)

Gets orders.

### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = CowApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | 

    val endBlock: Long = 789 // Long | 

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 
    
    val request = apiInstance.cowGetOrdersHistorical(startBlock, endBlock, startDate, endDate)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling CowApi#cowGetOrdersHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling CowApi#cowGetOrdersHistorical")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional]
 **endBlock** | **Long**|  | [optional]
 **startDate** | **OffsetDateTime**|  | [optional]
 **endDate** | **OffsetDateTime**|  | [optional]

### Return type

ApiRequest[[**Seq[OrderDTO]**](OrderDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## cowGetSettlementDTOsHistorical

> cowGetSettlementDTOsHistorical(cowGetSettlementDTOsHistoricalRequest): ApiRequest[Seq[SettlementDTO]]

SettlementDTOs (historical) 🔥

Gets SettlementDTOs.

### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = CowApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | 

    val endBlock: Long = 789 // Long | 

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val poolId: String = poolId_example // String | 
    
    val request = apiInstance.cowGetSettlementDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling CowApi#cowGetSettlementDTOsHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling CowApi#cowGetSettlementDTOsHistorical")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional]
 **endBlock** | **Long**|  | [optional]
 **startDate** | **OffsetDateTime**|  | [optional]
 **endDate** | **OffsetDateTime**|  | [optional]
 **poolId** | **String**|  | [optional]

### Return type

ApiRequest[[**Seq[SettlementDTO]**](SettlementDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## cowGetSettlementsHistorical

> cowGetSettlementsHistorical(cowGetSettlementsHistoricalRequest): ApiRequest[Seq[SettlementDTO]]

Settlements (historical)

Gets settlements.

### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = CowApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | 

    val endBlock: Long = 789 // Long | 

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 
    
    val request = apiInstance.cowGetSettlementsHistorical(startBlock, endBlock, startDate, endDate)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling CowApi#cowGetSettlementsHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling CowApi#cowGetSettlementsHistorical")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional]
 **endBlock** | **Long**|  | [optional]
 **startDate** | **OffsetDateTime**|  | [optional]
 **endDate** | **OffsetDateTime**|  | [optional]

### Return type

ApiRequest[[**Seq[SettlementDTO]**](SettlementDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## cowGetTokenDTOsHistorical

> cowGetTokenDTOsHistorical(cowGetTokenDTOsHistoricalRequest): ApiRequest[Seq[TokenDTO]]

TokenDTOs (historical) 🔥

Gets TokenDTOs.

### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = CowApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | 

    val endBlock: Long = 789 // Long | 

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val poolId: String = poolId_example // String | 
    
    val request = apiInstance.cowGetTokenDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling CowApi#cowGetTokenDTOsHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling CowApi#cowGetTokenDTOsHistorical")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional]
 **endBlock** | **Long**|  | [optional]
 **startDate** | **OffsetDateTime**|  | [optional]
 **endDate** | **OffsetDateTime**|  | [optional]
 **poolId** | **String**|  | [optional]

### Return type

ApiRequest[[**Seq[TokenDTO]**](TokenDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## cowGetTokensHistorical

> cowGetTokensHistorical(cowGetTokensHistoricalRequest): ApiRequest[Seq[TokenDTO]]

Tokens (historical) 🔥

Gets tokens.

### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = CowApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | 

    val endBlock: Long = 789 // Long | 

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val tokenId: String = tokenId_example // String | 
    
    val request = apiInstance.cowGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling CowApi#cowGetTokensHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling CowApi#cowGetTokensHistorical")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional]
 **endBlock** | **Long**|  | [optional]
 **startDate** | **OffsetDateTime**|  | [optional]
 **endDate** | **OffsetDateTime**|  | [optional]
 **tokenId** | **String**|  | [optional]

### Return type

ApiRequest[[**Seq[TokenDTO]**](TokenDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## cowGetTradeDTOsHistorical

> cowGetTradeDTOsHistorical(cowGetTradeDTOsHistoricalRequest): ApiRequest[Seq[TradeDTO]]

TradeDTOs (historical) 🔥

Gets TradeDTOs.

### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = CowApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | 

    val endBlock: Long = 789 // Long | 

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val poolId: String = poolId_example // String | 
    
    val request = apiInstance.cowGetTradeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling CowApi#cowGetTradeDTOsHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling CowApi#cowGetTradeDTOsHistorical")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional]
 **endBlock** | **Long**|  | [optional]
 **startDate** | **OffsetDateTime**|  | [optional]
 **endDate** | **OffsetDateTime**|  | [optional]
 **poolId** | **String**|  | [optional]

### Return type

ApiRequest[[**Seq[TradeDTO]**](TradeDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## cowGetTradesHistorical

> cowGetTradesHistorical(cowGetTradesHistoricalRequest): ApiRequest[Seq[TradeDTO]]

Trades (historical) 🔥

Gets trades.

### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = CowApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | 

    val endBlock: Long = 789 // Long | 

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 
    
    val request = apiInstance.cowGetTradesHistorical(startBlock, endBlock, startDate, endDate)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling CowApi#cowGetTradesHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling CowApi#cowGetTradesHistorical")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional]
 **endBlock** | **Long**|  | [optional]
 **startDate** | **OffsetDateTime**|  | [optional]
 **endDate** | **OffsetDateTime**|  | [optional]

### Return type

ApiRequest[[**Seq[TradeDTO]**](TradeDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## cowGetUserDTOsHistorical

> cowGetUserDTOsHistorical(cowGetUserDTOsHistoricalRequest): ApiRequest[Seq[UserDTO]]

UserDTOs (historical) 🔥

Gets UserDTOs.

### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = CowApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | 

    val endBlock: Long = 789 // Long | 

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val poolId: String = poolId_example // String | 
    
    val request = apiInstance.cowGetUserDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling CowApi#cowGetUserDTOsHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling CowApi#cowGetUserDTOsHistorical")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional]
 **endBlock** | **Long**|  | [optional]
 **startDate** | **OffsetDateTime**|  | [optional]
 **endDate** | **OffsetDateTime**|  | [optional]
 **poolId** | **String**|  | [optional]

### Return type

ApiRequest[[**Seq[UserDTO]**](UserDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## cowGetUsersHistorical

> cowGetUsersHistorical(cowGetUsersHistoricalRequest): ApiRequest[Seq[UserDTO]]

Users (historical)

Gets users.

### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = CowApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | 

    val endBlock: Long = 789 // Long | 

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 
    
    val request = apiInstance.cowGetUsersHistorical(startBlock, endBlock, startDate, endDate)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling CowApi#cowGetUsersHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling CowApi#cowGetUsersHistorical")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**|  | [optional]
 **endBlock** | **Long**|  | [optional]
 **startDate** | **OffsetDateTime**|  | [optional]
 **endDate** | **OffsetDateTime**|  | [optional]

### Return type

ApiRequest[[**Seq[UserDTO]**](UserDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

