# OpenAPI\Client\DexApi

All URIs are relative to https://onchain.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**dexGetBatchDTOsHistorical()**](DexApi.md#dexGetBatchDTOsHistorical) | **GET** /dapps/dex/BatchDTOs/historical | BatchDTOs (historical) 🔥 |
| [**dexGetBatchesHistorical()**](DexApi.md#dexGetBatchesHistorical) | **GET** /dapps/dex/batches/historical | Batches (historical) |
| [**dexGetDepositDTOsHistorical()**](DexApi.md#dexGetDepositDTOsHistorical) | **GET** /dapps/dex/DepositDTOs/historical | DepositDTOs (historical) 🔥 |
| [**dexGetDepositsHistorical()**](DexApi.md#dexGetDepositsHistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical) |
| [**dexGetOrderDTOsHistorical()**](DexApi.md#dexGetOrderDTOsHistorical) | **GET** /dapps/dex/OrderDTOs/historical | OrderDTOs (historical) 🔥 |
| [**dexGetOrdersHistorical()**](DexApi.md#dexGetOrdersHistorical) | **GET** /dapps/dex/orders/historical | Orders (historical) |
| [**dexGetPriceDTOsHistorical()**](DexApi.md#dexGetPriceDTOsHistorical) | **GET** /dapps/dex/PriceDTOs/historical | PriceDTOs (historical) 🔥 |
| [**dexGetPricesHistorical()**](DexApi.md#dexGetPricesHistorical) | **GET** /dapps/dex/prices/historical | Prices (historical) |
| [**dexGetSolutionDTOsHistorical()**](DexApi.md#dexGetSolutionDTOsHistorical) | **GET** /dapps/dex/SolutionDTOs/historical | SolutionDTOs (historical) 🔥 |
| [**dexGetSolutionsHistorical()**](DexApi.md#dexGetSolutionsHistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical) |
| [**dexGetStatsDTOsHistorical()**](DexApi.md#dexGetStatsDTOsHistorical) | **GET** /dapps/dex/StatsDTOs/historical | StatsDTOs (historical) 🔥 |
| [**dexGetStatsHistorical()**](DexApi.md#dexGetStatsHistorical) | **GET** /dapps/dex/stats/historical | Stats (historical) |
| [**dexGetTokenDTOsHistorical()**](DexApi.md#dexGetTokenDTOsHistorical) | **GET** /dapps/dex/TokenDTOs/historical | TokenDTOs (historical) 🔥 |
| [**dexGetTokensHistorical()**](DexApi.md#dexGetTokensHistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical) 🔥 |
| [**dexGetTradeDTOsHistorical()**](DexApi.md#dexGetTradeDTOsHistorical) | **GET** /dapps/dex/TradeDTOs/historical | TradeDTOs (historical) 🔥 |
| [**dexGetTradesHistorical()**](DexApi.md#dexGetTradesHistorical) | **GET** /dapps/dex/trades/historical | Trades (historical) 🔥 |
| [**dexGetUserDTOsHistorical()**](DexApi.md#dexGetUserDTOsHistorical) | **GET** /dapps/dex/UserDTOs/historical | UserDTOs (historical) 🔥 |
| [**dexGetUsersHistorical()**](DexApi.md#dexGetUsersHistorical) | **GET** /dapps/dex/users/historical | Users (historical) |
| [**dexGetWithdrawDTOsHistorical()**](DexApi.md#dexGetWithdrawDTOsHistorical) | **GET** /dapps/dex/WithdrawDTOs/historical | WithdrawDTOs (historical) 🔥 |
| [**dexGetWithdrawRequestDTOsHistorical()**](DexApi.md#dexGetWithdrawRequestDTOsHistorical) | **GET** /dapps/dex/WithdrawRequestDTOs/historical | WithdrawRequestDTOs (historical) 🔥 |
| [**dexGetWithdrawsHistorical()**](DexApi.md#dexGetWithdrawsHistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical) |
| [**dexGetWithdrawsRequestsHistorical()**](DexApi.md#dexGetWithdrawsRequestsHistorical) | **GET** /dapps/dex/withdrawsRequests/historical | WithdrawsRequests (historical) |


## `dexGetBatchDTOsHistorical()`

```php
dexGetBatchDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\DexBatchDTO[]
```

BatchDTOs (historical) 🔥

Gets BatchDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
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
    $result = $apiInstance->dexGetBatchDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetBatchDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\DexBatchDTO[]**](../Model/DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetBatchesHistorical()`

```php
dexGetBatchesHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\DexBatchDTO[]
```

Batches (historical)

Gets batches.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 

try {
    $result = $apiInstance->dexGetBatchesHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetBatchesHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\DexBatchDTO[]**](../Model/DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetDepositDTOsHistorical()`

```php
dexGetDepositDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\DexDepositDTO[]
```

DepositDTOs (historical) 🔥

Gets DepositDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
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
    $result = $apiInstance->dexGetDepositDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetDepositDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\DexDepositDTO[]**](../Model/DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetDepositsHistorical()`

```php
dexGetDepositsHistorical($start_block, $end_block, $start_date, $end_date, $token_id): \OpenAPI\Client\Model\DexDepositDTO[]
```

Deposits (historical)

Gets deposits.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
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
    $result = $apiInstance->dexGetDepositsHistorical($start_block, $end_block, $start_date, $end_date, $token_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetDepositsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\DexDepositDTO[]**](../Model/DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetOrderDTOsHistorical()`

```php
dexGetOrderDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\DexOrderDTO[]
```

OrderDTOs (historical) 🔥

Gets OrderDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
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
    $result = $apiInstance->dexGetOrderDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetOrderDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\DexOrderDTO[]**](../Model/DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetOrdersHistorical()`

```php
dexGetOrdersHistorical($start_block, $end_block, $start_date, $end_date, $token_id): \OpenAPI\Client\Model\DexOrderDTO[]
```

Orders (historical)

Gets orders.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
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
    $result = $apiInstance->dexGetOrdersHistorical($start_block, $end_block, $start_date, $end_date, $token_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetOrdersHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\DexOrderDTO[]**](../Model/DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetPriceDTOsHistorical()`

```php
dexGetPriceDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\DexPriceDTO[]
```

PriceDTOs (historical) 🔥

Gets PriceDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
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
    $result = $apiInstance->dexGetPriceDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetPriceDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\DexPriceDTO[]**](../Model/DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetPricesHistorical()`

```php
dexGetPricesHistorical($start_block, $end_block, $start_date, $end_date, $token_id): \OpenAPI\Client\Model\DexPriceDTO[]
```

Prices (historical)

Gets prices.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
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
    $result = $apiInstance->dexGetPricesHistorical($start_block, $end_block, $start_date, $end_date, $token_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetPricesHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\DexPriceDTO[]**](../Model/DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetSolutionDTOsHistorical()`

```php
dexGetSolutionDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\DexSolutionDTO[]
```

SolutionDTOs (historical) 🔥

Gets SolutionDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
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
    $result = $apiInstance->dexGetSolutionDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetSolutionDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\DexSolutionDTO[]**](../Model/DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetSolutionsHistorical()`

```php
dexGetSolutionsHistorical($start_block, $end_block, $start_date, $end_date, $token_id): \OpenAPI\Client\Model\DexSolutionDTO[]
```

Solutions (historical)

Gets solutions.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
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
    $result = $apiInstance->dexGetSolutionsHistorical($start_block, $end_block, $start_date, $end_date, $token_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetSolutionsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\DexSolutionDTO[]**](../Model/DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetStatsDTOsHistorical()`

```php
dexGetStatsDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\DexStatsDTO[]
```

StatsDTOs (historical) 🔥

Gets StatsDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
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
    $result = $apiInstance->dexGetStatsDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetStatsDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\DexStatsDTO[]**](../Model/DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetStatsHistorical()`

```php
dexGetStatsHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\DexStatsDTO[]
```

Stats (historical)

Gets stats.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 

try {
    $result = $apiInstance->dexGetStatsHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetStatsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\DexStatsDTO[]**](../Model/DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetTokenDTOsHistorical()`

```php
dexGetTokenDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\DexTokenDTO[]
```

TokenDTOs (historical) 🔥

Gets TokenDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
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
    $result = $apiInstance->dexGetTokenDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetTokenDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\DexTokenDTO[]**](../Model/DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetTokensHistorical()`

```php
dexGetTokensHistorical($start_block, $end_block, $start_date, $end_date, $token_id): \OpenAPI\Client\Model\DexTokenDTO[]
```

Tokens (historical) 🔥

Gets tokens.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
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
    $result = $apiInstance->dexGetTokensHistorical($start_block, $end_block, $start_date, $end_date, $token_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetTokensHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\DexTokenDTO[]**](../Model/DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetTradeDTOsHistorical()`

```php
dexGetTradeDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\DexTradeDTO[]
```

TradeDTOs (historical) 🔥

Gets TradeDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
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
    $result = $apiInstance->dexGetTradeDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetTradeDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\DexTradeDTO[]**](../Model/DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetTradesHistorical()`

```php
dexGetTradesHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\DexTradeDTO[]
```

Trades (historical) 🔥

Gets trades.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 

try {
    $result = $apiInstance->dexGetTradesHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetTradesHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\DexTradeDTO[]**](../Model/DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetUserDTOsHistorical()`

```php
dexGetUserDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\DexUserDTO[]
```

UserDTOs (historical) 🔥

Gets UserDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
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
    $result = $apiInstance->dexGetUserDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetUserDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\DexUserDTO[]**](../Model/DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetUsersHistorical()`

```php
dexGetUsersHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\DexUserDTO[]
```

Users (historical)

Gets users.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 

try {
    $result = $apiInstance->dexGetUsersHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetUsersHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\DexUserDTO[]**](../Model/DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetWithdrawDTOsHistorical()`

```php
dexGetWithdrawDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\DexWithdrawDTO[]
```

WithdrawDTOs (historical) 🔥

Gets WithdrawDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
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
    $result = $apiInstance->dexGetWithdrawDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetWithdrawDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\DexWithdrawDTO[]**](../Model/DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetWithdrawRequestDTOsHistorical()`

```php
dexGetWithdrawRequestDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\DexWithdrawRequestDTO[]
```

WithdrawRequestDTOs (historical) 🔥

Gets WithdrawRequestDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
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
    $result = $apiInstance->dexGetWithdrawRequestDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetWithdrawRequestDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\DexWithdrawRequestDTO[]**](../Model/DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetWithdrawsHistorical()`

```php
dexGetWithdrawsHistorical($start_block, $end_block, $start_date, $end_date, $token_id): \OpenAPI\Client\Model\DexWithdrawDTO[]
```

Withdraws (historical)

Gets withdraws.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
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
    $result = $apiInstance->dexGetWithdrawsHistorical($start_block, $end_block, $start_date, $end_date, $token_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetWithdrawsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\DexWithdrawDTO[]**](../Model/DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `dexGetWithdrawsRequestsHistorical()`

```php
dexGetWithdrawsRequestsHistorical($start_block, $end_block, $start_date, $end_date, $token_id): \OpenAPI\Client\Model\DexWithdrawRequestDTO[]
```

WithdrawsRequests (historical)

Gets withdraws requests.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DexApi(
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
    $result = $apiInstance->dexGetWithdrawsRequestsHistorical($start_block, $end_block, $start_date, $end_date, $token_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DexApi->dexGetWithdrawsRequestsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\DexWithdrawRequestDTO[]**](../Model/DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
