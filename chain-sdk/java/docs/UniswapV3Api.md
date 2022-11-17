# UniswapV3Api

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**uniswapV3BundlesCurrent**](UniswapV3Api.md#uniswapV3BundlesCurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current) |
| [**uniswapV3BurnsCurrent**](UniswapV3Api.md#uniswapV3BurnsCurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current) |
| [**uniswapV3FactorysCurrent**](UniswapV3Api.md#uniswapV3FactorysCurrent) | **GET** /dapps/uniswapv3/factorys/current | Factorys (current) |
| [**uniswapV3GetBundlesHistorical**](UniswapV3Api.md#uniswapV3GetBundlesHistorical) | **GET** /dapps/uniswapv3/bundles/historical | Bundles (historical) 🔥 |
| [**uniswapV3GetBurnsHistorical**](UniswapV3Api.md#uniswapV3GetBurnsHistorical) | **GET** /dapps/uniswapv3/burns/historical | Burns (historical) 🔥 |
| [**uniswapV3GetFactorysHistorical**](UniswapV3Api.md#uniswapV3GetFactorysHistorical) | **GET** /dapps/uniswapv3/factorys/historical | Factorys (historical) 🔥 |
| [**uniswapV3GetMintsHistorical**](UniswapV3Api.md#uniswapV3GetMintsHistorical) | **GET** /dapps/uniswapv3/mints/historical | Mints (historical) 🔥 |
| [**uniswapV3GetPoolDayDatasHistorical**](UniswapV3Api.md#uniswapV3GetPoolDayDatasHistorical) | **GET** /dapps/uniswapv3/poolDayDatas/historical | PoolDayDatas (historical) 🔥 |
| [**uniswapV3GetPoolHourDatasHistorical**](UniswapV3Api.md#uniswapV3GetPoolHourDatasHistorical) | **GET** /dapps/uniswapv3/poolHourDatas/historical | PoolHourDatas (historical) 🔥 |
| [**uniswapV3GetPoolsHistorical**](UniswapV3Api.md#uniswapV3GetPoolsHistorical) | **GET** /dapps/uniswapv3/pools/historical | Pools (historical) 🔥 |
| [**uniswapV3GetPositionSnapshotsHistorical**](UniswapV3Api.md#uniswapV3GetPositionSnapshotsHistorical) | **GET** /dapps/uniswapv3/positionSnapshots/historical | PositionSnapshots (historical) 🔥 |
| [**uniswapV3GetPositionsHistorical**](UniswapV3Api.md#uniswapV3GetPositionsHistorical) | **GET** /dapps/uniswapv3/positions/historical | Positions (historical) 🔥 |
| [**uniswapV3GetSwapsHistorical**](UniswapV3Api.md#uniswapV3GetSwapsHistorical) | **GET** /dapps/uniswapv3/swaps/historical | Swaps (historical) 🔥 |
| [**uniswapV3GetTickDayDatasHistorical**](UniswapV3Api.md#uniswapV3GetTickDayDatasHistorical) | **GET** /dapps/uniswapv3/tickDayDatas/historical | TickDayDatas (historical) 🔥 |
| [**uniswapV3GetTicksHistorical**](UniswapV3Api.md#uniswapV3GetTicksHistorical) | **GET** /dapps/uniswapv3/ticks/historical | Ticks (historical) 🔥 |
| [**uniswapV3GetTokenHourDatasHistorical**](UniswapV3Api.md#uniswapV3GetTokenHourDatasHistorical) | **GET** /dapps/uniswapv3/tokenHourDatas/historical | TokenHourDatas (historical) 🔥 |
| [**uniswapV3GetTokenV3DayDatasHistorical**](UniswapV3Api.md#uniswapV3GetTokenV3DayDatasHistorical) | **GET** /dapps/uniswapv3/tokenV3DayDatas/historical | TokenV3DayDatas (historical) 🔥 |
| [**uniswapV3GetTokensHistorical**](UniswapV3Api.md#uniswapV3GetTokensHistorical) | **GET** /dapps/uniswapv3/tokens/historical | Tokens (historical) 🔥 |
| [**uniswapV3GetTransactionsHistorical**](UniswapV3Api.md#uniswapV3GetTransactionsHistorical) | **GET** /dapps/uniswapv3/transactions/historical | Transactions (historical) 🔥 |
| [**uniswapV3GetUniswapDayDatasHistorical**](UniswapV3Api.md#uniswapV3GetUniswapDayDatasHistorical) | **GET** /dapps/uniswapv3/uniswapDayDatas/historical | UniswapDayDatas (historical) 🔥 |
| [**uniswapV3MintsCurrent**](UniswapV3Api.md#uniswapV3MintsCurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current) |
| [**uniswapV3PoolDayDatasCurrent**](UniswapV3Api.md#uniswapV3PoolDayDatasCurrent) | **GET** /dapps/uniswapv3/poolDayDatas/current | PoolDayDatas (current) |
| [**uniswapV3PoolHourDatasCurrent**](UniswapV3Api.md#uniswapV3PoolHourDatasCurrent) | **GET** /dapps/uniswapv3/poolHourDatas/current | PoolHourDatas (current) |
| [**uniswapV3PoolsCurrent**](UniswapV3Api.md#uniswapV3PoolsCurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current) |
| [**uniswapV3PositionSnapshotsCurrent**](UniswapV3Api.md#uniswapV3PositionSnapshotsCurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionSnapshots (current) |
| [**uniswapV3PositionsCurrent**](UniswapV3Api.md#uniswapV3PositionsCurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current) |
| [**uniswapV3SwapsCurrent**](UniswapV3Api.md#uniswapV3SwapsCurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) |
| [**uniswapV3TickDayDatasCurrent**](UniswapV3Api.md#uniswapV3TickDayDatasCurrent) | **GET** /dapps/uniswapv3/tickDayDatas/current | TickDayDatas (current) |
| [**uniswapV3TicksCurrent**](UniswapV3Api.md#uniswapV3TicksCurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current) |
| [**uniswapV3TokenHourDatasCurrent**](UniswapV3Api.md#uniswapV3TokenHourDatasCurrent) | **GET** /dapps/uniswapv3/tokenHourDatas/current | TokenHourDatas (current) |
| [**uniswapV3TokenV3DayDatasCurrent**](UniswapV3Api.md#uniswapV3TokenV3DayDatasCurrent) | **GET** /dapps/uniswapv3/tokenV3DayDatas/current | TokenV3DayDatas (current) |
| [**uniswapV3TokensCurrent**](UniswapV3Api.md#uniswapV3TokensCurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) |
| [**uniswapV3TransactionsCurrent**](UniswapV3Api.md#uniswapV3TransactionsCurrent) | **GET** /dapps/uniswapv3/transactions/current | Transactions (current) |
| [**uniswapV3UniswapDayDatasCurrent**](UniswapV3Api.md#uniswapV3UniswapDayDatasCurrent) | **GET** /dapps/uniswapv3/uniswapDayDatas/current | UniswapDayDatas (current) |


<a name="uniswapV3BundlesCurrent"></a>
# **uniswapV3BundlesCurrent**
> List&lt;UniswapV3BundleDTO&gt; uniswapV3BundlesCurrent()

Bundles (current)

Gets bundles.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    try {
      List<UniswapV3BundleDTO> result = apiInstance.uniswapV3BundlesCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3BundlesCurrent");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;UniswapV3BundleDTO&gt;**](UniswapV3BundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3BurnsCurrent"></a>
# **uniswapV3BurnsCurrent**
> List&lt;UniswapV3BurnDTO&gt; uniswapV3BurnsCurrent()

Burns (current)

Gets burns.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    try {
      List<UniswapV3BurnDTO> result = apiInstance.uniswapV3BurnsCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3BurnsCurrent");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;UniswapV3BurnDTO&gt;**](UniswapV3BurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3FactorysCurrent"></a>
# **uniswapV3FactorysCurrent**
> List&lt;UniswapV3FactoryDTO&gt; uniswapV3FactorysCurrent()

Factorys (current)

Gets factorys.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    try {
      List<UniswapV3FactoryDTO> result = apiInstance.uniswapV3FactorysCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3FactorysCurrent");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;UniswapV3FactoryDTO&gt;**](UniswapV3FactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetBundlesHistorical"></a>
# **uniswapV3GetBundlesHistorical**
> List&lt;UniswapV3BundleDTO&gt; uniswapV3GetBundlesHistorical(startBlock, endBlock, startDate, endDate, id)

Bundles (historical) 🔥

Gets bundles.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | 
    try {
      List<UniswapV3BundleDTO> result = apiInstance.uniswapV3GetBundlesHistorical(startBlock, endBlock, startDate, endDate, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetBundlesHistorical");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional] |
| **id** | **String**|  | [optional] |

### Return type

[**List&lt;UniswapV3BundleDTO&gt;**](UniswapV3BundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetBurnsHistorical"></a>
# **uniswapV3GetBurnsHistorical**
> List&lt;UniswapV3BurnDTO&gt; uniswapV3GetBurnsHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1)

Burns (historical) 🔥

Gets burns.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | Transaction hash + '#' + index in mints Transaction array.
    String pool = "pool_example"; // String | Pool position is within.
    String token0 = "token0_example"; // String | Reference to token0 as stored in pool contract.
    String token1 = "token1_example"; // String | Reference to token1 as stored in pool contract.
    try {
      List<UniswapV3BurnDTO> result = apiInstance.uniswapV3GetBurnsHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetBurnsHistorical");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional] |
| **id** | **String**| Transaction hash + &#39;#&#39; + index in mints Transaction array. | [optional] |
| **pool** | **String**| Pool position is within. | [optional] |
| **token0** | **String**| Reference to token0 as stored in pool contract. | [optional] |
| **token1** | **String**| Reference to token1 as stored in pool contract. | [optional] |

### Return type

[**List&lt;UniswapV3BurnDTO&gt;**](UniswapV3BurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetFactorysHistorical"></a>
# **uniswapV3GetFactorysHistorical**
> List&lt;UniswapV3FactoryDTO&gt; uniswapV3GetFactorysHistorical(startBlock, endBlock, startDate, endDate, id)

Factorys (historical) 🔥

Gets factorys.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | Factory address.
    try {
      List<UniswapV3FactoryDTO> result = apiInstance.uniswapV3GetFactorysHistorical(startBlock, endBlock, startDate, endDate, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetFactorysHistorical");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional] |
| **id** | **String**| Factory address. | [optional] |

### Return type

[**List&lt;UniswapV3FactoryDTO&gt;**](UniswapV3FactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetMintsHistorical"></a>
# **uniswapV3GetMintsHistorical**
> List&lt;UniswapV3MintDTO&gt; uniswapV3GetMintsHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1)

Mints (historical) 🔥

Gets mints.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | Transaction hash + '#' + index in mints Transaction array.
    String pool = "pool_example"; // String | Pool address.
    String token0 = "token0_example"; // String | Reference to token0 as stored in pool contract.
    String token1 = "token1_example"; // String | Reference to token1 as stored in pool contract.
    try {
      List<UniswapV3MintDTO> result = apiInstance.uniswapV3GetMintsHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetMintsHistorical");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional] |
| **id** | **String**| Transaction hash + &#39;#&#39; + index in mints Transaction array. | [optional] |
| **pool** | **String**| Pool address. | [optional] |
| **token0** | **String**| Reference to token0 as stored in pool contract. | [optional] |
| **token1** | **String**| Reference to token1 as stored in pool contract. | [optional] |

### Return type

[**List&lt;UniswapV3MintDTO&gt;**](UniswapV3MintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetPoolDayDatasHistorical"></a>
# **uniswapV3GetPoolDayDatasHistorical**
> List&lt;UniswapV3PoolDayDataDTO&gt; uniswapV3GetPoolDayDatasHistorical(startBlock, endBlock, startDate, endDate, id, pool)

PoolDayDatas (historical) 🔥

Gets poolDayDatas.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String id = "id_example"; // String | 
    String pool = "pool_example"; // String | 
    try {
      List<UniswapV3PoolDayDataDTO> result = apiInstance.uniswapV3GetPoolDayDatasHistorical(startBlock, endBlock, startDate, endDate, id, pool);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetPoolDayDatasHistorical");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startBlock** | **Long**|  | [optional] |
| **endBlock** | **Long**|  | [optional] |
| **startDate** | **OffsetDateTime**|  | [optional] |
| **endDate** | **OffsetDateTime**|  | [optional] |
| **id** | **String**|  | [optional] |
| **pool** | **String**|  | [optional] |

### Return type

[**List&lt;UniswapV3PoolDayDataDTO&gt;**](UniswapV3PoolDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetPoolHourDatasHistorical"></a>
# **uniswapV3GetPoolHourDatasHistorical**
> List&lt;UniswapV3PoolHourDataDTO&gt; uniswapV3GetPoolHourDatasHistorical(startBlock, endBlock, startDate, endDate, id, pool)

PoolHourDatas (historical) 🔥

Gets poolHourDatas.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String id = "id_example"; // String | 
    String pool = "pool_example"; // String | 
    try {
      List<UniswapV3PoolHourDataDTO> result = apiInstance.uniswapV3GetPoolHourDatasHistorical(startBlock, endBlock, startDate, endDate, id, pool);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetPoolHourDatasHistorical");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startBlock** | **Long**|  | [optional] |
| **endBlock** | **Long**|  | [optional] |
| **startDate** | **OffsetDateTime**|  | [optional] |
| **endDate** | **OffsetDateTime**|  | [optional] |
| **id** | **String**|  | [optional] |
| **pool** | **String**|  | [optional] |

### Return type

[**List&lt;UniswapV3PoolHourDataDTO&gt;**](UniswapV3PoolHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetPoolsHistorical"></a>
# **uniswapV3GetPoolsHistorical**
> List&lt;UniswapV3PoolDTO&gt; uniswapV3GetPoolsHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1)

Pools (historical) 🔥

Gets pools.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | Pool address.
    String token0 = "token0_example"; // String | Reference to token0 as stored in pool contract.
    String token1 = "token1_example"; // String | Reference to token1 as stored in pool contract.
    try {
      List<UniswapV3PoolDTO> result = apiInstance.uniswapV3GetPoolsHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetPoolsHistorical");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional] |
| **id** | **String**| Pool address. | [optional] |
| **token0** | **String**| Reference to token0 as stored in pool contract. | [optional] |
| **token1** | **String**| Reference to token1 as stored in pool contract. | [optional] |

### Return type

[**List&lt;UniswapV3PoolDTO&gt;**](UniswapV3PoolDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetPositionSnapshotsHistorical"></a>
# **uniswapV3GetPositionSnapshotsHistorical**
> List&lt;UniswapV3PositionSnapshotDTO&gt; uniswapV3GetPositionSnapshotsHistorical(startBlock, endBlock, startDate, endDate, id, pool)

PositionSnapshots (historical) 🔥

Gets positionSnapshots.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String id = "id_example"; // String | 
    String pool = "pool_example"; // String | 
    try {
      List<UniswapV3PositionSnapshotDTO> result = apiInstance.uniswapV3GetPositionSnapshotsHistorical(startBlock, endBlock, startDate, endDate, id, pool);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetPositionSnapshotsHistorical");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startBlock** | **Long**|  | [optional] |
| **endBlock** | **Long**|  | [optional] |
| **startDate** | **OffsetDateTime**|  | [optional] |
| **endDate** | **OffsetDateTime**|  | [optional] |
| **id** | **String**|  | [optional] |
| **pool** | **String**|  | [optional] |

### Return type

[**List&lt;UniswapV3PositionSnapshotDTO&gt;**](UniswapV3PositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetPositionsHistorical"></a>
# **uniswapV3GetPositionsHistorical**
> List&lt;UniswapV3PositionDTO&gt; uniswapV3GetPositionsHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1)

Positions (historical) 🔥

Gets positions.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | NFT token identifier.
    String pool = "pool_example"; // String | Pool position is within.
    String token0 = "token0_example"; // String | Reference to token0 as stored in pair contract.
    String token1 = "token1_example"; // String | Reference to token1 as stored in pair contract.
    try {
      List<UniswapV3PositionDTO> result = apiInstance.uniswapV3GetPositionsHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetPositionsHistorical");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional] |
| **id** | **String**| NFT token identifier. | [optional] |
| **pool** | **String**| Pool position is within. | [optional] |
| **token0** | **String**| Reference to token0 as stored in pair contract. | [optional] |
| **token1** | **String**| Reference to token1 as stored in pair contract. | [optional] |

### Return type

[**List&lt;UniswapV3PositionDTO&gt;**](UniswapV3PositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetSwapsHistorical"></a>
# **uniswapV3GetSwapsHistorical**
> List&lt;UniswapV3SwapDTO&gt; uniswapV3GetSwapsHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1)

Swaps (historical) 🔥

Gets swaps.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | Identifier, format: transaction hash + \"#\" + index in swaps Transaction array.
    String pool = "pool_example"; // String | Pool swap occured within.
    String token0 = "token0_example"; // String | Reference to token0 as stored in pair contract.
    String token1 = "token1_example"; // String | Reference to token1 as stored in pair contract.
    try {
      List<UniswapV3SwapDTO> result = apiInstance.uniswapV3GetSwapsHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetSwapsHistorical");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional] |
| **id** | **String**| Identifier, format: transaction hash + \&quot;#\&quot; + index in swaps Transaction array. | [optional] |
| **pool** | **String**| Pool swap occured within. | [optional] |
| **token0** | **String**| Reference to token0 as stored in pair contract. | [optional] |
| **token1** | **String**| Reference to token1 as stored in pair contract. | [optional] |

### Return type

[**List&lt;UniswapV3SwapDTO&gt;**](UniswapV3SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetTickDayDatasHistorical"></a>
# **uniswapV3GetTickDayDatasHistorical**
> List&lt;UniswapV3TickDayDataDTO&gt; uniswapV3GetTickDayDatasHistorical(startBlock, endBlock, startDate, endDate, id, pool)

TickDayDatas (historical) 🔥

Gets tickDayDatas.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String id = "id_example"; // String | 
    String pool = "pool_example"; // String | 
    try {
      List<UniswapV3TickDayDataDTO> result = apiInstance.uniswapV3GetTickDayDatasHistorical(startBlock, endBlock, startDate, endDate, id, pool);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetTickDayDatasHistorical");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startBlock** | **Long**|  | [optional] |
| **endBlock** | **Long**|  | [optional] |
| **startDate** | **OffsetDateTime**|  | [optional] |
| **endDate** | **OffsetDateTime**|  | [optional] |
| **id** | **String**|  | [optional] |
| **pool** | **String**|  | [optional] |

### Return type

[**List&lt;UniswapV3TickDayDataDTO&gt;**](UniswapV3TickDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetTicksHistorical"></a>
# **uniswapV3GetTicksHistorical**
> List&lt;UniswapV3TickDTO&gt; uniswapV3GetTicksHistorical(startBlock, endBlock, startDate, endDate, id, pool)

Ticks (historical) 🔥

Gets ticks.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String id = "id_example"; // String | 
    String pool = "pool_example"; // String | 
    try {
      List<UniswapV3TickDTO> result = apiInstance.uniswapV3GetTicksHistorical(startBlock, endBlock, startDate, endDate, id, pool);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetTicksHistorical");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startBlock** | **Long**|  | [optional] |
| **endBlock** | **Long**|  | [optional] |
| **startDate** | **OffsetDateTime**|  | [optional] |
| **endDate** | **OffsetDateTime**|  | [optional] |
| **id** | **String**|  | [optional] |
| **pool** | **String**|  | [optional] |

### Return type

[**List&lt;UniswapV3TickDTO&gt;**](UniswapV3TickDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetTokenHourDatasHistorical"></a>
# **uniswapV3GetTokenHourDatasHistorical**
> List&lt;UniswapV3TokenHourDataDTO&gt; uniswapV3GetTokenHourDatasHistorical(startBlock, endBlock, startDate, endDate, id)

TokenHourDatas (historical) 🔥

Gets tokenHourDatas.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | Token address concatendated with date.
    try {
      List<UniswapV3TokenHourDataDTO> result = apiInstance.uniswapV3GetTokenHourDatasHistorical(startBlock, endBlock, startDate, endDate, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetTokenHourDatasHistorical");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional] |
| **id** | **String**| Token address concatendated with date. | [optional] |

### Return type

[**List&lt;UniswapV3TokenHourDataDTO&gt;**](UniswapV3TokenHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetTokenV3DayDatasHistorical"></a>
# **uniswapV3GetTokenV3DayDatasHistorical**
> List&lt;UniswapV3TokenV3DayDataDTO&gt; uniswapV3GetTokenV3DayDatasHistorical(startBlock, endBlock, startDate, endDate, id)

TokenV3DayDatas (historical) 🔥

Gets tokenV3DayDatas.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | Token address concatendated with date.
    try {
      List<UniswapV3TokenV3DayDataDTO> result = apiInstance.uniswapV3GetTokenV3DayDatasHistorical(startBlock, endBlock, startDate, endDate, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetTokenV3DayDatasHistorical");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional] |
| **id** | **String**| Token address concatendated with date. | [optional] |

### Return type

[**List&lt;UniswapV3TokenV3DayDataDTO&gt;**](UniswapV3TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetTokensHistorical"></a>
# **uniswapV3GetTokensHistorical**
> List&lt;UniswapV3TokenDTO&gt; uniswapV3GetTokensHistorical(startBlock, endBlock, startDate, endDate, id, symbol, name)

Tokens (historical) 🔥

Gets tokens.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | Token address.
    String symbol = "symbol_example"; // String | Token symbol.
    String name = "name_example"; // String | Token name.
    try {
      List<UniswapV3TokenDTO> result = apiInstance.uniswapV3GetTokensHistorical(startBlock, endBlock, startDate, endDate, id, symbol, name);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetTokensHistorical");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional] |
| **id** | **String**| Token address. | [optional] |
| **symbol** | **String**| Token symbol. | [optional] |
| **name** | **String**| Token name. | [optional] |

### Return type

[**List&lt;UniswapV3TokenDTO&gt;**](UniswapV3TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetTransactionsHistorical"></a>
# **uniswapV3GetTransactionsHistorical**
> List&lt;UniswapV3TransactionDTO&gt; uniswapV3GetTransactionsHistorical(startBlock, endBlock, startDate, endDate, id)

Transactions (historical) 🔥

Gets transactions.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | Transaction hash.
    try {
      List<UniswapV3TransactionDTO> result = apiInstance.uniswapV3GetTransactionsHistorical(startBlock, endBlock, startDate, endDate, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetTransactionsHistorical");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional] |
| **id** | **String**| Transaction hash. | [optional] |

### Return type

[**List&lt;UniswapV3TransactionDTO&gt;**](UniswapV3TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetUniswapDayDatasHistorical"></a>
# **uniswapV3GetUniswapDayDatasHistorical**
> List&lt;UniswapV3UniswapDayDataDTO&gt; uniswapV3GetUniswapDayDatasHistorical(startBlock, endBlock, startDate, endDate, id)

UniswapDayDatas (historical) 🔥

Gets uniswapDayDatas.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | Timestamp rounded to current day by dividing by 86400.
    try {
      List<UniswapV3UniswapDayDataDTO> result = apiInstance.uniswapV3GetUniswapDayDatasHistorical(startBlock, endBlock, startDate, endDate, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetUniswapDayDatasHistorical");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startBlock** | **Long**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] |
| **endBlock** | **Long**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] |
| **startDate** | **OffsetDateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] |
| **endDate** | **OffsetDateTime**| The end date of timeframe. | [optional] |
| **id** | **String**| Timestamp rounded to current day by dividing by 86400. | [optional] |

### Return type

[**List&lt;UniswapV3UniswapDayDataDTO&gt;**](UniswapV3UniswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3MintsCurrent"></a>
# **uniswapV3MintsCurrent**
> List&lt;UniswapV3MintDTO&gt; uniswapV3MintsCurrent()

Mints (current)

Gets mints.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    try {
      List<UniswapV3MintDTO> result = apiInstance.uniswapV3MintsCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3MintsCurrent");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;UniswapV3MintDTO&gt;**](UniswapV3MintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3PoolDayDatasCurrent"></a>
# **uniswapV3PoolDayDatasCurrent**
> List&lt;UniswapV3PoolDayDataDTO&gt; uniswapV3PoolDayDatasCurrent()

PoolDayDatas (current)

Gets poolDayDatas.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    try {
      List<UniswapV3PoolDayDataDTO> result = apiInstance.uniswapV3PoolDayDatasCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3PoolDayDatasCurrent");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;UniswapV3PoolDayDataDTO&gt;**](UniswapV3PoolDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3PoolHourDatasCurrent"></a>
# **uniswapV3PoolHourDatasCurrent**
> List&lt;UniswapV3PoolHourDataDTO&gt; uniswapV3PoolHourDatasCurrent()

PoolHourDatas (current)

Gets poolHourDatas.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    try {
      List<UniswapV3PoolHourDataDTO> result = apiInstance.uniswapV3PoolHourDatasCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3PoolHourDatasCurrent");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;UniswapV3PoolHourDataDTO&gt;**](UniswapV3PoolHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3PoolsCurrent"></a>
# **uniswapV3PoolsCurrent**
> List&lt;UniswapV3PoolDTO&gt; uniswapV3PoolsCurrent(id)

Pools (current)

Gets pools.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    String id = "id_example"; // String | Pool address.
    try {
      List<UniswapV3PoolDTO> result = apiInstance.uniswapV3PoolsCurrent(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3PoolsCurrent");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Pool address. | [optional] |

### Return type

[**List&lt;UniswapV3PoolDTO&gt;**](UniswapV3PoolDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3PositionSnapshotsCurrent"></a>
# **uniswapV3PositionSnapshotsCurrent**
> List&lt;UniswapV3PositionSnapshotDTO&gt; uniswapV3PositionSnapshotsCurrent()

PositionSnapshots (current)

Gets positionSnapshots.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    try {
      List<UniswapV3PositionSnapshotDTO> result = apiInstance.uniswapV3PositionSnapshotsCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3PositionSnapshotsCurrent");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;UniswapV3PositionSnapshotDTO&gt;**](UniswapV3PositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3PositionsCurrent"></a>
# **uniswapV3PositionsCurrent**
> List&lt;UniswapV3PositionDTO&gt; uniswapV3PositionsCurrent()

Positions (current)

Gets positions.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    try {
      List<UniswapV3PositionDTO> result = apiInstance.uniswapV3PositionsCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3PositionsCurrent");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;UniswapV3PositionDTO&gt;**](UniswapV3PositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3SwapsCurrent"></a>
# **uniswapV3SwapsCurrent**
> List&lt;UniswapV3SwapDTO&gt; uniswapV3SwapsCurrent(pool)

Swaps (current)

Gets swaps.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    String pool = "pool_example"; // String | Pool swap occured within.
    try {
      List<UniswapV3SwapDTO> result = apiInstance.uniswapV3SwapsCurrent(pool);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3SwapsCurrent");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **pool** | **String**| Pool swap occured within. | [optional] |

### Return type

[**List&lt;UniswapV3SwapDTO&gt;**](UniswapV3SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3TickDayDatasCurrent"></a>
# **uniswapV3TickDayDatasCurrent**
> List&lt;UniswapV3TickDayDataDTO&gt; uniswapV3TickDayDatasCurrent()

TickDayDatas (current)

Gets tickDayDatas.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    try {
      List<UniswapV3TickDayDataDTO> result = apiInstance.uniswapV3TickDayDatasCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3TickDayDatasCurrent");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;UniswapV3TickDayDataDTO&gt;**](UniswapV3TickDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3TicksCurrent"></a>
# **uniswapV3TicksCurrent**
> List&lt;UniswapV3TickDTO&gt; uniswapV3TicksCurrent()

Ticks (current)

Gets ticks.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    try {
      List<UniswapV3TickDTO> result = apiInstance.uniswapV3TicksCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3TicksCurrent");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;UniswapV3TickDTO&gt;**](UniswapV3TickDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3TokenHourDatasCurrent"></a>
# **uniswapV3TokenHourDatasCurrent**
> List&lt;UniswapV3TokenHourDataDTO&gt; uniswapV3TokenHourDatasCurrent()

TokenHourDatas (current)

Gets tokenHourDatas.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    try {
      List<UniswapV3TokenHourDataDTO> result = apiInstance.uniswapV3TokenHourDatasCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3TokenHourDatasCurrent");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;UniswapV3TokenHourDataDTO&gt;**](UniswapV3TokenHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3TokenV3DayDatasCurrent"></a>
# **uniswapV3TokenV3DayDatasCurrent**
> List&lt;UniswapV3TokenV3DayDataDTO&gt; uniswapV3TokenV3DayDatasCurrent()

TokenV3DayDatas (current)

Gets tokenV3DayDatas.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    try {
      List<UniswapV3TokenV3DayDataDTO> result = apiInstance.uniswapV3TokenV3DayDatasCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3TokenV3DayDatasCurrent");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;UniswapV3TokenV3DayDataDTO&gt;**](UniswapV3TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3TokensCurrent"></a>
# **uniswapV3TokensCurrent**
> List&lt;UniswapV3TokenDTO&gt; uniswapV3TokensCurrent()

Tokens (current)

Gets tokens.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    try {
      List<UniswapV3TokenDTO> result = apiInstance.uniswapV3TokensCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3TokensCurrent");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;UniswapV3TokenDTO&gt;**](UniswapV3TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3TransactionsCurrent"></a>
# **uniswapV3TransactionsCurrent**
> List&lt;UniswapV3TransactionDTO&gt; uniswapV3TransactionsCurrent()

Transactions (current)

Gets transactions.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    try {
      List<UniswapV3TransactionDTO> result = apiInstance.uniswapV3TransactionsCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3TransactionsCurrent");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;UniswapV3TransactionDTO&gt;**](UniswapV3TransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3UniswapDayDatasCurrent"></a>
# **uniswapV3UniswapDayDatasCurrent**
> List&lt;UniswapV3UniswapDayDataDTO&gt; uniswapV3UniswapDayDatasCurrent()

UniswapDayDatas (current)

Gets uniswapDayDatas.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV3Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV3Api apiInstance = new UniswapV3Api(defaultClient);
    try {
      List<UniswapV3UniswapDayDataDTO> result = apiInstance.uniswapV3UniswapDayDatasCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3UniswapDayDatasCurrent");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;UniswapV3UniswapDayDataDTO&gt;**](UniswapV3UniswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

