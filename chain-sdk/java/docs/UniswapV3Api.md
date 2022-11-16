# UniswapV3Api

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**uniswapV3GetBundlesCurrent**](UniswapV3Api.md#uniswapV3GetBundlesCurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current) |
| [**uniswapV3GetBurnsCurrent**](UniswapV3Api.md#uniswapV3GetBurnsCurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current) |
| [**uniswapV3GetDayDataCurrent**](UniswapV3Api.md#uniswapV3GetDayDataCurrent) | **GET** /dapps/uniswapv3/dayData/current | DayData (current) |
| [**uniswapV3GetFactoryCurrent**](UniswapV3Api.md#uniswapV3GetFactoryCurrent) | **GET** /dapps/uniswapv3/factory/current | Factory (current) |
| [**uniswapV3GetMintsCurrent**](UniswapV3Api.md#uniswapV3GetMintsCurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current) |
| [**uniswapV3GetPoolsCurrent**](UniswapV3Api.md#uniswapV3GetPoolsCurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current) 🔥 |
| [**uniswapV3GetPoolsDayDataCurrent**](UniswapV3Api.md#uniswapV3GetPoolsDayDataCurrent) | **GET** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current) |
| [**uniswapV3GetPoolsHourDataCurrent**](UniswapV3Api.md#uniswapV3GetPoolsHourDataCurrent) | **GET** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current) |
| [**uniswapV3GetPositionsCurrent**](UniswapV3Api.md#uniswapV3GetPositionsCurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current) |
| [**uniswapV3GetPositionsSnapshotsCurrent**](UniswapV3Api.md#uniswapV3GetPositionsSnapshotsCurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current) |
| [**uniswapV3GetSwapsCurrent**](UniswapV3Api.md#uniswapV3GetSwapsCurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥 |
| [**uniswapV3GetTicksCurrent**](UniswapV3Api.md#uniswapV3GetTicksCurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current) |
| [**uniswapV3GetTicksDayDataCurrent**](UniswapV3Api.md#uniswapV3GetTicksDayDataCurrent) | **GET** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current) |
| [**uniswapV3GetTokensCurrent**](UniswapV3Api.md#uniswapV3GetTokensCurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥 |
| [**uniswapV3GetTokensDayDataCurrent**](UniswapV3Api.md#uniswapV3GetTokensDayDataCurrent) | **GET** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current) |
| [**uniswapV3GetTokensHourDataCurrent**](UniswapV3Api.md#uniswapV3GetTokensHourDataCurrent) | **GET** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current) |


<a name="uniswapV3GetBundlesCurrent"></a>
# **uniswapV3GetBundlesCurrent**
> List&lt;UniswapV3BundleV3DTO&gt; uniswapV3GetBundlesCurrent()

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
      List<UniswapV3BundleV3DTO> result = apiInstance.uniswapV3GetBundlesCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetBundlesCurrent");
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

[**List&lt;UniswapV3BundleV3DTO&gt;**](UniswapV3BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetBurnsCurrent"></a>
# **uniswapV3GetBurnsCurrent**
> List&lt;UniswapV3BurnV3DTO&gt; uniswapV3GetBurnsCurrent(filterPoolId)

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
    String filterPoolId = "filterPoolId_example"; // String | 
    try {
      List<UniswapV3BurnV3DTO> result = apiInstance.uniswapV3GetBurnsCurrent(filterPoolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetBurnsCurrent");
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

[**List&lt;UniswapV3BurnV3DTO&gt;**](UniswapV3BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetDayDataCurrent"></a>
# **uniswapV3GetDayDataCurrent**
> List&lt;UniswapV3UniswapDayDataV3DTO&gt; uniswapV3GetDayDataCurrent()

DayData (current)

Gets uniswapv3 day data.

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
      List<UniswapV3UniswapDayDataV3DTO> result = apiInstance.uniswapV3GetDayDataCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetDayDataCurrent");
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

[**List&lt;UniswapV3UniswapDayDataV3DTO&gt;**](UniswapV3UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetFactoryCurrent"></a>
# **uniswapV3GetFactoryCurrent**
> List&lt;UniswapV3FactoryV3DTO&gt; uniswapV3GetFactoryCurrent()

Factory (current)

Gets factory.

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
      List<UniswapV3FactoryV3DTO> result = apiInstance.uniswapV3GetFactoryCurrent();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetFactoryCurrent");
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

[**List&lt;UniswapV3FactoryV3DTO&gt;**](UniswapV3FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetMintsCurrent"></a>
# **uniswapV3GetMintsCurrent**
> List&lt;UniswapV3MintV3DTO&gt; uniswapV3GetMintsCurrent(filterPoolId)

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
    String filterPoolId = "filterPoolId_example"; // String | 
    try {
      List<UniswapV3MintV3DTO> result = apiInstance.uniswapV3GetMintsCurrent(filterPoolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetMintsCurrent");
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

[**List&lt;UniswapV3MintV3DTO&gt;**](UniswapV3MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetPoolsCurrent"></a>
# **uniswapV3GetPoolsCurrent**
> List&lt;UniswapV3PoolV3DTO&gt; uniswapV3GetPoolsCurrent(filterPoolId)

Pools (current) 🔥

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
    String filterPoolId = "filterPoolId_example"; // String | 
    try {
      List<UniswapV3PoolV3DTO> result = apiInstance.uniswapV3GetPoolsCurrent(filterPoolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetPoolsCurrent");
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

[**List&lt;UniswapV3PoolV3DTO&gt;**](UniswapV3PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetPoolsDayDataCurrent"></a>
# **uniswapV3GetPoolsDayDataCurrent**
> List&lt;UniswapV3PoolDayDataV3DTO&gt; uniswapV3GetPoolsDayDataCurrent(filterPoolId)

PoolsDayData (current)

Gets pools day data.

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
    String filterPoolId = "filterPoolId_example"; // String | 
    try {
      List<UniswapV3PoolDayDataV3DTO> result = apiInstance.uniswapV3GetPoolsDayDataCurrent(filterPoolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetPoolsDayDataCurrent");
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

[**List&lt;UniswapV3PoolDayDataV3DTO&gt;**](UniswapV3PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetPoolsHourDataCurrent"></a>
# **uniswapV3GetPoolsHourDataCurrent**
> List&lt;UniswapV3PoolHourDataV3DTO&gt; uniswapV3GetPoolsHourDataCurrent(filterPoolId)

PoolsHourData (current)

Gets pools hour data.

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
    String filterPoolId = "filterPoolId_example"; // String | 
    try {
      List<UniswapV3PoolHourDataV3DTO> result = apiInstance.uniswapV3GetPoolsHourDataCurrent(filterPoolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetPoolsHourDataCurrent");
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

[**List&lt;UniswapV3PoolHourDataV3DTO&gt;**](UniswapV3PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetPositionsCurrent"></a>
# **uniswapV3GetPositionsCurrent**
> List&lt;UniswapV3PositionV3DTO&gt; uniswapV3GetPositionsCurrent(filterPoolId)

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
    String filterPoolId = "filterPoolId_example"; // String | 
    try {
      List<UniswapV3PositionV3DTO> result = apiInstance.uniswapV3GetPositionsCurrent(filterPoolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetPositionsCurrent");
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

[**List&lt;UniswapV3PositionV3DTO&gt;**](UniswapV3PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetPositionsSnapshotsCurrent"></a>
# **uniswapV3GetPositionsSnapshotsCurrent**
> List&lt;UniswapV3PositionSnapshotV3DTO&gt; uniswapV3GetPositionsSnapshotsCurrent(filterPoolId)

PositionsSnapshots (current)

Gets positions snapshots.

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
    String filterPoolId = "filterPoolId_example"; // String | 
    try {
      List<UniswapV3PositionSnapshotV3DTO> result = apiInstance.uniswapV3GetPositionsSnapshotsCurrent(filterPoolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetPositionsSnapshotsCurrent");
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

[**List&lt;UniswapV3PositionSnapshotV3DTO&gt;**](UniswapV3PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetSwapsCurrent"></a>
# **uniswapV3GetSwapsCurrent**
> List&lt;UniswapV3SwapV3DTO&gt; uniswapV3GetSwapsCurrent(filterPoolId)

Swaps (current) 🔥

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
    String filterPoolId = "filterPoolId_example"; // String | 
    try {
      List<UniswapV3SwapV3DTO> result = apiInstance.uniswapV3GetSwapsCurrent(filterPoolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetSwapsCurrent");
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

[**List&lt;UniswapV3SwapV3DTO&gt;**](UniswapV3SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetTicksCurrent"></a>
# **uniswapV3GetTicksCurrent**
> List&lt;UniswapV3TickV3DTO&gt; uniswapV3GetTicksCurrent(filterPoolId)

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
    String filterPoolId = "filterPoolId_example"; // String | 
    try {
      List<UniswapV3TickV3DTO> result = apiInstance.uniswapV3GetTicksCurrent(filterPoolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetTicksCurrent");
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

[**List&lt;UniswapV3TickV3DTO&gt;**](UniswapV3TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetTicksDayDataCurrent"></a>
# **uniswapV3GetTicksDayDataCurrent**
> List&lt;UniswapV3TickDayDataV3DTO&gt; uniswapV3GetTicksDayDataCurrent(filterPoolId)

TicksDayData (current)

Gets ticks day data.

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
    String filterPoolId = "filterPoolId_example"; // String | 
    try {
      List<UniswapV3TickDayDataV3DTO> result = apiInstance.uniswapV3GetTicksDayDataCurrent(filterPoolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetTicksDayDataCurrent");
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

[**List&lt;UniswapV3TickDayDataV3DTO&gt;**](UniswapV3TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetTokensCurrent"></a>
# **uniswapV3GetTokensCurrent**
> List&lt;UniswapV3TokenV3DTO&gt; uniswapV3GetTokensCurrent(filterTokenId)

Tokens (current) 🔥

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
    String filterTokenId = "filterTokenId_example"; // String | 
    try {
      List<UniswapV3TokenV3DTO> result = apiInstance.uniswapV3GetTokensCurrent(filterTokenId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetTokensCurrent");
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
| **filterTokenId** | **String**|  | [optional] |

### Return type

[**List&lt;UniswapV3TokenV3DTO&gt;**](UniswapV3TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="uniswapV3GetTokensDayDataCurrent"></a>
# **uniswapV3GetTokensDayDataCurrent**
> List&lt;UniswapV3TokenV3DayDataDTO&gt; uniswapV3GetTokensDayDataCurrent(filterTokenId)

TokensDayData (current)

Gets tokens day data.

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
    String filterTokenId = "filterTokenId_example"; // String | 
    try {
      List<UniswapV3TokenV3DayDataDTO> result = apiInstance.uniswapV3GetTokensDayDataCurrent(filterTokenId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetTokensDayDataCurrent");
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
| **filterTokenId** | **String**|  | [optional] |

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

<a name="uniswapV3GetTokensHourDataCurrent"></a>
# **uniswapV3GetTokensHourDataCurrent**
> List&lt;UniswapV3TokenHourDataV3DTO&gt; uniswapV3GetTokensHourDataCurrent(filterTokenId)

TokensHourData (current)

Gets tokens hour data.

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
    String filterTokenId = "filterTokenId_example"; // String | 
    try {
      List<UniswapV3TokenHourDataV3DTO> result = apiInstance.uniswapV3GetTokensHourDataCurrent(filterTokenId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#uniswapV3GetTokensHourDataCurrent");
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
| **filterTokenId** | **String**|  | [optional] |

### Return type

[**List&lt;UniswapV3TokenHourDataV3DTO&gt;**](UniswapV3TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

