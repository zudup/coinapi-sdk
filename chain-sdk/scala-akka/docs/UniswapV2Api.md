# UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsUniswapv2PoolsCurrentGet**](UniswapV2Api.md#chainsChainIdDappsUniswapv2PoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools
[**chainsChainIdDappsUniswapv2PoolsCurrentGetWithHttpInfo**](UniswapV2Api.md#chainsChainIdDappsUniswapv2PoolsCurrentGetWithHttpInfo) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools
[**chainsChainIdDappsUniswapv2SwapsCurrentGet**](UniswapV2Api.md#chainsChainIdDappsUniswapv2SwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps
[**chainsChainIdDappsUniswapv2SwapsCurrentGetWithHttpInfo**](UniswapV2Api.md#chainsChainIdDappsUniswapv2SwapsCurrentGetWithHttpInfo) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps
[**chainsChainIdDappsUniswapv2TokensCurrentGet**](UniswapV2Api.md#chainsChainIdDappsUniswapv2TokensCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens
[**chainsChainIdDappsUniswapv2TokensCurrentGetWithHttpInfo**](UniswapV2Api.md#chainsChainIdDappsUniswapv2TokensCurrentGetWithHttpInfo) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens



## chainsChainIdDappsUniswapv2PoolsCurrentGet

> chainsChainIdDappsUniswapv2PoolsCurrentGet(chainsChainIdDappsUniswapv2PoolsCurrentGetRequest): ApiRequest[Seq[PairV2DTO]]

GetPools

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
    val apiInstance = UniswapV2Api("https://onchain.coinapi.io")
    val chainId: String = chainId_example // String | Chain id
    
    val request = apiInstance.chainsChainIdDappsUniswapv2PoolsCurrentGet(chainId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling UniswapV2Api#chainsChainIdDappsUniswapv2PoolsCurrentGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling UniswapV2Api#chainsChainIdDappsUniswapv2PoolsCurrentGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id |

### Return type

ApiRequest[[**Seq[PairV2DTO]**](PairV2DTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## chainsChainIdDappsUniswapv2SwapsCurrentGet

> chainsChainIdDappsUniswapv2SwapsCurrentGet(chainsChainIdDappsUniswapv2SwapsCurrentGetRequest): ApiRequest[Seq[SwapV2DTO]]

GetSwaps

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
    val apiInstance = UniswapV2Api("https://onchain.coinapi.io")
    val chainId: String = chainId_example // String | Chain id
    
    val request = apiInstance.chainsChainIdDappsUniswapv2SwapsCurrentGet(chainId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling UniswapV2Api#chainsChainIdDappsUniswapv2SwapsCurrentGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling UniswapV2Api#chainsChainIdDappsUniswapv2SwapsCurrentGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id |

### Return type

ApiRequest[[**Seq[SwapV2DTO]**](SwapV2DTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |


## chainsChainIdDappsUniswapv2TokensCurrentGet

> chainsChainIdDappsUniswapv2TokensCurrentGet(chainsChainIdDappsUniswapv2TokensCurrentGetRequest): ApiRequest[Seq[TokenV2DTO]]

GetTokens

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
    val apiInstance = UniswapV2Api("https://onchain.coinapi.io")
    val chainId: String = chainId_example // String | Chain id
    
    val request = apiInstance.chainsChainIdDappsUniswapv2TokensCurrentGet(chainId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling UniswapV2Api#chainsChainIdDappsUniswapv2TokensCurrentGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling UniswapV2Api#chainsChainIdDappsUniswapv2TokensCurrentGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id |

### Return type

ApiRequest[[**Seq[TokenV2DTO]**](TokenV2DTO.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

