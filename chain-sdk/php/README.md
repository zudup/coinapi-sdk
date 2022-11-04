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
$start_block = 56; // int
$end_block = 56; // int
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime

try {
    $apiInstance->dappsCowOrdersHistoricalGet($start_block, $end_block, $start_date, $end_date);
} catch (Exception $e) {
    echo 'Exception when calling CowApi->dappsCowOrdersHistoricalGet: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://onchain.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CowApi* | [**dappsCowOrdersHistoricalGet**](docs/Api/CowApi.md#dappscowordershistoricalget) | **GET** /dapps/cow/orders/historical | 
*CowApi* | [**dappsCowSettlementHistoricalGet**](docs/Api/CowApi.md#dappscowsettlementhistoricalget) | **GET** /dapps/cow/settlement/historical | 
*CowApi* | [**dappsCowTokensHistoricalGet**](docs/Api/CowApi.md#dappscowtokenshistoricalget) | **GET** /dapps/cow/tokens/historical | 
*CowApi* | [**dappsCowTradesHistoricalGet**](docs/Api/CowApi.md#dappscowtradeshistoricalget) | **GET** /dapps/cow/trades/historical | 
*CowApi* | [**dappsCowUsersHistoricalGet**](docs/Api/CowApi.md#dappscowusershistoricalget) | **GET** /dapps/cow/users/historical | 
*CurveApi* | [**dappsCurveAccountsHistoricalGet**](docs/Api/CurveApi.md#dappscurveaccountshistoricalget) | **GET** /dapps/curve/accounts/historical | 
*CurveApi* | [**dappsCurveAddLiquidityEventHistoricalGet**](docs/Api/CurveApi.md#dappscurveaddliquidityeventhistoricalget) | **GET** /dapps/curve/addLiquidityEvent/historical | 
*CurveApi* | [**dappsCurveAdminFeeChangeLogHistoricalGet**](docs/Api/CurveApi.md#dappscurveadminfeechangeloghistoricalget) | **GET** /dapps/curve/adminFeeChangeLog/historical | 
*CurveApi* | [**dappsCurveAmplificationCoeffChangeLogHistoricalGet**](docs/Api/CurveApi.md#dappscurveamplificationcoeffchangeloghistoricalget) | **GET** /dapps/curve/amplificationCoeffChangeLog/historical | 
*CurveApi* | [**dappsCurveCoinsHistoricalGet**](docs/Api/CurveApi.md#dappscurvecoinshistoricalget) | **GET** /dapps/curve/coins/historical | 
*CurveApi* | [**dappsCurveContractsHistoricalGet**](docs/Api/CurveApi.md#dappscurvecontractshistoricalget) | **GET** /dapps/curve/contracts/historical | 
*CurveApi* | [**dappsCurveContractsVersionHistoricalGet**](docs/Api/CurveApi.md#dappscurvecontractsversionhistoricalget) | **GET** /dapps/curve/contractsVersion/historical | 
*CurveApi* | [**dappsCurveDailyVolumeHistoricalGet**](docs/Api/CurveApi.md#dappscurvedailyvolumehistoricalget) | **GET** /dapps/curve/dailyVolume/historical | 
*CurveApi* | [**dappsCurveFeeChangeLogHistoricalGet**](docs/Api/CurveApi.md#dappscurvefeechangeloghistoricalget) | **GET** /dapps/curve/feeChangeLog/historical | 
*CurveApi* | [**dappsCurveGaugeDepositHistoricalGet**](docs/Api/CurveApi.md#dappscurvegaugedeposithistoricalget) | **GET** /dapps/curve/gaugeDeposit/historical | 
*CurveApi* | [**dappsCurveGaugeHistoricalGet**](docs/Api/CurveApi.md#dappscurvegaugehistoricalget) | **GET** /dapps/curve/gauge/historical | 
*CurveApi* | [**dappsCurveGaugeLiquidityHistoricalGet**](docs/Api/CurveApi.md#dappscurvegaugeliquidityhistoricalget) | **GET** /dapps/curve/gaugeLiquidity/historical | 
*CurveApi* | [**dappsCurveGaugeTotalWeightHistoricalGet**](docs/Api/CurveApi.md#dappscurvegaugetotalweighthistoricalget) | **GET** /dapps/curve/gaugeTotalWeight/historical | 
*CurveApi* | [**dappsCurveGaugeTypeHistoricalGet**](docs/Api/CurveApi.md#dappscurvegaugetypehistoricalget) | **GET** /dapps/curve/gaugeType/historical | 
*CurveApi* | [**dappsCurveGaugeTypeWeightHistoricalGet**](docs/Api/CurveApi.md#dappscurvegaugetypeweighthistoricalget) | **GET** /dapps/curve/gaugeTypeWeight/historical | 
*CurveApi* | [**dappsCurveGaugeWeightHistoricalGet**](docs/Api/CurveApi.md#dappscurvegaugeweighthistoricalget) | **GET** /dapps/curve/gaugeWeight/historical | 
*CurveApi* | [**dappsCurveGaugeWeightVoteHistoricalGet**](docs/Api/CurveApi.md#dappscurvegaugeweightvotehistoricalget) | **GET** /dapps/curve/gaugeWeightVote/historical | 
*CurveApi* | [**dappsCurveGaugeWithdrawHistoricalGet**](docs/Api/CurveApi.md#dappscurvegaugewithdrawhistoricalget) | **GET** /dapps/curve/gaugeWithdraw/historical | 
*CurveApi* | [**dappsCurveHourlyVolumeHistoricalGet**](docs/Api/CurveApi.md#dappscurvehourlyvolumehistoricalget) | **GET** /dapps/curve/hourlyVolume/historical | 
*CurveApi* | [**dappsCurveLpTokenHistoricalGet**](docs/Api/CurveApi.md#dappscurvelptokenhistoricalget) | **GET** /dapps/curve/lpToken/historical | 
*CurveApi* | [**dappsCurvePoolsHistoricalGet**](docs/Api/CurveApi.md#dappscurvepoolshistoricalget) | **GET** /dapps/curve/pools/historical | 
*CurveApi* | [**dappsCurveProposalsHistoricalGet**](docs/Api/CurveApi.md#dappscurveproposalshistoricalget) | **GET** /dapps/curve/proposals/historical | 
*CurveApi* | [**dappsCurveProposalsVoteHistoricalGet**](docs/Api/CurveApi.md#dappscurveproposalsvotehistoricalget) | **GET** /dapps/curve/proposalsVote/historical | 
*CurveApi* | [**dappsCurveRemoveLiquidityEventHistoricalGet**](docs/Api/CurveApi.md#dappscurveremoveliquidityeventhistoricalget) | **GET** /dapps/curve/removeLiquidityEvent/historical | 
*CurveApi* | [**dappsCurveRemoveLiquidityOneEventHistoricalGet**](docs/Api/CurveApi.md#dappscurveremoveliquidityoneeventhistoricalget) | **GET** /dapps/curve/removeLiquidityOneEvent/historical | 
*CurveApi* | [**dappsCurveSwapsHistoricalGet**](docs/Api/CurveApi.md#dappscurveswapshistoricalget) | **GET** /dapps/curve/swaps/historical | 
*CurveApi* | [**dappsCurveSystemStateHistoricalGet**](docs/Api/CurveApi.md#dappscurvesystemstatehistoricalget) | **GET** /dapps/curve/systemState/historical | 
*CurveApi* | [**dappsCurveTokensHistoricalGet**](docs/Api/CurveApi.md#dappscurvetokenshistoricalget) | **GET** /dapps/curve/tokens/historical | 
*CurveApi* | [**dappsCurveTransferOwnershipEventHistoricalGet**](docs/Api/CurveApi.md#dappscurvetransferownershipeventhistoricalget) | **GET** /dapps/curve/transferOwnershipEvent/historical | 
*CurveApi* | [**dappsCurveUnderlyingCoinHistoricalGet**](docs/Api/CurveApi.md#dappscurveunderlyingcoinhistoricalget) | **GET** /dapps/curve/underlyingCoin/historical | 
*CurveApi* | [**dappsCurveVotingAppHistoricalGet**](docs/Api/CurveApi.md#dappscurvevotingapphistoricalget) | **GET** /dapps/curve/votingApp/historical | 
*CurveApi* | [**dappsCurveWeeklyVolumeHistoricalGet**](docs/Api/CurveApi.md#dappscurveweeklyvolumehistoricalget) | **GET** /dapps/curve/weeklyVolume/historical | 
*DexApi* | [**dappsDexBatchHistoricalGet**](docs/Api/DexApi.md#dappsdexbatchhistoricalget) | **GET** /dapps/dex/batch/historical | 
*DexApi* | [**dappsDexOrdersHistoricalGet**](docs/Api/DexApi.md#dappsdexordershistoricalget) | **GET** /dapps/dex/orders/historical | 
*DexApi* | [**dappsDexPricesHistoricalGet**](docs/Api/DexApi.md#dappsdexpriceshistoricalget) | **GET** /dapps/dex/prices/historical | 
*DexApi* | [**dappsDexSolutionHistoricalGet**](docs/Api/DexApi.md#dappsdexsolutionhistoricalget) | **GET** /dapps/dex/solution/historical | 
*DexApi* | [**dappsDexStatsHistoricalGet**](docs/Api/DexApi.md#dappsdexstatshistoricalget) | **GET** /dapps/dex/stats/historical | 
*DexApi* | [**dappsDexTokensHistoricalGet**](docs/Api/DexApi.md#dappsdextokenshistoricalget) | **GET** /dapps/dex/tokens/historical | 
*DexApi* | [**dappsDexTradesHistoricalGet**](docs/Api/DexApi.md#dappsdextradeshistoricalget) | **GET** /dapps/dex/trades/historical | 
*DexApi* | [**dappsDexUsersHistoricalGet**](docs/Api/DexApi.md#dappsdexusershistoricalget) | **GET** /dapps/dex/users/historical | 
*DexApi* | [**dappsDexWithdrawHistoricalGet**](docs/Api/DexApi.md#dappsdexwithdrawhistoricalget) | **GET** /dapps/dex/withdraw/historical | 
*DexApi* | [**dappsDexWithdrawRequestHistoricalGet**](docs/Api/DexApi.md#dappsdexwithdrawrequesthistoricalget) | **GET** /dapps/dex/withdrawRequest/historical | 
*SushiswapApi* | [**dappsSushiswapBundlesHistoricalGet**](docs/Api/SushiswapApi.md#dappssushiswapbundleshistoricalget) | **GET** /dapps/sushiswap/bundles/historical | 
*SushiswapApi* | [**dappsSushiswapBurnsHistoricalGet**](docs/Api/SushiswapApi.md#dappssushiswapburnshistoricalget) | **GET** /dapps/sushiswap/burns/historical | 
*SushiswapApi* | [**dappsSushiswapDayDataHistoricalGet**](docs/Api/SushiswapApi.md#dappssushiswapdaydatahistoricalget) | **GET** /dapps/sushiswap/dayData/historical | 
*SushiswapApi* | [**dappsSushiswapFactoryHistoricalGet**](docs/Api/SushiswapApi.md#dappssushiswapfactoryhistoricalget) | **GET** /dapps/sushiswap/factory/historical | 
*SushiswapApi* | [**dappsSushiswapHourDataHistoricalGet**](docs/Api/SushiswapApi.md#dappssushiswaphourdatahistoricalget) | **GET** /dapps/sushiswap/hourData/historical | 
*SushiswapApi* | [**dappsSushiswapLiquidityPositionHistoricalGet**](docs/Api/SushiswapApi.md#dappssushiswapliquiditypositionhistoricalget) | **GET** /dapps/sushiswap/liquidityPosition/historical | 
*SushiswapApi* | [**dappsSushiswapLiquidityPositionSnapshotsHistoricalGet**](docs/Api/SushiswapApi.md#dappssushiswapliquiditypositionsnapshotshistoricalget) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | 
*SushiswapApi* | [**dappsSushiswapMintsHistoricalGet**](docs/Api/SushiswapApi.md#dappssushiswapmintshistoricalget) | **GET** /dapps/sushiswap/mints/historical | 
*SushiswapApi* | [**dappsSushiswapPoolDayDataHistoricalGet**](docs/Api/SushiswapApi.md#dappssushiswappooldaydatahistoricalget) | **GET** /dapps/sushiswap/poolDayData/historical | 
*SushiswapApi* | [**dappsSushiswapPoolHourDataHistoricalGet**](docs/Api/SushiswapApi.md#dappssushiswappoolhourdatahistoricalget) | **GET** /dapps/sushiswap/poolHourData/historical | 
*SushiswapApi* | [**dappsSushiswapPoolsCurrentGet**](docs/Api/SushiswapApi.md#dappssushiswappoolscurrentget) | **GET** /dapps/sushiswap/pools/current | GetPools
*SushiswapApi* | [**dappsSushiswapPoolsHistoricalGet**](docs/Api/SushiswapApi.md#dappssushiswappoolshistoricalget) | **GET** /dapps/sushiswap/pools/historical | GetPools
*SushiswapApi* | [**dappsSushiswapSwapsCurrentGet**](docs/Api/SushiswapApi.md#dappssushiswapswapscurrentget) | **GET** /dapps/sushiswap/swaps/current | GetSwaps
*SushiswapApi* | [**dappsSushiswapSwapsHistoricalGet**](docs/Api/SushiswapApi.md#dappssushiswapswapshistoricalget) | **GET** /dapps/sushiswap/swaps/historical | GetSwaps
*SushiswapApi* | [**dappsSushiswapTokenDayDataHistoricalGet**](docs/Api/SushiswapApi.md#dappssushiswaptokendaydatahistoricalget) | **GET** /dapps/sushiswap/tokenDayData/historical | 
*SushiswapApi* | [**dappsSushiswapTokensCurrentGet**](docs/Api/SushiswapApi.md#dappssushiswaptokenscurrentget) | **GET** /dapps/sushiswap/tokens/current | GetTokens
*SushiswapApi* | [**dappsSushiswapTokensHistoricalGet**](docs/Api/SushiswapApi.md#dappssushiswaptokenshistoricalget) | **GET** /dapps/sushiswap/tokens/historical | GetTokens
*SushiswapApi* | [**dappsSushiswapTransactionsHistoricalGet**](docs/Api/SushiswapApi.md#dappssushiswaptransactionshistoricalget) | **GET** /dapps/sushiswap/transactions/historical | 
*SushiswapApi* | [**dappsSushiswapUsersHistoricalGet**](docs/Api/SushiswapApi.md#dappssushiswapusershistoricalget) | **GET** /dapps/sushiswap/users/historical | 
*UniswapV2Api* | [**dappsUniswapv2BundlesHistoricalGet**](docs/Api/UniswapV2Api.md#dappsuniswapv2bundleshistoricalget) | **GET** /dapps/uniswapv2/bundles/historical | 
*UniswapV2Api* | [**dappsUniswapv2BurnsHistoricalGet**](docs/Api/UniswapV2Api.md#dappsuniswapv2burnshistoricalget) | **GET** /dapps/uniswapv2/burns/historical | 
*UniswapV2Api* | [**dappsUniswapv2DayDataHistoricalGet**](docs/Api/UniswapV2Api.md#dappsuniswapv2daydatahistoricalget) | **GET** /dapps/uniswapv2/dayData/historical | 
*UniswapV2Api* | [**dappsUniswapv2FactoryHistoricalGet**](docs/Api/UniswapV2Api.md#dappsuniswapv2factoryhistoricalget) | **GET** /dapps/uniswapv2/factory/historical | 
*UniswapV2Api* | [**dappsUniswapv2LiquidityPositionHistoricalGet**](docs/Api/UniswapV2Api.md#dappsuniswapv2liquiditypositionhistoricalget) | **GET** /dapps/uniswapv2/liquidityPosition/historical | 
*UniswapV2Api* | [**dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet**](docs/Api/UniswapV2Api.md#dappsuniswapv2liquiditypositionsnapshotshistoricalget) | **GET** /dapps/uniswapv2/liquidityPositionSnapshots/historical | 
*UniswapV2Api* | [**dappsUniswapv2MintsHistoricalGet**](docs/Api/UniswapV2Api.md#dappsuniswapv2mintshistoricalget) | **GET** /dapps/uniswapv2/mints/historical | 
*UniswapV2Api* | [**dappsUniswapv2PoolDayDataHistoricalGet**](docs/Api/UniswapV2Api.md#dappsuniswapv2pooldaydatahistoricalget) | **GET** /dapps/uniswapv2/poolDayData/historical | 
*UniswapV2Api* | [**dappsUniswapv2PoolHourDataHistoricalGet**](docs/Api/UniswapV2Api.md#dappsuniswapv2poolhourdatahistoricalget) | **GET** /dapps/uniswapv2/poolHourData/historical | 
*UniswapV2Api* | [**dappsUniswapv2PoolsCurrentGet**](docs/Api/UniswapV2Api.md#dappsuniswapv2poolscurrentget) | **GET** /dapps/uniswapv2/pools/current | GetPools
*UniswapV2Api* | [**dappsUniswapv2PoolsHistoricalGet**](docs/Api/UniswapV2Api.md#dappsuniswapv2poolshistoricalget) | **GET** /dapps/uniswapv2/pools/historical | 
*UniswapV2Api* | [**dappsUniswapv2SwapsCurrentGet**](docs/Api/UniswapV2Api.md#dappsuniswapv2swapscurrentget) | **GET** /dapps/uniswapv2/swaps/current | GetSwaps
*UniswapV2Api* | [**dappsUniswapv2SwapsHistoricalGet**](docs/Api/UniswapV2Api.md#dappsuniswapv2swapshistoricalget) | **GET** /dapps/uniswapv2/swaps/historical | 
*UniswapV2Api* | [**dappsUniswapv2TokenDayDataHistoricalGet**](docs/Api/UniswapV2Api.md#dappsuniswapv2tokendaydatahistoricalget) | **GET** /dapps/uniswapv2/tokenDayData/historical | 
*UniswapV2Api* | [**dappsUniswapv2TokensCurrentGet**](docs/Api/UniswapV2Api.md#dappsuniswapv2tokenscurrentget) | **GET** /dapps/uniswapv2/tokens/current | GetTokens
*UniswapV2Api* | [**dappsUniswapv2TokensHistoricalGet**](docs/Api/UniswapV2Api.md#dappsuniswapv2tokenshistoricalget) | **GET** /dapps/uniswapv2/tokens/historical | 
*UniswapV2Api* | [**dappsUniswapv2TransactionsHistoricalGet**](docs/Api/UniswapV2Api.md#dappsuniswapv2transactionshistoricalget) | **GET** /dapps/uniswapv2/transactions/historical | 
*UniswapV2Api* | [**dappsUniswapv2UsersHistoricalGet**](docs/Api/UniswapV2Api.md#dappsuniswapv2usershistoricalget) | **GET** /dapps/uniswapv2/users/historical | 
*UniswapV3Api* | [**dappsUniswapv3BundleCurrentGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3bundlecurrentget) | **GET** /dapps/uniswapv3/bundle/current | GetBundles
*UniswapV3Api* | [**dappsUniswapv3BundlesHistoricalGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3bundleshistoricalget) | **GET** /dapps/uniswapv3/bundles/historical | 
*UniswapV3Api* | [**dappsUniswapv3BurnsCurrentGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3burnscurrentget) | **GET** /dapps/uniswapv3/burns/current | GetBurns
*UniswapV3Api* | [**dappsUniswapv3BurnsHistoricalGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3burnshistoricalget) | **GET** /dapps/uniswapv3/burns/historical | 
*UniswapV3Api* | [**dappsUniswapv3DayDataHistoricalGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3daydatahistoricalget) | **GET** /dapps/uniswapv3/dayData/historical | 
*UniswapV3Api* | [**dappsUniswapv3FactoryCurrentGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3factorycurrentget) | **GET** /dapps/uniswapv3/factory/current | GetFactory
*UniswapV3Api* | [**dappsUniswapv3FactoryHistoricalGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3factoryhistoricalget) | **GET** /dapps/uniswapv3/factory/historical | 
*UniswapV3Api* | [**dappsUniswapv3MintsCurrentGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3mintscurrentget) | **GET** /dapps/uniswapv3/mints/current | GetMints
*UniswapV3Api* | [**dappsUniswapv3MintsHistoricalGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3mintshistoricalget) | **GET** /dapps/uniswapv3/mints/historical | 
*UniswapV3Api* | [**dappsUniswapv3PoolDayDataHistoricalGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3pooldaydatahistoricalget) | **GET** /dapps/uniswapv3/poolDayData/historical | 
*UniswapV3Api* | [**dappsUniswapv3PoolHourDataHistoricalGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3poolhourdatahistoricalget) | **GET** /dapps/uniswapv3/poolHourData/historical | 
*UniswapV3Api* | [**dappsUniswapv3PoolsCurrentGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3poolscurrentget) | **GET** /dapps/uniswapv3/pools/current | GetPools
*UniswapV3Api* | [**dappsUniswapv3PoolsDayDataCurrentGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3poolsdaydatacurrentget) | **GET** /dapps/uniswapv3/poolsDayData/current | GetPoolsDayData
*UniswapV3Api* | [**dappsUniswapv3PoolsHistoricalGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3poolshistoricalget) | **GET** /dapps/uniswapv3/pools/historical | 
*UniswapV3Api* | [**dappsUniswapv3PoolsHourDataCurrentGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3poolshourdatacurrentget) | **GET** /dapps/uniswapv3/poolsHourData/current | GetPoolsHourData
*UniswapV3Api* | [**dappsUniswapv3PositionSnapshotHistoricalGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3positionsnapshothistoricalget) | **GET** /dapps/uniswapv3/positionSnapshot/historical | 
*UniswapV3Api* | [**dappsUniswapv3PositionSnapshotsCurrentGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3positionsnapshotscurrentget) | **GET** /dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot
*UniswapV3Api* | [**dappsUniswapv3PositionsCurrentGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3positionscurrentget) | **GET** /dapps/uniswapv3/positions/current | GetPositions
*UniswapV3Api* | [**dappsUniswapv3PositionsHistoricalGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3positionshistoricalget) | **GET** /dapps/uniswapv3/positions/historical | 
*UniswapV3Api* | [**dappsUniswapv3SwapsCurrentGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3swapscurrentget) | **GET** /dapps/uniswapv3/swaps/current | GetSwaps
*UniswapV3Api* | [**dappsUniswapv3SwapsHistoricalGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3swapshistoricalget) | **GET** /dapps/uniswapv3/swaps/historical | 
*UniswapV3Api* | [**dappsUniswapv3TickDayDataHistoricalGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3tickdaydatahistoricalget) | **GET** /dapps/uniswapv3/tickDayData/historical | 
*UniswapV3Api* | [**dappsUniswapv3TicksCurrentGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3tickscurrentget) | **GET** /dapps/uniswapv3/ticks/current | GetTicks
*UniswapV3Api* | [**dappsUniswapv3TicksDayDataCurrentGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3ticksdaydatacurrentget) | **GET** /dapps/uniswapv3/ticksDayData/current | GetTicksDayData
*UniswapV3Api* | [**dappsUniswapv3TicksHistoricalGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3tickshistoricalget) | **GET** /dapps/uniswapv3/ticks/historical | 
*UniswapV3Api* | [**dappsUniswapv3TokenDayDataHistoricalGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3tokendaydatahistoricalget) | **GET** /dapps/uniswapv3/tokenDayData/historical | 
*UniswapV3Api* | [**dappsUniswapv3TokenHourDataHistoricalGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3tokenhourdatahistoricalget) | **GET** /dapps/uniswapv3/tokenHourData/historical | 
*UniswapV3Api* | [**dappsUniswapv3TokensCurrentGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3tokenscurrentget) | **GET** /dapps/uniswapv3/tokens/current | GetTokens
*UniswapV3Api* | [**dappsUniswapv3TokensDayDataCurrentGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3tokensdaydatacurrentget) | **GET** /dapps/uniswapv3/tokensDayData/current | GetTokensDayData
*UniswapV3Api* | [**dappsUniswapv3TokensHistoricalGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3tokenshistoricalget) | **GET** /dapps/uniswapv3/tokens/historical | 
*UniswapV3Api* | [**dappsUniswapv3TokensHourDataCurrentGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3tokenshourdatacurrentget) | **GET** /dapps/uniswapv3/tokensHourData/current | GetTokensHourData
*UniswapV3Api* | [**dappsUniswapv3TransactionsHistoricalGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3transactionshistoricalget) | **GET** /dapps/uniswapv3/transactions/historical | 
*UniswapV3Api* | [**dappsUniswapv3UniswapDayDataCurrentGet**](docs/Api/UniswapV3Api.md#dappsuniswapv3uniswapdaydatacurrentget) | **GET** /dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData

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
