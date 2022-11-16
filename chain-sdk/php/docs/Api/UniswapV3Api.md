# OpenAPI\Client\UniswapV3Api

All URIs are relative to https://onchain.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**uniswapV3GetBundlesCurrent()**](UniswapV3Api.md#uniswapV3GetBundlesCurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current) |
| [**uniswapV3GetBurnsCurrent()**](UniswapV3Api.md#uniswapV3GetBurnsCurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current) |
| [**uniswapV3GetDayDataCurrent()**](UniswapV3Api.md#uniswapV3GetDayDataCurrent) | **GET** /dapps/uniswapv3/dayData/current | DayData (current) |
| [**uniswapV3GetFactoryCurrent()**](UniswapV3Api.md#uniswapV3GetFactoryCurrent) | **GET** /dapps/uniswapv3/factory/current | Factory (current) |
| [**uniswapV3GetMintsCurrent()**](UniswapV3Api.md#uniswapV3GetMintsCurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current) |
| [**uniswapV3GetPoolsCurrent()**](UniswapV3Api.md#uniswapV3GetPoolsCurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current) 🔥 |
| [**uniswapV3GetPoolsDayDataCurrent()**](UniswapV3Api.md#uniswapV3GetPoolsDayDataCurrent) | **GET** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current) |
| [**uniswapV3GetPoolsHourDataCurrent()**](UniswapV3Api.md#uniswapV3GetPoolsHourDataCurrent) | **GET** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current) |
| [**uniswapV3GetPositionsCurrent()**](UniswapV3Api.md#uniswapV3GetPositionsCurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current) |
| [**uniswapV3GetPositionsSnapshotsCurrent()**](UniswapV3Api.md#uniswapV3GetPositionsSnapshotsCurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current) |
| [**uniswapV3GetSwapsCurrent()**](UniswapV3Api.md#uniswapV3GetSwapsCurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥 |
| [**uniswapV3GetTicksCurrent()**](UniswapV3Api.md#uniswapV3GetTicksCurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current) |
| [**uniswapV3GetTicksDayDataCurrent()**](UniswapV3Api.md#uniswapV3GetTicksDayDataCurrent) | **GET** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current) |
| [**uniswapV3GetTokensCurrent()**](UniswapV3Api.md#uniswapV3GetTokensCurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥 |
| [**uniswapV3GetTokensDayDataCurrent()**](UniswapV3Api.md#uniswapV3GetTokensDayDataCurrent) | **GET** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current) |
| [**uniswapV3GetTokensHourDataCurrent()**](UniswapV3Api.md#uniswapV3GetTokensHourDataCurrent) | **GET** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current) |


## `uniswapV3GetBundlesCurrent()`

```php
uniswapV3GetBundlesCurrent(): \OpenAPI\Client\Model\UniswapV3BundleV3DTO[]
```

Bundles (current)

Gets bundles.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV3GetBundlesCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetBundlesCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV3BundleV3DTO[]**](../Model/UniswapV3BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetBurnsCurrent()`

```php
uniswapV3GetBurnsCurrent($filter_pool_id): \OpenAPI\Client\Model\UniswapV3BurnV3DTO[]
```

Burns (current)

Gets burns.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$filter_pool_id = 'filter_pool_id_example'; // string

try {
    $result = $apiInstance->uniswapV3GetBurnsCurrent($filter_pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetBurnsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filter_pool_id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3BurnV3DTO[]**](../Model/UniswapV3BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetDayDataCurrent()`

```php
uniswapV3GetDayDataCurrent(): \OpenAPI\Client\Model\UniswapV3UniswapDayDataV3DTO[]
```

DayData (current)

Gets uniswapv3 day data.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV3GetDayDataCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetDayDataCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV3UniswapDayDataV3DTO[]**](../Model/UniswapV3UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetFactoryCurrent()`

```php
uniswapV3GetFactoryCurrent(): \OpenAPI\Client\Model\UniswapV3FactoryV3DTO[]
```

Factory (current)

Gets factory.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV3GetFactoryCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetFactoryCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV3FactoryV3DTO[]**](../Model/UniswapV3FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetMintsCurrent()`

```php
uniswapV3GetMintsCurrent($filter_pool_id): \OpenAPI\Client\Model\UniswapV3MintV3DTO[]
```

Mints (current)

Gets mints.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$filter_pool_id = 'filter_pool_id_example'; // string

try {
    $result = $apiInstance->uniswapV3GetMintsCurrent($filter_pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetMintsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filter_pool_id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3MintV3DTO[]**](../Model/UniswapV3MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetPoolsCurrent()`

```php
uniswapV3GetPoolsCurrent($filter_pool_id): \OpenAPI\Client\Model\UniswapV3PoolV3DTO[]
```

Pools (current) 🔥

Gets pools.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$filter_pool_id = 'filter_pool_id_example'; // string

try {
    $result = $apiInstance->uniswapV3GetPoolsCurrent($filter_pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetPoolsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filter_pool_id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3PoolV3DTO[]**](../Model/UniswapV3PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetPoolsDayDataCurrent()`

```php
uniswapV3GetPoolsDayDataCurrent($filter_pool_id): \OpenAPI\Client\Model\UniswapV3PoolDayDataV3DTO[]
```

PoolsDayData (current)

Gets pools day data.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$filter_pool_id = 'filter_pool_id_example'; // string

try {
    $result = $apiInstance->uniswapV3GetPoolsDayDataCurrent($filter_pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetPoolsDayDataCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filter_pool_id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3PoolDayDataV3DTO[]**](../Model/UniswapV3PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetPoolsHourDataCurrent()`

```php
uniswapV3GetPoolsHourDataCurrent($filter_pool_id): \OpenAPI\Client\Model\UniswapV3PoolHourDataV3DTO[]
```

PoolsHourData (current)

Gets pools hour data.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$filter_pool_id = 'filter_pool_id_example'; // string

try {
    $result = $apiInstance->uniswapV3GetPoolsHourDataCurrent($filter_pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetPoolsHourDataCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filter_pool_id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3PoolHourDataV3DTO[]**](../Model/UniswapV3PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetPositionsCurrent()`

```php
uniswapV3GetPositionsCurrent($filter_pool_id): \OpenAPI\Client\Model\UniswapV3PositionV3DTO[]
```

Positions (current)

Gets positions.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$filter_pool_id = 'filter_pool_id_example'; // string

try {
    $result = $apiInstance->uniswapV3GetPositionsCurrent($filter_pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetPositionsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filter_pool_id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3PositionV3DTO[]**](../Model/UniswapV3PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetPositionsSnapshotsCurrent()`

```php
uniswapV3GetPositionsSnapshotsCurrent($filter_pool_id): \OpenAPI\Client\Model\UniswapV3PositionSnapshotV3DTO[]
```

PositionsSnapshots (current)

Gets positions snapshots.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$filter_pool_id = 'filter_pool_id_example'; // string

try {
    $result = $apiInstance->uniswapV3GetPositionsSnapshotsCurrent($filter_pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetPositionsSnapshotsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filter_pool_id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3PositionSnapshotV3DTO[]**](../Model/UniswapV3PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetSwapsCurrent()`

```php
uniswapV3GetSwapsCurrent($filter_pool_id): \OpenAPI\Client\Model\UniswapV3SwapV3DTO[]
```

Swaps (current) 🔥

Gets swaps.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$filter_pool_id = 'filter_pool_id_example'; // string

try {
    $result = $apiInstance->uniswapV3GetSwapsCurrent($filter_pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetSwapsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filter_pool_id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3SwapV3DTO[]**](../Model/UniswapV3SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetTicksCurrent()`

```php
uniswapV3GetTicksCurrent($filter_pool_id): \OpenAPI\Client\Model\UniswapV3TickV3DTO[]
```

Ticks (current)

Gets ticks.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$filter_pool_id = 'filter_pool_id_example'; // string

try {
    $result = $apiInstance->uniswapV3GetTicksCurrent($filter_pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetTicksCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filter_pool_id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3TickV3DTO[]**](../Model/UniswapV3TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetTicksDayDataCurrent()`

```php
uniswapV3GetTicksDayDataCurrent($filter_pool_id): \OpenAPI\Client\Model\UniswapV3TickDayDataV3DTO[]
```

TicksDayData (current)

Gets ticks day data.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$filter_pool_id = 'filter_pool_id_example'; // string

try {
    $result = $apiInstance->uniswapV3GetTicksDayDataCurrent($filter_pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetTicksDayDataCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filter_pool_id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3TickDayDataV3DTO[]**](../Model/UniswapV3TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetTokensCurrent()`

```php
uniswapV3GetTokensCurrent($filter_token_id): \OpenAPI\Client\Model\UniswapV3TokenV3DTO[]
```

Tokens (current) 🔥

Gets tokens.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$filter_token_id = 'filter_token_id_example'; // string

try {
    $result = $apiInstance->uniswapV3GetTokensCurrent($filter_token_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetTokensCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filter_token_id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3TokenV3DTO[]**](../Model/UniswapV3TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetTokensDayDataCurrent()`

```php
uniswapV3GetTokensDayDataCurrent($filter_token_id): \OpenAPI\Client\Model\UniswapV3TokenV3DayDataDTO[]
```

TokensDayData (current)

Gets tokens day data.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$filter_token_id = 'filter_token_id_example'; // string

try {
    $result = $apiInstance->uniswapV3GetTokensDayDataCurrent($filter_token_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetTokensDayDataCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filter_token_id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3TokenV3DayDataDTO[]**](../Model/UniswapV3TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV3GetTokensHourDataCurrent()`

```php
uniswapV3GetTokensHourDataCurrent($filter_token_id): \OpenAPI\Client\Model\UniswapV3TokenHourDataV3DTO[]
```

TokensHourData (current)

Gets tokens hour data.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$filter_token_id = 'filter_token_id_example'; // string

try {
    $result = $apiInstance->uniswapV3GetTokensHourDataCurrent($filter_token_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetTokensHourDataCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filter_token_id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3TokenHourDataV3DTO[]**](../Model/UniswapV3TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
