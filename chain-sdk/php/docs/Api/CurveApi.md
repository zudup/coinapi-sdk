# OpenAPI\Client\CurveApi

All URIs are relative to https://onchain.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**curveGetAccountDTOsHistorical()**](CurveApi.md#curveGetAccountDTOsHistorical) | **GET** /dapps/curve/AccountDTOs/historical | AccountDTOs (historical) 🔥 |
| [**curveGetAccountsHistorical()**](CurveApi.md#curveGetAccountsHistorical) | **GET** /dapps/curve/accounts/historical | Accounts (historical) |
| [**curveGetAddLiquidityEventDTOsHistorical()**](CurveApi.md#curveGetAddLiquidityEventDTOsHistorical) | **GET** /dapps/curve/AddLiquidityEventDTOs/historical | AddLiquidityEventDTOs (historical) 🔥 |
| [**curveGetAddLiquidityEventsHistorical()**](CurveApi.md#curveGetAddLiquidityEventsHistorical) | **GET** /dapps/curve/addLiquidityEvents/historical | AddLiquidityEvents (historical) |
| [**curveGetAdminFeeChangeLogDTOsHistorical()**](CurveApi.md#curveGetAdminFeeChangeLogDTOsHistorical) | **GET** /dapps/curve/AdminFeeChangeLogDTOs/historical | AdminFeeChangeLogDTOs (historical) 🔥 |
| [**curveGetAdminFeeChangeLogsHistorical()**](CurveApi.md#curveGetAdminFeeChangeLogsHistorical) | **GET** /dapps/curve/adminFeeChangeLogs/historical | AdminFeeChangeLogs (historical) |
| [**curveGetAmplificationCoeffChangeLogDTOsHistorical()**](CurveApi.md#curveGetAmplificationCoeffChangeLogDTOsHistorical) | **GET** /dapps/curve/AmplificationCoeffChangeLogDTOs/historical | AmplificationCoeffChangeLogDTOs (historical) 🔥 |
| [**curveGetAmplificationCoeffChangeLogsHistorical()**](CurveApi.md#curveGetAmplificationCoeffChangeLogsHistorical) | **GET** /dapps/curve/amplificationCoeffChangeLogs/historical | AmplificationCoeffChangeLogs (historical) |
| [**curveGetCoinDTOsHistorical()**](CurveApi.md#curveGetCoinDTOsHistorical) | **GET** /dapps/curve/CoinDTOs/historical | CoinDTOs (historical) 🔥 |
| [**curveGetCoinsHistorical()**](CurveApi.md#curveGetCoinsHistorical) | **GET** /dapps/curve/coins/historical | Coins (historical) |
| [**curveGetContractDTOsHistorical()**](CurveApi.md#curveGetContractDTOsHistorical) | **GET** /dapps/curve/ContractDTOs/historical | ContractDTOs (historical) 🔥 |
| [**curveGetContractVersionDTOsHistorical()**](CurveApi.md#curveGetContractVersionDTOsHistorical) | **GET** /dapps/curve/ContractVersionDTOs/historical | ContractVersionDTOs (historical) 🔥 |
| [**curveGetContractsHistorical()**](CurveApi.md#curveGetContractsHistorical) | **GET** /dapps/curve/contracts/historical | Contracts (historical) |
| [**curveGetContractsVersionsHistorical()**](CurveApi.md#curveGetContractsVersionsHistorical) | **GET** /dapps/curve/contractsVersions/historical | ContractsVersions (historical) |
| [**curveGetDailyVolumeDTOsHistorical()**](CurveApi.md#curveGetDailyVolumeDTOsHistorical) | **GET** /dapps/curve/DailyVolumeDTOs/historical | DailyVolumeDTOs (historical) 🔥 |
| [**curveGetDailyVolumesHistorical()**](CurveApi.md#curveGetDailyVolumesHistorical) | **GET** /dapps/curve/dailyVolumes/historical | DailyVolumes (historical) |
| [**curveGetExchangeDTOsHistorical()**](CurveApi.md#curveGetExchangeDTOsHistorical) | **GET** /dapps/curve/ExchangeDTOs/historical | ExchangeDTOs (historical) 🔥 |
| [**curveGetExchangesHistorical()**](CurveApi.md#curveGetExchangesHistorical) | **GET** /dapps/curve/exchanges/historical | Exchanges (historical) 🔥 |
| [**curveGetFeeChangeLogDTOsHistorical()**](CurveApi.md#curveGetFeeChangeLogDTOsHistorical) | **GET** /dapps/curve/FeeChangeLogDTOs/historical | FeeChangeLogDTOs (historical) 🔥 |
| [**curveGetFeeChangeLogsHistorical()**](CurveApi.md#curveGetFeeChangeLogsHistorical) | **GET** /dapps/curve/feeChangeLogs/historical | FeeChangeLogs (historical) |
| [**curveGetGaugeDTOsHistorical()**](CurveApi.md#curveGetGaugeDTOsHistorical) | **GET** /dapps/curve/GaugeDTOs/historical | GaugeDTOs (historical) 🔥 |
| [**curveGetGaugeDepositDTOsHistorical()**](CurveApi.md#curveGetGaugeDepositDTOsHistorical) | **GET** /dapps/curve/GaugeDepositDTOs/historical | GaugeDepositDTOs (historical) 🔥 |
| [**curveGetGaugeLiquidityDTOsHistorical()**](CurveApi.md#curveGetGaugeLiquidityDTOsHistorical) | **GET** /dapps/curve/GaugeLiquidityDTOs/historical | GaugeLiquidityDTOs (historical) 🔥 |
| [**curveGetGaugeTotalWeightDTOsHistorical()**](CurveApi.md#curveGetGaugeTotalWeightDTOsHistorical) | **GET** /dapps/curve/GaugeTotalWeightDTOs/historical | GaugeTotalWeightDTOs (historical) 🔥 |
| [**curveGetGaugeTypeDTOsHistorical()**](CurveApi.md#curveGetGaugeTypeDTOsHistorical) | **GET** /dapps/curve/GaugeTypeDTOs/historical | GaugeTypeDTOs (historical) 🔥 |
| [**curveGetGaugeTypeWeightDTOsHistorical()**](CurveApi.md#curveGetGaugeTypeWeightDTOsHistorical) | **GET** /dapps/curve/GaugeTypeWeightDTOs/historical | GaugeTypeWeightDTOs (historical) 🔥 |
| [**curveGetGaugeWeightDTOsHistorical()**](CurveApi.md#curveGetGaugeWeightDTOsHistorical) | **GET** /dapps/curve/GaugeWeightDTOs/historical | GaugeWeightDTOs (historical) 🔥 |
| [**curveGetGaugeWeightVoteDTOsHistorical()**](CurveApi.md#curveGetGaugeWeightVoteDTOsHistorical) | **GET** /dapps/curve/GaugeWeightVoteDTOs/historical | GaugeWeightVoteDTOs (historical) 🔥 |
| [**curveGetGaugeWithdrawDTOsHistorical()**](CurveApi.md#curveGetGaugeWithdrawDTOsHistorical) | **GET** /dapps/curve/GaugeWithdrawDTOs/historical | GaugeWithdrawDTOs (historical) 🔥 |
| [**curveGetGaugesDepositsHistorical()**](CurveApi.md#curveGetGaugesDepositsHistorical) | **GET** /dapps/curve/gaugesDeposits/historical | GaugesDeposits (historical) |
| [**curveGetGaugesHistorical()**](CurveApi.md#curveGetGaugesHistorical) | **GET** /dapps/curve/gauges/historical | Gauges (historical) |
| [**curveGetGaugesLiquidityHistorical()**](CurveApi.md#curveGetGaugesLiquidityHistorical) | **GET** /dapps/curve/gaugesLiquidity/historical | GaugesLiquidity (historical) |
| [**curveGetGaugesTotalWeightsHistorical()**](CurveApi.md#curveGetGaugesTotalWeightsHistorical) | **GET** /dapps/curve/gaugesTotalWeights/historical | GaugesTotalWeights (historical) |
| [**curveGetGaugesTypesHistorical()**](CurveApi.md#curveGetGaugesTypesHistorical) | **GET** /dapps/curve/gaugesTypes/historical | GaugesTypes (historical) |
| [**curveGetGaugesTypesWeightsHistorical()**](CurveApi.md#curveGetGaugesTypesWeightsHistorical) | **GET** /dapps/curve/gaugesTypesWeights/historical | GaugesTypesWeights (historical) |
| [**curveGetGaugesWeightsHistorical()**](CurveApi.md#curveGetGaugesWeightsHistorical) | **GET** /dapps/curve/gaugesWeights/historical | GaugesWeights (historical) |
| [**curveGetGaugesWeightsVotesHistorical()**](CurveApi.md#curveGetGaugesWeightsVotesHistorical) | **GET** /dapps/curve/gaugesWeightsVotes/historical | GaugesWeightsVotes (historical) |
| [**curveGetGaugesWithdrawHistorical()**](CurveApi.md#curveGetGaugesWithdrawHistorical) | **GET** /dapps/curve/gaugesWithdraws/historical | GaugesWithdraw (historical) |
| [**curveGetHourlyVolumeDTOsHistorical()**](CurveApi.md#curveGetHourlyVolumeDTOsHistorical) | **GET** /dapps/curve/HourlyVolumeDTOs/historical | HourlyVolumeDTOs (historical) 🔥 |
| [**curveGetHourlyVolumesHistorical()**](CurveApi.md#curveGetHourlyVolumesHistorical) | **GET** /dapps/curve/hourlyVolumes/historical | HourlyVolumes (historical) |
| [**curveGetLpTokenDTOsHistorical()**](CurveApi.md#curveGetLpTokenDTOsHistorical) | **GET** /dapps/curve/LpTokenDTOs/historical | LpTokenDTOs (historical) 🔥 |
| [**curveGetLpTokensHistorical()**](CurveApi.md#curveGetLpTokensHistorical) | **GET** /dapps/curve/lpTokens/historical | LpTokens (historical) |
| [**curveGetPoolDTOsHistorical()**](CurveApi.md#curveGetPoolDTOsHistorical) | **GET** /dapps/curve/PoolDTOs/historical | PoolDTOs (historical) 🔥 |
| [**curveGetPoolsHistorical()**](CurveApi.md#curveGetPoolsHistorical) | **GET** /dapps/curve/pools/historical | Pools (historical) 🔥 |
| [**curveGetProposalDTOsHistorical()**](CurveApi.md#curveGetProposalDTOsHistorical) | **GET** /dapps/curve/ProposalDTOs/historical | ProposalDTOs (historical) 🔥 |
| [**curveGetProposalVoteDTOsHistorical()**](CurveApi.md#curveGetProposalVoteDTOsHistorical) | **GET** /dapps/curve/ProposalVoteDTOs/historical | ProposalVoteDTOs (historical) 🔥 |
| [**curveGetProposalsHistorical()**](CurveApi.md#curveGetProposalsHistorical) | **GET** /dapps/curve/proposals/historical | Proposals (historical) |
| [**curveGetProposalsVotesHistorical()**](CurveApi.md#curveGetProposalsVotesHistorical) | **GET** /dapps/curve/proposalsVotes/historical | ProposalsVotes (historical) |
| [**curveGetRemoveLiquidityEventDTOsHistorical()**](CurveApi.md#curveGetRemoveLiquidityEventDTOsHistorical) | **GET** /dapps/curve/RemoveLiquidityEventDTOs/historical | RemoveLiquidityEventDTOs (historical) 🔥 |
| [**curveGetRemoveLiquidityEventsHistorical()**](CurveApi.md#curveGetRemoveLiquidityEventsHistorical) | **GET** /dapps/curve/removeLiquidityEvents/historical | RemoveLiquidityEvents (historical) |
| [**curveGetRemoveLiquidityOneEventDTOsHistorical()**](CurveApi.md#curveGetRemoveLiquidityOneEventDTOsHistorical) | **GET** /dapps/curve/RemoveLiquidityOneEventDTOs/historical | RemoveLiquidityOneEventDTOs (historical) 🔥 |
| [**curveGetRemoveLiquidityOneEventsHistorical()**](CurveApi.md#curveGetRemoveLiquidityOneEventsHistorical) | **GET** /dapps/curve/removeLiquidityOneEvents/historical | RemoveLiquidityOneEvents (historical) |
| [**curveGetSystemStateDTOsHistorical()**](CurveApi.md#curveGetSystemStateDTOsHistorical) | **GET** /dapps/curve/SystemStateDTOs/historical | SystemStateDTOs (historical) 🔥 |
| [**curveGetSystemStatesHistorical()**](CurveApi.md#curveGetSystemStatesHistorical) | **GET** /dapps/curve/systemStates/historical | SystemStates (historical) |
| [**curveGetTokenDTOsHistorical()**](CurveApi.md#curveGetTokenDTOsHistorical) | **GET** /dapps/curve/TokenDTOs/historical | TokenDTOs (historical) 🔥 |
| [**curveGetTokensHistorical()**](CurveApi.md#curveGetTokensHistorical) | **GET** /dapps/curve/tokens/historical | Tokens (historical) 🔥 |
| [**curveGetTransferOwnershipEventDTOsHistorical()**](CurveApi.md#curveGetTransferOwnershipEventDTOsHistorical) | **GET** /dapps/curve/TransferOwnershipEventDTOs/historical | TransferOwnershipEventDTOs (historical) 🔥 |
| [**curveGetTransferOwnershipEventsHistorical()**](CurveApi.md#curveGetTransferOwnershipEventsHistorical) | **GET** /dapps/curve/transferOwnershipEvents/historical | TransferOwnershipEvents (historical) |
| [**curveGetUnderlyingCoinDTOsHistorical()**](CurveApi.md#curveGetUnderlyingCoinDTOsHistorical) | **GET** /dapps/curve/UnderlyingCoinDTOs/historical | UnderlyingCoinDTOs (historical) 🔥 |
| [**curveGetUnderlyingCoinsHistorical()**](CurveApi.md#curveGetUnderlyingCoinsHistorical) | **GET** /dapps/curve/underlyingCoins/historical | UnderlyingCoins (historical) |
| [**curveGetVotingAppDTOsHistorical()**](CurveApi.md#curveGetVotingAppDTOsHistorical) | **GET** /dapps/curve/VotingAppDTOs/historical | VotingAppDTOs (historical) 🔥 |
| [**curveGetVotingAppsHistorical()**](CurveApi.md#curveGetVotingAppsHistorical) | **GET** /dapps/curve/votingApps/historical | VotingApps (historical) |
| [**curveGetWeeklyVolumeDTOsHistorical()**](CurveApi.md#curveGetWeeklyVolumeDTOsHistorical) | **GET** /dapps/curve/WeeklyVolumeDTOs/historical | WeeklyVolumeDTOs (historical) 🔥 |
| [**curveGetWeeklyVolumesHistorical()**](CurveApi.md#curveGetWeeklyVolumesHistorical) | **GET** /dapps/curve/weeklyVolumes/historical | WeeklyVolumes (historical) |


## `curveGetAccountDTOsHistorical()`

```php
curveGetAccountDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveAccountDTO[]
```

AccountDTOs (historical) 🔥

Gets AccountDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetAccountDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetAccountDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveAccountDTO[]**](../Model/CurveAccountDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetAccountsHistorical()`

```php
curveGetAccountsHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\CurveAccountDTO[]
```

Accounts (historical)

Gets accounts.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 

try {
    $result = $apiInstance->curveGetAccountsHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetAccountsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveAccountDTO[]**](../Model/CurveAccountDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetAddLiquidityEventDTOsHistorical()`

```php
curveGetAddLiquidityEventDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveAddLiquidityEventDTO[]
```

AddLiquidityEventDTOs (historical) 🔥

Gets AddLiquidityEventDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetAddLiquidityEventDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetAddLiquidityEventDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveAddLiquidityEventDTO[]**](../Model/CurveAddLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetAddLiquidityEventsHistorical()`

```php
curveGetAddLiquidityEventsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveAddLiquidityEventDTO[]
```

AddLiquidityEvents (historical)

Gets add liquidity events.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$pool_id = 'pool_id_example'; // string

try {
    $result = $apiInstance->curveGetAddLiquidityEventsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetAddLiquidityEventsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveAddLiquidityEventDTO[]**](../Model/CurveAddLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetAdminFeeChangeLogDTOsHistorical()`

```php
curveGetAdminFeeChangeLogDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveAdminFeeChangeLogDTO[]
```

AdminFeeChangeLogDTOs (historical) 🔥

Gets AdminFeeChangeLogDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetAdminFeeChangeLogDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetAdminFeeChangeLogDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveAdminFeeChangeLogDTO[]**](../Model/CurveAdminFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetAdminFeeChangeLogsHistorical()`

```php
curveGetAdminFeeChangeLogsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveAdminFeeChangeLogDTO[]
```

AdminFeeChangeLogs (historical)

Gets admin fee change logs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetAdminFeeChangeLogsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetAdminFeeChangeLogsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveAdminFeeChangeLogDTO[]**](../Model/CurveAdminFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetAmplificationCoeffChangeLogDTOsHistorical()`

```php
curveGetAmplificationCoeffChangeLogDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveAmplificationCoeffChangeLogDTO[]
```

AmplificationCoeffChangeLogDTOs (historical) 🔥

Gets AmplificationCoeffChangeLogDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetAmplificationCoeffChangeLogDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetAmplificationCoeffChangeLogDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveAmplificationCoeffChangeLogDTO[]**](../Model/CurveAmplificationCoeffChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetAmplificationCoeffChangeLogsHistorical()`

```php
curveGetAmplificationCoeffChangeLogsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveAmplificationCoeffChangeLogDTO[]
```

AmplificationCoeffChangeLogs (historical)

Gets amplification coeff change logs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetAmplificationCoeffChangeLogsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetAmplificationCoeffChangeLogsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveAmplificationCoeffChangeLogDTO[]**](../Model/CurveAmplificationCoeffChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetCoinDTOsHistorical()`

```php
curveGetCoinDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveCoinDTO[]
```

CoinDTOs (historical) 🔥

Gets CoinDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetCoinDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetCoinDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveCoinDTO[]**](../Model/CurveCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetCoinsHistorical()`

```php
curveGetCoinsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveCoinDTO[]
```

Coins (historical)

Gets coins.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetCoinsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetCoinsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveCoinDTO[]**](../Model/CurveCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetContractDTOsHistorical()`

```php
curveGetContractDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveContractDTO[]
```

ContractDTOs (historical) 🔥

Gets ContractDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetContractDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetContractDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveContractDTO[]**](../Model/CurveContractDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetContractVersionDTOsHistorical()`

```php
curveGetContractVersionDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveContractVersionDTO[]
```

ContractVersionDTOs (historical) 🔥

Gets ContractVersionDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetContractVersionDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetContractVersionDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveContractVersionDTO[]**](../Model/CurveContractVersionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetContractsHistorical()`

```php
curveGetContractsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveContractDTO[]
```

Contracts (historical)

Gets contracts.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetContractsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetContractsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveContractDTO[]**](../Model/CurveContractDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetContractsVersionsHistorical()`

```php
curveGetContractsVersionsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveContractVersionDTO[]
```

ContractsVersions (historical)

Gets contracts versions.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetContractsVersionsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetContractsVersionsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveContractVersionDTO[]**](../Model/CurveContractVersionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetDailyVolumeDTOsHistorical()`

```php
curveGetDailyVolumeDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveDailyVolumeDTO[]
```

DailyVolumeDTOs (historical) 🔥

Gets DailyVolumeDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetDailyVolumeDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetDailyVolumeDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveDailyVolumeDTO[]**](../Model/CurveDailyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetDailyVolumesHistorical()`

```php
curveGetDailyVolumesHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveDailyVolumeDTO[]
```

DailyVolumes (historical)

Gets daily volumes.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetDailyVolumesHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetDailyVolumesHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveDailyVolumeDTO[]**](../Model/CurveDailyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetExchangeDTOsHistorical()`

```php
curveGetExchangeDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveExchangeDTO[]
```

ExchangeDTOs (historical) 🔥

Gets ExchangeDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetExchangeDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetExchangeDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveExchangeDTO[]**](../Model/CurveExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetExchangesHistorical()`

```php
curveGetExchangesHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveExchangeDTO[]
```

Exchanges (historical) 🔥

Gets exchanges.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetExchangesHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetExchangesHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveExchangeDTO[]**](../Model/CurveExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetFeeChangeLogDTOsHistorical()`

```php
curveGetFeeChangeLogDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveFeeChangeLogDTO[]
```

FeeChangeLogDTOs (historical) 🔥

Gets FeeChangeLogDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetFeeChangeLogDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetFeeChangeLogDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveFeeChangeLogDTO[]**](../Model/CurveFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetFeeChangeLogsHistorical()`

```php
curveGetFeeChangeLogsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveFeeChangeLogDTO[]
```

FeeChangeLogs (historical)

Gets fee change logs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetFeeChangeLogsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetFeeChangeLogsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveFeeChangeLogDTO[]**](../Model/CurveFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugeDTOsHistorical()`

```php
curveGetGaugeDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveGaugeDTO[]
```

GaugeDTOs (historical) 🔥

Gets GaugeDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetGaugeDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugeDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveGaugeDTO[]**](../Model/CurveGaugeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugeDepositDTOsHistorical()`

```php
curveGetGaugeDepositDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveGaugeDepositDTO[]
```

GaugeDepositDTOs (historical) 🔥

Gets GaugeDepositDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetGaugeDepositDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugeDepositDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveGaugeDepositDTO[]**](../Model/CurveGaugeDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugeLiquidityDTOsHistorical()`

```php
curveGetGaugeLiquidityDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveGaugeLiquidityDTO[]
```

GaugeLiquidityDTOs (historical) 🔥

Gets GaugeLiquidityDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetGaugeLiquidityDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugeLiquidityDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveGaugeLiquidityDTO[]**](../Model/CurveGaugeLiquidityDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugeTotalWeightDTOsHistorical()`

```php
curveGetGaugeTotalWeightDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveGaugeTotalWeightDTO[]
```

GaugeTotalWeightDTOs (historical) 🔥

Gets GaugeTotalWeightDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetGaugeTotalWeightDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugeTotalWeightDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveGaugeTotalWeightDTO[]**](../Model/CurveGaugeTotalWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugeTypeDTOsHistorical()`

```php
curveGetGaugeTypeDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveGaugeTypeDTO[]
```

GaugeTypeDTOs (historical) 🔥

Gets GaugeTypeDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetGaugeTypeDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugeTypeDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveGaugeTypeDTO[]**](../Model/CurveGaugeTypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugeTypeWeightDTOsHistorical()`

```php
curveGetGaugeTypeWeightDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveGaugeTypeWeightDTO[]
```

GaugeTypeWeightDTOs (historical) 🔥

Gets GaugeTypeWeightDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetGaugeTypeWeightDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugeTypeWeightDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveGaugeTypeWeightDTO[]**](../Model/CurveGaugeTypeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugeWeightDTOsHistorical()`

```php
curveGetGaugeWeightDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveGaugeWeightDTO[]
```

GaugeWeightDTOs (historical) 🔥

Gets GaugeWeightDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetGaugeWeightDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugeWeightDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveGaugeWeightDTO[]**](../Model/CurveGaugeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugeWeightVoteDTOsHistorical()`

```php
curveGetGaugeWeightVoteDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveGaugeWeightVoteDTO[]
```

GaugeWeightVoteDTOs (historical) 🔥

Gets GaugeWeightVoteDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetGaugeWeightVoteDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugeWeightVoteDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveGaugeWeightVoteDTO[]**](../Model/CurveGaugeWeightVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugeWithdrawDTOsHistorical()`

```php
curveGetGaugeWithdrawDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveGaugeWithdrawDTO[]
```

GaugeWithdrawDTOs (historical) 🔥

Gets GaugeWithdrawDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetGaugeWithdrawDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugeWithdrawDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveGaugeWithdrawDTO[]**](../Model/CurveGaugeWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugesDepositsHistorical()`

```php
curveGetGaugesDepositsHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\CurveGaugeDepositDTO[]
```

GaugesDeposits (historical)

Gets gauges deposits.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 

try {
    $result = $apiInstance->curveGetGaugesDepositsHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugesDepositsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveGaugeDepositDTO[]**](../Model/CurveGaugeDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugesHistorical()`

```php
curveGetGaugesHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveGaugeDTO[]
```

Gauges (historical)

Gets gauges.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetGaugesHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugesHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveGaugeDTO[]**](../Model/CurveGaugeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugesLiquidityHistorical()`

```php
curveGetGaugesLiquidityHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\CurveGaugeLiquidityDTO[]
```

GaugesLiquidity (historical)

Gets gauges liquidity.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 

try {
    $result = $apiInstance->curveGetGaugesLiquidityHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugesLiquidityHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveGaugeLiquidityDTO[]**](../Model/CurveGaugeLiquidityDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugesTotalWeightsHistorical()`

```php
curveGetGaugesTotalWeightsHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\CurveGaugeTotalWeightDTO[]
```

GaugesTotalWeights (historical)

Gets gauges total weights.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 

try {
    $result = $apiInstance->curveGetGaugesTotalWeightsHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugesTotalWeightsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveGaugeTotalWeightDTO[]**](../Model/CurveGaugeTotalWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugesTypesHistorical()`

```php
curveGetGaugesTypesHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\CurveGaugeTypeDTO[]
```

GaugesTypes (historical)

Gets gauges types.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 

try {
    $result = $apiInstance->curveGetGaugesTypesHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugesTypesHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveGaugeTypeDTO[]**](../Model/CurveGaugeTypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugesTypesWeightsHistorical()`

```php
curveGetGaugesTypesWeightsHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\CurveGaugeTypeWeightDTO[]
```

GaugesTypesWeights (historical)

Gets gauges types weights.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 

try {
    $result = $apiInstance->curveGetGaugesTypesWeightsHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugesTypesWeightsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveGaugeTypeWeightDTO[]**](../Model/CurveGaugeTypeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugesWeightsHistorical()`

```php
curveGetGaugesWeightsHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\CurveGaugeWeightDTO[]
```

GaugesWeights (historical)

Gets gauges weights.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 

try {
    $result = $apiInstance->curveGetGaugesWeightsHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugesWeightsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveGaugeWeightDTO[]**](../Model/CurveGaugeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugesWeightsVotesHistorical()`

```php
curveGetGaugesWeightsVotesHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\CurveGaugeWeightVoteDTO[]
```

GaugesWeightsVotes (historical)

Gets gauges weights votes.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 

try {
    $result = $apiInstance->curveGetGaugesWeightsVotesHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugesWeightsVotesHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveGaugeWeightVoteDTO[]**](../Model/CurveGaugeWeightVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetGaugesWithdrawHistorical()`

```php
curveGetGaugesWithdrawHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\CurveGaugeWithdrawDTO[]
```

GaugesWithdraw (historical)

Gets gauges withdraws.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 

try {
    $result = $apiInstance->curveGetGaugesWithdrawHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetGaugesWithdrawHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveGaugeWithdrawDTO[]**](../Model/CurveGaugeWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetHourlyVolumeDTOsHistorical()`

```php
curveGetHourlyVolumeDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveHourlyVolumeDTO[]
```

HourlyVolumeDTOs (historical) 🔥

Gets HourlyVolumeDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetHourlyVolumeDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetHourlyVolumeDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveHourlyVolumeDTO[]**](../Model/CurveHourlyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetHourlyVolumesHistorical()`

```php
curveGetHourlyVolumesHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveHourlyVolumeDTO[]
```

HourlyVolumes (historical)

Gets hourly volumes.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetHourlyVolumesHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetHourlyVolumesHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveHourlyVolumeDTO[]**](../Model/CurveHourlyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetLpTokenDTOsHistorical()`

```php
curveGetLpTokenDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveLpTokenDTO[]
```

LpTokenDTOs (historical) 🔥

Gets LpTokenDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetLpTokenDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetLpTokenDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveLpTokenDTO[]**](../Model/CurveLpTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetLpTokensHistorical()`

```php
curveGetLpTokensHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveLpTokenDTO[]
```

LpTokens (historical)

Gets lp tokens.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetLpTokensHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetLpTokensHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveLpTokenDTO[]**](../Model/CurveLpTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetPoolDTOsHistorical()`

```php
curveGetPoolDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurvePoolDTO[]
```

PoolDTOs (historical) 🔥

Gets PoolDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetPoolDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetPoolDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurvePoolDTO[]**](../Model/CurvePoolDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetPoolsHistorical()`

```php
curveGetPoolsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurvePoolDTO[]
```

Pools (historical) 🔥

Gets pools.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetPoolsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetPoolsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurvePoolDTO[]**](../Model/CurvePoolDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetProposalDTOsHistorical()`

```php
curveGetProposalDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveProposalDTO[]
```

ProposalDTOs (historical) 🔥

Gets ProposalDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetProposalDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetProposalDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveProposalDTO[]**](../Model/CurveProposalDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetProposalVoteDTOsHistorical()`

```php
curveGetProposalVoteDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveProposalVoteDTO[]
```

ProposalVoteDTOs (historical) 🔥

Gets ProposalVoteDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetProposalVoteDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetProposalVoteDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveProposalVoteDTO[]**](../Model/CurveProposalVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetProposalsHistorical()`

```php
curveGetProposalsHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\CurveProposalDTO[]
```

Proposals (historical)

Gets proposals.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 

try {
    $result = $apiInstance->curveGetProposalsHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetProposalsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveProposalDTO[]**](../Model/CurveProposalDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetProposalsVotesHistorical()`

```php
curveGetProposalsVotesHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\CurveProposalVoteDTO[]
```

ProposalsVotes (historical)

Gets proposals votes.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 

try {
    $result = $apiInstance->curveGetProposalsVotesHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetProposalsVotesHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveProposalVoteDTO[]**](../Model/CurveProposalVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetRemoveLiquidityEventDTOsHistorical()`

```php
curveGetRemoveLiquidityEventDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveRemoveLiquidityEventDTO[]
```

RemoveLiquidityEventDTOs (historical) 🔥

Gets RemoveLiquidityEventDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetRemoveLiquidityEventDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetRemoveLiquidityEventDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveRemoveLiquidityEventDTO[]**](../Model/CurveRemoveLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetRemoveLiquidityEventsHistorical()`

```php
curveGetRemoveLiquidityEventsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveRemoveLiquidityEventDTO[]
```

RemoveLiquidityEvents (historical)

Gets remove liquidity events.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetRemoveLiquidityEventsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetRemoveLiquidityEventsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveRemoveLiquidityEventDTO[]**](../Model/CurveRemoveLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetRemoveLiquidityOneEventDTOsHistorical()`

```php
curveGetRemoveLiquidityOneEventDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveRemoveLiquidityOneEventDTO[]
```

RemoveLiquidityOneEventDTOs (historical) 🔥

Gets RemoveLiquidityOneEventDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetRemoveLiquidityOneEventDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetRemoveLiquidityOneEventDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveRemoveLiquidityOneEventDTO[]**](../Model/CurveRemoveLiquidityOneEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetRemoveLiquidityOneEventsHistorical()`

```php
curveGetRemoveLiquidityOneEventsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveRemoveLiquidityOneEventDTO[]
```

RemoveLiquidityOneEvents (historical)

Gets remove liquidity one events.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetRemoveLiquidityOneEventsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetRemoveLiquidityOneEventsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveRemoveLiquidityOneEventDTO[]**](../Model/CurveRemoveLiquidityOneEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetSystemStateDTOsHistorical()`

```php
curveGetSystemStateDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveSystemStateDTO[]
```

SystemStateDTOs (historical) 🔥

Gets SystemStateDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetSystemStateDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetSystemStateDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveSystemStateDTO[]**](../Model/CurveSystemStateDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetSystemStatesHistorical()`

```php
curveGetSystemStatesHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\CurveSystemStateDTO[]
```

SystemStates (historical)

Gets system states.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 

try {
    $result = $apiInstance->curveGetSystemStatesHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetSystemStatesHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveSystemStateDTO[]**](../Model/CurveSystemStateDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetTokenDTOsHistorical()`

```php
curveGetTokenDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveTokenDTO[]
```

TokenDTOs (historical) 🔥

Gets TokenDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetTokenDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetTokenDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveTokenDTO[]**](../Model/CurveTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetTokensHistorical()`

```php
curveGetTokensHistorical($start_block, $end_block, $start_date, $end_date, $token_id): \OpenAPI\Client\Model\CurveTokenDTO[]
```

Tokens (historical) 🔥

Gets tokens.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetTokensHistorical($start_block, $end_block, $start_date, $end_date, $token_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetTokensHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveTokenDTO[]**](../Model/CurveTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetTransferOwnershipEventDTOsHistorical()`

```php
curveGetTransferOwnershipEventDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveTransferOwnershipEventDTO[]
```

TransferOwnershipEventDTOs (historical) 🔥

Gets TransferOwnershipEventDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetTransferOwnershipEventDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetTransferOwnershipEventDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveTransferOwnershipEventDTO[]**](../Model/CurveTransferOwnershipEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetTransferOwnershipEventsHistorical()`

```php
curveGetTransferOwnershipEventsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveTransferOwnershipEventDTO[]
```

TransferOwnershipEvents (historical)

Gets transfer ownership events.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetTransferOwnershipEventsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetTransferOwnershipEventsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveTransferOwnershipEventDTO[]**](../Model/CurveTransferOwnershipEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetUnderlyingCoinDTOsHistorical()`

```php
curveGetUnderlyingCoinDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveUnderlyingCoinDTO[]
```

UnderlyingCoinDTOs (historical) 🔥

Gets UnderlyingCoinDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetUnderlyingCoinDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetUnderlyingCoinDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveUnderlyingCoinDTO[]**](../Model/CurveUnderlyingCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetUnderlyingCoinsHistorical()`

```php
curveGetUnderlyingCoinsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveUnderlyingCoinDTO[]
```

UnderlyingCoins (historical)

Gets underlying coins.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetUnderlyingCoinsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetUnderlyingCoinsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveUnderlyingCoinDTO[]**](../Model/CurveUnderlyingCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetVotingAppDTOsHistorical()`

```php
curveGetVotingAppDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveVotingAppDTO[]
```

VotingAppDTOs (historical) 🔥

Gets VotingAppDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetVotingAppDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetVotingAppDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveVotingAppDTO[]**](../Model/CurveVotingAppDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetVotingAppsHistorical()`

```php
curveGetVotingAppsHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\CurveVotingAppDTO[]
```

VotingApps (historical)

Gets voting apps.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 

try {
    $result = $apiInstance->curveGetVotingAppsHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetVotingAppsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveVotingAppDTO[]**](../Model/CurveVotingAppDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetWeeklyVolumeDTOsHistorical()`

```php
curveGetWeeklyVolumeDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveWeeklyVolumeDTO[]
```

WeeklyVolumeDTOs (historical) 🔥

Gets WeeklyVolumeDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetWeeklyVolumeDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetWeeklyVolumeDTOsHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveWeeklyVolumeDTO[]**](../Model/CurveWeeklyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `curveGetWeeklyVolumesHistorical()`

```php
curveGetWeeklyVolumesHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CurveWeeklyVolumeDTO[]
```

WeeklyVolumes (historical)

Gets weekly volumes.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CurveApi(
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
    $result = $apiInstance->curveGetWeeklyVolumesHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CurveApi->curveGetWeeklyVolumesHistorical: ', $e->getMessage(), PHP_EOL;
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

[**\OpenAPI\Client\Model\CurveWeeklyVolumeDTO[]**](../Model/CurveWeeklyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
