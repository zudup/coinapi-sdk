# UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**uniswapV2GetBundleV2sHistorical**](UniswapV2Api.md#uniswapV2GetBundleV2sHistorical) | **GET** /dapps/uniswapv2/bundlev2s/historical | BundleV2s (historical) 🔥 |
| [**uniswapV2GetBurnV2sHistorical**](UniswapV2Api.md#uniswapV2GetBurnV2sHistorical) | **GET** /dapps/uniswapv2/burnv2s/historical | BurnV2s (historical) 🔥 |
| [**uniswapV2GetLiquidityPositionSnapshotV2sHistorical**](UniswapV2Api.md#uniswapV2GetLiquidityPositionSnapshotV2sHistorical) | **GET** /dapps/uniswapv2/liquiditypositionsnapshotv2s/historical | LiquidityPositionSnapshotV2s (historical) 🔥 |
| [**uniswapV2GetLiquidityPositionV2sHistorical**](UniswapV2Api.md#uniswapV2GetLiquidityPositionV2sHistorical) | **GET** /dapps/uniswapv2/liquiditypositionv2s/historical | LiquidityPositionV2s (historical) 🔥 |
| [**uniswapV2GetMintV2sHistorical**](UniswapV2Api.md#uniswapV2GetMintV2sHistorical) | **GET** /dapps/uniswapv2/mintv2s/historical | MintV2s (historical) 🔥 |
| [**uniswapV2GetPairDayDataV2sHistorical**](UniswapV2Api.md#uniswapV2GetPairDayDataV2sHistorical) | **GET** /dapps/uniswapv2/pairdaydatav2s/historical | PairDayDataV2s (historical) 🔥 |
| [**uniswapV2GetPairHourDataV2sHistorical**](UniswapV2Api.md#uniswapV2GetPairHourDataV2sHistorical) | **GET** /dapps/uniswapv2/pairhourdatav2s/historical | PairHourDataV2s (historical) 🔥 |
| [**uniswapV2GetPairV2sHistorical**](UniswapV2Api.md#uniswapV2GetPairV2sHistorical) | **GET** /dapps/uniswapv2/pairv2s/historical | PairV2s (historical) 🔥 |
| [**uniswapV2GetPoolsCurrent**](UniswapV2Api.md#uniswapV2GetPoolsCurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥 |
| [**uniswapV2GetSwapV2sHistorical**](UniswapV2Api.md#uniswapV2GetSwapV2sHistorical) | **GET** /dapps/uniswapv2/swapv2s/historical | SwapV2s (historical) 🔥 |
| [**uniswapV2GetSwapsCurrent**](UniswapV2Api.md#uniswapV2GetSwapsCurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥 |
| [**uniswapV2GetTokenDayDataV2sHistorical**](UniswapV2Api.md#uniswapV2GetTokenDayDataV2sHistorical) | **GET** /dapps/uniswapv2/tokendaydatav2s/historical | TokenDayDataV2s (historical) 🔥 |
| [**uniswapV2GetTokenV2sHistorical**](UniswapV2Api.md#uniswapV2GetTokenV2sHistorical) | **GET** /dapps/uniswapv2/tokenv2s/historical | TokenV2s (historical) 🔥 |
| [**uniswapV2GetTokensCurrent**](UniswapV2Api.md#uniswapV2GetTokensCurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥 |
| [**uniswapV2GetTransactionV2sHistorical**](UniswapV2Api.md#uniswapV2GetTransactionV2sHistorical) | **GET** /dapps/uniswapv2/transactionv2s/historical | TransactionV2s (historical) 🔥 |
| [**uniswapV2GetUniswapDayDataV2sHistorical**](UniswapV2Api.md#uniswapV2GetUniswapDayDataV2sHistorical) | **GET** /dapps/uniswapv2/uniswapdaydatav2s/historical | UniswapDayDataV2s (historical) 🔥 |
| [**uniswapV2GetUniswapFactoryV2sHistorical**](UniswapV2Api.md#uniswapV2GetUniswapFactoryV2sHistorical) | **GET** /dapps/uniswapv2/uniswapfactoryv2s/historical | UniswapFactoryV2s (historical) 🔥 |
| [**uniswapV2GetUserV2sHistorical**](UniswapV2Api.md#uniswapV2GetUserV2sHistorical) | **GET** /dapps/uniswapv2/userv2s/historical | UserV2s (historical) 🔥 |


<a name="uniswapV2GetBundleV2sHistorical"></a>
# **uniswapV2GetBundleV2sHistorical**
> List&lt;UniswapV2BundleV2DTO&gt; uniswapV2GetBundleV2sHistorical(startBlock, endBlock, startDate, endDate, id)

BundleV2s (historical) 🔥

Gets bundlev2s.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV2Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV2Api apiInstance = new UniswapV2Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | Constant 1.
    try {
      List<UniswapV2BundleV2DTO> result = apiInstance.uniswapV2GetBundleV2sHistorical(startBlock, endBlock, startDate, endDate, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV2Api#uniswapV2GetBundleV2sHistorical");
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
| **id** | **String**| Constant 1. | [optional] |

### Return type

[**List&lt;UniswapV2BundleV2DTO&gt;**](UniswapV2BundleV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV2GetBurnV2sHistorical"></a>
# **uniswapV2GetBurnV2sHistorical**
> List&lt;UniswapV2BurnV2DTO&gt; uniswapV2GetBurnV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair)

BurnV2s (historical) 🔥

Gets burnv2s.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV2Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV2Api apiInstance = new UniswapV2Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | Transaction hash plus index in the transaction burn array
    String pair = "pair_example"; // String | Reference to pair.
    try {
      List<UniswapV2BurnV2DTO> result = apiInstance.uniswapV2GetBurnV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV2Api#uniswapV2GetBurnV2sHistorical");
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
| **id** | **String**| Transaction hash plus index in the transaction burn array | [optional] |
| **pair** | **String**| Reference to pair. | [optional] |

### Return type

[**List&lt;UniswapV2BurnV2DTO&gt;**](UniswapV2BurnV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV2GetLiquidityPositionSnapshotV2sHistorical"></a>
# **uniswapV2GetLiquidityPositionSnapshotV2sHistorical**
> List&lt;UniswapV2LiquidityPositionSnapshotV2DTO&gt; uniswapV2GetLiquidityPositionSnapshotV2sHistorical(startBlock, endBlock, startDate, endDate, id, user, pair)

LiquidityPositionSnapshotV2s (historical) 🔥

Gets liquiditypositionsnapshotv2s.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV2Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV2Api apiInstance = new UniswapV2Api(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String id = "id_example"; // String | 
    String user = "user_example"; // String | 
    String pair = "pair_example"; // String | 
    try {
      List<UniswapV2LiquidityPositionSnapshotV2DTO> result = apiInstance.uniswapV2GetLiquidityPositionSnapshotV2sHistorical(startBlock, endBlock, startDate, endDate, id, user, pair);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV2Api#uniswapV2GetLiquidityPositionSnapshotV2sHistorical");
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
| **user** | **String**|  | [optional] |
| **pair** | **String**|  | [optional] |

### Return type

[**List&lt;UniswapV2LiquidityPositionSnapshotV2DTO&gt;**](UniswapV2LiquidityPositionSnapshotV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV2GetLiquidityPositionV2sHistorical"></a>
# **uniswapV2GetLiquidityPositionV2sHistorical**
> List&lt;UniswapV2LiquidityPositionV2DTO&gt; uniswapV2GetLiquidityPositionV2sHistorical(startBlock, endBlock, startDate, endDate, id, user, pair)

LiquidityPositionV2s (historical) 🔥

Gets liquiditypositionv2s.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV2Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV2Api apiInstance = new UniswapV2Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | User address and pair address concatenated with a dash.
    String user = "user_example"; // String | Reference to user.
    String pair = "pair_example"; // String | Reference to the pair liquidity is being provided on.
    try {
      List<UniswapV2LiquidityPositionV2DTO> result = apiInstance.uniswapV2GetLiquidityPositionV2sHistorical(startBlock, endBlock, startDate, endDate, id, user, pair);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV2Api#uniswapV2GetLiquidityPositionV2sHistorical");
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
| **id** | **String**| User address and pair address concatenated with a dash. | [optional] |
| **user** | **String**| Reference to user. | [optional] |
| **pair** | **String**| Reference to the pair liquidity is being provided on. | [optional] |

### Return type

[**List&lt;UniswapV2LiquidityPositionV2DTO&gt;**](UniswapV2LiquidityPositionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV2GetMintV2sHistorical"></a>
# **uniswapV2GetMintV2sHistorical**
> List&lt;UniswapV2MintV2DTO&gt; uniswapV2GetMintV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair)

MintV2s (historical) 🔥

Gets mintv2s.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV2Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV2Api apiInstance = new UniswapV2Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | Transaction hash plus index in the transaction mint array.
    String pair = "pair_example"; // String | Reference to pair.
    try {
      List<UniswapV2MintV2DTO> result = apiInstance.uniswapV2GetMintV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV2Api#uniswapV2GetMintV2sHistorical");
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
| **id** | **String**| Transaction hash plus index in the transaction mint array. | [optional] |
| **pair** | **String**| Reference to pair. | [optional] |

### Return type

[**List&lt;UniswapV2MintV2DTO&gt;**](UniswapV2MintV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV2GetPairDayDataV2sHistorical"></a>
# **uniswapV2GetPairDayDataV2sHistorical**
> List&lt;UniswapV2PairDayDataV2DTO&gt; uniswapV2GetPairDayDataV2sHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1)

PairDayDataV2s (historical) 🔥

Gets pairdaydatav2s.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV2Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV2Api apiInstance = new UniswapV2Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | 
    String token0 = "token0_example"; // String | Reference to token0.
    String token1 = "token1_example"; // String | Reference to token1.
    try {
      List<UniswapV2PairDayDataV2DTO> result = apiInstance.uniswapV2GetPairDayDataV2sHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV2Api#uniswapV2GetPairDayDataV2sHistorical");
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
| **token0** | **String**| Reference to token0. | [optional] |
| **token1** | **String**| Reference to token1. | [optional] |

### Return type

[**List&lt;UniswapV2PairDayDataV2DTO&gt;**](UniswapV2PairDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV2GetPairHourDataV2sHistorical"></a>
# **uniswapV2GetPairHourDataV2sHistorical**
> List&lt;UniswapV2PairHourDataV2DTO&gt; uniswapV2GetPairHourDataV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair)

PairHourDataV2s (historical) 🔥

Gets pairhourdatav2s.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV2Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV2Api apiInstance = new UniswapV2Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | 
    String pair = "pair_example"; // String | Address for pair contract.
    try {
      List<UniswapV2PairHourDataV2DTO> result = apiInstance.uniswapV2GetPairHourDataV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV2Api#uniswapV2GetPairHourDataV2sHistorical");
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
| **pair** | **String**| Address for pair contract. | [optional] |

### Return type

[**List&lt;UniswapV2PairHourDataV2DTO&gt;**](UniswapV2PairHourDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV2GetPairV2sHistorical"></a>
# **uniswapV2GetPairV2sHistorical**
> List&lt;UniswapV2PairV2DTO&gt; uniswapV2GetPairV2sHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1)

PairV2s (historical) 🔥

Gets pairv2s.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV2Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV2Api apiInstance = new UniswapV2Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | Pair contract address.
    String token0 = "token0_example"; // String | Reference to token0 as stored in pair contract.
    String token1 = "token1_example"; // String | Reference to token1 as stored in pair contract.
    try {
      List<UniswapV2PairV2DTO> result = apiInstance.uniswapV2GetPairV2sHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV2Api#uniswapV2GetPairV2sHistorical");
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
| **id** | **String**| Pair contract address. | [optional] |
| **token0** | **String**| Reference to token0 as stored in pair contract. | [optional] |
| **token1** | **String**| Reference to token1 as stored in pair contract. | [optional] |

### Return type

[**List&lt;UniswapV2PairV2DTO&gt;**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV2GetPoolsCurrent"></a>
# **uniswapV2GetPoolsCurrent**
> List&lt;UniswapV2PairV2DTO&gt; uniswapV2GetPoolsCurrent(filterPoolId)

Pools (current) 🔥

Gets pools.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV2Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV2Api apiInstance = new UniswapV2Api(defaultClient);
    String filterPoolId = "filterPoolId_example"; // String | 
    try {
      List<UniswapV2PairV2DTO> result = apiInstance.uniswapV2GetPoolsCurrent(filterPoolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV2Api#uniswapV2GetPoolsCurrent");
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
| **filterPoolId** | **String**|  | [optional] |

### Return type

[**List&lt;UniswapV2PairV2DTO&gt;**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV2GetSwapV2sHistorical"></a>
# **uniswapV2GetSwapV2sHistorical**
> List&lt;UniswapV2SwapV2DTO&gt; uniswapV2GetSwapV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair)

SwapV2s (historical) 🔥

Gets swapv2s.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV2Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV2Api apiInstance = new UniswapV2Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | Transaction hash plus index in Transaction swap array.
    String pair = "pair_example"; // String | Reference to pair.
    try {
      List<UniswapV2SwapV2DTO> result = apiInstance.uniswapV2GetSwapV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV2Api#uniswapV2GetSwapV2sHistorical");
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
| **id** | **String**| Transaction hash plus index in Transaction swap array. | [optional] |
| **pair** | **String**| Reference to pair. | [optional] |

### Return type

[**List&lt;UniswapV2SwapV2DTO&gt;**](UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV2GetSwapsCurrent"></a>
# **uniswapV2GetSwapsCurrent**
> List&lt;UniswapV2SwapV2DTO&gt; uniswapV2GetSwapsCurrent()

Swaps (current) 🔥

Gets swaps.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV2Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV2Api apiInstance = new UniswapV2Api(defaultClient);
    try {
      List<UniswapV2SwapV2DTO> result = apiInstance.uniswapV2GetSwapsCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV2Api#uniswapV2GetSwapsCurrent");
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

[**List&lt;UniswapV2SwapV2DTO&gt;**](UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV2GetTokenDayDataV2sHistorical"></a>
# **uniswapV2GetTokenDayDataV2sHistorical**
> List&lt;UniswapV2TokenDayDataV2DTO&gt; uniswapV2GetTokenDayDataV2sHistorical(startBlock, endBlock, startDate, endDate, id)

TokenDayDataV2s (historical) 🔥

Gets tokendaydatav2s.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV2Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV2Api apiInstance = new UniswapV2Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | Token address and day id (day start timestamp in unix / 86400) concatenated with a dash.
    try {
      List<UniswapV2TokenDayDataV2DTO> result = apiInstance.uniswapV2GetTokenDayDataV2sHistorical(startBlock, endBlock, startDate, endDate, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV2Api#uniswapV2GetTokenDayDataV2sHistorical");
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
| **id** | **String**| Token address and day id (day start timestamp in unix / 86400) concatenated with a dash. | [optional] |

### Return type

[**List&lt;UniswapV2TokenDayDataV2DTO&gt;**](UniswapV2TokenDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV2GetTokenV2sHistorical"></a>
# **uniswapV2GetTokenV2sHistorical**
> List&lt;UniswapV2TokenV2DTO&gt; uniswapV2GetTokenV2sHistorical(startBlock, endBlock, startDate, endDate, id, symbol, name)

TokenV2s (historical) 🔥

Gets tokenv2s.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV2Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV2Api apiInstance = new UniswapV2Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | Token address.
    String symbol = "symbol_example"; // String | Token symbol.
    String name = "name_example"; // String | Token name.
    try {
      List<UniswapV2TokenV2DTO> result = apiInstance.uniswapV2GetTokenV2sHistorical(startBlock, endBlock, startDate, endDate, id, symbol, name);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV2Api#uniswapV2GetTokenV2sHistorical");
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

[**List&lt;UniswapV2TokenV2DTO&gt;**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV2GetTokensCurrent"></a>
# **uniswapV2GetTokensCurrent**
> List&lt;UniswapV2TokenV2DTO&gt; uniswapV2GetTokensCurrent()

Tokens (current) 🔥

Gets tokens.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV2Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV2Api apiInstance = new UniswapV2Api(defaultClient);
    try {
      List<UniswapV2TokenV2DTO> result = apiInstance.uniswapV2GetTokensCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV2Api#uniswapV2GetTokensCurrent");
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

[**List&lt;UniswapV2TokenV2DTO&gt;**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV2GetTransactionV2sHistorical"></a>
# **uniswapV2GetTransactionV2sHistorical**
> List&lt;UniswapV2TransactionV2DTO&gt; uniswapV2GetTransactionV2sHistorical(startBlock, endBlock, startDate, endDate, id)

TransactionV2s (historical) 🔥

Gets transactionv2s.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV2Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV2Api apiInstance = new UniswapV2Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | Ethereum transaction hash.
    try {
      List<UniswapV2TransactionV2DTO> result = apiInstance.uniswapV2GetTransactionV2sHistorical(startBlock, endBlock, startDate, endDate, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV2Api#uniswapV2GetTransactionV2sHistorical");
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
| **id** | **String**| Ethereum transaction hash. | [optional] |

### Return type

[**List&lt;UniswapV2TransactionV2DTO&gt;**](UniswapV2TransactionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV2GetUniswapDayDataV2sHistorical"></a>
# **uniswapV2GetUniswapDayDataV2sHistorical**
> List&lt;UniswapV2UniswapDayDataV2DTO&gt; uniswapV2GetUniswapDayDataV2sHistorical(startBlock, endBlock, startDate, endDate, id)

UniswapDayDataV2s (historical) 🔥

Gets uniswapdaydatav2s.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV2Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV2Api apiInstance = new UniswapV2Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | Unix timestamp for start of day / 86400 giving a unique day index.
    try {
      List<UniswapV2UniswapDayDataV2DTO> result = apiInstance.uniswapV2GetUniswapDayDataV2sHistorical(startBlock, endBlock, startDate, endDate, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV2Api#uniswapV2GetUniswapDayDataV2sHistorical");
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
| **id** | **String**| Unix timestamp for start of day / 86400 giving a unique day index. | [optional] |

### Return type

[**List&lt;UniswapV2UniswapDayDataV2DTO&gt;**](UniswapV2UniswapDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV2GetUniswapFactoryV2sHistorical"></a>
# **uniswapV2GetUniswapFactoryV2sHistorical**
> List&lt;UniswapV2UniswapFactoryV2DTO&gt; uniswapV2GetUniswapFactoryV2sHistorical(startBlock, endBlock, startDate, endDate, id)

UniswapFactoryV2s (historical) 🔥

Gets uniswapfactoryv2s.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV2Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV2Api apiInstance = new UniswapV2Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | Factory address.
    try {
      List<UniswapV2UniswapFactoryV2DTO> result = apiInstance.uniswapV2GetUniswapFactoryV2sHistorical(startBlock, endBlock, startDate, endDate, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV2Api#uniswapV2GetUniswapFactoryV2sHistorical");
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

[**List&lt;UniswapV2UniswapFactoryV2DTO&gt;**](UniswapV2UniswapFactoryV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV2GetUserV2sHistorical"></a>
# **uniswapV2GetUserV2sHistorical**
> List&lt;UniswapV2UserV2DTO&gt; uniswapV2GetUserV2sHistorical(startBlock, endBlock, startDate, endDate, id)

UserV2s (historical) 🔥

Gets userv2s.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV2Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV2Api apiInstance = new UniswapV2Api(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe.
    String id = "id_example"; // String | User address.
    try {
      List<UniswapV2UserV2DTO> result = apiInstance.uniswapV2GetUserV2sHistorical(startBlock, endBlock, startDate, endDate, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV2Api#uniswapV2GetUserV2sHistorical");
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
| **id** | **String**| User address. | [optional] |

### Return type

[**List&lt;UniswapV2UserV2DTO&gt;**](UniswapV2UserV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

