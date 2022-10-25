# Documentation for OnChain API v1 Tizen Client SDK

## How do I get the doc files?
First generate source code by running `openapi-generator`
Then run `doc/generateDocumentation.sh` from the output folder. It will generate all the doc files and put them in the `doc/SDK` directory.
To successfully generate documentation it needs `Doxygen` installed in the path.
*Note* - Before generating the documentation, put the logo of the project as the file `doc/logo.png` before running `doxygen`.


## How do I use this?
This is the structure of the doc folder:

```
.
├── logo.png                  \\Logo of the project
├── Doxyfile                  \\Doxygen config files
├── generateDocumentation.sh  \\Script to run to generate documentation
├── README.md                 \\This file
├── SDK                       \\Documentation for all classes in OnChain API Tizen Client SDK. See ./html/index.html
│   └── html

```

## *tl;dr* run this:

```
doc/generateDocumentation.sh
```

The above SDK folder will be generated. See the index.html inside the SDK folder.


## What's Doxygen?
Doxygen is the de facto standard tool for generating/extracting documentation from annotated/unannotated C++ sources, but it also supports other popular programming languages such as C, Objective-C, C#, PHP, Java, Python, IDL (Corba, Microsoft, and UNO/OpenOffice flavors), Fortran, VHDL, Tcl, and to some extent D.

Check out [Doxygen](https://www.doxygen.org/) for additional information about the Doxygen project.

## I Don't want to run Doxygen. What are the API files for accessing the REST endpoints?
All URIs are relative to https://onchain.coinapi.iohttps://onchain.coinapi.io


### AccountsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveAccountsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/accounts/historical | .
*chainsChainIdDappsCurveAccountsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/accounts/historical | .


### AddLiquidityEventManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveAddLiquidityEventHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/addLiquidityEvent/historical | .
*chainsChainIdDappsCurveAddLiquidityEventHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/addLiquidityEvent/historical | .


### AdminFeeChangeLogManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveAdminFeeChangeLogHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/adminFeeChangeLog/historical | .
*chainsChainIdDappsCurveAdminFeeChangeLogHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/adminFeeChangeLog/historical | .


### AmplificationCoeffChangeLogManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveAmplificationCoeffChangeLogHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/amplificationCoeffChangeLog/historical | .
*chainsChainIdDappsCurveAmplificationCoeffChangeLogHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/amplificationCoeffChangeLog/historical | .


### BatchManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsDexBatchHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/dex/batch/historical | .
*chainsChainIdDappsDexBatchHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/dex/batch/historical | .


### BundlesManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsSushiswapBundlesHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/bundles/historical | .
*chainsChainIdDappsSushiswapBundlesHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/bundles/historical | .
*chainsChainIdDappsUniswapv2BundlesHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/bundles/historical | .
*chainsChainIdDappsUniswapv2BundlesHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/bundles/historical | .
*chainsChainIdDappsUniswapv3BundlesHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/bundles/historical | .
*chainsChainIdDappsUniswapv3BundlesHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/bundles/historical | .


### BurnsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsSushiswapBurnsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/burns/historical | .
*chainsChainIdDappsSushiswapBurnsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/burns/historical | .
*chainsChainIdDappsUniswapv2BurnsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/burns/historical | .
*chainsChainIdDappsUniswapv2BurnsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/burns/historical | .
*chainsChainIdDappsUniswapv3BurnsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/burns/historical | .
*chainsChainIdDappsUniswapv3BurnsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/burns/historical | .


### CoinsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveCoinsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/coins/historical | .
*chainsChainIdDappsCurveCoinsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/coins/historical | .


### ContractsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveContractsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/contracts/historical | .
*chainsChainIdDappsCurveContractsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/contracts/historical | .


### ContractsVersionManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveContractsVersionHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/contractsVersion/historical | .
*chainsChainIdDappsCurveContractsVersionHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/contractsVersion/historical | .


### DailyVolumeManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveDailyVolumeHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/dailyVolume/historical | .
*chainsChainIdDappsCurveDailyVolumeHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/dailyVolume/historical | .


### DayDataManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsSushiswapDayDataHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/dayData/historical | .
*chainsChainIdDappsSushiswapDayDataHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/dayData/historical | .


### DepositManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsDexTokensHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/dex/tokens/historical | .
*chainsChainIdDappsDexTokensHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/dex/tokens/historical | .


### FactoryManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsSushiswapFactoryHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/factory/historical | .
*chainsChainIdDappsSushiswapFactoryHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/factory/historical | .
*chainsChainIdDappsUniswapv2FactoryHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/factory/historical | .
*chainsChainIdDappsUniswapv2FactoryHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/factory/historical | .
*chainsChainIdDappsUniswapv3FactoryHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/factory/historical | .
*chainsChainIdDappsUniswapv3FactoryHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/factory/historical | .


### FeeChangeLogManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveFeeChangeLogHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/feeChangeLog/historical | .
*chainsChainIdDappsCurveFeeChangeLogHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/feeChangeLog/historical | .


### GaugeManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveGaugeHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/gauge/historical | .
*chainsChainIdDappsCurveGaugeHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/gauge/historical | .


### GaugeDepositManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveGaugeDepositHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/gaugeDeposit/historical | .
*chainsChainIdDappsCurveGaugeDepositHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/gaugeDeposit/historical | .


### GaugeLiquidityManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveGaugeLiquidityHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/gaugeLiquidity/historical | .
*chainsChainIdDappsCurveGaugeLiquidityHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/gaugeLiquidity/historical | .


### GaugeTotalWeightManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveGaugeTotalWeightHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/gaugeTotalWeight/historical | .
*chainsChainIdDappsCurveGaugeTotalWeightHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/gaugeTotalWeight/historical | .


### GaugeTypeManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveGaugeTypeHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/gaugeType/historical | .
*chainsChainIdDappsCurveGaugeTypeHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/gaugeType/historical | .


### GaugeTypeWeightManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveGaugeTypeWeightHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/gaugeTypeWeight/historical | .
*chainsChainIdDappsCurveGaugeTypeWeightHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/gaugeTypeWeight/historical | .


### GaugeWeightManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveGaugeWeightHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/gaugeWeight/historical | .
*chainsChainIdDappsCurveGaugeWeightHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/gaugeWeight/historical | .


### GaugeWeightVoteManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveGaugeWeightVoteHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/gaugeWeightVote/historical | .
*chainsChainIdDappsCurveGaugeWeightVoteHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/gaugeWeightVote/historical | .


### GaugeWithdrawManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveGaugeWithdrawHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/gaugeWithdraw/historical | .
*chainsChainIdDappsCurveGaugeWithdrawHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/gaugeWithdraw/historical | .


### HourDataManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsSushiswapHourDataHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/hourData/historical | .
*chainsChainIdDappsSushiswapHourDataHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/hourData/historical | .


### HourlyVolumeManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveHourlyVolumeHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/hourlyVolume/historical | .
*chainsChainIdDappsCurveHourlyVolumeHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/hourlyVolume/historical | .


### LiquidityPositionManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsSushiswapLiquidityPositionHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/liquidityPosition/historical | .
*chainsChainIdDappsSushiswapLiquidityPositionHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/liquidityPosition/historical | .
*chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/liquidityPosition/historical | .
*chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/liquidityPosition/historical | .


### LiquidityPositionSnapshotsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/liquidityPositionSnapshots/historical | .
*chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/liquidityPositionSnapshots/historical | .
*chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/liquidityPositionSnapshots/historical | .
*chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/liquidityPositionSnapshots/historical | .


### LpTokenManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveLpTokenHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/lpToken/historical | .
*chainsChainIdDappsCurveLpTokenHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/lpToken/historical | .


### MintsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsSushiswapMintsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/mints/historical | .
*chainsChainIdDappsSushiswapMintsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/mints/historical | .
*chainsChainIdDappsUniswapv2MintsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/mints/historical | .
*chainsChainIdDappsUniswapv2MintsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/mints/historical | .
*chainsChainIdDappsUniswapv3MintsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/mints/historical | .
*chainsChainIdDappsUniswapv3MintsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/mints/historical | .


### OrdersManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCowOrdersHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/cow/orders/historical | .
*chainsChainIdDappsCowOrdersHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/cow/orders/historical | .
*chainsChainIdDappsDexOrdersHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/dex/orders/historical | .
*chainsChainIdDappsDexOrdersHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/dex/orders/historical | .


### PoiManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCowPoiHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/cow/poi/historical | .
*chainsChainIdDappsCowPoiHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/cow/poi/historical | .
*chainsChainIdDappsCurvePoiHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/poi/historical | .
*chainsChainIdDappsCurvePoiHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/poi/historical | .
*chainsChainIdDappsDexPoiHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/dex/poi/historical | .
*chainsChainIdDappsDexPoiHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/dex/poi/historical | .
*chainsChainIdDappsSushiswapPoiHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/poi/historical | .
*chainsChainIdDappsSushiswapPoiHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/poi/historical | .
*chainsChainIdDappsUniswapv2PoiHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/poi/historical | .
*chainsChainIdDappsUniswapv2PoiHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/poi/historical | .
*chainsChainIdDappsUniswapv3PoiHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/poi/historical | .
*chainsChainIdDappsUniswapv3PoiHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/poi/historical | .


### PoolDayDataManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsSushiswapPoolDayDataHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/poolDayData/historical | .
*chainsChainIdDappsSushiswapPoolDayDataHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/poolDayData/historical | .
*chainsChainIdDappsUniswapv2PoolDayDataHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/poolDayData/historical | .
*chainsChainIdDappsUniswapv2PoolDayDataHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/poolDayData/historical | .
*chainsChainIdDappsUniswapv3PoolDayDataHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/poolDayData/historical | .
*chainsChainIdDappsUniswapv3PoolDayDataHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/poolDayData/historical | .


### PoolHourDataManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsSushiswapPoolHourDataHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/poolHourData/historical | .
*chainsChainIdDappsSushiswapPoolHourDataHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/poolHourData/historical | .
*chainsChainIdDappsUniswapv2PoolHourDataHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/poolHourData/historical | .
*chainsChainIdDappsUniswapv2PoolHourDataHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/poolHourData/historical | .
*chainsChainIdDappsUniswapv3PoolHourDataHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/poolHourData/historical | .
*chainsChainIdDappsUniswapv3PoolHourDataHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/poolHourData/historical | .


### PoolsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurvePoolsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/pools/historical | .
*chainsChainIdDappsCurvePoolsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/pools/historical | .
*chainsChainIdDappsSushiswapPoolsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/pools/historical | .
*chainsChainIdDappsSushiswapPoolsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/pools/historical | .
*chainsChainIdDappsUniswapv2PoolsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/pools/historical | .
*chainsChainIdDappsUniswapv2PoolsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/pools/historical | .
*chainsChainIdDappsUniswapv3PoolsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/pools/historical | .
*chainsChainIdDappsUniswapv3PoolsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/pools/historical | .


### PositionSnapshotManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/positionSnapshot/historical | .
*chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/positionSnapshot/historical | .


### PositionsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv3PositionsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/positions/historical | .
*chainsChainIdDappsUniswapv3PositionsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/positions/historical | .


### PricesManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsDexPricesHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/dex/prices/historical | .
*chainsChainIdDappsDexPricesHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/dex/prices/historical | .


### ProposalsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveProposalsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/proposals/historical | .
*chainsChainIdDappsCurveProposalsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/proposals/historical | .


### ProposalsVoteManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveProposalsVoteHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/proposalsVote/historical | .
*chainsChainIdDappsCurveProposalsVoteHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/proposalsVote/historical | .


### RemoveLiquidityEventManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveRemoveLiquidityEventHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/removeLiquidityEvent/historical | .
*chainsChainIdDappsCurveRemoveLiquidityEventHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/removeLiquidityEvent/historical | .


### RemoveLiquidityOneEventManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveRemoveLiquidityOneEventHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/removeLiquidityOneEvent/historical | .
*chainsChainIdDappsCurveRemoveLiquidityOneEventHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/removeLiquidityOneEvent/historical | .


### SettlementManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCowSettlementHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/cow/settlement/historical | .
*chainsChainIdDappsCowSettlementHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/cow/settlement/historical | .


### SolutionManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsDexSolutionHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/dex/solution/historical | .
*chainsChainIdDappsDexSolutionHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/dex/solution/historical | .


### StatsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsDexStatsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/dex/stats/historical | .
*chainsChainIdDappsDexStatsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/dex/stats/historical | .


### SushiswapManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsSushiswapPoolsCurrentGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/pools/current | GetPools.
*chainsChainIdDappsSushiswapPoolsCurrentGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/pools/current | GetPools.
*chainsChainIdDappsSushiswapSwapsCurrentGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/swaps/current | GetSwaps.
*chainsChainIdDappsSushiswapSwapsCurrentGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/swaps/current | GetSwaps.
*chainsChainIdDappsSushiswapTokensCurrentGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/tokens/current | GetTokens.
*chainsChainIdDappsSushiswapTokensCurrentGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/tokens/current | GetTokens.


### SwapsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveSwapsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/swaps/historical | .
*chainsChainIdDappsCurveSwapsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/swaps/historical | .
*chainsChainIdDappsSushiswapSwapsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/swaps/historical | .
*chainsChainIdDappsSushiswapSwapsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/swaps/historical | .
*chainsChainIdDappsUniswapv2SwapsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/swaps/historical | .
*chainsChainIdDappsUniswapv2SwapsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/swaps/historical | .
*chainsChainIdDappsUniswapv3SwapsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/swaps/historical | .
*chainsChainIdDappsUniswapv3SwapsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/swaps/historical | .


### SystemStateManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveSystemStateHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/systemState/historical | .
*chainsChainIdDappsCurveSystemStateHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/systemState/historical | .


### TickDayDataManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv3TickDayDataHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tickDayData/historical | .
*chainsChainIdDappsUniswapv3TickDayDataHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tickDayData/historical | .


### TicksManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv3TicksHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/ticks/historical | .
*chainsChainIdDappsUniswapv3TicksHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/ticks/historical | .


### TokenDayDataManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsSushiswapTokenDayDataHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/tokenDayData/historical | .
*chainsChainIdDappsSushiswapTokenDayDataHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/tokenDayData/historical | .
*chainsChainIdDappsUniswapv2TokenDayDataHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/tokenDayData/historical | .
*chainsChainIdDappsUniswapv2TokenDayDataHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/tokenDayData/historical | .
*chainsChainIdDappsUniswapv3TokenDayDataHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tokenDayData/historical | .
*chainsChainIdDappsUniswapv3TokenDayDataHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tokenDayData/historical | .


### TokenHourDataManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv3TokenHourDataHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tokenHourData/historical | .
*chainsChainIdDappsUniswapv3TokenHourDataHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tokenHourData/historical | .


### TokensManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCowTokensHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/cow/tokens/historical | .
*chainsChainIdDappsCowTokensHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/cow/tokens/historical | .
*chainsChainIdDappsCurveTokensHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/tokens/historical | .
*chainsChainIdDappsCurveTokensHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/tokens/historical | .
*chainsChainIdDappsSushiswapTokensHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/tokens/historical | .
*chainsChainIdDappsSushiswapTokensHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/tokens/historical | .
*chainsChainIdDappsUniswapv2TokensHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/tokens/historical | .
*chainsChainIdDappsUniswapv2TokensHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/tokens/historical | .
*chainsChainIdDappsUniswapv3TokensHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tokens/historical | .
*chainsChainIdDappsUniswapv3TokensHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tokens/historical | .


### TradesManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCowTradesHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/cow/trades/historical | .
*chainsChainIdDappsCowTradesHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/cow/trades/historical | .
*chainsChainIdDappsDexTradesHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/dex/trades/historical | .
*chainsChainIdDappsDexTradesHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/dex/trades/historical | .


### TransactionsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsSushiswapTransactionsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/transactions/historical | .
*chainsChainIdDappsSushiswapTransactionsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/transactions/historical | .
*chainsChainIdDappsUniswapv2TransactionsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/transactions/historical | .
*chainsChainIdDappsUniswapv2TransactionsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/transactions/historical | .
*chainsChainIdDappsUniswapv3TransactionsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/transactions/historical | .
*chainsChainIdDappsUniswapv3TransactionsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/transactions/historical | .


### TransferOwnershipEventManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveTransferOwnershipEventHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/transferOwnershipEvent/historical | .
*chainsChainIdDappsCurveTransferOwnershipEventHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/transferOwnershipEvent/historical | .


### UnderlyingCoinManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveUnderlyingCoinHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/underlyingCoin/historical | .
*chainsChainIdDappsCurveUnderlyingCoinHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/underlyingCoin/historical | .


### UniswapDayDataManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv2DayDataHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/dayData/historical | .
*chainsChainIdDappsUniswapv2DayDataHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/dayData/historical | .
*chainsChainIdDappsUniswapv3DayDataHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/dayData/historical | .
*chainsChainIdDappsUniswapv3DayDataHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/dayData/historical | .


### UniswapV2Manager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv2PoolsCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools.
*chainsChainIdDappsUniswapv2PoolsCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools.
*chainsChainIdDappsUniswapv2SwapsCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps.
*chainsChainIdDappsUniswapv2SwapsCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps.
*chainsChainIdDappsUniswapv2TokensCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens.
*chainsChainIdDappsUniswapv2TokensCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens.


### UniswapV3Manager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv3BundleCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles.
*chainsChainIdDappsUniswapv3BundleCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles.
*chainsChainIdDappsUniswapv3BurnsCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns.
*chainsChainIdDappsUniswapv3BurnsCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns.
*chainsChainIdDappsUniswapv3FactoryCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory.
*chainsChainIdDappsUniswapv3FactoryCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory.
*chainsChainIdDappsUniswapv3MintsCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints.
*chainsChainIdDappsUniswapv3MintsCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints.
*chainsChainIdDappsUniswapv3PoolsCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools.
*chainsChainIdDappsUniswapv3PoolsCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools.
*chainsChainIdDappsUniswapv3PoolsDayDataCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData.
*chainsChainIdDappsUniswapv3PoolsDayDataCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData.
*chainsChainIdDappsUniswapv3PoolsHourDataCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData.
*chainsChainIdDappsUniswapv3PoolsHourDataCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData.
*chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot.
*chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot.
*chainsChainIdDappsUniswapv3PositionsCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions.
*chainsChainIdDappsUniswapv3PositionsCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions.
*chainsChainIdDappsUniswapv3SwapsCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps.
*chainsChainIdDappsUniswapv3SwapsCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps.
*chainsChainIdDappsUniswapv3TicksCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks.
*chainsChainIdDappsUniswapv3TicksCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks.
*chainsChainIdDappsUniswapv3TicksDayDataCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData.
*chainsChainIdDappsUniswapv3TicksDayDataCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData.
*chainsChainIdDappsUniswapv3TokensCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens.
*chainsChainIdDappsUniswapv3TokensCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens.
*chainsChainIdDappsUniswapv3TokensDayDataCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData.
*chainsChainIdDappsUniswapv3TokensDayDataCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData.
*chainsChainIdDappsUniswapv3TokensHourDataCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData.
*chainsChainIdDappsUniswapv3TokensHourDataCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData.
*chainsChainIdDappsUniswapv3UniswapDayDataCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData.
*chainsChainIdDappsUniswapv3UniswapDayDataCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData.


### UsersManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCowUsersHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/cow/users/historical | .
*chainsChainIdDappsCowUsersHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/cow/users/historical | .
*chainsChainIdDappsDexUsersHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/dex/users/historical | .
*chainsChainIdDappsDexUsersHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/dex/users/historical | .
*chainsChainIdDappsSushiswapUsersHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/users/historical | .
*chainsChainIdDappsSushiswapUsersHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/users/historical | .
*chainsChainIdDappsUniswapv2UsersHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/users/historical | .
*chainsChainIdDappsUniswapv2UsersHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/users/historical | .


### VotingAppManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveVotingAppHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/votingApp/historical | .
*chainsChainIdDappsCurveVotingAppHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/votingApp/historical | .


### WeeklyVolumeManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveWeeklyVolumeHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/weeklyVolume/historical | .
*chainsChainIdDappsCurveWeeklyVolumeHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/weeklyVolume/historical | .


### WithdrawManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsDexWithdrawHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/dex/withdraw/historical | .
*chainsChainIdDappsDexWithdrawHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/dex/withdraw/historical | .


### WithdrawRequestManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsDexWithdrawRequestHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/dex/withdrawRequest/historical | .
*chainsChainIdDappsDexWithdrawRequestHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/dex/withdrawRequest/historical | .


## What are the Model files for the data structures/objects?
Class | Description
------------- | -------------
 *BigInteger* | 
 *BundleV3DTO* | 
 *BurnV3DTO* | 
 *ETradeAggressiveSide* | 
 *FactoryV3DTO* | 
 *MintV3DTO* | 
 *PairDTO* | 
 *PairV2DTO* | 
 *PoolDayDataV3DTO* | 
 *PoolHourDataV3DTO* | 
 *PoolV3DTO* | 
 *PositionSnapshotV3DTO* | 
 *PositionV3DTO* | 
 *SwapDTO* | 
 *SwapV2DTO* | 
 *SwapV3DTO* | 
 *TickDayDataV3DTO* | 
 *TickV3DTO* | 
 *TokenDTO* | 
 *TokenHourDataV3DTO* | 
 *TokenV2DTO* | 
 *TokenV3DTO* | 
 *TokenV3DayDataDTO* | 
 *UniswapDayDataV3DTO* | 

