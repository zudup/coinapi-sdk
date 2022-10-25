# org.openapitools.client - Kotlin client library for OnChain API

## Requires

* Kotlin 1.4.30
* Gradle 6.8.3

## Build

First, create the gradle wrapper script:

```
gradle wrapper
```

Then, run:

```
./gradlew check assemble
```

This runs all tests and packages the library.

## Features/Implementation Notes

* Supports JSON inputs/outputs, File inputs, and Form inputs.
* Supports collection formats for query parameters: csv, tsv, ssv, pipes.
* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in OpenAPI definitions.
* Implementation of ApiClient is intended to reduce method counts, specifically to benefit Android targets.

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://onchain.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AccountsApi* | [**chainsChainIdDappsCurveAccountsHistoricalGet**](docs/AccountsApi.md#chainschainiddappscurveaccountshistoricalget) | **GET** /chains/{chain_id}/dapps/curve/accounts/historical | 
*AddLiquidityEventApi* | [**chainsChainIdDappsCurveAddLiquidityEventHistoricalGet**](docs/AddLiquidityEventApi.md#chainschainiddappscurveaddliquidityeventhistoricalget) | **GET** /chains/{chain_id}/dapps/curve/addLiquidityEvent/historical | 
*AdminFeeChangeLogApi* | [**chainsChainIdDappsCurveAdminFeeChangeLogHistoricalGet**](docs/AdminFeeChangeLogApi.md#chainschainiddappscurveadminfeechangeloghistoricalget) | **GET** /chains/{chain_id}/dapps/curve/adminFeeChangeLog/historical | 
*AmplificationCoeffChangeLogApi* | [**chainsChainIdDappsCurveAmplificationCoeffChangeLogHistoricalGet**](docs/AmplificationCoeffChangeLogApi.md#chainschainiddappscurveamplificationcoeffchangeloghistoricalget) | **GET** /chains/{chain_id}/dapps/curve/amplificationCoeffChangeLog/historical | 
*BatchApi* | [**chainsChainIdDappsDexBatchHistoricalGet**](docs/BatchApi.md#chainschainiddappsdexbatchhistoricalget) | **GET** /chains/{chain_id}/dapps/dex/batch/historical | 
*BundlesApi* | [**chainsChainIdDappsSushiswapBundlesHistoricalGet**](docs/BundlesApi.md#chainschainiddappssushiswapbundleshistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/bundles/historical | 
*BundlesApi* | [**chainsChainIdDappsUniswapv2BundlesHistoricalGet**](docs/BundlesApi.md#chainschainiddappsuniswapv2bundleshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/bundles/historical | 
*BundlesApi* | [**chainsChainIdDappsUniswapv3BundlesHistoricalGet**](docs/BundlesApi.md#chainschainiddappsuniswapv3bundleshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundles/historical | 
*BurnsApi* | [**chainsChainIdDappsSushiswapBurnsHistoricalGet**](docs/BurnsApi.md#chainschainiddappssushiswapburnshistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/burns/historical | 
*BurnsApi* | [**chainsChainIdDappsUniswapv2BurnsHistoricalGet**](docs/BurnsApi.md#chainschainiddappsuniswapv2burnshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/burns/historical | 
*BurnsApi* | [**chainsChainIdDappsUniswapv3BurnsHistoricalGet**](docs/BurnsApi.md#chainschainiddappsuniswapv3burnshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/burns/historical | 
*CoinsApi* | [**chainsChainIdDappsCurveCoinsHistoricalGet**](docs/CoinsApi.md#chainschainiddappscurvecoinshistoricalget) | **GET** /chains/{chain_id}/dapps/curve/coins/historical | 
*ContractsApi* | [**chainsChainIdDappsCurveContractsHistoricalGet**](docs/ContractsApi.md#chainschainiddappscurvecontractshistoricalget) | **GET** /chains/{chain_id}/dapps/curve/contracts/historical | 
*ContractsVersionApi* | [**chainsChainIdDappsCurveContractsVersionHistoricalGet**](docs/ContractsVersionApi.md#chainschainiddappscurvecontractsversionhistoricalget) | **GET** /chains/{chain_id}/dapps/curve/contractsVersion/historical | 
*DailyVolumeApi* | [**chainsChainIdDappsCurveDailyVolumeHistoricalGet**](docs/DailyVolumeApi.md#chainschainiddappscurvedailyvolumehistoricalget) | **GET** /chains/{chain_id}/dapps/curve/dailyVolume/historical | 
*DayDataApi* | [**chainsChainIdDappsSushiswapDayDataHistoricalGet**](docs/DayDataApi.md#chainschainiddappssushiswapdaydatahistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/dayData/historical | 
*DepositApi* | [**chainsChainIdDappsDexTokensHistoricalGet**](docs/DepositApi.md#chainschainiddappsdextokenshistoricalget) | **GET** /chains/{chain_id}/dapps/dex/tokens/historical | 
*FactoryApi* | [**chainsChainIdDappsSushiswapFactoryHistoricalGet**](docs/FactoryApi.md#chainschainiddappssushiswapfactoryhistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/factory/historical | 
*FactoryApi* | [**chainsChainIdDappsUniswapv2FactoryHistoricalGet**](docs/FactoryApi.md#chainschainiddappsuniswapv2factoryhistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/factory/historical | 
*FactoryApi* | [**chainsChainIdDappsUniswapv3FactoryHistoricalGet**](docs/FactoryApi.md#chainschainiddappsuniswapv3factoryhistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/factory/historical | 
*FeeChangeLogApi* | [**chainsChainIdDappsCurveFeeChangeLogHistoricalGet**](docs/FeeChangeLogApi.md#chainschainiddappscurvefeechangeloghistoricalget) | **GET** /chains/{chain_id}/dapps/curve/feeChangeLog/historical | 
*GaugeApi* | [**chainsChainIdDappsCurveGaugeHistoricalGet**](docs/GaugeApi.md#chainschainiddappscurvegaugehistoricalget) | **GET** /chains/{chain_id}/dapps/curve/gauge/historical | 
*GaugeDepositApi* | [**chainsChainIdDappsCurveGaugeDepositHistoricalGet**](docs/GaugeDepositApi.md#chainschainiddappscurvegaugedeposithistoricalget) | **GET** /chains/{chain_id}/dapps/curve/gaugeDeposit/historical | 
*GaugeLiquidityApi* | [**chainsChainIdDappsCurveGaugeLiquidityHistoricalGet**](docs/GaugeLiquidityApi.md#chainschainiddappscurvegaugeliquidityhistoricalget) | **GET** /chains/{chain_id}/dapps/curve/gaugeLiquidity/historical | 
*GaugeTotalWeightApi* | [**chainsChainIdDappsCurveGaugeTotalWeightHistoricalGet**](docs/GaugeTotalWeightApi.md#chainschainiddappscurvegaugetotalweighthistoricalget) | **GET** /chains/{chain_id}/dapps/curve/gaugeTotalWeight/historical | 
*GaugeTypeApi* | [**chainsChainIdDappsCurveGaugeTypeHistoricalGet**](docs/GaugeTypeApi.md#chainschainiddappscurvegaugetypehistoricalget) | **GET** /chains/{chain_id}/dapps/curve/gaugeType/historical | 
*GaugeTypeWeightApi* | [**chainsChainIdDappsCurveGaugeTypeWeightHistoricalGet**](docs/GaugeTypeWeightApi.md#chainschainiddappscurvegaugetypeweighthistoricalget) | **GET** /chains/{chain_id}/dapps/curve/gaugeTypeWeight/historical | 
*GaugeWeightApi* | [**chainsChainIdDappsCurveGaugeWeightHistoricalGet**](docs/GaugeWeightApi.md#chainschainiddappscurvegaugeweighthistoricalget) | **GET** /chains/{chain_id}/dapps/curve/gaugeWeight/historical | 
*GaugeWeightVoteApi* | [**chainsChainIdDappsCurveGaugeWeightVoteHistoricalGet**](docs/GaugeWeightVoteApi.md#chainschainiddappscurvegaugeweightvotehistoricalget) | **GET** /chains/{chain_id}/dapps/curve/gaugeWeightVote/historical | 
*GaugeWithdrawApi* | [**chainsChainIdDappsCurveGaugeWithdrawHistoricalGet**](docs/GaugeWithdrawApi.md#chainschainiddappscurvegaugewithdrawhistoricalget) | **GET** /chains/{chain_id}/dapps/curve/gaugeWithdraw/historical | 
*HourDataApi* | [**chainsChainIdDappsSushiswapHourDataHistoricalGet**](docs/HourDataApi.md#chainschainiddappssushiswaphourdatahistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/hourData/historical | 
*HourlyVolumeApi* | [**chainsChainIdDappsCurveHourlyVolumeHistoricalGet**](docs/HourlyVolumeApi.md#chainschainiddappscurvehourlyvolumehistoricalget) | **GET** /chains/{chain_id}/dapps/curve/hourlyVolume/historical | 
*LiquidityPositionApi* | [**chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet**](docs/LiquidityPositionApi.md#chainschainiddappssushiswapliquiditypositionhistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/liquidityPosition/historical | 
*LiquidityPositionApi* | [**chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet**](docs/LiquidityPositionApi.md#chainschainiddappsuniswapv2liquiditypositionhistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/liquidityPosition/historical | 
*LiquidityPositionSnapshotsApi* | [**chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet**](docs/LiquidityPositionSnapshotsApi.md#chainschainiddappssushiswapliquiditypositionsnapshotshistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/liquidityPositionSnapshots/historical | 
*LiquidityPositionSnapshotsApi* | [**chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet**](docs/LiquidityPositionSnapshotsApi.md#chainschainiddappsuniswapv2liquiditypositionsnapshotshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/liquidityPositionSnapshots/historical | 
*LpTokenApi* | [**chainsChainIdDappsCurveLpTokenHistoricalGet**](docs/LpTokenApi.md#chainschainiddappscurvelptokenhistoricalget) | **GET** /chains/{chain_id}/dapps/curve/lpToken/historical | 
*MintsApi* | [**chainsChainIdDappsSushiswapMintsHistoricalGet**](docs/MintsApi.md#chainschainiddappssushiswapmintshistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/mints/historical | 
*MintsApi* | [**chainsChainIdDappsUniswapv2MintsHistoricalGet**](docs/MintsApi.md#chainschainiddappsuniswapv2mintshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/mints/historical | 
*MintsApi* | [**chainsChainIdDappsUniswapv3MintsHistoricalGet**](docs/MintsApi.md#chainschainiddappsuniswapv3mintshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/mints/historical | 
*OrdersApi* | [**chainsChainIdDappsCowOrdersHistoricalGet**](docs/OrdersApi.md#chainschainiddappscowordershistoricalget) | **GET** /chains/{chain_id}/dapps/cow/orders/historical | 
*OrdersApi* | [**chainsChainIdDappsDexOrdersHistoricalGet**](docs/OrdersApi.md#chainschainiddappsdexordershistoricalget) | **GET** /chains/{chain_id}/dapps/dex/orders/historical | 
*PoiApi* | [**chainsChainIdDappsCowPoiHistoricalGet**](docs/PoiApi.md#chainschainiddappscowpoihistoricalget) | **GET** /chains/{chain_id}/dapps/cow/poi/historical | 
*PoiApi* | [**chainsChainIdDappsCurvePoiHistoricalGet**](docs/PoiApi.md#chainschainiddappscurvepoihistoricalget) | **GET** /chains/{chain_id}/dapps/curve/poi/historical | 
*PoiApi* | [**chainsChainIdDappsDexPoiHistoricalGet**](docs/PoiApi.md#chainschainiddappsdexpoihistoricalget) | **GET** /chains/{chain_id}/dapps/dex/poi/historical | 
*PoiApi* | [**chainsChainIdDappsSushiswapPoiHistoricalGet**](docs/PoiApi.md#chainschainiddappssushiswappoihistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/poi/historical | 
*PoiApi* | [**chainsChainIdDappsUniswapv2PoiHistoricalGet**](docs/PoiApi.md#chainschainiddappsuniswapv2poihistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/poi/historical | 
*PoiApi* | [**chainsChainIdDappsUniswapv3PoiHistoricalGet**](docs/PoiApi.md#chainschainiddappsuniswapv3poihistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/poi/historical | 
*PoolDayDataApi* | [**chainsChainIdDappsSushiswapPoolDayDataHistoricalGet**](docs/PoolDayDataApi.md#chainschainiddappssushiswappooldaydatahistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/poolDayData/historical | 
*PoolDayDataApi* | [**chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet**](docs/PoolDayDataApi.md#chainschainiddappsuniswapv2pooldaydatahistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/poolDayData/historical | 
*PoolDayDataApi* | [**chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet**](docs/PoolDayDataApi.md#chainschainiddappsuniswapv3pooldaydatahistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolDayData/historical | 
*PoolHourDataApi* | [**chainsChainIdDappsSushiswapPoolHourDataHistoricalGet**](docs/PoolHourDataApi.md#chainschainiddappssushiswappoolhourdatahistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/poolHourData/historical | 
*PoolHourDataApi* | [**chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet**](docs/PoolHourDataApi.md#chainschainiddappsuniswapv2poolhourdatahistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/poolHourData/historical | 
*PoolHourDataApi* | [**chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet**](docs/PoolHourDataApi.md#chainschainiddappsuniswapv3poolhourdatahistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolHourData/historical | 
*PoolsApi* | [**chainsChainIdDappsCurvePoolsHistoricalGet**](docs/PoolsApi.md#chainschainiddappscurvepoolshistoricalget) | **GET** /chains/{chain_id}/dapps/curve/pools/historical | 
*PoolsApi* | [**chainsChainIdDappsSushiswapPoolsHistoricalGet**](docs/PoolsApi.md#chainschainiddappssushiswappoolshistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/pools/historical | 
*PoolsApi* | [**chainsChainIdDappsUniswapv2PoolsHistoricalGet**](docs/PoolsApi.md#chainschainiddappsuniswapv2poolshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/historical | 
*PoolsApi* | [**chainsChainIdDappsUniswapv3PoolsHistoricalGet**](docs/PoolsApi.md#chainschainiddappsuniswapv3poolshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/historical | 
*PositionSnapshotApi* | [**chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet**](docs/PositionSnapshotApi.md#chainschainiddappsuniswapv3positionsnapshothistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/positionSnapshot/historical | 
*PositionsApi* | [**chainsChainIdDappsUniswapv3PositionsHistoricalGet**](docs/PositionsApi.md#chainschainiddappsuniswapv3positionshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/positions/historical | 
*PricesApi* | [**chainsChainIdDappsDexPricesHistoricalGet**](docs/PricesApi.md#chainschainiddappsdexpriceshistoricalget) | **GET** /chains/{chain_id}/dapps/dex/prices/historical | 
*SettlementApi* | [**chainsChainIdDappsCowSettlementHistoricalGet**](docs/SettlementApi.md#chainschainiddappscowsettlementhistoricalget) | **GET** /chains/{chain_id}/dapps/cow/settlement/historical | 
*SolutionApi* | [**chainsChainIdDappsDexSolutionHistoricalGet**](docs/SolutionApi.md#chainschainiddappsdexsolutionhistoricalget) | **GET** /chains/{chain_id}/dapps/dex/solution/historical | 
*StatsApi* | [**chainsChainIdDappsDexStatsHistoricalGet**](docs/StatsApi.md#chainschainiddappsdexstatshistoricalget) | **GET** /chains/{chain_id}/dapps/dex/stats/historical | 
*SushiswapApi* | [**chainsChainIdDappsSushiswapPoolsCurrentGet**](docs/SushiswapApi.md#chainschainiddappssushiswappoolscurrentget) | **GET** /chains/{chain_id}/dapps/sushiswap/pools/current | GetPools
*SushiswapApi* | [**chainsChainIdDappsSushiswapSwapsCurrentGet**](docs/SushiswapApi.md#chainschainiddappssushiswapswapscurrentget) | **GET** /chains/{chain_id}/dapps/sushiswap/swaps/current | GetSwaps
*SushiswapApi* | [**chainsChainIdDappsSushiswapTokensCurrentGet**](docs/SushiswapApi.md#chainschainiddappssushiswaptokenscurrentget) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/current | GetTokens
*SwapsApi* | [**chainsChainIdDappsCurveSwapsHistoricalGet**](docs/SwapsApi.md#chainschainiddappscurveswapshistoricalget) | **GET** /chains/{chain_id}/dapps/curve/swaps/historical | 
*SwapsApi* | [**chainsChainIdDappsSushiswapSwapsHistoricalGet**](docs/SwapsApi.md#chainschainiddappssushiswapswapshistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/swaps/historical | 
*SwapsApi* | [**chainsChainIdDappsUniswapv2SwapsHistoricalGet**](docs/SwapsApi.md#chainschainiddappsuniswapv2swapshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/historical | 
*SwapsApi* | [**chainsChainIdDappsUniswapv3SwapsHistoricalGet**](docs/SwapsApi.md#chainschainiddappsuniswapv3swapshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/historical | 
*TickDayDataApi* | [**chainsChainIdDappsUniswapv3TickDayDataHistoricalGet**](docs/TickDayDataApi.md#chainschainiddappsuniswapv3tickdaydatahistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tickDayData/historical | 
*TicksApi* | [**chainsChainIdDappsUniswapv3TicksHistoricalGet**](docs/TicksApi.md#chainschainiddappsuniswapv3tickshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticks/historical | 
*TokenDayDataApi* | [**chainsChainIdDappsSushiswapTokenDayDataHistoricalGet**](docs/TokenDayDataApi.md#chainschainiddappssushiswaptokendaydatahistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/tokenDayData/historical | 
*TokenDayDataApi* | [**chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet**](docs/TokenDayDataApi.md#chainschainiddappsuniswapv2tokendaydatahistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokenDayData/historical | 
*TokenDayDataApi* | [**chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet**](docs/TokenDayDataApi.md#chainschainiddappsuniswapv3tokendaydatahistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokenDayData/historical | 
*TokenHourDataApi* | [**chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet**](docs/TokenHourDataApi.md#chainschainiddappsuniswapv3tokenhourdatahistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokenHourData/historical | 
*TokensApi* | [**chainsChainIdDappsCowTokensHistoricalGet**](docs/TokensApi.md#chainschainiddappscowtokenshistoricalget) | **GET** /chains/{chain_id}/dapps/cow/tokens/historical | 
*TokensApi* | [**chainsChainIdDappsCurveTokensHistoricalGet**](docs/TokensApi.md#chainschainiddappscurvetokenshistoricalget) | **GET** /chains/{chain_id}/dapps/curve/tokens/historical | 
*TokensApi* | [**chainsChainIdDappsSushiswapTokensHistoricalGet**](docs/TokensApi.md#chainschainiddappssushiswaptokenshistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/historical | 
*TokensApi* | [**chainsChainIdDappsUniswapv2TokensHistoricalGet**](docs/TokensApi.md#chainschainiddappsuniswapv2tokenshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/historical | 
*TokensApi* | [**chainsChainIdDappsUniswapv3TokensHistoricalGet**](docs/TokensApi.md#chainschainiddappsuniswapv3tokenshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/historical | 
*TradesApi* | [**chainsChainIdDappsCowTradesHistoricalGet**](docs/TradesApi.md#chainschainiddappscowtradeshistoricalget) | **GET** /chains/{chain_id}/dapps/cow/trades/historical | 
*TradesApi* | [**chainsChainIdDappsDexTradesHistoricalGet**](docs/TradesApi.md#chainschainiddappsdextradeshistoricalget) | **GET** /chains/{chain_id}/dapps/dex/trades/historical | 
*TransactionsApi* | [**chainsChainIdDappsSushiswapTransactionsHistoricalGet**](docs/TransactionsApi.md#chainschainiddappssushiswaptransactionshistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/transactions/historical | 
*TransactionsApi* | [**chainsChainIdDappsUniswapv2TransactionsHistoricalGet**](docs/TransactionsApi.md#chainschainiddappsuniswapv2transactionshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/transactions/historical | 
*TransactionsApi* | [**chainsChainIdDappsUniswapv3TransactionsHistoricalGet**](docs/TransactionsApi.md#chainschainiddappsuniswapv3transactionshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/transactions/historical | 
*UniswapDayDataApi* | [**chainsChainIdDappsUniswapv2DayDataHistoricalGet**](docs/UniswapDayDataApi.md#chainschainiddappsuniswapv2daydatahistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/dayData/historical | 
*UniswapDayDataApi* | [**chainsChainIdDappsUniswapv3DayDataHistoricalGet**](docs/UniswapDayDataApi.md#chainschainiddappsuniswapv3daydatahistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/dayData/historical | 
*UniswapV2Api* | [**chainsChainIdDappsUniswapv2PoolsCurrentGet**](docs/UniswapV2Api.md#chainschainiddappsuniswapv2poolscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools
*UniswapV2Api* | [**chainsChainIdDappsUniswapv2SwapsCurrentGet**](docs/UniswapV2Api.md#chainschainiddappsuniswapv2swapscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps
*UniswapV2Api* | [**chainsChainIdDappsUniswapv2TokensCurrentGet**](docs/UniswapV2Api.md#chainschainiddappsuniswapv2tokenscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3BundleCurrentGet**](docs/UniswapV3Api.md#chainschainiddappsuniswapv3bundlecurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3BurnsCurrentGet**](docs/UniswapV3Api.md#chainschainiddappsuniswapv3burnscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3FactoryCurrentGet**](docs/UniswapV3Api.md#chainschainiddappsuniswapv3factorycurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3MintsCurrentGet**](docs/UniswapV3Api.md#chainschainiddappsuniswapv3mintscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3PoolsCurrentGet**](docs/UniswapV3Api.md#chainschainiddappsuniswapv3poolscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet**](docs/UniswapV3Api.md#chainschainiddappsuniswapv3poolsdaydatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet**](docs/UniswapV3Api.md#chainschainiddappsuniswapv3poolshourdatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet**](docs/UniswapV3Api.md#chainschainiddappsuniswapv3positionsnapshotscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3PositionsCurrentGet**](docs/UniswapV3Api.md#chainschainiddappsuniswapv3positionscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3SwapsCurrentGet**](docs/UniswapV3Api.md#chainschainiddappsuniswapv3swapscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3TicksCurrentGet**](docs/UniswapV3Api.md#chainschainiddappsuniswapv3tickscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3TicksDayDataCurrentGet**](docs/UniswapV3Api.md#chainschainiddappsuniswapv3ticksdaydatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3TokensCurrentGet**](docs/UniswapV3Api.md#chainschainiddappsuniswapv3tokenscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3TokensDayDataCurrentGet**](docs/UniswapV3Api.md#chainschainiddappsuniswapv3tokensdaydatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3TokensHourDataCurrentGet**](docs/UniswapV3Api.md#chainschainiddappsuniswapv3tokenshourdatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet**](docs/UniswapV3Api.md#chainschainiddappsuniswapv3uniswapdaydatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData
*UsersApi* | [**chainsChainIdDappsCowUsersHistoricalGet**](docs/UsersApi.md#chainschainiddappscowusershistoricalget) | **GET** /chains/{chain_id}/dapps/cow/users/historical | 
*UsersApi* | [**chainsChainIdDappsDexUsersHistoricalGet**](docs/UsersApi.md#chainschainiddappsdexusershistoricalget) | **GET** /chains/{chain_id}/dapps/dex/users/historical | 
*UsersApi* | [**chainsChainIdDappsSushiswapUsersHistoricalGet**](docs/UsersApi.md#chainschainiddappssushiswapusershistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/users/historical | 
*UsersApi* | [**chainsChainIdDappsUniswapv2UsersHistoricalGet**](docs/UsersApi.md#chainschainiddappsuniswapv2usershistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/users/historical | 
*WithdrawApi* | [**chainsChainIdDappsDexWithdrawHistoricalGet**](docs/WithdrawApi.md#chainschainiddappsdexwithdrawhistoricalget) | **GET** /chains/{chain_id}/dapps/dex/withdraw/historical | 
*WithdrawRequestApi* | [**chainsChainIdDappsDexWithdrawRequestHistoricalGet**](docs/WithdrawRequestApi.md#chainschainiddappsdexwithdrawrequesthistoricalget) | **GET** /chains/{chain_id}/dapps/dex/withdrawRequest/historical | 


<a name="documentation-for-models"></a>
## Documentation for Models

 - [org.openapitools.client.models.BigInteger](docs/BigInteger.md)
 - [org.openapitools.client.models.BundleV3DTO](docs/BundleV3DTO.md)
 - [org.openapitools.client.models.BurnV3DTO](docs/BurnV3DTO.md)
 - [org.openapitools.client.models.ETradeAggressiveSide](docs/ETradeAggressiveSide.md)
 - [org.openapitools.client.models.FactoryV3DTO](docs/FactoryV3DTO.md)
 - [org.openapitools.client.models.MintV3DTO](docs/MintV3DTO.md)
 - [org.openapitools.client.models.PairDTO](docs/PairDTO.md)
 - [org.openapitools.client.models.PairV2DTO](docs/PairV2DTO.md)
 - [org.openapitools.client.models.PoolDayDataV3DTO](docs/PoolDayDataV3DTO.md)
 - [org.openapitools.client.models.PoolHourDataV3DTO](docs/PoolHourDataV3DTO.md)
 - [org.openapitools.client.models.PoolV3DTO](docs/PoolV3DTO.md)
 - [org.openapitools.client.models.PositionSnapshotV3DTO](docs/PositionSnapshotV3DTO.md)
 - [org.openapitools.client.models.PositionV3DTO](docs/PositionV3DTO.md)
 - [org.openapitools.client.models.SwapDTO](docs/SwapDTO.md)
 - [org.openapitools.client.models.SwapV2DTO](docs/SwapV2DTO.md)
 - [org.openapitools.client.models.SwapV3DTO](docs/SwapV3DTO.md)
 - [org.openapitools.client.models.TickDayDataV3DTO](docs/TickDayDataV3DTO.md)
 - [org.openapitools.client.models.TickV3DTO](docs/TickV3DTO.md)
 - [org.openapitools.client.models.TokenDTO](docs/TokenDTO.md)
 - [org.openapitools.client.models.TokenHourDataV3DTO](docs/TokenHourDataV3DTO.md)
 - [org.openapitools.client.models.TokenV2DTO](docs/TokenV2DTO.md)
 - [org.openapitools.client.models.TokenV3DTO](docs/TokenV3DTO.md)
 - [org.openapitools.client.models.TokenV3DayDataDTO](docs/TokenV3DayDataDTO.md)
 - [org.openapitools.client.models.UniswapDayDataV3DTO](docs/UniswapDayDataV3DTO.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

All endpoints do not require authorization.
