# CowApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dappsCowOrdersHistoricalGet**](CowApi.md#dappsCowOrdersHistoricalGet) | **GET** /dapps/cow/orders/historical | 
[**dappsCowOrdersHistoricalGetWithHttpInfo**](CowApi.md#dappsCowOrdersHistoricalGetWithHttpInfo) | **GET** /dapps/cow/orders/historical | 
[**dappsCowSettlementHistoricalGet**](CowApi.md#dappsCowSettlementHistoricalGet) | **GET** /dapps/cow/settlement/historical | 
[**dappsCowSettlementHistoricalGetWithHttpInfo**](CowApi.md#dappsCowSettlementHistoricalGetWithHttpInfo) | **GET** /dapps/cow/settlement/historical | 
[**dappsCowTokensHistoricalGet**](CowApi.md#dappsCowTokensHistoricalGet) | **GET** /dapps/cow/tokens/historical | 
[**dappsCowTokensHistoricalGetWithHttpInfo**](CowApi.md#dappsCowTokensHistoricalGetWithHttpInfo) | **GET** /dapps/cow/tokens/historical | 
[**dappsCowTradesHistoricalGet**](CowApi.md#dappsCowTradesHistoricalGet) | **GET** /dapps/cow/trades/historical | 
[**dappsCowTradesHistoricalGetWithHttpInfo**](CowApi.md#dappsCowTradesHistoricalGetWithHttpInfo) | **GET** /dapps/cow/trades/historical | 
[**dappsCowUsersHistoricalGet**](CowApi.md#dappsCowUsersHistoricalGet) | **GET** /dapps/cow/users/historical | 
[**dappsCowUsersHistoricalGetWithHttpInfo**](CowApi.md#dappsCowUsersHistoricalGetWithHttpInfo) | **GET** /dapps/cow/users/historical | 



## dappsCowOrdersHistoricalGet

> dappsCowOrdersHistoricalGet(dappsCowOrdersHistoricalGetRequest): ApiRequest[Unit]



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
    val apiInstance = CowApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | 

    val endBlock: Long = 789 // Long | 

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 
    
    val request = apiInstance.dappsCowOrdersHistoricalGet(startBlock, endBlock, startDate, endDate)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling CowApi#dappsCowOrdersHistoricalGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling CowApi#dappsCowOrdersHistoricalGet")
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


## dappsCowSettlementHistoricalGet

> dappsCowSettlementHistoricalGet(dappsCowSettlementHistoricalGetRequest): ApiRequest[Unit]



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
    val apiInstance = CowApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | 

    val endBlock: Long = 789 // Long | 

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 
    
    val request = apiInstance.dappsCowSettlementHistoricalGet(startBlock, endBlock, startDate, endDate)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling CowApi#dappsCowSettlementHistoricalGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling CowApi#dappsCowSettlementHistoricalGet")
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


## dappsCowTokensHistoricalGet

> dappsCowTokensHistoricalGet(dappsCowTokensHistoricalGetRequest): ApiRequest[Unit]



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
    val apiInstance = CowApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | 

    val endBlock: Long = 789 // Long | 

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val tokenId: String = tokenId_example // String | 
    
    val request = apiInstance.dappsCowTokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling CowApi#dappsCowTokensHistoricalGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling CowApi#dappsCowTokensHistoricalGet")
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


## dappsCowTradesHistoricalGet

> dappsCowTradesHistoricalGet(dappsCowTradesHistoricalGetRequest): ApiRequest[Unit]



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
    val apiInstance = CowApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | 

    val endBlock: Long = 789 // Long | 

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 
    
    val request = apiInstance.dappsCowTradesHistoricalGet(startBlock, endBlock, startDate, endDate)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling CowApi#dappsCowTradesHistoricalGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling CowApi#dappsCowTradesHistoricalGet")
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


## dappsCowUsersHistoricalGet

> dappsCowUsersHistoricalGet(dappsCowUsersHistoricalGetRequest): ApiRequest[Unit]



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
    val apiInstance = CowApi("https://onchain.coinapi.io")
    val startBlock: Long = 789 // Long | 

    val endBlock: Long = 789 // Long | 

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 
    
    val request = apiInstance.dappsCowUsersHistoricalGet(startBlock, endBlock, startDate, endDate)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling CowApi#dappsCowUsersHistoricalGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling CowApi#dappsCowUsersHistoricalGet")
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

