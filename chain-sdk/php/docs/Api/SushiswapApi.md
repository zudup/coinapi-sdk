# OpenAPI\Client\SushiswapApi

All URIs are relative to https://onchain.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**dappsSushiswapBundlesHistoricalGet()**](SushiswapApi.md#dappsSushiswapBundlesHistoricalGet) | **GET** /dapps/sushiswap/bundles/historical |  |
| [**dappsSushiswapBurnsHistoricalGet()**](SushiswapApi.md#dappsSushiswapBurnsHistoricalGet) | **GET** /dapps/sushiswap/burns/historical |  |
| [**dappsSushiswapDayDataHistoricalGet()**](SushiswapApi.md#dappsSushiswapDayDataHistoricalGet) | **GET** /dapps/sushiswap/dayData/historical |  |
| [**dappsSushiswapFactoryHistoricalGet()**](SushiswapApi.md#dappsSushiswapFactoryHistoricalGet) | **GET** /dapps/sushiswap/factory/historical |  |
| [**dappsSushiswapHourDataHistoricalGet()**](SushiswapApi.md#dappsSushiswapHourDataHistoricalGet) | **GET** /dapps/sushiswap/hourData/historical |  |
| [**dappsSushiswapLiquidityPositionHistoricalGet()**](SushiswapApi.md#dappsSushiswapLiquidityPositionHistoricalGet) | **GET** /dapps/sushiswap/liquidityPosition/historical |  |
| [**dappsSushiswapLiquidityPositionSnapshotsHistoricalGet()**](SushiswapApi.md#dappsSushiswapLiquidityPositionSnapshotsHistoricalGet) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical |  |
| [**dappsSushiswapMintsHistoricalGet()**](SushiswapApi.md#dappsSushiswapMintsHistoricalGet) | **GET** /dapps/sushiswap/mints/historical |  |
| [**dappsSushiswapPoolDayDataHistoricalGet()**](SushiswapApi.md#dappsSushiswapPoolDayDataHistoricalGet) | **GET** /dapps/sushiswap/poolDayData/historical |  |
| [**dappsSushiswapPoolHourDataHistoricalGet()**](SushiswapApi.md#dappsSushiswapPoolHourDataHistoricalGet) | **GET** /dapps/sushiswap/poolHourData/historical |  |
| [**dappsSushiswapPoolsCurrentGet()**](SushiswapApi.md#dappsSushiswapPoolsCurrentGet) | **GET** /dapps/sushiswap/pools/current | GetPools |
| [**dappsSushiswapPoolsHistoricalGet()**](SushiswapApi.md#dappsSushiswapPoolsHistoricalGet) | **GET** /dapps/sushiswap/pools/historical | GetPools (historical) |
| [**dappsSushiswapSwapsCurrentGet()**](SushiswapApi.md#dappsSushiswapSwapsCurrentGet) | **GET** /dapps/sushiswap/swaps/current | GetSwaps |
| [**dappsSushiswapSwapsHistoricalGet()**](SushiswapApi.md#dappsSushiswapSwapsHistoricalGet) | **GET** /dapps/sushiswap/swaps/historical | GetSwaps (historical) |
| [**dappsSushiswapTokenDayDataHistoricalGet()**](SushiswapApi.md#dappsSushiswapTokenDayDataHistoricalGet) | **GET** /dapps/sushiswap/tokenDayData/historical |  |
| [**dappsSushiswapTokensCurrentGet()**](SushiswapApi.md#dappsSushiswapTokensCurrentGet) | **GET** /dapps/sushiswap/tokens/current | GetTokens |
| [**dappsSushiswapTokensHistoricalGet()**](SushiswapApi.md#dappsSushiswapTokensHistoricalGet) | **GET** /dapps/sushiswap/tokens/historical | GetTokens (historical) |
| [**dappsSushiswapTransactionsHistoricalGet()**](SushiswapApi.md#dappsSushiswapTransactionsHistoricalGet) | **GET** /dapps/sushiswap/transactions/historical |  |
| [**dappsSushiswapUsersHistoricalGet()**](SushiswapApi.md#dappsSushiswapUsersHistoricalGet) | **GET** /dapps/sushiswap/users/historical |  |


## `dappsSushiswapBundlesHistoricalGet()`

```php
dappsSushiswapBundlesHistoricalGet($start_block, $end_block, $start_date, $end_date)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int
$end_block = 56; // int
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime

try {
    $apiInstance->dappsSushiswapBundlesHistoricalGet($start_block, $end_block, $start_date, $end_date);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->dappsSushiswapBundlesHistoricalGet: ', $e->getMessage(), PHP_EOL;
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dappsSushiswapBurnsHistoricalGet()`

```php
dappsSushiswapBurnsHistoricalGet($start_block, $end_block, $start_date, $end_date, $pool_id)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int
$end_block = 56; // int
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$pool_id = 'pool_id_example'; // string

try {
    $apiInstance->dappsSushiswapBurnsHistoricalGet($start_block, $end_block, $start_date, $end_date, $pool_id);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->dappsSushiswapBurnsHistoricalGet: ', $e->getMessage(), PHP_EOL;
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dappsSushiswapDayDataHistoricalGet()`

```php
dappsSushiswapDayDataHistoricalGet($start_block, $end_block, $start_date, $end_date)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int
$end_block = 56; // int
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime

try {
    $apiInstance->dappsSushiswapDayDataHistoricalGet($start_block, $end_block, $start_date, $end_date);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->dappsSushiswapDayDataHistoricalGet: ', $e->getMessage(), PHP_EOL;
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dappsSushiswapFactoryHistoricalGet()`

```php
dappsSushiswapFactoryHistoricalGet($start_block, $end_block, $start_date, $end_date)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int
$end_block = 56; // int
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime

try {
    $apiInstance->dappsSushiswapFactoryHistoricalGet($start_block, $end_block, $start_date, $end_date);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->dappsSushiswapFactoryHistoricalGet: ', $e->getMessage(), PHP_EOL;
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dappsSushiswapHourDataHistoricalGet()`

```php
dappsSushiswapHourDataHistoricalGet($start_block, $end_block, $start_date, $end_date)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int
$end_block = 56; // int
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime

try {
    $apiInstance->dappsSushiswapHourDataHistoricalGet($start_block, $end_block, $start_date, $end_date);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->dappsSushiswapHourDataHistoricalGet: ', $e->getMessage(), PHP_EOL;
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dappsSushiswapLiquidityPositionHistoricalGet()`

```php
dappsSushiswapLiquidityPositionHistoricalGet($start_block, $end_block, $start_date, $end_date, $pool_id)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int
$end_block = 56; // int
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$pool_id = 'pool_id_example'; // string

try {
    $apiInstance->dappsSushiswapLiquidityPositionHistoricalGet($start_block, $end_block, $start_date, $end_date, $pool_id);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->dappsSushiswapLiquidityPositionHistoricalGet: ', $e->getMessage(), PHP_EOL;
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dappsSushiswapLiquidityPositionSnapshotsHistoricalGet()`

```php
dappsSushiswapLiquidityPositionSnapshotsHistoricalGet($start_block, $end_block, $start_date, $end_date, $pool_id)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int
$end_block = 56; // int
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$pool_id = 'pool_id_example'; // string

try {
    $apiInstance->dappsSushiswapLiquidityPositionSnapshotsHistoricalGet($start_block, $end_block, $start_date, $end_date, $pool_id);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->dappsSushiswapLiquidityPositionSnapshotsHistoricalGet: ', $e->getMessage(), PHP_EOL;
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dappsSushiswapMintsHistoricalGet()`

```php
dappsSushiswapMintsHistoricalGet($start_block, $end_block, $start_date, $end_date, $pool_id)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int
$end_block = 56; // int
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$pool_id = 'pool_id_example'; // string

try {
    $apiInstance->dappsSushiswapMintsHistoricalGet($start_block, $end_block, $start_date, $end_date, $pool_id);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->dappsSushiswapMintsHistoricalGet: ', $e->getMessage(), PHP_EOL;
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dappsSushiswapPoolDayDataHistoricalGet()`

```php
dappsSushiswapPoolDayDataHistoricalGet($start_block, $end_block, $start_date, $end_date, $pool_id)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int
$end_block = 56; // int
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$pool_id = 'pool_id_example'; // string

try {
    $apiInstance->dappsSushiswapPoolDayDataHistoricalGet($start_block, $end_block, $start_date, $end_date, $pool_id);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->dappsSushiswapPoolDayDataHistoricalGet: ', $e->getMessage(), PHP_EOL;
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dappsSushiswapPoolHourDataHistoricalGet()`

```php
dappsSushiswapPoolHourDataHistoricalGet($start_block, $end_block, $start_date, $end_date, $pool_id)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int
$end_block = 56; // int
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$pool_id = 'pool_id_example'; // string

try {
    $apiInstance->dappsSushiswapPoolHourDataHistoricalGet($start_block, $end_block, $start_date, $end_date, $pool_id);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->dappsSushiswapPoolHourDataHistoricalGet: ', $e->getMessage(), PHP_EOL;
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dappsSushiswapPoolsCurrentGet()`

```php
dappsSushiswapPoolsCurrentGet(): \OpenAPI\Client\Model\PairDTO[]
```

GetPools

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->dappsSushiswapPoolsCurrentGet();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->dappsSushiswapPoolsCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\PairDTO[]**](../Model/PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dappsSushiswapPoolsHistoricalGet()`

```php
dappsSushiswapPoolsHistoricalGet($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\PairDTO[]
```

GetPools (historical)

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int
$end_block = 56; // int
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$pool_id = 'pool_id_example'; // string

try {
    $result = $apiInstance->dappsSushiswapPoolsHistoricalGet($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->dappsSushiswapPoolsHistoricalGet: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\PairDTO[]**](../Model/PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dappsSushiswapSwapsCurrentGet()`

```php
dappsSushiswapSwapsCurrentGet(): \OpenAPI\Client\Model\SwapDTO[]
```

GetSwaps

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->dappsSushiswapSwapsCurrentGet();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->dappsSushiswapSwapsCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\SwapDTO[]**](../Model/SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dappsSushiswapSwapsHistoricalGet()`

```php
dappsSushiswapSwapsHistoricalGet($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\SwapDTO[]
```

GetSwaps (historical)

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int
$end_block = 56; // int
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$pool_id = 'pool_id_example'; // string

try {
    $result = $apiInstance->dappsSushiswapSwapsHistoricalGet($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->dappsSushiswapSwapsHistoricalGet: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\SwapDTO[]**](../Model/SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dappsSushiswapTokenDayDataHistoricalGet()`

```php
dappsSushiswapTokenDayDataHistoricalGet($start_block, $end_block, $start_date, $end_date, $token_id)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int
$end_block = 56; // int
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$token_id = 'token_id_example'; // string

try {
    $apiInstance->dappsSushiswapTokenDayDataHistoricalGet($start_block, $end_block, $start_date, $end_date, $token_id);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->dappsSushiswapTokenDayDataHistoricalGet: ', $e->getMessage(), PHP_EOL;
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dappsSushiswapTokensCurrentGet()`

```php
dappsSushiswapTokensCurrentGet(): \OpenAPI\Client\Model\TokenDTO[]
```

GetTokens

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->dappsSushiswapTokensCurrentGet();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->dappsSushiswapTokensCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\TokenDTO[]**](../Model/TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dappsSushiswapTokensHistoricalGet()`

```php
dappsSushiswapTokensHistoricalGet($start_block, $end_block, $start_date, $end_date, $token_id): \OpenAPI\Client\Model\TokenDTO[]
```

GetTokens (historical)

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int
$end_block = 56; // int
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$token_id = 'token_id_example'; // string

try {
    $result = $apiInstance->dappsSushiswapTokensHistoricalGet($start_block, $end_block, $start_date, $end_date, $token_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->dappsSushiswapTokensHistoricalGet: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\TokenDTO[]**](../Model/TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dappsSushiswapTransactionsHistoricalGet()`

```php
dappsSushiswapTransactionsHistoricalGet($start_block, $end_block, $start_date, $end_date)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int
$end_block = 56; // int
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime

try {
    $apiInstance->dappsSushiswapTransactionsHistoricalGet($start_block, $end_block, $start_date, $end_date);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->dappsSushiswapTransactionsHistoricalGet: ', $e->getMessage(), PHP_EOL;
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dappsSushiswapUsersHistoricalGet()`

```php
dappsSushiswapUsersHistoricalGet($start_block, $end_block, $start_date, $end_date)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int
$end_block = 56; // int
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime

try {
    $apiInstance->dappsSushiswapUsersHistoricalGet($start_block, $end_block, $start_date, $end_date);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->dappsSushiswapUsersHistoricalGet: ', $e->getMessage(), PHP_EOL;
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
