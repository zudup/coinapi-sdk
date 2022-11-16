# DexApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dexGetBatchsHistorical**](DexApi.md#dexGetBatchsHistorical) | **GET** /dapps/dex/batchs/historical | Batchs (historical) 🔥
[**dexGetBatchsHistoricalWithHttpInfo**](DexApi.md#dexGetBatchsHistoricalWithHttpInfo) | **GET** /dapps/dex/batchs/historical | Batchs (historical) 🔥
[**dexGetDepositsHistorical**](DexApi.md#dexGetDepositsHistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical) 🔥
[**dexGetDepositsHistoricalWithHttpInfo**](DexApi.md#dexGetDepositsHistoricalWithHttpInfo) | **GET** /dapps/dex/deposits/historical | Deposits (historical) 🔥
[**dexGetOrdersHistorical**](DexApi.md#dexGetOrdersHistorical) | **GET** /dapps/dex/orders/historical | Orders (historical) 🔥
[**dexGetOrdersHistoricalWithHttpInfo**](DexApi.md#dexGetOrdersHistoricalWithHttpInfo) | **GET** /dapps/dex/orders/historical | Orders (historical) 🔥
[**dexGetPricesHistorical**](DexApi.md#dexGetPricesHistorical) | **GET** /dapps/dex/prices/historical | Prices (historical) 🔥
[**dexGetPricesHistoricalWithHttpInfo**](DexApi.md#dexGetPricesHistoricalWithHttpInfo) | **GET** /dapps/dex/prices/historical | Prices (historical) 🔥
[**dexGetSolutionsHistorical**](DexApi.md#dexGetSolutionsHistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical) 🔥
[**dexGetSolutionsHistoricalWithHttpInfo**](DexApi.md#dexGetSolutionsHistoricalWithHttpInfo) | **GET** /dapps/dex/solutions/historical | Solutions (historical) 🔥
[**dexGetStatssHistorical**](DexApi.md#dexGetStatssHistorical) | **GET** /dapps/dex/statss/historical | Statss (historical) 🔥
[**dexGetStatssHistoricalWithHttpInfo**](DexApi.md#dexGetStatssHistoricalWithHttpInfo) | **GET** /dapps/dex/statss/historical | Statss (historical) 🔥
[**dexGetTokensHistorical**](DexApi.md#dexGetTokensHistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical) 🔥
[**dexGetTokensHistoricalWithHttpInfo**](DexApi.md#dexGetTokensHistoricalWithHttpInfo) | **GET** /dapps/dex/tokens/historical | Tokens (historical) 🔥
[**dexGetTradesHistorical**](DexApi.md#dexGetTradesHistorical) | **GET** /dapps/dex/trades/historical | Trades (historical) 🔥
[**dexGetTradesHistoricalWithHttpInfo**](DexApi.md#dexGetTradesHistoricalWithHttpInfo) | **GET** /dapps/dex/trades/historical | Trades (historical) 🔥
[**dexGetUsersHistorical**](DexApi.md#dexGetUsersHistorical) | **GET** /dapps/dex/users/historical | Users (historical) 🔥
[**dexGetUsersHistoricalWithHttpInfo**](DexApi.md#dexGetUsersHistoricalWithHttpInfo) | **GET** /dapps/dex/users/historical | Users (historical) 🔥
[**dexGetWithdrawRequestsHistorical**](DexApi.md#dexGetWithdrawRequestsHistorical) | **GET** /dapps/dex/withdrawrequests/historical | WithdrawRequests (historical) 🔥
[**dexGetWithdrawRequestsHistoricalWithHttpInfo**](DexApi.md#dexGetWithdrawRequestsHistoricalWithHttpInfo) | **GET** /dapps/dex/withdrawrequests/historical | WithdrawRequests (historical) 🔥
[**dexGetWithdrawsHistorical**](DexApi.md#dexGetWithdrawsHistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical) 🔥
[**dexGetWithdrawsHistoricalWithHttpInfo**](DexApi.md#dexGetWithdrawsHistoricalWithHttpInfo) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical) 🔥



## dexGetBatchsHistorical

> dexGetBatchsHistorical(dexGetBatchsHistoricalRequest): ApiRequest[Seq[BatchDTO]]

Batchs (historical) 🔥

Gets batchs.

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
    val apiInstance = DexApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.

    val endBlock: Long = 789 // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | The end date of timeframe.

    val id: String = id_example // String | Identifier.
    
    val request = apiInstance.dexGetBatchsHistorical(startBlock, endBlock, startDate, endDate, id)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling DexApi#dexGetBatchsHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling DexApi#dexGetBatchsHistorical")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **String**| Identifier. | [optional]

### Return type

ApiRequest[[**Seq[BatchDTO]**](BatchDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## dexGetDepositsHistorical

> dexGetDepositsHistorical(dexGetDepositsHistoricalRequest): ApiRequest[Seq[DepositDTO]]

Deposits (historical) 🔥

Gets deposits.

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
    val apiInstance = DexApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | 

    val endBlock: Long = 789 // Long | 

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val id: String = id_example // String | 

    val user: String = user_example // String | 
    
    val request = apiInstance.dexGetDepositsHistorical(startBlock, endBlock, startDate, endDate, id, user)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling DexApi#dexGetDepositsHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling DexApi#dexGetDepositsHistorical")
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
 **id** | **String**|  | [optional]
 **user** | **String**|  | [optional]

### Return type

ApiRequest[[**Seq[DepositDTO]**](DepositDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## dexGetOrdersHistorical

> dexGetOrdersHistorical(dexGetOrdersHistoricalRequest): ApiRequest[Seq[OrderDTO]]

Orders (historical) 🔥

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
    val apiInstance = DexApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | 

    val endBlock: Long = 789 // Long | 

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val id: String = id_example // String | 

    val buyToken: String = buyToken_example // String | 

    val sellToken: String = sellToken_example // String | 
    
    val request = apiInstance.dexGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling DexApi#dexGetOrdersHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling DexApi#dexGetOrdersHistorical")
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
 **id** | **String**|  | [optional]
 **buyToken** | **String**|  | [optional]
 **sellToken** | **String**|  | [optional]

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


## dexGetPricesHistorical

> dexGetPricesHistorical(dexGetPricesHistoricalRequest): ApiRequest[Seq[PriceDTO]]

Prices (historical) 🔥

Gets prices.

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
    val apiInstance = DexApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | 

    val endBlock: Long = 789 // Long | 

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val id: String = id_example // String | 
    
    val request = apiInstance.dexGetPricesHistorical(startBlock, endBlock, startDate, endDate, id)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling DexApi#dexGetPricesHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling DexApi#dexGetPricesHistorical")
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
 **id** | **String**|  | [optional]

### Return type

ApiRequest[[**Seq[PriceDTO]**](PriceDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## dexGetSolutionsHistorical

> dexGetSolutionsHistorical(dexGetSolutionsHistoricalRequest): ApiRequest[Seq[SolutionDTO]]

Solutions (historical) 🔥

Gets solutions.

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
    val apiInstance = DexApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.

    val endBlock: Long = 789 // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | The end date of timeframe.

    val id: String = id_example // String | 
    
    val request = apiInstance.dexGetSolutionsHistorical(startBlock, endBlock, startDate, endDate, id)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling DexApi#dexGetSolutionsHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling DexApi#dexGetSolutionsHistorical")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **String**|  | [optional]

### Return type

ApiRequest[[**Seq[SolutionDTO]**](SolutionDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## dexGetStatssHistorical

> dexGetStatssHistorical(dexGetStatssHistoricalRequest): ApiRequest[Seq[StatsDTO]]

Statss (historical) 🔥

Gets statss.

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
    val apiInstance = DexApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.

    val endBlock: Long = 789 // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | The end date of timeframe.

    val id: String = id_example // String | 
    
    val request = apiInstance.dexGetStatssHistorical(startBlock, endBlock, startDate, endDate, id)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling DexApi#dexGetStatssHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling DexApi#dexGetStatssHistorical")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **String**|  | [optional]

### Return type

ApiRequest[[**Seq[StatsDTO]**](StatsDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## dexGetTokensHistorical

> dexGetTokensHistorical(dexGetTokensHistoricalRequest): ApiRequest[Seq[TokenDTO]]

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
    val apiInstance = DexApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.

    val endBlock: Long = 789 // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | The end date of timeframe.

    val id: String = id_example // String | 

    val address: String = address_example // String | 

    val symbol: String = symbol_example // String | 

    val name: String = name_example // String | 
    
    val request = apiInstance.dexGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, symbol, name)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling DexApi#dexGetTokensHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling DexApi#dexGetTokensHistorical")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **String**|  | [optional]
 **address** | **String**|  | [optional]
 **symbol** | **String**|  | [optional]
 **name** | **String**|  | [optional]

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


## dexGetTradesHistorical

> dexGetTradesHistorical(dexGetTradesHistoricalRequest): ApiRequest[Seq[TradeDTO]]

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
    val apiInstance = DexApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.

    val endBlock: Long = 789 // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | The end date of timeframe.

    val id: String = id_example // String | 

    val buyToken: String = buyToken_example // String | 

    val sellToken: String = sellToken_example // String | 
    
    val request = apiInstance.dexGetTradesHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling DexApi#dexGetTradesHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling DexApi#dexGetTradesHistorical")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **String**|  | [optional]
 **buyToken** | **String**|  | [optional]
 **sellToken** | **String**|  | [optional]

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


## dexGetUsersHistorical

> dexGetUsersHistorical(dexGetUsersHistoricalRequest): ApiRequest[Seq[UserDTO]]

Users (historical) 🔥

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
    val apiInstance = DexApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.

    val endBlock: Long = 789 // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | The end date of timeframe.

    val id: String = id_example // String | 
    
    val request = apiInstance.dexGetUsersHistorical(startBlock, endBlock, startDate, endDate, id)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling DexApi#dexGetUsersHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling DexApi#dexGetUsersHistorical")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]
 **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]
 **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]
 **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional]
 **id** | **String**|  | [optional]

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


## dexGetWithdrawRequestsHistorical

> dexGetWithdrawRequestsHistorical(dexGetWithdrawRequestsHistoricalRequest): ApiRequest[Seq[WithdrawRequestDTO]]

WithdrawRequests (historical) 🔥

Gets withdrawrequests.

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
    val apiInstance = DexApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | 

    val endBlock: Long = 789 // Long | 

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val id: String = id_example // String | 

    val user: String = user_example // String | 
    
    val request = apiInstance.dexGetWithdrawRequestsHistorical(startBlock, endBlock, startDate, endDate, id, user)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling DexApi#dexGetWithdrawRequestsHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling DexApi#dexGetWithdrawRequestsHistorical")
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
 **id** | **String**|  | [optional]
 **user** | **String**|  | [optional]

### Return type

ApiRequest[[**Seq[WithdrawRequestDTO]**](WithdrawRequestDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## dexGetWithdrawsHistorical

> dexGetWithdrawsHistorical(dexGetWithdrawsHistoricalRequest): ApiRequest[Seq[WithdrawDTO]]

Withdraws (historical) 🔥

Gets withdraws.

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
    val apiInstance = DexApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | 

    val endBlock: Long = 789 // Long | 

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val id: String = id_example // String | 

    val user: String = user_example // String | 
    
    val request = apiInstance.dexGetWithdrawsHistorical(startBlock, endBlock, startDate, endDate, id, user)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling DexApi#dexGetWithdrawsHistorical")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling DexApi#dexGetWithdrawsHistorical")
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
 **id** | **String**|  | [optional]
 **user** | **String**|  | [optional]

### Return type

ApiRequest[[**Seq[WithdrawDTO]**](WithdrawDTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

