# SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**curveGetExchangesCurrent**](SushiswapApi.md#curveGetExchangesCurrent) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥 |
| [**dexGetTradesCurrent**](SushiswapApi.md#dexGetTradesCurrent) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥 |
| [**sushiswapGetBundleDTOsHistorical**](SushiswapApi.md#sushiswapGetBundleDTOsHistorical) | **GET** /dapps/sushiswap/BundleDTOs/historical | BundleDTOs (historical) 🔥 |
| [**sushiswapGetBundlesHistorical**](SushiswapApi.md#sushiswapGetBundlesHistorical) | **GET** /dapps/sushiswap/bundles/historical | Bundles (historical) |
| [**sushiswapGetBurnDTOsHistorical**](SushiswapApi.md#sushiswapGetBurnDTOsHistorical) | **GET** /dapps/sushiswap/BurnDTOs/historical | BurnDTOs (historical) 🔥 |
| [**sushiswapGetBurnsHistorical**](SushiswapApi.md#sushiswapGetBurnsHistorical) | **GET** /dapps/sushiswap/burns/historical | Burns (historical) |
| [**sushiswapGetDayDataDTOsHistorical**](SushiswapApi.md#sushiswapGetDayDataDTOsHistorical) | **GET** /dapps/sushiswap/DayDataDTOs/historical | DayDataDTOs (historical) 🔥 |
| [**sushiswapGetDayDataHistorical**](SushiswapApi.md#sushiswapGetDayDataHistorical) | **GET** /dapps/sushiswap/dayData/historical | DayData (historical) |
| [**sushiswapGetFactoryDTOsHistorical**](SushiswapApi.md#sushiswapGetFactoryDTOsHistorical) | **GET** /dapps/sushiswap/FactoryDTOs/historical | FactoryDTOs (historical) 🔥 |
| [**sushiswapGetFactoryHistorical**](SushiswapApi.md#sushiswapGetFactoryHistorical) | **GET** /dapps/sushiswap/factory/historical | Factory (historical) |
| [**sushiswapGetHourDataDTOsHistorical**](SushiswapApi.md#sushiswapGetHourDataDTOsHistorical) | **GET** /dapps/sushiswap/HourDataDTOs/historical | HourDataDTOs (historical) 🔥 |
| [**sushiswapGetHourDataHistorical**](SushiswapApi.md#sushiswapGetHourDataHistorical) | **GET** /dapps/sushiswap/hourData/historical | HourData (historical) |
| [**sushiswapGetLiquidityPositionDTOsHistorical**](SushiswapApi.md#sushiswapGetLiquidityPositionDTOsHistorical) | **GET** /dapps/sushiswap/LiquidityPositionDTOs/historical | LiquidityPositionDTOs (historical) 🔥 |
| [**sushiswapGetLiquidityPositionHistorical**](SushiswapApi.md#sushiswapGetLiquidityPositionHistorical) | **GET** /dapps/sushiswap/liquidityPosition/historical | LiquidityPosition (historical) |
| [**sushiswapGetLiquidityPositionSnapshotDTOsHistorical**](SushiswapApi.md#sushiswapGetLiquidityPositionSnapshotDTOsHistorical) | **GET** /dapps/sushiswap/LiquidityPositionSnapshotDTOs/historical | LiquidityPositionSnapshotDTOs (historical) 🔥 |
| [**sushiswapGetLiquidityPositionSnapshotHistorical**](SushiswapApi.md#sushiswapGetLiquidityPositionSnapshotHistorical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | LiquidityPositionSnapshot (historical) |
| [**sushiswapGetMintDTOsHistorical**](SushiswapApi.md#sushiswapGetMintDTOsHistorical) | **GET** /dapps/sushiswap/MintDTOs/historical | MintDTOs (historical) 🔥 |
| [**sushiswapGetMintsHistorical**](SushiswapApi.md#sushiswapGetMintsHistorical) | **GET** /dapps/sushiswap/mints/historical | Mints (historical) |
| [**sushiswapGetPairDTOsHistorical**](SushiswapApi.md#sushiswapGetPairDTOsHistorical) | **GET** /dapps/sushiswap/PairDTOs/historical | PairDTOs (historical) 🔥 |
| [**sushiswapGetPairDayDataDTOsHistorical**](SushiswapApi.md#sushiswapGetPairDayDataDTOsHistorical) | **GET** /dapps/sushiswap/PairDayDataDTOs/historical | PairDayDataDTOs (historical) 🔥 |
| [**sushiswapGetPairHourDataDTOsHistorical**](SushiswapApi.md#sushiswapGetPairHourDataDTOsHistorical) | **GET** /dapps/sushiswap/PairHourDataDTOs/historical | PairHourDataDTOs (historical) 🔥 |
| [**sushiswapGetPoolsCurrent**](SushiswapApi.md#sushiswapGetPoolsCurrent) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥 |
| [**sushiswapGetPoolsDayDataHistorical**](SushiswapApi.md#sushiswapGetPoolsDayDataHistorical) | **GET** /dapps/sushiswap/poolsDayData/historical | PoolsDayData (historical) |
| [**sushiswapGetPoolsHistorical**](SushiswapApi.md#sushiswapGetPoolsHistorical) | **GET** /dapps/sushiswap/pools/historical | Pools (historical) 🔥 |
| [**sushiswapGetPoolsHourDataHistorical**](SushiswapApi.md#sushiswapGetPoolsHourDataHistorical) | **GET** /dapps/sushiswap/poolsHourData/historical | PoolsHourData (historical) |
| [**sushiswapGetSwapDTOsHistorical**](SushiswapApi.md#sushiswapGetSwapDTOsHistorical) | **GET** /dapps/sushiswap/SwapDTOs/historical | SwapDTOs (historical) 🔥 |
| [**sushiswapGetSwapsCurrent**](SushiswapApi.md#sushiswapGetSwapsCurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) 🔥 |
| [**sushiswapGetSwapsHistorical**](SushiswapApi.md#sushiswapGetSwapsHistorical) | **GET** /dapps/sushiswap/swaps/historical | Swaps (historical) 🔥 |
| [**sushiswapGetTokenDTOsHistorical**](SushiswapApi.md#sushiswapGetTokenDTOsHistorical) | **GET** /dapps/sushiswap/TokenDTOs/historical | TokenDTOs (historical) 🔥 |
| [**sushiswapGetTokenDayDataDTOsHistorical**](SushiswapApi.md#sushiswapGetTokenDayDataDTOsHistorical) | **GET** /dapps/sushiswap/TokenDayDataDTOs/historical | TokenDayDataDTOs (historical) 🔥 |
| [**sushiswapGetTokensCurrent**](SushiswapApi.md#sushiswapGetTokensCurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) 🔥 |
| [**sushiswapGetTokensDayDataHistorical**](SushiswapApi.md#sushiswapGetTokensDayDataHistorical) | **GET** /dapps/sushiswap/tokensDayData/historical | TokensDayData (historical) |
| [**sushiswapGetTokensHistorical**](SushiswapApi.md#sushiswapGetTokensHistorical) | **GET** /dapps/sushiswap/tokens/historical | Tokens (historical) 🔥 |
| [**sushiswapGetTransactionDTOsHistorical**](SushiswapApi.md#sushiswapGetTransactionDTOsHistorical) | **GET** /dapps/sushiswap/TransactionDTOs/historical | TransactionDTOs (historical) 🔥 |
| [**sushiswapGetTransactionsHistorical**](SushiswapApi.md#sushiswapGetTransactionsHistorical) | **GET** /dapps/sushiswap/transactions/historical | Transactions (historical) |
| [**sushiswapGetUserDTOsHistorical**](SushiswapApi.md#sushiswapGetUserDTOsHistorical) | **GET** /dapps/sushiswap/UserDTOs/historical | UserDTOs (historical) 🔥 |
| [**sushiswapGetUsersHistorical**](SushiswapApi.md#sushiswapGetUsersHistorical) | **GET** /dapps/sushiswap/users/historical | Users (historical) |


<a name="curveGetExchangesCurrent"></a>
# **curveGetExchangesCurrent**
> List&lt;CurveExchangeDTO&gt; curveGetExchangesCurrent()

Exchanges (current) 🔥

Gets exchanges.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    try {
      List<CurveExchangeDTO> result = apiInstance.curveGetExchangesCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#curveGetExchangesCurrent");
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

[**List&lt;CurveExchangeDTO&gt;**](CurveExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="dexGetTradesCurrent"></a>
# **dexGetTradesCurrent**
> List&lt;DexTradeDTO&gt; dexGetTradesCurrent()

Trades (current) 🔥

Gets trades.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    try {
      List<DexTradeDTO> result = apiInstance.dexGetTradesCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#dexGetTradesCurrent");
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

[**List&lt;DexTradeDTO&gt;**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetBundleDTOsHistorical"></a>
# **sushiswapGetBundleDTOsHistorical**
> List&lt;SushiswapBundleDTO&gt; sushiswapGetBundleDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

BundleDTOs (historical) 🔥

Gets BundleDTOs.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      List<SushiswapBundleDTO> result = apiInstance.sushiswapGetBundleDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetBundleDTOsHistorical");
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
| **poolId** | **String**|  | [optional] |

### Return type

[**List&lt;SushiswapBundleDTO&gt;**](SushiswapBundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetBundlesHistorical"></a>
# **sushiswapGetBundlesHistorical**
> List&lt;SushiswapBundleDTO&gt; sushiswapGetBundlesHistorical(startBlock, endBlock, startDate, endDate)

Bundles (historical)

Gets bundles.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | AAAAAAAAAA
    Long endBlock = 56L; // Long | BBBBBBBBBBBB
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | CCCCCCCCC
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | DDDDDDDDDDD
    try {
      List<SushiswapBundleDTO> result = apiInstance.sushiswapGetBundlesHistorical(startBlock, endBlock, startDate, endDate);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetBundlesHistorical");
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
| **startBlock** | **Long**| AAAAAAAAAA | [optional] |
| **endBlock** | **Long**| BBBBBBBBBBBB | [optional] |
| **startDate** | **OffsetDateTime**| CCCCCCCCC | [optional] |
| **endDate** | **OffsetDateTime**| DDDDDDDDDDD | [optional] |

### Return type

[**List&lt;SushiswapBundleDTO&gt;**](SushiswapBundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetBurnDTOsHistorical"></a>
# **sushiswapGetBurnDTOsHistorical**
> List&lt;SushiswapBurnDTO&gt; sushiswapGetBurnDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

BurnDTOs (historical) 🔥

Gets BurnDTOs.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      List<SushiswapBurnDTO> result = apiInstance.sushiswapGetBurnDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetBurnDTOsHistorical");
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
| **poolId** | **String**|  | [optional] |

### Return type

[**List&lt;SushiswapBurnDTO&gt;**](SushiswapBurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetBurnsHistorical"></a>
# **sushiswapGetBurnsHistorical**
> List&lt;SushiswapBurnDTO&gt; sushiswapGetBurnsHistorical(startBlock, endBlock, startDate, endDate, poolId)

Burns (historical)

Gets burns.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      List<SushiswapBurnDTO> result = apiInstance.sushiswapGetBurnsHistorical(startBlock, endBlock, startDate, endDate, poolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetBurnsHistorical");
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
| **poolId** | **String**|  | [optional] |

### Return type

[**List&lt;SushiswapBurnDTO&gt;**](SushiswapBurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetDayDataDTOsHistorical"></a>
# **sushiswapGetDayDataDTOsHistorical**
> List&lt;SushiswapDayDataDTO&gt; sushiswapGetDayDataDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

DayDataDTOs (historical) 🔥

Gets DayDataDTOs.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      List<SushiswapDayDataDTO> result = apiInstance.sushiswapGetDayDataDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetDayDataDTOsHistorical");
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
| **poolId** | **String**|  | [optional] |

### Return type

[**List&lt;SushiswapDayDataDTO&gt;**](SushiswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetDayDataHistorical"></a>
# **sushiswapGetDayDataHistorical**
> List&lt;SushiswapDayDataDTO&gt; sushiswapGetDayDataHistorical(startBlock, endBlock, startDate, endDate)

DayData (historical)

Gets day data.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    try {
      List<SushiswapDayDataDTO> result = apiInstance.sushiswapGetDayDataHistorical(startBlock, endBlock, startDate, endDate);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetDayDataHistorical");
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

### Return type

[**List&lt;SushiswapDayDataDTO&gt;**](SushiswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetFactoryDTOsHistorical"></a>
# **sushiswapGetFactoryDTOsHistorical**
> List&lt;SushiswapFactoryDTO&gt; sushiswapGetFactoryDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

FactoryDTOs (historical) 🔥

Gets FactoryDTOs.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      List<SushiswapFactoryDTO> result = apiInstance.sushiswapGetFactoryDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetFactoryDTOsHistorical");
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
| **poolId** | **String**|  | [optional] |

### Return type

[**List&lt;SushiswapFactoryDTO&gt;**](SushiswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetFactoryHistorical"></a>
# **sushiswapGetFactoryHistorical**
> List&lt;SushiswapFactoryDTO&gt; sushiswapGetFactoryHistorical(startBlock, endBlock, startDate, endDate)

Factory (historical)

Gets factory.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    try {
      List<SushiswapFactoryDTO> result = apiInstance.sushiswapGetFactoryHistorical(startBlock, endBlock, startDate, endDate);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetFactoryHistorical");
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

### Return type

[**List&lt;SushiswapFactoryDTO&gt;**](SushiswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetHourDataDTOsHistorical"></a>
# **sushiswapGetHourDataDTOsHistorical**
> List&lt;SushiswapHourDataDTO&gt; sushiswapGetHourDataDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

HourDataDTOs (historical) 🔥

Gets HourDataDTOs.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      List<SushiswapHourDataDTO> result = apiInstance.sushiswapGetHourDataDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetHourDataDTOsHistorical");
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
| **poolId** | **String**|  | [optional] |

### Return type

[**List&lt;SushiswapHourDataDTO&gt;**](SushiswapHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetHourDataHistorical"></a>
# **sushiswapGetHourDataHistorical**
> List&lt;SushiswapHourDataDTO&gt; sushiswapGetHourDataHistorical(startBlock, endBlock, startDate, endDate)

HourData (historical)

Gets hour data.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    try {
      List<SushiswapHourDataDTO> result = apiInstance.sushiswapGetHourDataHistorical(startBlock, endBlock, startDate, endDate);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetHourDataHistorical");
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

### Return type

[**List&lt;SushiswapHourDataDTO&gt;**](SushiswapHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetLiquidityPositionDTOsHistorical"></a>
# **sushiswapGetLiquidityPositionDTOsHistorical**
> List&lt;SushiswapLiquidityPositionDTO&gt; sushiswapGetLiquidityPositionDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

LiquidityPositionDTOs (historical) 🔥

Gets LiquidityPositionDTOs.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      List<SushiswapLiquidityPositionDTO> result = apiInstance.sushiswapGetLiquidityPositionDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetLiquidityPositionDTOsHistorical");
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
| **poolId** | **String**|  | [optional] |

### Return type

[**List&lt;SushiswapLiquidityPositionDTO&gt;**](SushiswapLiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetLiquidityPositionHistorical"></a>
# **sushiswapGetLiquidityPositionHistorical**
> List&lt;SushiswapLiquidityPositionDTO&gt; sushiswapGetLiquidityPositionHistorical(startBlock, endBlock, startDate, endDate, poolId)

LiquidityPosition (historical)

Gets liquidity position.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      List<SushiswapLiquidityPositionDTO> result = apiInstance.sushiswapGetLiquidityPositionHistorical(startBlock, endBlock, startDate, endDate, poolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetLiquidityPositionHistorical");
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
| **poolId** | **String**|  | [optional] |

### Return type

[**List&lt;SushiswapLiquidityPositionDTO&gt;**](SushiswapLiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetLiquidityPositionSnapshotDTOsHistorical"></a>
# **sushiswapGetLiquidityPositionSnapshotDTOsHistorical**
> List&lt;SushiswapLiquidityPositionSnapshotDTO&gt; sushiswapGetLiquidityPositionSnapshotDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

LiquidityPositionSnapshotDTOs (historical) 🔥

Gets LiquidityPositionSnapshotDTOs.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      List<SushiswapLiquidityPositionSnapshotDTO> result = apiInstance.sushiswapGetLiquidityPositionSnapshotDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetLiquidityPositionSnapshotDTOsHistorical");
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
| **poolId** | **String**|  | [optional] |

### Return type

[**List&lt;SushiswapLiquidityPositionSnapshotDTO&gt;**](SushiswapLiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetLiquidityPositionSnapshotHistorical"></a>
# **sushiswapGetLiquidityPositionSnapshotHistorical**
> List&lt;SushiswapLiquidityPositionSnapshotDTO&gt; sushiswapGetLiquidityPositionSnapshotHistorical(startBlock, endBlock, startDate, endDate, poolId)

LiquidityPositionSnapshot (historical)

Gets liquidity position snapshot.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      List<SushiswapLiquidityPositionSnapshotDTO> result = apiInstance.sushiswapGetLiquidityPositionSnapshotHistorical(startBlock, endBlock, startDate, endDate, poolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetLiquidityPositionSnapshotHistorical");
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
| **poolId** | **String**|  | [optional] |

### Return type

[**List&lt;SushiswapLiquidityPositionSnapshotDTO&gt;**](SushiswapLiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetMintDTOsHistorical"></a>
# **sushiswapGetMintDTOsHistorical**
> List&lt;SushiswapMintDTO&gt; sushiswapGetMintDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

MintDTOs (historical) 🔥

Gets MintDTOs.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      List<SushiswapMintDTO> result = apiInstance.sushiswapGetMintDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetMintDTOsHistorical");
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
| **poolId** | **String**|  | [optional] |

### Return type

[**List&lt;SushiswapMintDTO&gt;**](SushiswapMintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetMintsHistorical"></a>
# **sushiswapGetMintsHistorical**
> List&lt;SushiswapMintDTO&gt; sushiswapGetMintsHistorical(startBlock, endBlock, startDate, endDate, poolId)

Mints (historical)

Gets mints.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      List<SushiswapMintDTO> result = apiInstance.sushiswapGetMintsHistorical(startBlock, endBlock, startDate, endDate, poolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetMintsHistorical");
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
| **poolId** | **String**|  | [optional] |

### Return type

[**List&lt;SushiswapMintDTO&gt;**](SushiswapMintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetPairDTOsHistorical"></a>
# **sushiswapGetPairDTOsHistorical**
> List&lt;SushiswapPairDTO&gt; sushiswapGetPairDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

PairDTOs (historical) 🔥

Gets PairDTOs.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      List<SushiswapPairDTO> result = apiInstance.sushiswapGetPairDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetPairDTOsHistorical");
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
| **poolId** | **String**|  | [optional] |

### Return type

[**List&lt;SushiswapPairDTO&gt;**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetPairDayDataDTOsHistorical"></a>
# **sushiswapGetPairDayDataDTOsHistorical**
> List&lt;SushiswapPairDayDataDTO&gt; sushiswapGetPairDayDataDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

PairDayDataDTOs (historical) 🔥

Gets PairDayDataDTOs.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      List<SushiswapPairDayDataDTO> result = apiInstance.sushiswapGetPairDayDataDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetPairDayDataDTOsHistorical");
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
| **poolId** | **String**|  | [optional] |

### Return type

[**List&lt;SushiswapPairDayDataDTO&gt;**](SushiswapPairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetPairHourDataDTOsHistorical"></a>
# **sushiswapGetPairHourDataDTOsHistorical**
> List&lt;SushiswapPairHourDataDTO&gt; sushiswapGetPairHourDataDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

PairHourDataDTOs (historical) 🔥

Gets PairHourDataDTOs.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      List<SushiswapPairHourDataDTO> result = apiInstance.sushiswapGetPairHourDataDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetPairHourDataDTOsHistorical");
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
| **poolId** | **String**|  | [optional] |

### Return type

[**List&lt;SushiswapPairHourDataDTO&gt;**](SushiswapPairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetPoolsCurrent"></a>
# **sushiswapGetPoolsCurrent**
> List&lt;SushiswapPairDTO&gt; sushiswapGetPoolsCurrent()

Pools (current) 🔥

Gets pools.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    try {
      List<SushiswapPairDTO> result = apiInstance.sushiswapGetPoolsCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetPoolsCurrent");
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

[**List&lt;SushiswapPairDTO&gt;**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetPoolsDayDataHistorical"></a>
# **sushiswapGetPoolsDayDataHistorical**
> List&lt;SushiswapPairDayDataDTO&gt; sushiswapGetPoolsDayDataHistorical(startBlock, endBlock, startDate, endDate, poolId)

PoolsDayData (historical)

Gets pools day data.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      List<SushiswapPairDayDataDTO> result = apiInstance.sushiswapGetPoolsDayDataHistorical(startBlock, endBlock, startDate, endDate, poolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetPoolsDayDataHistorical");
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
| **poolId** | **String**|  | [optional] |

### Return type

[**List&lt;SushiswapPairDayDataDTO&gt;**](SushiswapPairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetPoolsHistorical"></a>
# **sushiswapGetPoolsHistorical**
> List&lt;SushiswapPairDTO&gt; sushiswapGetPoolsHistorical(startBlock, endBlock, startDate, endDate, poolId)

Pools (historical) 🔥

Gets list of pools for given filters.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe
    String poolId = "poolId_example"; // String | The pool address.
    try {
      List<SushiswapPairDTO> result = apiInstance.sushiswapGetPoolsHistorical(startBlock, endBlock, startDate, endDate, poolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetPoolsHistorical");
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
| **endDate** | **OffsetDateTime**| The end date of timeframe | [optional] |
| **poolId** | **String**| The pool address. | [optional] |

### Return type

[**List&lt;SushiswapPairDTO&gt;**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetPoolsHourDataHistorical"></a>
# **sushiswapGetPoolsHourDataHistorical**
> List&lt;SushiswapPairHourDataDTO&gt; sushiswapGetPoolsHourDataHistorical(startBlock, endBlock, startDate, endDate, poolId)

PoolsHourData (historical)

Gets pools tracked each our.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      List<SushiswapPairHourDataDTO> result = apiInstance.sushiswapGetPoolsHourDataHistorical(startBlock, endBlock, startDate, endDate, poolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetPoolsHourDataHistorical");
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
| **poolId** | **String**|  | [optional] |

### Return type

[**List&lt;SushiswapPairHourDataDTO&gt;**](SushiswapPairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetSwapDTOsHistorical"></a>
# **sushiswapGetSwapDTOsHistorical**
> List&lt;SushiswapSwapDTO&gt; sushiswapGetSwapDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

SwapDTOs (historical) 🔥

Gets SwapDTOs.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      List<SushiswapSwapDTO> result = apiInstance.sushiswapGetSwapDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetSwapDTOsHistorical");
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
| **poolId** | **String**|  | [optional] |

### Return type

[**List&lt;SushiswapSwapDTO&gt;**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetSwapsCurrent"></a>
# **sushiswapGetSwapsCurrent**
> List&lt;SushiswapSwapDTO&gt; sushiswapGetSwapsCurrent()

Swaps (current) 🔥

Gets swaps.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    try {
      List<SushiswapSwapDTO> result = apiInstance.sushiswapGetSwapsCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetSwapsCurrent");
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

[**List&lt;SushiswapSwapDTO&gt;**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetSwapsHistorical"></a>
# **sushiswapGetSwapsHistorical**
> List&lt;SushiswapSwapDTO&gt; sushiswapGetSwapsHistorical(startBlock, endBlock, startDate, endDate, poolId)

Swaps (historical) 🔥

Gets list of swaps for given filters.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe
    String poolId = "poolId_example"; // String | The pool address.
    try {
      List<SushiswapSwapDTO> result = apiInstance.sushiswapGetSwapsHistorical(startBlock, endBlock, startDate, endDate, poolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetSwapsHistorical");
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
| **endDate** | **OffsetDateTime**| The end date of timeframe | [optional] |
| **poolId** | **String**| The pool address. | [optional] |

### Return type

[**List&lt;SushiswapSwapDTO&gt;**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetTokenDTOsHistorical"></a>
# **sushiswapGetTokenDTOsHistorical**
> List&lt;SushiswapTokenDTO&gt; sushiswapGetTokenDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TokenDTOs (historical) 🔥

Gets TokenDTOs.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      List<SushiswapTokenDTO> result = apiInstance.sushiswapGetTokenDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetTokenDTOsHistorical");
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
| **poolId** | **String**|  | [optional] |

### Return type

[**List&lt;SushiswapTokenDTO&gt;**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetTokenDayDataDTOsHistorical"></a>
# **sushiswapGetTokenDayDataDTOsHistorical**
> List&lt;SushiswapTokenDayDataDTO&gt; sushiswapGetTokenDayDataDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TokenDayDataDTOs (historical) 🔥

Gets TokenDayDataDTOs.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      List<SushiswapTokenDayDataDTO> result = apiInstance.sushiswapGetTokenDayDataDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetTokenDayDataDTOsHistorical");
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
| **poolId** | **String**|  | [optional] |

### Return type

[**List&lt;SushiswapTokenDayDataDTO&gt;**](SushiswapTokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetTokensCurrent"></a>
# **sushiswapGetTokensCurrent**
> List&lt;SushiswapTokenDTO&gt; sushiswapGetTokensCurrent()

Tokens (current) 🔥

Gets tokens.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    try {
      List<SushiswapTokenDTO> result = apiInstance.sushiswapGetTokensCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetTokensCurrent");
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

[**List&lt;SushiswapTokenDTO&gt;**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetTokensDayDataHistorical"></a>
# **sushiswapGetTokensDayDataHistorical**
> List&lt;SushiswapTokenDayDataDTO&gt; sushiswapGetTokensDayDataHistorical(startBlock, endBlock, startDate, endDate, tokenId)

TokensDayData (historical)

Gets tokens day data.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String tokenId = "tokenId_example"; // String | 
    try {
      List<SushiswapTokenDayDataDTO> result = apiInstance.sushiswapGetTokensDayDataHistorical(startBlock, endBlock, startDate, endDate, tokenId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetTokensDayDataHistorical");
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
| **tokenId** | **String**|  | [optional] |

### Return type

[**List&lt;SushiswapTokenDayDataDTO&gt;**](SushiswapTokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetTokensHistorical"></a>
# **sushiswapGetTokensHistorical**
> List&lt;SushiswapTokenDTO&gt; sushiswapGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Tokens (historical) 🔥

Gets list of tokens for given filters.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
    Long endBlock = 56L; // Long | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | The end date of timeframe
    String tokenId = "tokenId_example"; // String | The token address.
    try {
      List<SushiswapTokenDTO> result = apiInstance.sushiswapGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetTokensHistorical");
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
| **endDate** | **OffsetDateTime**| The end date of timeframe | [optional] |
| **tokenId** | **String**| The token address. | [optional] |

### Return type

[**List&lt;SushiswapTokenDTO&gt;**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetTransactionDTOsHistorical"></a>
# **sushiswapGetTransactionDTOsHistorical**
> List&lt;SushiswapTransactionDTO&gt; sushiswapGetTransactionDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TransactionDTOs (historical) 🔥

Gets TransactionDTOs.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      List<SushiswapTransactionDTO> result = apiInstance.sushiswapGetTransactionDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetTransactionDTOsHistorical");
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
| **poolId** | **String**|  | [optional] |

### Return type

[**List&lt;SushiswapTransactionDTO&gt;**](SushiswapTransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetTransactionsHistorical"></a>
# **sushiswapGetTransactionsHistorical**
> List&lt;SushiswapTransactionDTO&gt; sushiswapGetTransactionsHistorical(startBlock, endBlock, startDate, endDate)

Transactions (historical)

Gets transactions.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    try {
      List<SushiswapTransactionDTO> result = apiInstance.sushiswapGetTransactionsHistorical(startBlock, endBlock, startDate, endDate);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetTransactionsHistorical");
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

### Return type

[**List&lt;SushiswapTransactionDTO&gt;**](SushiswapTransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetUserDTOsHistorical"></a>
# **sushiswapGetUserDTOsHistorical**
> List&lt;SushiswapUserDTO&gt; sushiswapGetUserDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

UserDTOs (historical) 🔥

Gets UserDTOs.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      List<SushiswapUserDTO> result = apiInstance.sushiswapGetUserDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetUserDTOsHistorical");
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
| **poolId** | **String**|  | [optional] |

### Return type

[**List&lt;SushiswapUserDTO&gt;**](SushiswapUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="sushiswapGetUsersHistorical"></a>
# **sushiswapGetUsersHistorical**
> List&lt;SushiswapUserDTO&gt; sushiswapGetUsersHistorical(startBlock, endBlock, startDate, endDate)

Users (historical)

Gets users.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    try {
      List<SushiswapUserDTO> result = apiInstance.sushiswapGetUsersHistorical(startBlock, endBlock, startDate, endDate);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#sushiswapGetUsersHistorical");
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

### Return type

[**List&lt;SushiswapUserDTO&gt;**](SushiswapUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

