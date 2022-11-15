# OpenAPI\Client\UniswapV3Api

All URIs are relative to https://onchain.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**uniswapV3GetBundlesCurrent()**](UniswapV3Api.md#uniswapV3GetBundlesCurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current) |
| [**uniswapV3GetBundlesHistorical()**](UniswapV3Api.md#uniswapV3GetBundlesHistorical) | **GET** /dapps/uniswapv3/bundles/historical-manual | Bundles (historical) |
| [**uniswapV3GetBurnsCurrent()**](UniswapV3Api.md#uniswapV3GetBurnsCurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current) |
| [**uniswapV3GetBurnsHistorical()**](UniswapV3Api.md#uniswapV3GetBurnsHistorical) | **GET** /dapps/uniswapv3/burns/historical-manual | Burns (historical) |
| [**uniswapV3GetDayDataCurrent()**](UniswapV3Api.md#uniswapV3GetDayDataCurrent) | **GET** /dapps/uniswapv3/dayData/current | DayData (current) |
| [**uniswapV3GetDayDataHistorical()**](UniswapV3Api.md#uniswapV3GetDayDataHistorical) | **GET** /dapps/uniswapv3/dayData/historical-manual | DayData (historical) |
| [**uniswapV3GetFactoryCurrent()**](UniswapV3Api.md#uniswapV3GetFactoryCurrent) | **GET** /dapps/uniswapv3/factory/current | Factory (current) |
| [**uniswapV3GetFactoryHistorical()**](UniswapV3Api.md#uniswapV3GetFactoryHistorical) | **GET** /dapps/uniswapv3/factory/historical-manual | Factory (historical) |
| [**uniswapV3GetMintsCurrent()**](UniswapV3Api.md#uniswapV3GetMintsCurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current) |
| [**uniswapV3GetMintsHistorical()**](UniswapV3Api.md#uniswapV3GetMintsHistorical) | **GET** /dapps/uniswapv3/mints/historical-manual | Mints (historical) |
| [**uniswapV3GetPoolsCurrent()**](UniswapV3Api.md#uniswapV3GetPoolsCurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current) 🔥 |
| [**uniswapV3GetPoolsDayDataCurrent()**](UniswapV3Api.md#uniswapV3GetPoolsDayDataCurrent) | **GET** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current) |
| [**uniswapV3GetPoolsDayDataHistorical()**](UniswapV3Api.md#uniswapV3GetPoolsDayDataHistorical) | **GET** /dapps/uniswapv3/poolsDayData/historical-manual | PoolsDayData (historical) |
| [**uniswapV3GetPoolsHistorical()**](UniswapV3Api.md#uniswapV3GetPoolsHistorical) | **GET** /dapps/uniswapv3/pools/historical-manual | Pools (historical) 🔥 |
| [**uniswapV3GetPoolsHourDataCurrent()**](UniswapV3Api.md#uniswapV3GetPoolsHourDataCurrent) | **GET** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current) |
| [**uniswapV3GetPoolsHourDataHistorical()**](UniswapV3Api.md#uniswapV3GetPoolsHourDataHistorical) | **GET** /dapps/uniswapv3/poolsHourData/historical-manual | PoolsHourData (historical) |
| [**uniswapV3GetPositionsCurrent()**](UniswapV3Api.md#uniswapV3GetPositionsCurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current) |
| [**uniswapV3GetPositionsHistorical()**](UniswapV3Api.md#uniswapV3GetPositionsHistorical) | **GET** /dapps/uniswapv3/positions/historical-manual | Positions (historical) |
| [**uniswapV3GetPositionsSnaphotsHistorical()**](UniswapV3Api.md#uniswapV3GetPositionsSnaphotsHistorical) | **GET** /dapps/uniswapv3/positionsSnapshots/historical-manual | PositionsSnaphots (historical) |
| [**uniswapV3GetPositionsSnapshotsCurrent()**](UniswapV3Api.md#uniswapV3GetPositionsSnapshotsCurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current) |
| [**uniswapV3GetSwapsCurrent()**](UniswapV3Api.md#uniswapV3GetSwapsCurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥 |
| [**uniswapV3GetSwapsHistorical()**](UniswapV3Api.md#uniswapV3GetSwapsHistorical) | **GET** /dapps/uniswapv3/swaps/historical-manual | Swaps (historical) 🔥 |
| [**uniswapV3GetTicksCurrent()**](UniswapV3Api.md#uniswapV3GetTicksCurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current) |
| [**uniswapV3GetTicksDayDataCurrent()**](UniswapV3Api.md#uniswapV3GetTicksDayDataCurrent) | **GET** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current) |
| [**uniswapV3GetTicksDayDataHistorical()**](UniswapV3Api.md#uniswapV3GetTicksDayDataHistorical) | **GET** /dapps/uniswapv3/ticksDayData/historical-manual | TicksDayData (historical) |
| [**uniswapV3GetTicksHistorical()**](UniswapV3Api.md#uniswapV3GetTicksHistorical) | **GET** /dapps/uniswapv3/ticks/historical-manual | Ticks (historical) |
| [**uniswapV3GetTokensCurrent()**](UniswapV3Api.md#uniswapV3GetTokensCurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥 |
| [**uniswapV3GetTokensDayDataCurrent()**](UniswapV3Api.md#uniswapV3GetTokensDayDataCurrent) | **GET** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current) |
| [**uniswapV3GetTokensDayDataHistorical()**](UniswapV3Api.md#uniswapV3GetTokensDayDataHistorical) | **GET** /dapps/uniswapv3/tokensDayData/historical-manual | TokensDayData (historical) |
| [**uniswapV3GetTokensHistorical()**](UniswapV3Api.md#uniswapV3GetTokensHistorical) | **GET** /dapps/uniswapv3/tokens/historical-manual | Tokens (historical) 🔥 |
| [**uniswapV3GetTokensHourDataCurrent()**](UniswapV3Api.md#uniswapV3GetTokensHourDataCurrent) | **GET** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current) |
| [**uniswapV3GetTokensHourDataHistorical()**](UniswapV3Api.md#uniswapV3GetTokensHourDataHistorical) | **GET** /dapps/uniswapv3/tokensHourData/historical-manual | TokensHourData (historical) |
| [**uniswapV3GetTransactionsHistorical()**](UniswapV3Api.md#uniswapV3GetTransactionsHistorical) | **GET** /dapps/uniswapv3/transactions/historical-manual | Transactions (historical) |


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

## `uniswapV3GetBundlesHistorical()`

```php
uniswapV3GetBundlesHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\UniswapV3BundleV3DTO[]
```

Bundles (historical)

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
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 

try {
    $result = $apiInstance->uniswapV3GetBundlesHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetBundlesHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |

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

## `uniswapV3GetBurnsHistorical()`

```php
uniswapV3GetBurnsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\UniswapV3BurnV3DTO[]
```

Burns (historical)

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
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$pool_id = 'pool_id_example'; // string | 

try {
    $result = $apiInstance->uniswapV3GetBurnsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetBurnsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |
| **pool_id** | **string**|  | [optional] |

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

## `uniswapV3GetDayDataHistorical()`

```php
uniswapV3GetDayDataHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\UniswapV3UniswapDayDataV3DTO[]
```

DayData (historical)

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
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 

try {
    $result = $apiInstance->uniswapV3GetDayDataHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetDayDataHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |

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

## `uniswapV3GetFactoryHistorical()`

```php
uniswapV3GetFactoryHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\UniswapV3FactoryV3DTO[]
```

Factory (historical)

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
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 

try {
    $result = $apiInstance->uniswapV3GetFactoryHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetFactoryHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |

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

## `uniswapV3GetMintsHistorical()`

```php
uniswapV3GetMintsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\UniswapV3MintV3DTO[]
```

Mints (historical)

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
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$pool_id = 'pool_id_example'; // string | 

try {
    $result = $apiInstance->uniswapV3GetMintsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetMintsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |
| **pool_id** | **string**|  | [optional] |

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

## `uniswapV3GetPoolsDayDataHistorical()`

```php
uniswapV3GetPoolsDayDataHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\UniswapV3PoolDayDataV3DTO[]
```

PoolsDayData (historical)

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
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$pool_id = 'pool_id_example'; // string | 

try {
    $result = $apiInstance->uniswapV3GetPoolsDayDataHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetPoolsDayDataHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |
| **pool_id** | **string**|  | [optional] |

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

## `uniswapV3GetPoolsHistorical()`

```php
uniswapV3GetPoolsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\UniswapV3PoolV3DTO[]
```

Pools (historical) 🔥

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
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$pool_id = 'pool_id_example'; // string | 

try {
    $result = $apiInstance->uniswapV3GetPoolsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetPoolsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |
| **pool_id** | **string**|  | [optional] |

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

## `uniswapV3GetPoolsHourDataHistorical()`

```php
uniswapV3GetPoolsHourDataHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\UniswapV3PoolHourDataV3DTO[]
```

PoolsHourData (historical)

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
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$pool_id = 'pool_id_example'; // string | 

try {
    $result = $apiInstance->uniswapV3GetPoolsHourDataHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetPoolsHourDataHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |
| **pool_id** | **string**|  | [optional] |

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

## `uniswapV3GetPositionsHistorical()`

```php
uniswapV3GetPositionsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\UniswapV3PositionV3DTO[]
```

Positions (historical)

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
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$pool_id = 'pool_id_example'; // string | 

try {
    $result = $apiInstance->uniswapV3GetPositionsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetPositionsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |
| **pool_id** | **string**|  | [optional] |

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

## `uniswapV3GetPositionsSnaphotsHistorical()`

```php
uniswapV3GetPositionsSnaphotsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\UniswapV3PositionSnapshotV3DTO[]
```

PositionsSnaphots (historical)

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
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$pool_id = 'pool_id_example'; // string | 

try {
    $result = $apiInstance->uniswapV3GetPositionsSnaphotsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetPositionsSnaphotsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |
| **pool_id** | **string**|  | [optional] |

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

## `uniswapV3GetSwapsHistorical()`

```php
uniswapV3GetSwapsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\UniswapV3SwapV3DTO[]
```

Swaps (historical) 🔥

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
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$pool_id = 'pool_id_example'; // string | 

try {
    $result = $apiInstance->uniswapV3GetSwapsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetSwapsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |
| **pool_id** | **string**|  | [optional] |

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

## `uniswapV3GetTicksDayDataHistorical()`

```php
uniswapV3GetTicksDayDataHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\UniswapV3TickDayDataV3DTO[]
```

TicksDayData (historical)

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
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$pool_id = 'pool_id_example'; // string | 

try {
    $result = $apiInstance->uniswapV3GetTicksDayDataHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetTicksDayDataHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |
| **pool_id** | **string**|  | [optional] |

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

## `uniswapV3GetTicksHistorical()`

```php
uniswapV3GetTicksHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\UniswapV3TickV3DTO[]
```

Ticks (historical)

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
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$pool_id = 'pool_id_example'; // string | 

try {
    $result = $apiInstance->uniswapV3GetTicksHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetTicksHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |
| **pool_id** | **string**|  | [optional] |

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

## `uniswapV3GetTokensDayDataHistorical()`

```php
uniswapV3GetTokensDayDataHistorical($start_block, $end_block, $start_date, $end_date, $token_id): \OpenAPI\Client\Model\UniswapV3TokenV3DayDataDTO[]
```

TokensDayData (historical)

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
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$token_id = 'token_id_example'; // string | 

try {
    $result = $apiInstance->uniswapV3GetTokensDayDataHistorical($start_block, $end_block, $start_date, $end_date, $token_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetTokensDayDataHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |
| **token_id** | **string**|  | [optional] |

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

## `uniswapV3GetTokensHistorical()`

```php
uniswapV3GetTokensHistorical($start_block, $end_block, $start_date, $end_date, $token_id): \OpenAPI\Client\Model\UniswapV3TokenV3DTO[]
```

Tokens (historical) 🔥

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
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$token_id = 'token_id_example'; // string | 

try {
    $result = $apiInstance->uniswapV3GetTokensHistorical($start_block, $end_block, $start_date, $end_date, $token_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetTokensHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |
| **token_id** | **string**|  | [optional] |

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

## `uniswapV3GetTokensHourDataHistorical()`

```php
uniswapV3GetTokensHourDataHistorical($start_block, $end_block, $start_date, $end_date, $token_id): \OpenAPI\Client\Model\UniswapV3TokenHourDataV3DTO[]
```

TokensHourData (historical)

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
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$token_id = 'token_id_example'; // string | 

try {
    $result = $apiInstance->uniswapV3GetTokensHourDataHistorical($start_block, $end_block, $start_date, $end_date, $token_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetTokensHourDataHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |
| **token_id** | **string**|  | [optional] |

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

## `uniswapV3GetTransactionsHistorical()`

```php
uniswapV3GetTransactionsHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\UniswapV3TransactionV3DTO[]
```

Transactions (historical)

Gets transactions.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV3Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 

try {
    $result = $apiInstance->uniswapV3GetTransactionsHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV3Api->uniswapV3GetTransactionsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV3TransactionV3DTO[]**](../Model/UniswapV3TransactionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
