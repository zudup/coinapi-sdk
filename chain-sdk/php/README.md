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




$apiInstance = new OpenAPI\Client\Api\AccountsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string
$start_block = 56; // int
$end_block = 56; // int
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime

try {
    $apiInstance->chainsChainIdDappsCurveAccountsHistoricalGet($chain_id, $start_block, $end_block, $start_date, $end_date);
} catch (Exception $e) {
    echo 'Exception when calling AccountsApi->chainsChainIdDappsCurveAccountsHistoricalGet: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://onchain.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AccountsApi* | [**chainsChainIdDappsCurveAccountsHistoricalGet**](docs/Api/AccountsApi.md#chainschainiddappscurveaccountshistoricalget) | **GET** /chains/{chain_id}/dapps/curve/accounts/historical | 
*AddLiquidityEventApi* | [**chainsChainIdDappsCurveAddLiquidityEventHistoricalGet**](docs/Api/AddLiquidityEventApi.md#chainschainiddappscurveaddliquidityeventhistoricalget) | **GET** /chains/{chain_id}/dapps/curve/addLiquidityEvent/historical | 
*AdminFeeChangeLogApi* | [**chainsChainIdDappsCurveAdminFeeChangeLogHistoricalGet**](docs/Api/AdminFeeChangeLogApi.md#chainschainiddappscurveadminfeechangeloghistoricalget) | **GET** /chains/{chain_id}/dapps/curve/adminFeeChangeLog/historical | 
*AmplificationCoeffChangeLogApi* | [**chainsChainIdDappsCurveAmplificationCoeffChangeLogHistoricalGet**](docs/Api/AmplificationCoeffChangeLogApi.md#chainschainiddappscurveamplificationcoeffchangeloghistoricalget) | **GET** /chains/{chain_id}/dapps/curve/amplificationCoeffChangeLog/historical | 
*BatchApi* | [**chainsChainIdDappsDexBatchHistoricalGet**](docs/Api/BatchApi.md#chainschainiddappsdexbatchhistoricalget) | **GET** /chains/{chain_id}/dapps/dex/batch/historical | 
*BundlesApi* | [**chainsChainIdDappsSushiswapBundlesHistoricalGet**](docs/Api/BundlesApi.md#chainschainiddappssushiswapbundleshistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/bundles/historical | 
*BundlesApi* | [**chainsChainIdDappsUniswapv2BundlesHistoricalGet**](docs/Api/BundlesApi.md#chainschainiddappsuniswapv2bundleshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/bundles/historical | 
*BundlesApi* | [**chainsChainIdDappsUniswapv3BundlesHistoricalGet**](docs/Api/BundlesApi.md#chainschainiddappsuniswapv3bundleshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundles/historical | 
*BurnsApi* | [**chainsChainIdDappsSushiswapBurnsHistoricalGet**](docs/Api/BurnsApi.md#chainschainiddappssushiswapburnshistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/burns/historical | 
*BurnsApi* | [**chainsChainIdDappsUniswapv2BurnsHistoricalGet**](docs/Api/BurnsApi.md#chainschainiddappsuniswapv2burnshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/burns/historical | 
*BurnsApi* | [**chainsChainIdDappsUniswapv3BurnsHistoricalGet**](docs/Api/BurnsApi.md#chainschainiddappsuniswapv3burnshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/burns/historical | 
*CoinsApi* | [**chainsChainIdDappsCurveCoinsHistoricalGet**](docs/Api/CoinsApi.md#chainschainiddappscurvecoinshistoricalget) | **GET** /chains/{chain_id}/dapps/curve/coins/historical | 
*ContractsApi* | [**chainsChainIdDappsCurveContractsHistoricalGet**](docs/Api/ContractsApi.md#chainschainiddappscurvecontractshistoricalget) | **GET** /chains/{chain_id}/dapps/curve/contracts/historical | 
*ContractsVersionApi* | [**chainsChainIdDappsCurveContractsVersionHistoricalGet**](docs/Api/ContractsVersionApi.md#chainschainiddappscurvecontractsversionhistoricalget) | **GET** /chains/{chain_id}/dapps/curve/contractsVersion/historical | 
*DailyVolumeApi* | [**chainsChainIdDappsCurveDailyVolumeHistoricalGet**](docs/Api/DailyVolumeApi.md#chainschainiddappscurvedailyvolumehistoricalget) | **GET** /chains/{chain_id}/dapps/curve/dailyVolume/historical | 
*DayDataApi* | [**chainsChainIdDappsSushiswapDayDataHistoricalGet**](docs/Api/DayDataApi.md#chainschainiddappssushiswapdaydatahistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/dayData/historical | 
*DepositApi* | [**chainsChainIdDappsDexTokensHistoricalGet**](docs/Api/DepositApi.md#chainschainiddappsdextokenshistoricalget) | **GET** /chains/{chain_id}/dapps/dex/tokens/historical | 
*FactoryApi* | [**chainsChainIdDappsSushiswapFactoryHistoricalGet**](docs/Api/FactoryApi.md#chainschainiddappssushiswapfactoryhistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/factory/historical | 
*FactoryApi* | [**chainsChainIdDappsUniswapv2FactoryHistoricalGet**](docs/Api/FactoryApi.md#chainschainiddappsuniswapv2factoryhistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/factory/historical | 
*FactoryApi* | [**chainsChainIdDappsUniswapv3FactoryHistoricalGet**](docs/Api/FactoryApi.md#chainschainiddappsuniswapv3factoryhistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/factory/historical | 
*FeeChangeLogApi* | [**chainsChainIdDappsCurveFeeChangeLogHistoricalGet**](docs/Api/FeeChangeLogApi.md#chainschainiddappscurvefeechangeloghistoricalget) | **GET** /chains/{chain_id}/dapps/curve/feeChangeLog/historical | 
*GaugeApi* | [**chainsChainIdDappsCurveGaugeHistoricalGet**](docs/Api/GaugeApi.md#chainschainiddappscurvegaugehistoricalget) | **GET** /chains/{chain_id}/dapps/curve/gauge/historical | 
*GaugeDepositApi* | [**chainsChainIdDappsCurveGaugeDepositHistoricalGet**](docs/Api/GaugeDepositApi.md#chainschainiddappscurvegaugedeposithistoricalget) | **GET** /chains/{chain_id}/dapps/curve/gaugeDeposit/historical | 
*GaugeLiquidityApi* | [**chainsChainIdDappsCurveGaugeLiquidityHistoricalGet**](docs/Api/GaugeLiquidityApi.md#chainschainiddappscurvegaugeliquidityhistoricalget) | **GET** /chains/{chain_id}/dapps/curve/gaugeLiquidity/historical | 
*GaugeTotalWeightApi* | [**chainsChainIdDappsCurveGaugeTotalWeightHistoricalGet**](docs/Api/GaugeTotalWeightApi.md#chainschainiddappscurvegaugetotalweighthistoricalget) | **GET** /chains/{chain_id}/dapps/curve/gaugeTotalWeight/historical | 
*GaugeTypeApi* | [**chainsChainIdDappsCurveGaugeTypeHistoricalGet**](docs/Api/GaugeTypeApi.md#chainschainiddappscurvegaugetypehistoricalget) | **GET** /chains/{chain_id}/dapps/curve/gaugeType/historical | 
*GaugeTypeWeightApi* | [**chainsChainIdDappsCurveGaugeTypeWeightHistoricalGet**](docs/Api/GaugeTypeWeightApi.md#chainschainiddappscurvegaugetypeweighthistoricalget) | **GET** /chains/{chain_id}/dapps/curve/gaugeTypeWeight/historical | 
*GaugeWeightApi* | [**chainsChainIdDappsCurveGaugeWeightHistoricalGet**](docs/Api/GaugeWeightApi.md#chainschainiddappscurvegaugeweighthistoricalget) | **GET** /chains/{chain_id}/dapps/curve/gaugeWeight/historical | 
*GaugeWeightVoteApi* | [**chainsChainIdDappsCurveGaugeWeightVoteHistoricalGet**](docs/Api/GaugeWeightVoteApi.md#chainschainiddappscurvegaugeweightvotehistoricalget) | **GET** /chains/{chain_id}/dapps/curve/gaugeWeightVote/historical | 
*GaugeWithdrawApi* | [**chainsChainIdDappsCurveGaugeWithdrawHistoricalGet**](docs/Api/GaugeWithdrawApi.md#chainschainiddappscurvegaugewithdrawhistoricalget) | **GET** /chains/{chain_id}/dapps/curve/gaugeWithdraw/historical | 
*HourDataApi* | [**chainsChainIdDappsSushiswapHourDataHistoricalGet**](docs/Api/HourDataApi.md#chainschainiddappssushiswaphourdatahistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/hourData/historical | 
*HourlyVolumeApi* | [**chainsChainIdDappsCurveHourlyVolumeHistoricalGet**](docs/Api/HourlyVolumeApi.md#chainschainiddappscurvehourlyvolumehistoricalget) | **GET** /chains/{chain_id}/dapps/curve/hourlyVolume/historical | 
*LiquidityPositionApi* | [**chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet**](docs/Api/LiquidityPositionApi.md#chainschainiddappssushiswapliquiditypositionhistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/liquidityPosition/historical | 
*LiquidityPositionApi* | [**chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet**](docs/Api/LiquidityPositionApi.md#chainschainiddappsuniswapv2liquiditypositionhistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/liquidityPosition/historical | 
*LiquidityPositionSnapshotsApi* | [**chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet**](docs/Api/LiquidityPositionSnapshotsApi.md#chainschainiddappssushiswapliquiditypositionsnapshotshistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/liquidityPositionSnapshots/historical | 
*LiquidityPositionSnapshotsApi* | [**chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet**](docs/Api/LiquidityPositionSnapshotsApi.md#chainschainiddappsuniswapv2liquiditypositionsnapshotshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/liquidityPositionSnapshots/historical | 
*LpTokenApi* | [**chainsChainIdDappsCurveLpTokenHistoricalGet**](docs/Api/LpTokenApi.md#chainschainiddappscurvelptokenhistoricalget) | **GET** /chains/{chain_id}/dapps/curve/lpToken/historical | 
*MintsApi* | [**chainsChainIdDappsSushiswapMintsHistoricalGet**](docs/Api/MintsApi.md#chainschainiddappssushiswapmintshistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/mints/historical | 
*MintsApi* | [**chainsChainIdDappsUniswapv2MintsHistoricalGet**](docs/Api/MintsApi.md#chainschainiddappsuniswapv2mintshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/mints/historical | 
*MintsApi* | [**chainsChainIdDappsUniswapv3MintsHistoricalGet**](docs/Api/MintsApi.md#chainschainiddappsuniswapv3mintshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/mints/historical | 
*OrdersApi* | [**chainsChainIdDappsCowOrdersHistoricalGet**](docs/Api/OrdersApi.md#chainschainiddappscowordershistoricalget) | **GET** /chains/{chain_id}/dapps/cow/orders/historical | 
*OrdersApi* | [**chainsChainIdDappsDexOrdersHistoricalGet**](docs/Api/OrdersApi.md#chainschainiddappsdexordershistoricalget) | **GET** /chains/{chain_id}/dapps/dex/orders/historical | 
*PoiApi* | [**chainsChainIdDappsCowPoiHistoricalGet**](docs/Api/PoiApi.md#chainschainiddappscowpoihistoricalget) | **GET** /chains/{chain_id}/dapps/cow/poi/historical | 
*PoiApi* | [**chainsChainIdDappsCurvePoiHistoricalGet**](docs/Api/PoiApi.md#chainschainiddappscurvepoihistoricalget) | **GET** /chains/{chain_id}/dapps/curve/poi/historical | 
*PoiApi* | [**chainsChainIdDappsDexPoiHistoricalGet**](docs/Api/PoiApi.md#chainschainiddappsdexpoihistoricalget) | **GET** /chains/{chain_id}/dapps/dex/poi/historical | 
*PoiApi* | [**chainsChainIdDappsSushiswapPoiHistoricalGet**](docs/Api/PoiApi.md#chainschainiddappssushiswappoihistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/poi/historical | 
*PoiApi* | [**chainsChainIdDappsUniswapv2PoiHistoricalGet**](docs/Api/PoiApi.md#chainschainiddappsuniswapv2poihistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/poi/historical | 
*PoiApi* | [**chainsChainIdDappsUniswapv3PoiHistoricalGet**](docs/Api/PoiApi.md#chainschainiddappsuniswapv3poihistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/poi/historical | 
*PoolDayDataApi* | [**chainsChainIdDappsSushiswapPoolDayDataHistoricalGet**](docs/Api/PoolDayDataApi.md#chainschainiddappssushiswappooldaydatahistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/poolDayData/historical | 
*PoolDayDataApi* | [**chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet**](docs/Api/PoolDayDataApi.md#chainschainiddappsuniswapv2pooldaydatahistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/poolDayData/historical | 
*PoolDayDataApi* | [**chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet**](docs/Api/PoolDayDataApi.md#chainschainiddappsuniswapv3pooldaydatahistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolDayData/historical | 
*PoolHourDataApi* | [**chainsChainIdDappsSushiswapPoolHourDataHistoricalGet**](docs/Api/PoolHourDataApi.md#chainschainiddappssushiswappoolhourdatahistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/poolHourData/historical | 
*PoolHourDataApi* | [**chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet**](docs/Api/PoolHourDataApi.md#chainschainiddappsuniswapv2poolhourdatahistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/poolHourData/historical | 
*PoolHourDataApi* | [**chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet**](docs/Api/PoolHourDataApi.md#chainschainiddappsuniswapv3poolhourdatahistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolHourData/historical | 
*PoolsApi* | [**chainsChainIdDappsCurvePoolsHistoricalGet**](docs/Api/PoolsApi.md#chainschainiddappscurvepoolshistoricalget) | **GET** /chains/{chain_id}/dapps/curve/pools/historical | 
*PoolsApi* | [**chainsChainIdDappsSushiswapPoolsHistoricalGet**](docs/Api/PoolsApi.md#chainschainiddappssushiswappoolshistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/pools/historical | 
*PoolsApi* | [**chainsChainIdDappsUniswapv2PoolsHistoricalGet**](docs/Api/PoolsApi.md#chainschainiddappsuniswapv2poolshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/historical | 
*PoolsApi* | [**chainsChainIdDappsUniswapv3PoolsHistoricalGet**](docs/Api/PoolsApi.md#chainschainiddappsuniswapv3poolshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/historical | 
*PositionSnapshotApi* | [**chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet**](docs/Api/PositionSnapshotApi.md#chainschainiddappsuniswapv3positionsnapshothistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/positionSnapshot/historical | 
*PositionsApi* | [**chainsChainIdDappsUniswapv3PositionsHistoricalGet**](docs/Api/PositionsApi.md#chainschainiddappsuniswapv3positionshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/positions/historical | 
*PricesApi* | [**chainsChainIdDappsDexPricesHistoricalGet**](docs/Api/PricesApi.md#chainschainiddappsdexpriceshistoricalget) | **GET** /chains/{chain_id}/dapps/dex/prices/historical | 
*ProposalsApi* | [**chainsChainIdDappsCurveProposalsHistoricalGet**](docs/Api/ProposalsApi.md#chainschainiddappscurveproposalshistoricalget) | **GET** /chains/{chain_id}/dapps/curve/proposals/historical | 
*ProposalsVoteApi* | [**chainsChainIdDappsCurveProposalsVoteHistoricalGet**](docs/Api/ProposalsVoteApi.md#chainschainiddappscurveproposalsvotehistoricalget) | **GET** /chains/{chain_id}/dapps/curve/proposalsVote/historical | 
*RemoveLiquidityEventApi* | [**chainsChainIdDappsCurveRemoveLiquidityEventHistoricalGet**](docs/Api/RemoveLiquidityEventApi.md#chainschainiddappscurveremoveliquidityeventhistoricalget) | **GET** /chains/{chain_id}/dapps/curve/removeLiquidityEvent/historical | 
*RemoveLiquidityOneEventApi* | [**chainsChainIdDappsCurveRemoveLiquidityOneEventHistoricalGet**](docs/Api/RemoveLiquidityOneEventApi.md#chainschainiddappscurveremoveliquidityoneeventhistoricalget) | **GET** /chains/{chain_id}/dapps/curve/removeLiquidityOneEvent/historical | 
*SettlementApi* | [**chainsChainIdDappsCowSettlementHistoricalGet**](docs/Api/SettlementApi.md#chainschainiddappscowsettlementhistoricalget) | **GET** /chains/{chain_id}/dapps/cow/settlement/historical | 
*SolutionApi* | [**chainsChainIdDappsDexSolutionHistoricalGet**](docs/Api/SolutionApi.md#chainschainiddappsdexsolutionhistoricalget) | **GET** /chains/{chain_id}/dapps/dex/solution/historical | 
*StatsApi* | [**chainsChainIdDappsDexStatsHistoricalGet**](docs/Api/StatsApi.md#chainschainiddappsdexstatshistoricalget) | **GET** /chains/{chain_id}/dapps/dex/stats/historical | 
*SushiswapApi* | [**chainsChainIdDappsSushiswapPoolsCurrentGet**](docs/Api/SushiswapApi.md#chainschainiddappssushiswappoolscurrentget) | **GET** /chains/{chain_id}/dapps/sushiswap/pools/current | GetPools
*SushiswapApi* | [**chainsChainIdDappsSushiswapSwapsCurrentGet**](docs/Api/SushiswapApi.md#chainschainiddappssushiswapswapscurrentget) | **GET** /chains/{chain_id}/dapps/sushiswap/swaps/current | GetSwaps
*SushiswapApi* | [**chainsChainIdDappsSushiswapTokensCurrentGet**](docs/Api/SushiswapApi.md#chainschainiddappssushiswaptokenscurrentget) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/current | GetTokens
*SwapsApi* | [**chainsChainIdDappsCurveSwapsHistoricalGet**](docs/Api/SwapsApi.md#chainschainiddappscurveswapshistoricalget) | **GET** /chains/{chain_id}/dapps/curve/swaps/historical | 
*SwapsApi* | [**chainsChainIdDappsSushiswapSwapsHistoricalGet**](docs/Api/SwapsApi.md#chainschainiddappssushiswapswapshistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/swaps/historical | 
*SwapsApi* | [**chainsChainIdDappsUniswapv2SwapsHistoricalGet**](docs/Api/SwapsApi.md#chainschainiddappsuniswapv2swapshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/historical | 
*SwapsApi* | [**chainsChainIdDappsUniswapv3SwapsHistoricalGet**](docs/Api/SwapsApi.md#chainschainiddappsuniswapv3swapshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/historical | 
*SystemStateApi* | [**chainsChainIdDappsCurveSystemStateHistoricalGet**](docs/Api/SystemStateApi.md#chainschainiddappscurvesystemstatehistoricalget) | **GET** /chains/{chain_id}/dapps/curve/systemState/historical | 
*TickDayDataApi* | [**chainsChainIdDappsUniswapv3TickDayDataHistoricalGet**](docs/Api/TickDayDataApi.md#chainschainiddappsuniswapv3tickdaydatahistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tickDayData/historical | 
*TicksApi* | [**chainsChainIdDappsUniswapv3TicksHistoricalGet**](docs/Api/TicksApi.md#chainschainiddappsuniswapv3tickshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticks/historical | 
*TokenDayDataApi* | [**chainsChainIdDappsSushiswapTokenDayDataHistoricalGet**](docs/Api/TokenDayDataApi.md#chainschainiddappssushiswaptokendaydatahistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/tokenDayData/historical | 
*TokenDayDataApi* | [**chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet**](docs/Api/TokenDayDataApi.md#chainschainiddappsuniswapv2tokendaydatahistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokenDayData/historical | 
*TokenDayDataApi* | [**chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet**](docs/Api/TokenDayDataApi.md#chainschainiddappsuniswapv3tokendaydatahistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokenDayData/historical | 
*TokenHourDataApi* | [**chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet**](docs/Api/TokenHourDataApi.md#chainschainiddappsuniswapv3tokenhourdatahistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokenHourData/historical | 
*TokensApi* | [**chainsChainIdDappsCowTokensHistoricalGet**](docs/Api/TokensApi.md#chainschainiddappscowtokenshistoricalget) | **GET** /chains/{chain_id}/dapps/cow/tokens/historical | 
*TokensApi* | [**chainsChainIdDappsCurveTokensHistoricalGet**](docs/Api/TokensApi.md#chainschainiddappscurvetokenshistoricalget) | **GET** /chains/{chain_id}/dapps/curve/tokens/historical | 
*TokensApi* | [**chainsChainIdDappsSushiswapTokensHistoricalGet**](docs/Api/TokensApi.md#chainschainiddappssushiswaptokenshistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/historical | 
*TokensApi* | [**chainsChainIdDappsUniswapv2TokensHistoricalGet**](docs/Api/TokensApi.md#chainschainiddappsuniswapv2tokenshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/historical | 
*TokensApi* | [**chainsChainIdDappsUniswapv3TokensHistoricalGet**](docs/Api/TokensApi.md#chainschainiddappsuniswapv3tokenshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/historical | 
*TradesApi* | [**chainsChainIdDappsCowTradesHistoricalGet**](docs/Api/TradesApi.md#chainschainiddappscowtradeshistoricalget) | **GET** /chains/{chain_id}/dapps/cow/trades/historical | 
*TradesApi* | [**chainsChainIdDappsDexTradesHistoricalGet**](docs/Api/TradesApi.md#chainschainiddappsdextradeshistoricalget) | **GET** /chains/{chain_id}/dapps/dex/trades/historical | 
*TransactionsApi* | [**chainsChainIdDappsSushiswapTransactionsHistoricalGet**](docs/Api/TransactionsApi.md#chainschainiddappssushiswaptransactionshistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/transactions/historical | 
*TransactionsApi* | [**chainsChainIdDappsUniswapv2TransactionsHistoricalGet**](docs/Api/TransactionsApi.md#chainschainiddappsuniswapv2transactionshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/transactions/historical | 
*TransactionsApi* | [**chainsChainIdDappsUniswapv3TransactionsHistoricalGet**](docs/Api/TransactionsApi.md#chainschainiddappsuniswapv3transactionshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/transactions/historical | 
*TransferOwnershipEventApi* | [**chainsChainIdDappsCurveTransferOwnershipEventHistoricalGet**](docs/Api/TransferOwnershipEventApi.md#chainschainiddappscurvetransferownershipeventhistoricalget) | **GET** /chains/{chain_id}/dapps/curve/transferOwnershipEvent/historical | 
*UnderlyingCoinApi* | [**chainsChainIdDappsCurveUnderlyingCoinHistoricalGet**](docs/Api/UnderlyingCoinApi.md#chainschainiddappscurveunderlyingcoinhistoricalget) | **GET** /chains/{chain_id}/dapps/curve/underlyingCoin/historical | 
*UniswapDayDataApi* | [**chainsChainIdDappsUniswapv2DayDataHistoricalGet**](docs/Api/UniswapDayDataApi.md#chainschainiddappsuniswapv2daydatahistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/dayData/historical | 
*UniswapDayDataApi* | [**chainsChainIdDappsUniswapv3DayDataHistoricalGet**](docs/Api/UniswapDayDataApi.md#chainschainiddappsuniswapv3daydatahistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/dayData/historical | 
*UniswapV2Api* | [**chainsChainIdDappsUniswapv2PoolsCurrentGet**](docs/Api/UniswapV2Api.md#chainschainiddappsuniswapv2poolscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools
*UniswapV2Api* | [**chainsChainIdDappsUniswapv2SwapsCurrentGet**](docs/Api/UniswapV2Api.md#chainschainiddappsuniswapv2swapscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps
*UniswapV2Api* | [**chainsChainIdDappsUniswapv2TokensCurrentGet**](docs/Api/UniswapV2Api.md#chainschainiddappsuniswapv2tokenscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3BundleCurrentGet**](docs/Api/UniswapV3Api.md#chainschainiddappsuniswapv3bundlecurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3BurnsCurrentGet**](docs/Api/UniswapV3Api.md#chainschainiddappsuniswapv3burnscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3FactoryCurrentGet**](docs/Api/UniswapV3Api.md#chainschainiddappsuniswapv3factorycurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3MintsCurrentGet**](docs/Api/UniswapV3Api.md#chainschainiddappsuniswapv3mintscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3PoolsCurrentGet**](docs/Api/UniswapV3Api.md#chainschainiddappsuniswapv3poolscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet**](docs/Api/UniswapV3Api.md#chainschainiddappsuniswapv3poolsdaydatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet**](docs/Api/UniswapV3Api.md#chainschainiddappsuniswapv3poolshourdatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet**](docs/Api/UniswapV3Api.md#chainschainiddappsuniswapv3positionsnapshotscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3PositionsCurrentGet**](docs/Api/UniswapV3Api.md#chainschainiddappsuniswapv3positionscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3SwapsCurrentGet**](docs/Api/UniswapV3Api.md#chainschainiddappsuniswapv3swapscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3TicksCurrentGet**](docs/Api/UniswapV3Api.md#chainschainiddappsuniswapv3tickscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3TicksDayDataCurrentGet**](docs/Api/UniswapV3Api.md#chainschainiddappsuniswapv3ticksdaydatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3TokensCurrentGet**](docs/Api/UniswapV3Api.md#chainschainiddappsuniswapv3tokenscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3TokensDayDataCurrentGet**](docs/Api/UniswapV3Api.md#chainschainiddappsuniswapv3tokensdaydatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3TokensHourDataCurrentGet**](docs/Api/UniswapV3Api.md#chainschainiddappsuniswapv3tokenshourdatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet**](docs/Api/UniswapV3Api.md#chainschainiddappsuniswapv3uniswapdaydatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData
*UsersApi* | [**chainsChainIdDappsCowUsersHistoricalGet**](docs/Api/UsersApi.md#chainschainiddappscowusershistoricalget) | **GET** /chains/{chain_id}/dapps/cow/users/historical | 
*UsersApi* | [**chainsChainIdDappsDexUsersHistoricalGet**](docs/Api/UsersApi.md#chainschainiddappsdexusershistoricalget) | **GET** /chains/{chain_id}/dapps/dex/users/historical | 
*UsersApi* | [**chainsChainIdDappsSushiswapUsersHistoricalGet**](docs/Api/UsersApi.md#chainschainiddappssushiswapusershistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/users/historical | 
*UsersApi* | [**chainsChainIdDappsUniswapv2UsersHistoricalGet**](docs/Api/UsersApi.md#chainschainiddappsuniswapv2usershistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/users/historical | 
*VotingAppApi* | [**chainsChainIdDappsCurveVotingAppHistoricalGet**](docs/Api/VotingAppApi.md#chainschainiddappscurvevotingapphistoricalget) | **GET** /chains/{chain_id}/dapps/curve/votingApp/historical | 
*WeeklyVolumeApi* | [**chainsChainIdDappsCurveWeeklyVolumeHistoricalGet**](docs/Api/WeeklyVolumeApi.md#chainschainiddappscurveweeklyvolumehistoricalget) | **GET** /chains/{chain_id}/dapps/curve/weeklyVolume/historical | 
*WithdrawApi* | [**chainsChainIdDappsDexWithdrawHistoricalGet**](docs/Api/WithdrawApi.md#chainschainiddappsdexwithdrawhistoricalget) | **GET** /chains/{chain_id}/dapps/dex/withdraw/historical | 
*WithdrawRequestApi* | [**chainsChainIdDappsDexWithdrawRequestHistoricalGet**](docs/Api/WithdrawRequestApi.md#chainschainiddappsdexwithdrawrequesthistoricalget) | **GET** /chains/{chain_id}/dapps/dex/withdrawRequest/historical | 

## Models

- [BigInteger](docs/Model/BigInteger.md)
- [BundleV3DTO](docs/Model/BundleV3DTO.md)
- [BurnV3DTO](docs/Model/BurnV3DTO.md)
- [ETradeAggressiveSide](docs/Model/ETradeAggressiveSide.md)
- [FactoryV3DTO](docs/Model/FactoryV3DTO.md)
- [MintV3DTO](docs/Model/MintV3DTO.md)
- [PairDTO](docs/Model/PairDTO.md)
- [PairV2DTO](docs/Model/PairV2DTO.md)
- [PoolDayDataV3DTO](docs/Model/PoolDayDataV3DTO.md)
- [PoolHourDataV3DTO](docs/Model/PoolHourDataV3DTO.md)
- [PoolV3DTO](docs/Model/PoolV3DTO.md)
- [PositionSnapshotV3DTO](docs/Model/PositionSnapshotV3DTO.md)
- [PositionV3DTO](docs/Model/PositionV3DTO.md)
- [SwapDTO](docs/Model/SwapDTO.md)
- [SwapV2DTO](docs/Model/SwapV2DTO.md)
- [SwapV3DTO](docs/Model/SwapV3DTO.md)
- [TickDayDataV3DTO](docs/Model/TickDayDataV3DTO.md)
- [TickV3DTO](docs/Model/TickV3DTO.md)
- [TokenDTO](docs/Model/TokenDTO.md)
- [TokenHourDataV3DTO](docs/Model/TokenHourDataV3DTO.md)
- [TokenV2DTO](docs/Model/TokenV2DTO.md)
- [TokenV3DTO](docs/Model/TokenV3DTO.md)
- [TokenV3DayDataDTO](docs/Model/TokenV3DayDataDTO.md)
- [UniswapDayDataV3DTO](docs/Model/UniswapDayDataV3DTO.md)

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
