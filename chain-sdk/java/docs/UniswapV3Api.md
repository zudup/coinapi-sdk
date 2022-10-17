# UniswapV3Api

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**chainsChainIdDappsUniswapv3BundleCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3BundleCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles |
| [**chainsChainIdDappsUniswapv3BurnsCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3BurnsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns |
| [**chainsChainIdDappsUniswapv3FactoryCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3FactoryCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory |
| [**chainsChainIdDappsUniswapv3MintsCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3MintsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints |
| [**chainsChainIdDappsUniswapv3PoolsCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3PoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools |
| [**chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData |
| [**chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData |
| [**chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot |
| [**chainsChainIdDappsUniswapv3PositionsCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3PositionsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions |
| [**chainsChainIdDappsUniswapv3SwapsCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3SwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps |
| [**chainsChainIdDappsUniswapv3TicksCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3TicksCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks |
| [**chainsChainIdDappsUniswapv3TicksDayDataCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3TicksDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData |
| [**chainsChainIdDappsUniswapv3TokensCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3TokensCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens |
| [**chainsChainIdDappsUniswapv3TokensDayDataCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3TokensDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData |
| [**chainsChainIdDappsUniswapv3TokensHourDataCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3TokensHourDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData |
| [**chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData |


<a name="chainsChainIdDappsUniswapv3BundleCurrentGet"></a>
# **chainsChainIdDappsUniswapv3BundleCurrentGet**
> List&lt;BundleV3DTO&gt; chainsChainIdDappsUniswapv3BundleCurrentGet(chainId)

GetBundles

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
    String chainId = "chainId_example"; // String | Chain id
    try {
      List<BundleV3DTO> result = apiInstance.chainsChainIdDappsUniswapv3BundleCurrentGet(chainId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#chainsChainIdDappsUniswapv3BundleCurrentGet");
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
| **chainId** | **String**| Chain id | |

### Return type

[**List&lt;BundleV3DTO&gt;**](BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="chainsChainIdDappsUniswapv3BurnsCurrentGet"></a>
# **chainsChainIdDappsUniswapv3BurnsCurrentGet**
> List&lt;BurnV3DTO&gt; chainsChainIdDappsUniswapv3BurnsCurrentGet(chainId, filterPoolId)

GetBurns

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
    String chainId = "chainId_example"; // String | Chain id
    String filterPoolId = "filterPoolId_example"; // String | Filter pool id
    try {
      List<BurnV3DTO> result = apiInstance.chainsChainIdDappsUniswapv3BurnsCurrentGet(chainId, filterPoolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#chainsChainIdDappsUniswapv3BurnsCurrentGet");
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
| **chainId** | **String**| Chain id | |
| **filterPoolId** | **String**| Filter pool id | [optional] |

### Return type

[**List&lt;BurnV3DTO&gt;**](BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="chainsChainIdDappsUniswapv3FactoryCurrentGet"></a>
# **chainsChainIdDappsUniswapv3FactoryCurrentGet**
> List&lt;FactoryV3DTO&gt; chainsChainIdDappsUniswapv3FactoryCurrentGet(chainId)

GetFactory

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
    String chainId = "chainId_example"; // String | Chain id
    try {
      List<FactoryV3DTO> result = apiInstance.chainsChainIdDappsUniswapv3FactoryCurrentGet(chainId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#chainsChainIdDappsUniswapv3FactoryCurrentGet");
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
| **chainId** | **String**| Chain id | |

### Return type

[**List&lt;FactoryV3DTO&gt;**](FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="chainsChainIdDappsUniswapv3MintsCurrentGet"></a>
# **chainsChainIdDappsUniswapv3MintsCurrentGet**
> List&lt;MintV3DTO&gt; chainsChainIdDappsUniswapv3MintsCurrentGet(chainId, filterPoolId)

GetMints

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
    String chainId = "chainId_example"; // String | Chain id
    String filterPoolId = "filterPoolId_example"; // String | Filter pool id
    try {
      List<MintV3DTO> result = apiInstance.chainsChainIdDappsUniswapv3MintsCurrentGet(chainId, filterPoolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#chainsChainIdDappsUniswapv3MintsCurrentGet");
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
| **chainId** | **String**| Chain id | |
| **filterPoolId** | **String**| Filter pool id | [optional] |

### Return type

[**List&lt;MintV3DTO&gt;**](MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="chainsChainIdDappsUniswapv3PoolsCurrentGet"></a>
# **chainsChainIdDappsUniswapv3PoolsCurrentGet**
> List&lt;PoolV3DTO&gt; chainsChainIdDappsUniswapv3PoolsCurrentGet(chainId, filterPoolId)

GetPools

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
    String chainId = "chainId_example"; // String | Chain id
    String filterPoolId = "filterPoolId_example"; // String | Filter pool id
    try {
      List<PoolV3DTO> result = apiInstance.chainsChainIdDappsUniswapv3PoolsCurrentGet(chainId, filterPoolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#chainsChainIdDappsUniswapv3PoolsCurrentGet");
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
| **chainId** | **String**| Chain id | |
| **filterPoolId** | **String**| Filter pool id | [optional] |

### Return type

[**List&lt;PoolV3DTO&gt;**](PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet"></a>
# **chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet**
> List&lt;PoolDayDataV3DTO&gt; chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet(chainId, filterPoolId)

GetPoolsDayData

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
    String chainId = "chainId_example"; // String | Chain id
    String filterPoolId = "filterPoolId_example"; // String | Filter pool id
    try {
      List<PoolDayDataV3DTO> result = apiInstance.chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet(chainId, filterPoolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet");
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
| **chainId** | **String**| Chain id | |
| **filterPoolId** | **String**| Filter pool id | [optional] |

### Return type

[**List&lt;PoolDayDataV3DTO&gt;**](PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet"></a>
# **chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet**
> List&lt;PoolHourDataV3DTO&gt; chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet(chainId, filterPoolId)

GetPoolsHourData

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
    String chainId = "chainId_example"; // String | Chain id
    String filterPoolId = "filterPoolId_example"; // String | Filter pool id
    try {
      List<PoolHourDataV3DTO> result = apiInstance.chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet(chainId, filterPoolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet");
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
| **chainId** | **String**| Chain id | |
| **filterPoolId** | **String**| Filter pool id | [optional] |

### Return type

[**List&lt;PoolHourDataV3DTO&gt;**](PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet"></a>
# **chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet**
> List&lt;PositionSnapshotV3DTO&gt; chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet(chainId, filterPoolId)

GetPositionSnapshot

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
    String chainId = "chainId_example"; // String | Chain id
    String filterPoolId = "filterPoolId_example"; // String | Filter pool id
    try {
      List<PositionSnapshotV3DTO> result = apiInstance.chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet(chainId, filterPoolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet");
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
| **chainId** | **String**| Chain id | |
| **filterPoolId** | **String**| Filter pool id | [optional] |

### Return type

[**List&lt;PositionSnapshotV3DTO&gt;**](PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="chainsChainIdDappsUniswapv3PositionsCurrentGet"></a>
# **chainsChainIdDappsUniswapv3PositionsCurrentGet**
> List&lt;PositionV3DTO&gt; chainsChainIdDappsUniswapv3PositionsCurrentGet(chainId, filterPoolId)

GetPositions

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
    String chainId = "chainId_example"; // String | Chain id
    String filterPoolId = "filterPoolId_example"; // String | Filter pool id
    try {
      List<PositionV3DTO> result = apiInstance.chainsChainIdDappsUniswapv3PositionsCurrentGet(chainId, filterPoolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#chainsChainIdDappsUniswapv3PositionsCurrentGet");
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
| **chainId** | **String**| Chain id | |
| **filterPoolId** | **String**| Filter pool id | [optional] |

### Return type

[**List&lt;PositionV3DTO&gt;**](PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="chainsChainIdDappsUniswapv3SwapsCurrentGet"></a>
# **chainsChainIdDappsUniswapv3SwapsCurrentGet**
> List&lt;SwapV3DTO&gt; chainsChainIdDappsUniswapv3SwapsCurrentGet(chainId, filterPoolId)

GetSwaps

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
    String chainId = "chainId_example"; // String | Chain id
    String filterPoolId = "filterPoolId_example"; // String | Filter pool id
    try {
      List<SwapV3DTO> result = apiInstance.chainsChainIdDappsUniswapv3SwapsCurrentGet(chainId, filterPoolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#chainsChainIdDappsUniswapv3SwapsCurrentGet");
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
| **chainId** | **String**| Chain id | |
| **filterPoolId** | **String**| Filter pool id | [optional] |

### Return type

[**List&lt;SwapV3DTO&gt;**](SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="chainsChainIdDappsUniswapv3TicksCurrentGet"></a>
# **chainsChainIdDappsUniswapv3TicksCurrentGet**
> List&lt;TickV3DTO&gt; chainsChainIdDappsUniswapv3TicksCurrentGet(chainId, filterPoolId)

GetTicks

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
    String chainId = "chainId_example"; // String | Chain id
    String filterPoolId = "filterPoolId_example"; // String | Filter pool id
    try {
      List<TickV3DTO> result = apiInstance.chainsChainIdDappsUniswapv3TicksCurrentGet(chainId, filterPoolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#chainsChainIdDappsUniswapv3TicksCurrentGet");
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
| **chainId** | **String**| Chain id | |
| **filterPoolId** | **String**| Filter pool id | [optional] |

### Return type

[**List&lt;TickV3DTO&gt;**](TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="chainsChainIdDappsUniswapv3TicksDayDataCurrentGet"></a>
# **chainsChainIdDappsUniswapv3TicksDayDataCurrentGet**
> List&lt;TickDayDataV3DTO&gt; chainsChainIdDappsUniswapv3TicksDayDataCurrentGet(chainId, filterPoolId)

GetTicksDayData

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
    String chainId = "chainId_example"; // String | Chain id
    String filterPoolId = "filterPoolId_example"; // String | Filter pool id
    try {
      List<TickDayDataV3DTO> result = apiInstance.chainsChainIdDappsUniswapv3TicksDayDataCurrentGet(chainId, filterPoolId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#chainsChainIdDappsUniswapv3TicksDayDataCurrentGet");
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
| **chainId** | **String**| Chain id | |
| **filterPoolId** | **String**| Filter pool id | [optional] |

### Return type

[**List&lt;TickDayDataV3DTO&gt;**](TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="chainsChainIdDappsUniswapv3TokensCurrentGet"></a>
# **chainsChainIdDappsUniswapv3TokensCurrentGet**
> List&lt;TokenV3DTO&gt; chainsChainIdDappsUniswapv3TokensCurrentGet(chainId, filterTokenId)

GetTokens

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
    String chainId = "chainId_example"; // String | Chain id
    String filterTokenId = "filterTokenId_example"; // String | 
    try {
      List<TokenV3DTO> result = apiInstance.chainsChainIdDappsUniswapv3TokensCurrentGet(chainId, filterTokenId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#chainsChainIdDappsUniswapv3TokensCurrentGet");
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
| **chainId** | **String**| Chain id | |
| **filterTokenId** | **String**|  | [optional] |

### Return type

[**List&lt;TokenV3DTO&gt;**](TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="chainsChainIdDappsUniswapv3TokensDayDataCurrentGet"></a>
# **chainsChainIdDappsUniswapv3TokensDayDataCurrentGet**
> List&lt;TokenV3DayDataDTO&gt; chainsChainIdDappsUniswapv3TokensDayDataCurrentGet(chainId, filterTokenId)

GetTokensDayData

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
    String chainId = "chainId_example"; // String | Chain id
    String filterTokenId = "filterTokenId_example"; // String | 
    try {
      List<TokenV3DayDataDTO> result = apiInstance.chainsChainIdDappsUniswapv3TokensDayDataCurrentGet(chainId, filterTokenId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#chainsChainIdDappsUniswapv3TokensDayDataCurrentGet");
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
| **chainId** | **String**| Chain id | |
| **filterTokenId** | **String**|  | [optional] |

### Return type

[**List&lt;TokenV3DayDataDTO&gt;**](TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="chainsChainIdDappsUniswapv3TokensHourDataCurrentGet"></a>
# **chainsChainIdDappsUniswapv3TokensHourDataCurrentGet**
> List&lt;TokenHourDataV3DTO&gt; chainsChainIdDappsUniswapv3TokensHourDataCurrentGet(chainId, filterTokenId)

GetTokensHourData

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
    String chainId = "chainId_example"; // String | Chain id
    String filterTokenId = "filterTokenId_example"; // String | 
    try {
      List<TokenHourDataV3DTO> result = apiInstance.chainsChainIdDappsUniswapv3TokensHourDataCurrentGet(chainId, filterTokenId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#chainsChainIdDappsUniswapv3TokensHourDataCurrentGet");
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
| **chainId** | **String**| Chain id | |
| **filterTokenId** | **String**|  | [optional] |

### Return type

[**List&lt;TokenHourDataV3DTO&gt;**](TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

<a name="chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet"></a>
# **chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet**
> List&lt;UniswapDayDataV3DTO&gt; chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet(chainId)

GetUniswapDayData

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
    String chainId = "chainId_example"; // String | Chain id
    try {
      List<UniswapDayDataV3DTO> result = apiInstance.chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet(chainId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV3Api#chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet");
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
| **chainId** | **String**| Chain id | |

### Return type

[**List&lt;UniswapDayDataV3DTO&gt;**](UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

