# DexApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dappsDexBatchHistoricalGet**](DexApi.md#dappsDexBatchHistoricalGet) | **GET** /dapps/dex/batch/historical | 
[**dappsDexBatchHistoricalGetWithHttpInfo**](DexApi.md#dappsDexBatchHistoricalGetWithHttpInfo) | **GET** /dapps/dex/batch/historical | 
[**dappsDexOrdersHistoricalGet**](DexApi.md#dappsDexOrdersHistoricalGet) | **GET** /dapps/dex/orders/historical | 
[**dappsDexOrdersHistoricalGetWithHttpInfo**](DexApi.md#dappsDexOrdersHistoricalGetWithHttpInfo) | **GET** /dapps/dex/orders/historical | 
[**dappsDexPoiHistoricalGet**](DexApi.md#dappsDexPoiHistoricalGet) | **GET** /dapps/dex/poi/historical | 
[**dappsDexPoiHistoricalGetWithHttpInfo**](DexApi.md#dappsDexPoiHistoricalGetWithHttpInfo) | **GET** /dapps/dex/poi/historical | 
[**dappsDexPricesHistoricalGet**](DexApi.md#dappsDexPricesHistoricalGet) | **GET** /dapps/dex/prices/historical | 
[**dappsDexPricesHistoricalGetWithHttpInfo**](DexApi.md#dappsDexPricesHistoricalGetWithHttpInfo) | **GET** /dapps/dex/prices/historical | 
[**dappsDexSolutionHistoricalGet**](DexApi.md#dappsDexSolutionHistoricalGet) | **GET** /dapps/dex/solution/historical | 
[**dappsDexSolutionHistoricalGetWithHttpInfo**](DexApi.md#dappsDexSolutionHistoricalGetWithHttpInfo) | **GET** /dapps/dex/solution/historical | 
[**dappsDexStatsHistoricalGet**](DexApi.md#dappsDexStatsHistoricalGet) | **GET** /dapps/dex/stats/historical | 
[**dappsDexStatsHistoricalGetWithHttpInfo**](DexApi.md#dappsDexStatsHistoricalGetWithHttpInfo) | **GET** /dapps/dex/stats/historical | 
[**dappsDexTokensHistoricalGet**](DexApi.md#dappsDexTokensHistoricalGet) | **GET** /dapps/dex/tokens/historical | 
[**dappsDexTokensHistoricalGetWithHttpInfo**](DexApi.md#dappsDexTokensHistoricalGetWithHttpInfo) | **GET** /dapps/dex/tokens/historical | 
[**dappsDexTradesHistoricalGet**](DexApi.md#dappsDexTradesHistoricalGet) | **GET** /dapps/dex/trades/historical | 
[**dappsDexTradesHistoricalGetWithHttpInfo**](DexApi.md#dappsDexTradesHistoricalGetWithHttpInfo) | **GET** /dapps/dex/trades/historical | 
[**dappsDexUsersHistoricalGet**](DexApi.md#dappsDexUsersHistoricalGet) | **GET** /dapps/dex/users/historical | 
[**dappsDexUsersHistoricalGetWithHttpInfo**](DexApi.md#dappsDexUsersHistoricalGetWithHttpInfo) | **GET** /dapps/dex/users/historical | 
[**dappsDexWithdrawHistoricalGet**](DexApi.md#dappsDexWithdrawHistoricalGet) | **GET** /dapps/dex/withdraw/historical | 
[**dappsDexWithdrawHistoricalGetWithHttpInfo**](DexApi.md#dappsDexWithdrawHistoricalGetWithHttpInfo) | **GET** /dapps/dex/withdraw/historical | 
[**dappsDexWithdrawRequestHistoricalGet**](DexApi.md#dappsDexWithdrawRequestHistoricalGet) | **GET** /dapps/dex/withdrawRequest/historical | 
[**dappsDexWithdrawRequestHistoricalGetWithHttpInfo**](DexApi.md#dappsDexWithdrawRequestHistoricalGetWithHttpInfo) | **GET** /dapps/dex/withdrawRequest/historical | 



## dappsDexBatchHistoricalGet

> dappsDexBatchHistoricalGet(dappsDexBatchHistoricalGetRequest): ApiRequest[Unit]



### Example

```scala
// Import classes:
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
    
    val request = apiInstance.dappsDexBatchHistoricalGet(startBlock, endBlock, startDate, endDate)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling DexApi#dappsDexBatchHistoricalGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling DexApi#dappsDexBatchHistoricalGet")
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


ApiRequest[Unit] (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |


## dappsDexOrdersHistoricalGet

> dappsDexOrdersHistoricalGet(dappsDexOrdersHistoricalGetRequest): ApiRequest[Unit]



### Example

```scala
// Import classes:
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

    val tokenId: String = tokenId_example // String | 
    
    val request = apiInstance.dappsDexOrdersHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling DexApi#dappsDexOrdersHistoricalGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling DexApi#dappsDexOrdersHistoricalGet")
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


ApiRequest[Unit] (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |


## dappsDexPoiHistoricalGet

> dappsDexPoiHistoricalGet(dappsDexPoiHistoricalGetRequest): ApiRequest[Unit]



### Example

```scala
// Import classes:
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
    
    val request = apiInstance.dappsDexPoiHistoricalGet(startBlock, endBlock, startDate, endDate)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling DexApi#dappsDexPoiHistoricalGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling DexApi#dappsDexPoiHistoricalGet")
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


ApiRequest[Unit] (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |


## dappsDexPricesHistoricalGet

> dappsDexPricesHistoricalGet(dappsDexPricesHistoricalGetRequest): ApiRequest[Unit]



### Example

```scala
// Import classes:
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

    val tokenId: String = tokenId_example // String | 
    
    val request = apiInstance.dappsDexPricesHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling DexApi#dappsDexPricesHistoricalGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling DexApi#dappsDexPricesHistoricalGet")
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


ApiRequest[Unit] (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |


## dappsDexSolutionHistoricalGet

> dappsDexSolutionHistoricalGet(dappsDexSolutionHistoricalGetRequest): ApiRequest[Unit]



### Example

```scala
// Import classes:
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

    val tokenId: String = tokenId_example // String | 
    
    val request = apiInstance.dappsDexSolutionHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling DexApi#dappsDexSolutionHistoricalGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling DexApi#dappsDexSolutionHistoricalGet")
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


ApiRequest[Unit] (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |


## dappsDexStatsHistoricalGet

> dappsDexStatsHistoricalGet(dappsDexStatsHistoricalGetRequest): ApiRequest[Unit]



### Example

```scala
// Import classes:
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
    
    val request = apiInstance.dappsDexStatsHistoricalGet(startBlock, endBlock, startDate, endDate)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling DexApi#dappsDexStatsHistoricalGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling DexApi#dappsDexStatsHistoricalGet")
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


ApiRequest[Unit] (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |


## dappsDexTokensHistoricalGet

> dappsDexTokensHistoricalGet(dappsDexTokensHistoricalGetRequest): ApiRequest[Unit]



### Example

```scala
// Import classes:
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

    val tokenId: String = tokenId_example // String | 
    
    val request = apiInstance.dappsDexTokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling DexApi#dappsDexTokensHistoricalGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling DexApi#dappsDexTokensHistoricalGet")
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


ApiRequest[Unit] (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |


## dappsDexTradesHistoricalGet

> dappsDexTradesHistoricalGet(dappsDexTradesHistoricalGetRequest): ApiRequest[Unit]



### Example

```scala
// Import classes:
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
    
    val request = apiInstance.dappsDexTradesHistoricalGet(startBlock, endBlock, startDate, endDate)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling DexApi#dappsDexTradesHistoricalGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling DexApi#dappsDexTradesHistoricalGet")
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


ApiRequest[Unit] (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |


## dappsDexUsersHistoricalGet

> dappsDexUsersHistoricalGet(dappsDexUsersHistoricalGetRequest): ApiRequest[Unit]



### Example

```scala
// Import classes:
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
    
    val request = apiInstance.dappsDexUsersHistoricalGet(startBlock, endBlock, startDate, endDate)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling DexApi#dappsDexUsersHistoricalGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling DexApi#dappsDexUsersHistoricalGet")
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


ApiRequest[Unit] (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |


## dappsDexWithdrawHistoricalGet

> dappsDexWithdrawHistoricalGet(dappsDexWithdrawHistoricalGetRequest): ApiRequest[Unit]



### Example

```scala
// Import classes:
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

    val tokenId: String = tokenId_example // String | 
    
    val request = apiInstance.dappsDexWithdrawHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling DexApi#dappsDexWithdrawHistoricalGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling DexApi#dappsDexWithdrawHistoricalGet")
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


ApiRequest[Unit] (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |


## dappsDexWithdrawRequestHistoricalGet

> dappsDexWithdrawRequestHistoricalGet(dappsDexWithdrawRequestHistoricalGetRequest): ApiRequest[Unit]



### Example

```scala
// Import classes:
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

    val tokenId: String = tokenId_example // String | 
    
    val request = apiInstance.dappsDexWithdrawRequestHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling DexApi#dappsDexWithdrawRequestHistoricalGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling DexApi#dappsDexWithdrawRequestHistoricalGet")
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


ApiRequest[Unit] (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

