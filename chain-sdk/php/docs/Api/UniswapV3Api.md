# OpenAPI\Client\UniswapV3Api

All URIs are relative to https://onchain.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**chainsChainIdDappsUniswapv3BundleCurrentGet()**](UniswapV3Api.md#chainsChainIdDappsUniswapv3BundleCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles |
| [**chainsChainIdDappsUniswapv3BurnsCurrentGet()**](UniswapV3Api.md#chainsChainIdDappsUniswapv3BurnsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns |
| [**chainsChainIdDappsUniswapv3FactoryCurrentGet()**](UniswapV3Api.md#chainsChainIdDappsUniswapv3FactoryCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory |
| [**chainsChainIdDappsUniswapv3MintsCurrentGet()**](UniswapV3Api.md#chainsChainIdDappsUniswapv3MintsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints |
| [**chainsChainIdDappsUniswapv3PoolsCurrentGet()**](UniswapV3Api.md#chainsChainIdDappsUniswapv3PoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools |
| [**chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet()**](UniswapV3Api.md#chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData |
| [**chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet()**](UniswapV3Api.md#chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData |
| [**chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet()**](UniswapV3Api.md#chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot |
| [**chainsChainIdDappsUniswapv3PositionsCurrentGet()**](UniswapV3Api.md#chainsChainIdDappsUniswapv3PositionsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions |
| [**chainsChainIdDappsUniswapv3SwapsCurrentGet()**](UniswapV3Api.md#chainsChainIdDappsUniswapv3SwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps |
| [**chainsChainIdDappsUniswapv3TicksCurrentGet()**](UniswapV3Api.md#chainsChainIdDappsUniswapv3TicksCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks |
| [**chainsChainIdDappsUniswapv3TicksDayDataCurrentGet()**](UniswapV3Api.md#chainsChainIdDappsUniswapv3TicksDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData |
| [**chainsChainIdDappsUniswapv3TokensCurrentGet()**](UniswapV3Api.md#chainsChainIdDappsUniswapv3TokensCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens |
| [**chainsChainIdDappsUniswapv3TokensDayDataCurrentGet()**](UniswapV3Api.md#chainsChainIdDappsUniswapv3TokensDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData |
| [**chainsChainIdDappsUniswapv3TokensHourDataCurrentGet()**](UniswapV3Api.md#chainsChainIdDappsUniswapv3TokensHourDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData |
| [**chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet()**](UniswapV3Api.md#chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData |


## `chainsChainIdDappsUniswapv3BundleCurrentGet()`

```php
chainsChainIdDappsUniswapv3BundleCurrentGet($chain_id): \OpenAPI\Client\Model\BundleV3DTO[]
```

GetBundles

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string | Chain id

try {
    $result = $apiInstance->chainsChainIdDappsUniswapv3BundleCurrentGet($chain_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3BundleCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chain_id** | **string**| Chain id | |

### Return type

[**\OpenAPI\Client\Model\BundleV3DTO[]**](../Model/BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `chainsChainIdDappsUniswapv3BurnsCurrentGet()`

```php
chainsChainIdDappsUniswapv3BurnsCurrentGet($chain_id, $filter_pool_id): \OpenAPI\Client\Model\BurnV3DTO[]
```

GetBurns

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string | Chain id
$filter_pool_id = 'filter_pool_id_example'; // string | Filter pool id

try {
    $result = $apiInstance->chainsChainIdDappsUniswapv3BurnsCurrentGet($chain_id, $filter_pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3BurnsCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chain_id** | **string**| Chain id | |
| **filter_pool_id** | **string**| Filter pool id | [optional] |

### Return type

[**\OpenAPI\Client\Model\BurnV3DTO[]**](../Model/BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `chainsChainIdDappsUniswapv3FactoryCurrentGet()`

```php
chainsChainIdDappsUniswapv3FactoryCurrentGet($chain_id): \OpenAPI\Client\Model\FactoryV3DTO[]
```

GetFactory

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string | Chain id

try {
    $result = $apiInstance->chainsChainIdDappsUniswapv3FactoryCurrentGet($chain_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3FactoryCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chain_id** | **string**| Chain id | |

### Return type

[**\OpenAPI\Client\Model\FactoryV3DTO[]**](../Model/FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `chainsChainIdDappsUniswapv3MintsCurrentGet()`

```php
chainsChainIdDappsUniswapv3MintsCurrentGet($chain_id, $filter_pool_id): \OpenAPI\Client\Model\MintV3DTO[]
```

GetMints

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string | Chain id
$filter_pool_id = 'filter_pool_id_example'; // string | Filter pool id

try {
    $result = $apiInstance->chainsChainIdDappsUniswapv3MintsCurrentGet($chain_id, $filter_pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3MintsCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chain_id** | **string**| Chain id | |
| **filter_pool_id** | **string**| Filter pool id | [optional] |

### Return type

[**\OpenAPI\Client\Model\MintV3DTO[]**](../Model/MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `chainsChainIdDappsUniswapv3PoolsCurrentGet()`

```php
chainsChainIdDappsUniswapv3PoolsCurrentGet($chain_id, $filter_pool_id): \OpenAPI\Client\Model\PoolV3DTO[]
```

GetPools

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string | Chain id
$filter_pool_id = 'filter_pool_id_example'; // string | Filter pool id

try {
    $result = $apiInstance->chainsChainIdDappsUniswapv3PoolsCurrentGet($chain_id, $filter_pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3PoolsCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chain_id** | **string**| Chain id | |
| **filter_pool_id** | **string**| Filter pool id | [optional] |

### Return type

[**\OpenAPI\Client\Model\PoolV3DTO[]**](../Model/PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet()`

```php
chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet($chain_id, $filter_pool_id): \OpenAPI\Client\Model\PoolDayDataV3DTO[]
```

GetPoolsDayData

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string | Chain id
$filter_pool_id = 'filter_pool_id_example'; // string | Filter pool id

try {
    $result = $apiInstance->chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet($chain_id, $filter_pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chain_id** | **string**| Chain id | |
| **filter_pool_id** | **string**| Filter pool id | [optional] |

### Return type

[**\OpenAPI\Client\Model\PoolDayDataV3DTO[]**](../Model/PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet()`

```php
chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet($chain_id, $filter_pool_id): \OpenAPI\Client\Model\PoolHourDataV3DTO[]
```

GetPoolsHourData

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string | Chain id
$filter_pool_id = 'filter_pool_id_example'; // string | Filter pool id

try {
    $result = $apiInstance->chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet($chain_id, $filter_pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chain_id** | **string**| Chain id | |
| **filter_pool_id** | **string**| Filter pool id | [optional] |

### Return type

[**\OpenAPI\Client\Model\PoolHourDataV3DTO[]**](../Model/PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet()`

```php
chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet($chain_id, $filter_pool_id): \OpenAPI\Client\Model\PositionSnapshotV3DTO[]
```

GetPositionSnapshot

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string | Chain id
$filter_pool_id = 'filter_pool_id_example'; // string | Filter pool id

try {
    $result = $apiInstance->chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet($chain_id, $filter_pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chain_id** | **string**| Chain id | |
| **filter_pool_id** | **string**| Filter pool id | [optional] |

### Return type

[**\OpenAPI\Client\Model\PositionSnapshotV3DTO[]**](../Model/PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `chainsChainIdDappsUniswapv3PositionsCurrentGet()`

```php
chainsChainIdDappsUniswapv3PositionsCurrentGet($chain_id, $filter_pool_id): \OpenAPI\Client\Model\PositionV3DTO[]
```

GetPositions

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string | Chain id
$filter_pool_id = 'filter_pool_id_example'; // string | Filter pool id

try {
    $result = $apiInstance->chainsChainIdDappsUniswapv3PositionsCurrentGet($chain_id, $filter_pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3PositionsCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chain_id** | **string**| Chain id | |
| **filter_pool_id** | **string**| Filter pool id | [optional] |

### Return type

[**\OpenAPI\Client\Model\PositionV3DTO[]**](../Model/PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `chainsChainIdDappsUniswapv3SwapsCurrentGet()`

```php
chainsChainIdDappsUniswapv3SwapsCurrentGet($chain_id, $filter_pool_id): \OpenAPI\Client\Model\SwapV3DTO[]
```

GetSwaps

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string | Chain id
$filter_pool_id = 'filter_pool_id_example'; // string | Filter pool id

try {
    $result = $apiInstance->chainsChainIdDappsUniswapv3SwapsCurrentGet($chain_id, $filter_pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3SwapsCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chain_id** | **string**| Chain id | |
| **filter_pool_id** | **string**| Filter pool id | [optional] |

### Return type

[**\OpenAPI\Client\Model\SwapV3DTO[]**](../Model/SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `chainsChainIdDappsUniswapv3TicksCurrentGet()`

```php
chainsChainIdDappsUniswapv3TicksCurrentGet($chain_id, $filter_pool_id): \OpenAPI\Client\Model\TickV3DTO[]
```

GetTicks

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string | Chain id
$filter_pool_id = 'filter_pool_id_example'; // string | Filter pool id

try {
    $result = $apiInstance->chainsChainIdDappsUniswapv3TicksCurrentGet($chain_id, $filter_pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3TicksCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chain_id** | **string**| Chain id | |
| **filter_pool_id** | **string**| Filter pool id | [optional] |

### Return type

[**\OpenAPI\Client\Model\TickV3DTO[]**](../Model/TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `chainsChainIdDappsUniswapv3TicksDayDataCurrentGet()`

```php
chainsChainIdDappsUniswapv3TicksDayDataCurrentGet($chain_id, $filter_pool_id): \OpenAPI\Client\Model\TickDayDataV3DTO[]
```

GetTicksDayData

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string | Chain id
$filter_pool_id = 'filter_pool_id_example'; // string | Filter pool id

try {
    $result = $apiInstance->chainsChainIdDappsUniswapv3TicksDayDataCurrentGet($chain_id, $filter_pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3TicksDayDataCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chain_id** | **string**| Chain id | |
| **filter_pool_id** | **string**| Filter pool id | [optional] |

### Return type

[**\OpenAPI\Client\Model\TickDayDataV3DTO[]**](../Model/TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `chainsChainIdDappsUniswapv3TokensCurrentGet()`

```php
chainsChainIdDappsUniswapv3TokensCurrentGet($chain_id, $filter_token_id): \OpenAPI\Client\Model\TokenV3DTO[]
```

GetTokens

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string | Chain id
$filter_token_id = 'filter_token_id_example'; // string

try {
    $result = $apiInstance->chainsChainIdDappsUniswapv3TokensCurrentGet($chain_id, $filter_token_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3TokensCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chain_id** | **string**| Chain id | |
| **filter_token_id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\TokenV3DTO[]**](../Model/TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `chainsChainIdDappsUniswapv3TokensDayDataCurrentGet()`

```php
chainsChainIdDappsUniswapv3TokensDayDataCurrentGet($chain_id, $filter_token_id): \OpenAPI\Client\Model\TokenV3DayDataDTO[]
```

GetTokensDayData

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string | Chain id
$filter_token_id = 'filter_token_id_example'; // string

try {
    $result = $apiInstance->chainsChainIdDappsUniswapv3TokensDayDataCurrentGet($chain_id, $filter_token_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3TokensDayDataCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chain_id** | **string**| Chain id | |
| **filter_token_id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\TokenV3DayDataDTO[]**](../Model/TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `chainsChainIdDappsUniswapv3TokensHourDataCurrentGet()`

```php
chainsChainIdDappsUniswapv3TokensHourDataCurrentGet($chain_id, $filter_token_id): \OpenAPI\Client\Model\TokenHourDataV3DTO[]
```

GetTokensHourData

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string | Chain id
$filter_token_id = 'filter_token_id_example'; // string

try {
    $result = $apiInstance->chainsChainIdDappsUniswapv3TokensHourDataCurrentGet($chain_id, $filter_token_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3TokensHourDataCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chain_id** | **string**| Chain id | |
| **filter_token_id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\TokenHourDataV3DTO[]**](../Model/TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet()`

```php
chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet($chain_id): \OpenAPI\Client\Model\UniswapDayDataV3DTO[]
```

GetUniswapDayData

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string | Chain id

try {
    $result = $apiInstance->chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet($chain_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chain_id** | **string**| Chain id | |

### Return type

[**\OpenAPI\Client\Model\UniswapDayDataV3DTO[]**](../Model/UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
