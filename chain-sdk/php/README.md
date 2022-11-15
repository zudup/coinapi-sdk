# OpenAPIClient-php


This section will provide necessary information about the `OnChain API` protocol. 
<br/><br/>
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.        
                    

For more information, please visit [https://www.coinapi.io](https://www.coinapi.io).

## Installation & Usage

### Requirements

PHP 7.4 and later.
Should also work with PHP 8.0.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
    }
  ],
  "require": {
    "GIT_USER_ID/GIT_REPO_ID": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/OpenAPIClient-php/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');




$apiInstance = new OpenAPI\Client\Api\CowApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime

try {
    $result = $apiInstance->cowGetOrdersHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CowApi->cowGetOrdersHistorical: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://onchain.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CowApi* | [**cowGetOrdersHistorical**](docs/Api/CowApi.md#cowgetordershistorical) | **GET** /dapps/cow/orders/historical-manual | Orders (historical)
*CowApi* | [**cowGetSettlementsHistorical**](docs/Api/CowApi.md#cowgetsettlementshistorical) | **GET** /dapps/cow/settlements/historical-manual | Settlements (historical)
*CowApi* | [**cowGetTokensHistorical**](docs/Api/CowApi.md#cowgettokenshistorical) | **GET** /dapps/cow/tokens/historical-manual | Tokens (historical) 🔥
*CowApi* | [**cowGetTradesHistorical**](docs/Api/CowApi.md#cowgettradeshistorical) | **GET** /dapps/cow/trades/historical-manual | Trades (historical) 🔥
*CowApi* | [**cowGetUsersHistorical**](docs/Api/CowApi.md#cowgetusershistorical) | **GET** /dapps/cow/users/historical-manual | Users (historical)
*CurveApi* | [**curveGetAccountsHistorical**](docs/Api/CurveApi.md#curvegetaccountshistorical) | **GET** /dapps/curve/accounts/historical-manual | Accounts (historical)
*CurveApi* | [**curveGetAddLiquidityEventsHistorical**](docs/Api/CurveApi.md#curvegetaddliquidityeventshistorical) | **GET** /dapps/curve/addLiquidityEvents/historical-manual | AddLiquidityEvents (historical)
*CurveApi* | [**curveGetAdminFeeChangeLogsHistorical**](docs/Api/CurveApi.md#curvegetadminfeechangelogshistorical) | **GET** /dapps/curve/adminFeeChangeLogs/historical-manual | AdminFeeChangeLogs (historical)
*CurveApi* | [**curveGetAmplificationCoeffChangeLogsHistorical**](docs/Api/CurveApi.md#curvegetamplificationcoeffchangelogshistorical) | **GET** /dapps/curve/amplificationCoeffChangeLogs/historical-manual | AmplificationCoeffChangeLogs (historical)
*CurveApi* | [**curveGetCoinsHistorical**](docs/Api/CurveApi.md#curvegetcoinshistorical) | **GET** /dapps/curve/coins/historical-manual | Coins (historical)
*CurveApi* | [**curveGetContractsHistorical**](docs/Api/CurveApi.md#curvegetcontractshistorical) | **GET** /dapps/curve/contracts/historical-manual | Contracts (historical)
*CurveApi* | [**curveGetContractsVersionsHistorical**](docs/Api/CurveApi.md#curvegetcontractsversionshistorical) | **GET** /dapps/curve/contractsVersions/historical-manual | ContractsVersions (historical)
*CurveApi* | [**curveGetDailyVolumesHistorical**](docs/Api/CurveApi.md#curvegetdailyvolumeshistorical) | **GET** /dapps/curve/dailyVolumes/historical-manual | DailyVolumes (historical)
*CurveApi* | [**curveGetExchangesHistorical**](docs/Api/CurveApi.md#curvegetexchangeshistorical) | **GET** /dapps/curve/exchanges/historical-manual | Exchanges (historical) 🔥
*CurveApi* | [**curveGetFeeChangeLogsHistorical**](docs/Api/CurveApi.md#curvegetfeechangelogshistorical) | **GET** /dapps/curve/feeChangeLogs/historical-manual | FeeChangeLogs (historical)
*CurveApi* | [**curveGetGaugesDepositsHistorical**](docs/Api/CurveApi.md#curvegetgaugesdepositshistorical) | **GET** /dapps/curve/gaugesDeposits/historical-manual | GaugesDeposits (historical)
*CurveApi* | [**curveGetGaugesHistorical**](docs/Api/CurveApi.md#curvegetgaugeshistorical) | **GET** /dapps/curve/gauges/historical-manual | Gauges (historical)
*CurveApi* | [**curveGetGaugesLiquidityHistorical**](docs/Api/CurveApi.md#curvegetgaugesliquidityhistorical) | **GET** /dapps/curve/gaugesLiquidity/historical-manual | GaugesLiquidity (historical)
*CurveApi* | [**curveGetGaugesTotalWeightsHistorical**](docs/Api/CurveApi.md#curvegetgaugestotalweightshistorical) | **GET** /dapps/curve/gaugesTotalWeights/historical-manual | GaugesTotalWeights (historical)
*CurveApi* | [**curveGetGaugesTypesHistorical**](docs/Api/CurveApi.md#curvegetgaugestypeshistorical) | **GET** /dapps/curve/gaugesTypes/historical-manual | GaugesTypes (historical)
*CurveApi* | [**curveGetGaugesTypesWeightsHistorical**](docs/Api/CurveApi.md#curvegetgaugestypesweightshistorical) | **GET** /dapps/curve/gaugesTypesWeights/historical-manual | GaugesTypesWeights (historical)
*CurveApi* | [**curveGetGaugesWeightsHistorical**](docs/Api/CurveApi.md#curvegetgaugesweightshistorical) | **GET** /dapps/curve/gaugesWeights/historical-manual | GaugesWeights (historical)
*CurveApi* | [**curveGetGaugesWeightsVotesHistorical**](docs/Api/CurveApi.md#curvegetgaugesweightsvoteshistorical) | **GET** /dapps/curve/gaugesWeightsVotes/historical-manual | GaugesWeightsVotes (historical)
*CurveApi* | [**curveGetGaugesWithdrawHistorical**](docs/Api/CurveApi.md#curvegetgaugeswithdrawhistorical) | **GET** /dapps/curve/gaugesWithdraws/historical-manual | GaugesWithdraw (historical)
*CurveApi* | [**curveGetHourlyVolumesHistorical**](docs/Api/CurveApi.md#curvegethourlyvolumeshistorical) | **GET** /dapps/curve/hourlyVolumes/historical-manual | HourlyVolumes (historical)
*CurveApi* | [**curveGetLpTokensHistorical**](docs/Api/CurveApi.md#curvegetlptokenshistorical) | **GET** /dapps/curve/lpTokens/historical-manual | LpTokens (historical)
*CurveApi* | [**curveGetPoolsHistorical**](docs/Api/CurveApi.md#curvegetpoolshistorical) | **GET** /dapps/curve/pools/historical-manual | Pools (historical) 🔥
*CurveApi* | [**curveGetProposalsHistorical**](docs/Api/CurveApi.md#curvegetproposalshistorical) | **GET** /dapps/curve/proposals/historical-manual | Proposals (historical)
*CurveApi* | [**curveGetProposalsVotesHistorical**](docs/Api/CurveApi.md#curvegetproposalsvoteshistorical) | **GET** /dapps/curve/proposalsVotes/historical-manual | ProposalsVotes (historical)
*CurveApi* | [**curveGetRemoveLiquidityEventsHistorical**](docs/Api/CurveApi.md#curvegetremoveliquidityeventshistorical) | **GET** /dapps/curve/removeLiquidityEvents/historical-manual | RemoveLiquidityEvents (historical)
*CurveApi* | [**curveGetRemoveLiquidityOneEventsHistorical**](docs/Api/CurveApi.md#curvegetremoveliquidityoneeventshistorical) | **GET** /dapps/curve/removeLiquidityOneEvents/historical-manual | RemoveLiquidityOneEvents (historical)
*CurveApi* | [**curveGetSystemStatesHistorical**](docs/Api/CurveApi.md#curvegetsystemstateshistorical) | **GET** /dapps/curve/systemStates/historical-manual | SystemStates (historical)
*CurveApi* | [**curveGetTokensHistorical**](docs/Api/CurveApi.md#curvegettokenshistorical) | **GET** /dapps/curve/tokens/historical-manual | Tokens (historical) 🔥
*CurveApi* | [**curveGetTransferOwnershipEventsHistorical**](docs/Api/CurveApi.md#curvegettransferownershipeventshistorical) | **GET** /dapps/curve/transferOwnershipEvents/historical-manual | TransferOwnershipEvents (historical)
*CurveApi* | [**curveGetUnderlyingCoinsHistorical**](docs/Api/CurveApi.md#curvegetunderlyingcoinshistorical) | **GET** /dapps/curve/underlyingCoins/historical-manual | UnderlyingCoins (historical)
*CurveApi* | [**curveGetVotingAppsHistorical**](docs/Api/CurveApi.md#curvegetvotingappshistorical) | **GET** /dapps/curve/votingApps/historical-manual | VotingApps (historical)
*CurveApi* | [**curveGetWeeklyVolumesHistorical**](docs/Api/CurveApi.md#curvegetweeklyvolumeshistorical) | **GET** /dapps/curve/weeklyVolumes/historical-manual | WeeklyVolumes (historical)
*DexApi* | [**dexGetBatchesHistorical**](docs/Api/DexApi.md#dexgetbatcheshistorical) | **GET** /dapps/dex/batches/historical-manual | Batches (historical)
*DexApi* | [**dexGetDepositsHistorical**](docs/Api/DexApi.md#dexgetdepositshistorical) | **GET** /dapps/dex/deposits/historical-manual | Deposits (historical)
*DexApi* | [**dexGetOrdersHistorical**](docs/Api/DexApi.md#dexgetordershistorical) | **GET** /dapps/dex/orders/historical-manual | Orders (historical)
*DexApi* | [**dexGetPricesHistorical**](docs/Api/DexApi.md#dexgetpriceshistorical) | **GET** /dapps/dex/prices/historical-manual | Prices (historical)
*DexApi* | [**dexGetSolutionsHistorical**](docs/Api/DexApi.md#dexgetsolutionshistorical) | **GET** /dapps/dex/solutions/historical-manual | Solutions (historical)
*DexApi* | [**dexGetStatsHistorical**](docs/Api/DexApi.md#dexgetstatshistorical) | **GET** /dapps/dex/stats/historical-manual | Stats (historical)
*DexApi* | [**dexGetTokensHistorical**](docs/Api/DexApi.md#dexgettokenshistorical) | **GET** /dapps/dex/tokens/historical-manual | Tokens (historical) 🔥
*DexApi* | [**dexGetTradesHistorical**](docs/Api/DexApi.md#dexgettradeshistorical) | **GET** /dapps/dex/trades/historical-manual | Trades (historical) 🔥
*DexApi* | [**dexGetUsersHistorical**](docs/Api/DexApi.md#dexgetusershistorical) | **GET** /dapps/dex/users/historical-manual | Users (historical)
*DexApi* | [**dexGetWithdrawsHistorical**](docs/Api/DexApi.md#dexgetwithdrawshistorical) | **GET** /dapps/dex/withdraws/historical-manual | Withdraws (historical)
*DexApi* | [**dexGetWithdrawsRequestsHistorical**](docs/Api/DexApi.md#dexgetwithdrawsrequestshistorical) | **GET** /dapps/dex/withdrawsRequests/historical-manual | WithdrawsRequests (historical)
*SushiswapApi* | [**curveGetExchangesCurrent**](docs/Api/SushiswapApi.md#curvegetexchangescurrent) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
*SushiswapApi* | [**dexGetTradesCurrent**](docs/Api/SushiswapApi.md#dexgettradescurrent) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥
*SushiswapApi* | [**sushiswapGetBundlesHistorical**](docs/Api/SushiswapApi.md#sushiswapgetbundleshistorical) | **GET** /dapps/sushiswap/bundles/historical-manual | Bundles (historical)
*SushiswapApi* | [**sushiswapGetBurnsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetburnshistorical) | **GET** /dapps/sushiswap/burns/historical-manual | Burns (historical)
*SushiswapApi* | [**sushiswapGetDayDataHistorical**](docs/Api/SushiswapApi.md#sushiswapgetdaydatahistorical) | **GET** /dapps/sushiswap/dayData/historical-manual | DayData (historical)
*SushiswapApi* | [**sushiswapGetFactoryHistorical**](docs/Api/SushiswapApi.md#sushiswapgetfactoryhistorical) | **GET** /dapps/sushiswap/factory/historical-manual | Factory (historical)
*SushiswapApi* | [**sushiswapGetHourDataHistorical**](docs/Api/SushiswapApi.md#sushiswapgethourdatahistorical) | **GET** /dapps/sushiswap/hourData/historical-manual | HourData (historical)
*SushiswapApi* | [**sushiswapGetLiquidityPositionHistorical**](docs/Api/SushiswapApi.md#sushiswapgetliquiditypositionhistorical) | **GET** /dapps/sushiswap/liquidityPosition/historical-manual | LiquidityPosition (historical)
*SushiswapApi* | [**sushiswapGetLiquidityPositionSnapshotHistorical**](docs/Api/SushiswapApi.md#sushiswapgetliquiditypositionsnapshothistorical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical-manual | LiquidityPositionSnapshot (historical)
*SushiswapApi* | [**sushiswapGetMintsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetmintshistorical) | **GET** /dapps/sushiswap/mints/historical-manual | Mints (historical)
*SushiswapApi* | [**sushiswapGetPoolsCurrent**](docs/Api/SushiswapApi.md#sushiswapgetpoolscurrent) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥
*SushiswapApi* | [**sushiswapGetPoolsDayDataHistorical**](docs/Api/SushiswapApi.md#sushiswapgetpoolsdaydatahistorical) | **GET** /dapps/sushiswap/poolsDayData/historical-manual | PoolsDayData (historical)
*SushiswapApi* | [**sushiswapGetPoolsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetpoolshistorical) | **GET** /dapps/sushiswap/pools/historical-manual | Pools (historical) 🔥
*SushiswapApi* | [**sushiswapGetPoolsHourDataHistorical**](docs/Api/SushiswapApi.md#sushiswapgetpoolshourdatahistorical) | **GET** /dapps/sushiswap/poolsHourData/historical-manual | PoolsHourData (historical)
*SushiswapApi* | [**sushiswapGetSwapsCurrent**](docs/Api/SushiswapApi.md#sushiswapgetswapscurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
*SushiswapApi* | [**sushiswapGetSwapsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetswapshistorical) | **GET** /dapps/sushiswap/swaps/historical-manual | Swaps (historical) 🔥
*SushiswapApi* | [**sushiswapGetTokensCurrent**](docs/Api/SushiswapApi.md#sushiswapgettokenscurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) 🔥
*SushiswapApi* | [**sushiswapGetTokensDayDataHistorical**](docs/Api/SushiswapApi.md#sushiswapgettokensdaydatahistorical) | **GET** /dapps/sushiswap/tokensDayData/historical-manual | TokensDayData (historical)
*SushiswapApi* | [**sushiswapGetTokensHistorical**](docs/Api/SushiswapApi.md#sushiswapgettokenshistorical) | **GET** /dapps/sushiswap/tokens/historical-manual | Tokens (historical) 🔥
*SushiswapApi* | [**sushiswapGetTransactionsHistorical**](docs/Api/SushiswapApi.md#sushiswapgettransactionshistorical) | **GET** /dapps/sushiswap/transactions/historical-manual | Transactions (historical)
*SushiswapApi* | [**sushiswapGetUsersHistorical**](docs/Api/SushiswapApi.md#sushiswapgetusershistorical) | **GET** /dapps/sushiswap/users/historical-manual | Users (historical)
*UniswapV2Api* | [**uniswapV2GetBundlesHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getbundleshistorical) | **GET** /dapps/uniswapv2/bundles/historical-manual | Bundles (historical)
*UniswapV2Api* | [**uniswapV2GetBurnsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getburnshistorical) | **GET** /dapps/uniswapv2/burns/historical-manual | Burns (historical)
*UniswapV2Api* | [**uniswapV2GetDayDataHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getdaydatahistorical) | **GET** /dapps/uniswapv2/dayData/historical-manual | DayData (historical)
*UniswapV2Api* | [**uniswapV2GetFactoryHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getfactoryhistorical) | **GET** /dapps/uniswapv2/factory/historical-manual | Factory (historical)
*UniswapV2Api* | [**uniswapV2GetLiquidityPositionsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getliquiditypositionshistorical) | **GET** /dapps/uniswapv2/liquidityPositions/historical-manual | LiquidityPositions (historical)
*UniswapV2Api* | [**uniswapV2GetLiquidityPositionsSnapshotsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getliquiditypositionssnapshotshistorical) | **GET** /dapps/uniswapv2/liquidityPositionsSnapshots/historical-manual | LiquidityPositionsSnapshots (historical)
*UniswapV2Api* | [**uniswapV2GetMintsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getmintshistorical) | **GET** /dapps/uniswapv2/mints/historical-manual | Mints (historical)
*UniswapV2Api* | [**uniswapV2GetPoolsCurrent**](docs/Api/UniswapV2Api.md#uniswapv2getpoolscurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
*UniswapV2Api* | [**uniswapV2GetPoolsDayDataHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getpoolsdaydatahistorical) | **GET** /dapps/uniswapv2/poolsDayData/historical-manual | PoolsDayData (historical)
*UniswapV2Api* | [**uniswapV2GetPoolsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getpoolshistorical) | **GET** /dapps/uniswapv2/pools/historical-manual | Pools (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPoolsHourDataHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getpoolshourdatahistorical) | **GET** /dapps/uniswapv2/poolsHourData/historical-manual | PoolsHourData (historical)
*UniswapV2Api* | [**uniswapV2GetSwapsCurrent**](docs/Api/UniswapV2Api.md#uniswapv2getswapscurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
*UniswapV2Api* | [**uniswapV2GetSwapsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getswapshistorical) | **GET** /dapps/uniswapv2/swaps/historical-manual | Swaps (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTokensCurrent**](docs/Api/UniswapV2Api.md#uniswapv2gettokenscurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥
*UniswapV2Api* | [**uniswapV2GetTokensDayDataHistorical**](docs/Api/UniswapV2Api.md#uniswapv2gettokensdaydatahistorical) | **GET** /dapps/uniswapv2/tokensDayData/historical-manual | TokensDayData (historical)
*UniswapV2Api* | [**uniswapV2GetTokensHistorical**](docs/Api/UniswapV2Api.md#uniswapv2gettokenshistorical) | **GET** /dapps/uniswapv2/tokens/historical-manual | Tokens (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTransactionsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2gettransactionshistorical) | **GET** /dapps/uniswapv2/transactions/historical-manual | Transactions (historical)
*UniswapV2Api* | [**uniswapV2GetUsersHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getusershistorical) | **GET** /dapps/uniswapv2/users/historical-manual | Users (historical)
*UniswapV3Api* | [**uniswapV3GetBundlesCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getbundlescurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current)
*UniswapV3Api* | [**uniswapV3GetBundlesHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getbundleshistorical) | **GET** /dapps/uniswapv3/bundles/historical-manual | Bundles (historical)
*UniswapV3Api* | [**uniswapV3GetBurnsCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getburnscurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current)
*UniswapV3Api* | [**uniswapV3GetBurnsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getburnshistorical) | **GET** /dapps/uniswapv3/burns/historical-manual | Burns (historical)
*UniswapV3Api* | [**uniswapV3GetDayDataCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getdaydatacurrent) | **GET** /dapps/uniswapv3/dayData/current | DayData (current)
*UniswapV3Api* | [**uniswapV3GetDayDataHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getdaydatahistorical) | **GET** /dapps/uniswapv3/dayData/historical-manual | DayData (historical)
*UniswapV3Api* | [**uniswapV3GetFactoryCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getfactorycurrent) | **GET** /dapps/uniswapv3/factory/current | Factory (current)
*UniswapV3Api* | [**uniswapV3GetFactoryHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getfactoryhistorical) | **GET** /dapps/uniswapv3/factory/historical-manual | Factory (historical)
*UniswapV3Api* | [**uniswapV3GetMintsCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getmintscurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current)
*UniswapV3Api* | [**uniswapV3GetMintsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getmintshistorical) | **GET** /dapps/uniswapv3/mints/historical-manual | Mints (historical)
*UniswapV3Api* | [**uniswapV3GetPoolsCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getpoolscurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolsDayDataCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getpoolsdaydatacurrent) | **GET** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current)
*UniswapV3Api* | [**uniswapV3GetPoolsDayDataHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getpoolsdaydatahistorical) | **GET** /dapps/uniswapv3/poolsDayData/historical-manual | PoolsDayData (historical)
*UniswapV3Api* | [**uniswapV3GetPoolsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getpoolshistorical) | **GET** /dapps/uniswapv3/pools/historical-manual | Pools (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolsHourDataCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getpoolshourdatacurrent) | **GET** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current)
*UniswapV3Api* | [**uniswapV3GetPoolsHourDataHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getpoolshourdatahistorical) | **GET** /dapps/uniswapv3/poolsHourData/historical-manual | PoolsHourData (historical)
*UniswapV3Api* | [**uniswapV3GetPositionsCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getpositionscurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current)
*UniswapV3Api* | [**uniswapV3GetPositionsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getpositionshistorical) | **GET** /dapps/uniswapv3/positions/historical-manual | Positions (historical)
*UniswapV3Api* | [**uniswapV3GetPositionsSnaphotsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getpositionssnaphotshistorical) | **GET** /dapps/uniswapv3/positionsSnapshots/historical-manual | PositionsSnaphots (historical)
*UniswapV3Api* | [**uniswapV3GetPositionsSnapshotsCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getpositionssnapshotscurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current)
*UniswapV3Api* | [**uniswapV3GetSwapsCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getswapscurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥
*UniswapV3Api* | [**uniswapV3GetSwapsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getswapshistorical) | **GET** /dapps/uniswapv3/swaps/historical-manual | Swaps (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTicksCurrent**](docs/Api/UniswapV3Api.md#uniswapv3gettickscurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current)
*UniswapV3Api* | [**uniswapV3GetTicksDayDataCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getticksdaydatacurrent) | **GET** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current)
*UniswapV3Api* | [**uniswapV3GetTicksDayDataHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getticksdaydatahistorical) | **GET** /dapps/uniswapv3/ticksDayData/historical-manual | TicksDayData (historical)
*UniswapV3Api* | [**uniswapV3GetTicksHistorical**](docs/Api/UniswapV3Api.md#uniswapv3gettickshistorical) | **GET** /dapps/uniswapv3/ticks/historical-manual | Ticks (historical)
*UniswapV3Api* | [**uniswapV3GetTokensCurrent**](docs/Api/UniswapV3Api.md#uniswapv3gettokenscurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥
*UniswapV3Api* | [**uniswapV3GetTokensDayDataCurrent**](docs/Api/UniswapV3Api.md#uniswapv3gettokensdaydatacurrent) | **GET** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current)
*UniswapV3Api* | [**uniswapV3GetTokensDayDataHistorical**](docs/Api/UniswapV3Api.md#uniswapv3gettokensdaydatahistorical) | **GET** /dapps/uniswapv3/tokensDayData/historical-manual | TokensDayData (historical)
*UniswapV3Api* | [**uniswapV3GetTokensHistorical**](docs/Api/UniswapV3Api.md#uniswapv3gettokenshistorical) | **GET** /dapps/uniswapv3/tokens/historical-manual | Tokens (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTokensHourDataCurrent**](docs/Api/UniswapV3Api.md#uniswapv3gettokenshourdatacurrent) | **GET** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current)
*UniswapV3Api* | [**uniswapV3GetTokensHourDataHistorical**](docs/Api/UniswapV3Api.md#uniswapv3gettokenshourdatahistorical) | **GET** /dapps/uniswapv3/tokensHourData/historical-manual | TokensHourData (historical)
*UniswapV3Api* | [**uniswapV3GetTransactionsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3gettransactionshistorical) | **GET** /dapps/uniswapv3/transactions/historical-manual | Transactions (historical)

## Models

- [CowOrderDTO](docs/Model/CowOrderDTO.md)
- [CowSettlementDTO](docs/Model/CowSettlementDTO.md)
- [CowTokenDTO](docs/Model/CowTokenDTO.md)
- [CowTradeDTO](docs/Model/CowTradeDTO.md)
- [CowUserDTO](docs/Model/CowUserDTO.md)
- [CurveAccountDTO](docs/Model/CurveAccountDTO.md)
- [CurveAddLiquidityEventDTO](docs/Model/CurveAddLiquidityEventDTO.md)
- [CurveAdminFeeChangeLogDTO](docs/Model/CurveAdminFeeChangeLogDTO.md)
- [CurveAmplificationCoeffChangeLogDTO](docs/Model/CurveAmplificationCoeffChangeLogDTO.md)
- [CurveCoinDTO](docs/Model/CurveCoinDTO.md)
- [CurveContractDTO](docs/Model/CurveContractDTO.md)
- [CurveContractVersionDTO](docs/Model/CurveContractVersionDTO.md)
- [CurveDailyVolumeDTO](docs/Model/CurveDailyVolumeDTO.md)
- [CurveExchangeDTO](docs/Model/CurveExchangeDTO.md)
- [CurveFeeChangeLogDTO](docs/Model/CurveFeeChangeLogDTO.md)
- [CurveGaugeDTO](docs/Model/CurveGaugeDTO.md)
- [CurveGaugeDepositDTO](docs/Model/CurveGaugeDepositDTO.md)
- [CurveGaugeLiquidityDTO](docs/Model/CurveGaugeLiquidityDTO.md)
- [CurveGaugeTotalWeightDTO](docs/Model/CurveGaugeTotalWeightDTO.md)
- [CurveGaugeTypeDTO](docs/Model/CurveGaugeTypeDTO.md)
- [CurveGaugeTypeWeightDTO](docs/Model/CurveGaugeTypeWeightDTO.md)
- [CurveGaugeWeightDTO](docs/Model/CurveGaugeWeightDTO.md)
- [CurveGaugeWeightVoteDTO](docs/Model/CurveGaugeWeightVoteDTO.md)
- [CurveGaugeWithdrawDTO](docs/Model/CurveGaugeWithdrawDTO.md)
- [CurveHourlyVolumeDTO](docs/Model/CurveHourlyVolumeDTO.md)
- [CurveLpTokenDTO](docs/Model/CurveLpTokenDTO.md)
- [CurvePoolDTO](docs/Model/CurvePoolDTO.md)
- [CurveProposalDTO](docs/Model/CurveProposalDTO.md)
- [CurveProposalVoteDTO](docs/Model/CurveProposalVoteDTO.md)
- [CurveRemoveLiquidityEventDTO](docs/Model/CurveRemoveLiquidityEventDTO.md)
- [CurveRemoveLiquidityOneEventDTO](docs/Model/CurveRemoveLiquidityOneEventDTO.md)
- [CurveSystemStateDTO](docs/Model/CurveSystemStateDTO.md)
- [CurveTokenDTO](docs/Model/CurveTokenDTO.md)
- [CurveTransferOwnershipEventDTO](docs/Model/CurveTransferOwnershipEventDTO.md)
- [CurveUnderlyingCoinDTO](docs/Model/CurveUnderlyingCoinDTO.md)
- [CurveVotingAppDTO](docs/Model/CurveVotingAppDTO.md)
- [CurveWeeklyVolumeDTO](docs/Model/CurveWeeklyVolumeDTO.md)
- [DexBatchDTO](docs/Model/DexBatchDTO.md)
- [DexDepositDTO](docs/Model/DexDepositDTO.md)
- [DexOrderDTO](docs/Model/DexOrderDTO.md)
- [DexPriceDTO](docs/Model/DexPriceDTO.md)
- [DexSolutionDTO](docs/Model/DexSolutionDTO.md)
- [DexStatsDTO](docs/Model/DexStatsDTO.md)
- [DexTokenDTO](docs/Model/DexTokenDTO.md)
- [DexTradeDTO](docs/Model/DexTradeDTO.md)
- [DexUserDTO](docs/Model/DexUserDTO.md)
- [DexWithdrawDTO](docs/Model/DexWithdrawDTO.md)
- [DexWithdrawRequestDTO](docs/Model/DexWithdrawRequestDTO.md)
- [NumericsBigInteger](docs/Model/NumericsBigInteger.md)
- [SushiswapBundleDTO](docs/Model/SushiswapBundleDTO.md)
- [SushiswapBurnDTO](docs/Model/SushiswapBurnDTO.md)
- [SushiswapDayDataDTO](docs/Model/SushiswapDayDataDTO.md)
- [SushiswapFactoryDTO](docs/Model/SushiswapFactoryDTO.md)
- [SushiswapHourDataDTO](docs/Model/SushiswapHourDataDTO.md)
- [SushiswapLiquidityPositionDTO](docs/Model/SushiswapLiquidityPositionDTO.md)
- [SushiswapLiquidityPositionSnapshotDTO](docs/Model/SushiswapLiquidityPositionSnapshotDTO.md)
- [SushiswapMintDTO](docs/Model/SushiswapMintDTO.md)
- [SushiswapPairDTO](docs/Model/SushiswapPairDTO.md)
- [SushiswapPairDayDataDTO](docs/Model/SushiswapPairDayDataDTO.md)
- [SushiswapPairHourDataDTO](docs/Model/SushiswapPairHourDataDTO.md)
- [SushiswapSwapDTO](docs/Model/SushiswapSwapDTO.md)
- [SushiswapTokenDTO](docs/Model/SushiswapTokenDTO.md)
- [SushiswapTokenDayDataDTO](docs/Model/SushiswapTokenDayDataDTO.md)
- [SushiswapTransactionDTO](docs/Model/SushiswapTransactionDTO.md)
- [SushiswapUserDTO](docs/Model/SushiswapUserDTO.md)
- [TransactionsETradeAggressiveSide](docs/Model/TransactionsETradeAggressiveSide.md)
- [UniswapV2BundleV2DTO](docs/Model/UniswapV2BundleV2DTO.md)
- [UniswapV2BurnV2DTO](docs/Model/UniswapV2BurnV2DTO.md)
- [UniswapV2LiquidityPositionSnapshotV2DTO](docs/Model/UniswapV2LiquidityPositionSnapshotV2DTO.md)
- [UniswapV2LiquidityPositionV2DTO](docs/Model/UniswapV2LiquidityPositionV2DTO.md)
- [UniswapV2MintV2DTO](docs/Model/UniswapV2MintV2DTO.md)
- [UniswapV2PairDayDataV2DTO](docs/Model/UniswapV2PairDayDataV2DTO.md)
- [UniswapV2PairHourDataV2DTO](docs/Model/UniswapV2PairHourDataV2DTO.md)
- [UniswapV2PairV2DTO](docs/Model/UniswapV2PairV2DTO.md)
- [UniswapV2SwapV2DTO](docs/Model/UniswapV2SwapV2DTO.md)
- [UniswapV2TokenDayDataV2DTO](docs/Model/UniswapV2TokenDayDataV2DTO.md)
- [UniswapV2TokenV2DTO](docs/Model/UniswapV2TokenV2DTO.md)
- [UniswapV2TransactionV2DTO](docs/Model/UniswapV2TransactionV2DTO.md)
- [UniswapV2UniswapDayDataV2DTO](docs/Model/UniswapV2UniswapDayDataV2DTO.md)
- [UniswapV2UniswapFactoryV2DTO](docs/Model/UniswapV2UniswapFactoryV2DTO.md)
- [UniswapV2UserV2DTO](docs/Model/UniswapV2UserV2DTO.md)
- [UniswapV3BundleV3DTO](docs/Model/UniswapV3BundleV3DTO.md)
- [UniswapV3BurnV3DTO](docs/Model/UniswapV3BurnV3DTO.md)
- [UniswapV3FactoryV3DTO](docs/Model/UniswapV3FactoryV3DTO.md)
- [UniswapV3MintV3DTO](docs/Model/UniswapV3MintV3DTO.md)
- [UniswapV3PoolDayDataV3DTO](docs/Model/UniswapV3PoolDayDataV3DTO.md)
- [UniswapV3PoolHourDataV3DTO](docs/Model/UniswapV3PoolHourDataV3DTO.md)
- [UniswapV3PoolV3DTO](docs/Model/UniswapV3PoolV3DTO.md)
- [UniswapV3PositionSnapshotV3DTO](docs/Model/UniswapV3PositionSnapshotV3DTO.md)
- [UniswapV3PositionV3DTO](docs/Model/UniswapV3PositionV3DTO.md)
- [UniswapV3SwapV3DTO](docs/Model/UniswapV3SwapV3DTO.md)
- [UniswapV3TickDayDataV3DTO](docs/Model/UniswapV3TickDayDataV3DTO.md)
- [UniswapV3TickV3DTO](docs/Model/UniswapV3TickV3DTO.md)
- [UniswapV3TokenHourDataV3DTO](docs/Model/UniswapV3TokenHourDataV3DTO.md)
- [UniswapV3TokenV3DTO](docs/Model/UniswapV3TokenV3DTO.md)
- [UniswapV3TokenV3DayDataDTO](docs/Model/UniswapV3TokenV3DayDataDTO.md)
- [UniswapV3TransactionV3DTO](docs/Model/UniswapV3TransactionV3DTO.md)
- [UniswapV3UniswapDayDataV3DTO](docs/Model/UniswapV3UniswapDayDataV3DTO.md)

## Authorization
All endpoints do not require authorization.
## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

support@coinapi.io

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `v1`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
