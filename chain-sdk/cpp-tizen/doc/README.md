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


### CowManager
Method | HTTP request | Description
------------- | ------------- | -------------
*dappsCowOrdersHistoricalGetSync* | *GET* /dapps/cow/orders/historical | .
*dappsCowOrdersHistoricalGetASync* | *GET* /dapps/cow/orders/historical | .
*dappsCowSettlementHistoricalGetSync* | *GET* /dapps/cow/settlement/historical | .
*dappsCowSettlementHistoricalGetASync* | *GET* /dapps/cow/settlement/historical | .
*dappsCowTokensHistoricalGetSync* | *GET* /dapps/cow/tokens/historical | .
*dappsCowTokensHistoricalGetASync* | *GET* /dapps/cow/tokens/historical | .
*dappsCowTradesHistoricalGetSync* | *GET* /dapps/cow/trades/historical | .
*dappsCowTradesHistoricalGetASync* | *GET* /dapps/cow/trades/historical | .
*dappsCowUsersHistoricalGetSync* | *GET* /dapps/cow/users/historical | .
*dappsCowUsersHistoricalGetASync* | *GET* /dapps/cow/users/historical | .


### CurveManager
Method | HTTP request | Description
------------- | ------------- | -------------
*dappsCurveAccountsHistoricalGetSync* | *GET* /dapps/curve/accounts/historical | .
*dappsCurveAccountsHistoricalGetASync* | *GET* /dapps/curve/accounts/historical | .
*dappsCurveAddLiquidityEventHistoricalGetSync* | *GET* /dapps/curve/addLiquidityEvent/historical | .
*dappsCurveAddLiquidityEventHistoricalGetASync* | *GET* /dapps/curve/addLiquidityEvent/historical | .
*dappsCurveAdminFeeChangeLogHistoricalGetSync* | *GET* /dapps/curve/adminFeeChangeLog/historical | .
*dappsCurveAdminFeeChangeLogHistoricalGetASync* | *GET* /dapps/curve/adminFeeChangeLog/historical | .
*dappsCurveAmplificationCoeffChangeLogHistoricalGetSync* | *GET* /dapps/curve/amplificationCoeffChangeLog/historical | .
*dappsCurveAmplificationCoeffChangeLogHistoricalGetASync* | *GET* /dapps/curve/amplificationCoeffChangeLog/historical | .
*dappsCurveCoinsHistoricalGetSync* | *GET* /dapps/curve/coins/historical | .
*dappsCurveCoinsHistoricalGetASync* | *GET* /dapps/curve/coins/historical | .
*dappsCurveContractsHistoricalGetSync* | *GET* /dapps/curve/contracts/historical | .
*dappsCurveContractsHistoricalGetASync* | *GET* /dapps/curve/contracts/historical | .
*dappsCurveContractsVersionHistoricalGetSync* | *GET* /dapps/curve/contractsVersion/historical | .
*dappsCurveContractsVersionHistoricalGetASync* | *GET* /dapps/curve/contractsVersion/historical | .
*dappsCurveDailyVolumeHistoricalGetSync* | *GET* /dapps/curve/dailyVolume/historical | .
*dappsCurveDailyVolumeHistoricalGetASync* | *GET* /dapps/curve/dailyVolume/historical | .
*dappsCurveFeeChangeLogHistoricalGetSync* | *GET* /dapps/curve/feeChangeLog/historical | .
*dappsCurveFeeChangeLogHistoricalGetASync* | *GET* /dapps/curve/feeChangeLog/historical | .
*dappsCurveGaugeDepositHistoricalGetSync* | *GET* /dapps/curve/gaugeDeposit/historical | .
*dappsCurveGaugeDepositHistoricalGetASync* | *GET* /dapps/curve/gaugeDeposit/historical | .
*dappsCurveGaugeHistoricalGetSync* | *GET* /dapps/curve/gauge/historical | .
*dappsCurveGaugeHistoricalGetASync* | *GET* /dapps/curve/gauge/historical | .
*dappsCurveGaugeLiquidityHistoricalGetSync* | *GET* /dapps/curve/gaugeLiquidity/historical | .
*dappsCurveGaugeLiquidityHistoricalGetASync* | *GET* /dapps/curve/gaugeLiquidity/historical | .
*dappsCurveGaugeTotalWeightHistoricalGetSync* | *GET* /dapps/curve/gaugeTotalWeight/historical | .
*dappsCurveGaugeTotalWeightHistoricalGetASync* | *GET* /dapps/curve/gaugeTotalWeight/historical | .
*dappsCurveGaugeTypeHistoricalGetSync* | *GET* /dapps/curve/gaugeType/historical | .
*dappsCurveGaugeTypeHistoricalGetASync* | *GET* /dapps/curve/gaugeType/historical | .
*dappsCurveGaugeTypeWeightHistoricalGetSync* | *GET* /dapps/curve/gaugeTypeWeight/historical | .
*dappsCurveGaugeTypeWeightHistoricalGetASync* | *GET* /dapps/curve/gaugeTypeWeight/historical | .
*dappsCurveGaugeWeightHistoricalGetSync* | *GET* /dapps/curve/gaugeWeight/historical | .
*dappsCurveGaugeWeightHistoricalGetASync* | *GET* /dapps/curve/gaugeWeight/historical | .
*dappsCurveGaugeWeightVoteHistoricalGetSync* | *GET* /dapps/curve/gaugeWeightVote/historical | .
*dappsCurveGaugeWeightVoteHistoricalGetASync* | *GET* /dapps/curve/gaugeWeightVote/historical | .
*dappsCurveGaugeWithdrawHistoricalGetSync* | *GET* /dapps/curve/gaugeWithdraw/historical | .
*dappsCurveGaugeWithdrawHistoricalGetASync* | *GET* /dapps/curve/gaugeWithdraw/historical | .
*dappsCurveHourlyVolumeHistoricalGetSync* | *GET* /dapps/curve/hourlyVolume/historical | .
*dappsCurveHourlyVolumeHistoricalGetASync* | *GET* /dapps/curve/hourlyVolume/historical | .
*dappsCurveLpTokenHistoricalGetSync* | *GET* /dapps/curve/lpToken/historical | .
*dappsCurveLpTokenHistoricalGetASync* | *GET* /dapps/curve/lpToken/historical | .
*dappsCurvePoolsHistoricalGetSync* | *GET* /dapps/curve/pools/historical | .
*dappsCurvePoolsHistoricalGetASync* | *GET* /dapps/curve/pools/historical | .
*dappsCurveProposalsHistoricalGetSync* | *GET* /dapps/curve/proposals/historical | .
*dappsCurveProposalsHistoricalGetASync* | *GET* /dapps/curve/proposals/historical | .
*dappsCurveProposalsVoteHistoricalGetSync* | *GET* /dapps/curve/proposalsVote/historical | .
*dappsCurveProposalsVoteHistoricalGetASync* | *GET* /dapps/curve/proposalsVote/historical | .
*dappsCurveRemoveLiquidityEventHistoricalGetSync* | *GET* /dapps/curve/removeLiquidityEvent/historical | .
*dappsCurveRemoveLiquidityEventHistoricalGetASync* | *GET* /dapps/curve/removeLiquidityEvent/historical | .
*dappsCurveRemoveLiquidityOneEventHistoricalGetSync* | *GET* /dapps/curve/removeLiquidityOneEvent/historical | .
*dappsCurveRemoveLiquidityOneEventHistoricalGetASync* | *GET* /dapps/curve/removeLiquidityOneEvent/historical | .
*dappsCurveSwapsHistoricalGetSync* | *GET* /dapps/curve/swaps/historical | .
*dappsCurveSwapsHistoricalGetASync* | *GET* /dapps/curve/swaps/historical | .
*dappsCurveSystemStateHistoricalGetSync* | *GET* /dapps/curve/systemState/historical | .
*dappsCurveSystemStateHistoricalGetASync* | *GET* /dapps/curve/systemState/historical | .
*dappsCurveTokensHistoricalGetSync* | *GET* /dapps/curve/tokens/historical | .
*dappsCurveTokensHistoricalGetASync* | *GET* /dapps/curve/tokens/historical | .
*dappsCurveTransferOwnershipEventHistoricalGetSync* | *GET* /dapps/curve/transferOwnershipEvent/historical | .
*dappsCurveTransferOwnershipEventHistoricalGetASync* | *GET* /dapps/curve/transferOwnershipEvent/historical | .
*dappsCurveUnderlyingCoinHistoricalGetSync* | *GET* /dapps/curve/underlyingCoin/historical | .
*dappsCurveUnderlyingCoinHistoricalGetASync* | *GET* /dapps/curve/underlyingCoin/historical | .
*dappsCurveVotingAppHistoricalGetSync* | *GET* /dapps/curve/votingApp/historical | .
*dappsCurveVotingAppHistoricalGetASync* | *GET* /dapps/curve/votingApp/historical | .
*dappsCurveWeeklyVolumeHistoricalGetSync* | *GET* /dapps/curve/weeklyVolume/historical | .
*dappsCurveWeeklyVolumeHistoricalGetASync* | *GET* /dapps/curve/weeklyVolume/historical | .


### DexManager
Method | HTTP request | Description
------------- | ------------- | -------------
*dappsDexBatchHistoricalGetSync* | *GET* /dapps/dex/batch/historical | .
*dappsDexBatchHistoricalGetASync* | *GET* /dapps/dex/batch/historical | .
*dappsDexOrdersHistoricalGetSync* | *GET* /dapps/dex/orders/historical | .
*dappsDexOrdersHistoricalGetASync* | *GET* /dapps/dex/orders/historical | .
*dappsDexPricesHistoricalGetSync* | *GET* /dapps/dex/prices/historical | .
*dappsDexPricesHistoricalGetASync* | *GET* /dapps/dex/prices/historical | .
*dappsDexSolutionHistoricalGetSync* | *GET* /dapps/dex/solution/historical | .
*dappsDexSolutionHistoricalGetASync* | *GET* /dapps/dex/solution/historical | .
*dappsDexStatsHistoricalGetSync* | *GET* /dapps/dex/stats/historical | .
*dappsDexStatsHistoricalGetASync* | *GET* /dapps/dex/stats/historical | .
*dappsDexTokensHistoricalGetSync* | *GET* /dapps/dex/tokens/historical | .
*dappsDexTokensHistoricalGetASync* | *GET* /dapps/dex/tokens/historical | .
*dappsDexTradesHistoricalGetSync* | *GET* /dapps/dex/trades/historical | .
*dappsDexTradesHistoricalGetASync* | *GET* /dapps/dex/trades/historical | .
*dappsDexUsersHistoricalGetSync* | *GET* /dapps/dex/users/historical | .
*dappsDexUsersHistoricalGetASync* | *GET* /dapps/dex/users/historical | .
*dappsDexWithdrawHistoricalGetSync* | *GET* /dapps/dex/withdraw/historical | .
*dappsDexWithdrawHistoricalGetASync* | *GET* /dapps/dex/withdraw/historical | .
*dappsDexWithdrawRequestHistoricalGetSync* | *GET* /dapps/dex/withdrawRequest/historical | .
*dappsDexWithdrawRequestHistoricalGetASync* | *GET* /dapps/dex/withdrawRequest/historical | .


### SushiswapManager
Method | HTTP request | Description
------------- | ------------- | -------------
*dappsSushiswapBundlesHistoricalGetSync* | *GET* /dapps/sushiswap/bundles/historical | .
*dappsSushiswapBundlesHistoricalGetASync* | *GET* /dapps/sushiswap/bundles/historical | .
*dappsSushiswapBurnsHistoricalGetSync* | *GET* /dapps/sushiswap/burns/historical | .
*dappsSushiswapBurnsHistoricalGetASync* | *GET* /dapps/sushiswap/burns/historical | .
*dappsSushiswapDayDataHistoricalGetSync* | *GET* /dapps/sushiswap/dayData/historical | .
*dappsSushiswapDayDataHistoricalGetASync* | *GET* /dapps/sushiswap/dayData/historical | .
*dappsSushiswapFactoryHistoricalGetSync* | *GET* /dapps/sushiswap/factory/historical | .
*dappsSushiswapFactoryHistoricalGetASync* | *GET* /dapps/sushiswap/factory/historical | .
*dappsSushiswapHourDataHistoricalGetSync* | *GET* /dapps/sushiswap/hourData/historical | .
*dappsSushiswapHourDataHistoricalGetASync* | *GET* /dapps/sushiswap/hourData/historical | .
*dappsSushiswapLiquidityPositionHistoricalGetSync* | *GET* /dapps/sushiswap/liquidityPosition/historical | .
*dappsSushiswapLiquidityPositionHistoricalGetASync* | *GET* /dapps/sushiswap/liquidityPosition/historical | .
*dappsSushiswapLiquidityPositionSnapshotsHistoricalGetSync* | *GET* /dapps/sushiswap/liquidityPositionSnapshots/historical | .
*dappsSushiswapLiquidityPositionSnapshotsHistoricalGetASync* | *GET* /dapps/sushiswap/liquidityPositionSnapshots/historical | .
*dappsSushiswapMintsHistoricalGetSync* | *GET* /dapps/sushiswap/mints/historical | .
*dappsSushiswapMintsHistoricalGetASync* | *GET* /dapps/sushiswap/mints/historical | .
*dappsSushiswapPoolDayDataHistoricalGetSync* | *GET* /dapps/sushiswap/poolDayData/historical | .
*dappsSushiswapPoolDayDataHistoricalGetASync* | *GET* /dapps/sushiswap/poolDayData/historical | .
*dappsSushiswapPoolHourDataHistoricalGetSync* | *GET* /dapps/sushiswap/poolHourData/historical | .
*dappsSushiswapPoolHourDataHistoricalGetASync* | *GET* /dapps/sushiswap/poolHourData/historical | .
*dappsSushiswapTokenDayDataHistoricalGetSync* | *GET* /dapps/sushiswap/tokenDayData/historical | .
*dappsSushiswapTokenDayDataHistoricalGetASync* | *GET* /dapps/sushiswap/tokenDayData/historical | .
*dappsSushiswapTransactionsHistoricalGetSync* | *GET* /dapps/sushiswap/transactions/historical | .
*dappsSushiswapTransactionsHistoricalGetASync* | *GET* /dapps/sushiswap/transactions/historical | .
*dappsSushiswapUsersHistoricalGetSync* | *GET* /dapps/sushiswap/users/historical | .
*dappsSushiswapUsersHistoricalGetASync* | *GET* /dapps/sushiswap/users/historical | .
*sushiswapGetPoolsCurrentSync* | *GET* /dapps/sushiswap/pools/current | .
*sushiswapGetPoolsCurrentASync* | *GET* /dapps/sushiswap/pools/current | .
*sushiswapGetPoolsHistoricalSync* | *GET* /dapps/sushiswap/pools/historical | .
*sushiswapGetPoolsHistoricalASync* | *GET* /dapps/sushiswap/pools/historical | .
*sushiswapGetSwapsCurrentSync* | *GET* /dapps/sushiswap/swaps/current | .
*sushiswapGetSwapsCurrentASync* | *GET* /dapps/sushiswap/swaps/current | .
*sushiswapGetSwapsHistoricalSync* | *GET* /dapps/sushiswap/swaps/historical | .
*sushiswapGetSwapsHistoricalASync* | *GET* /dapps/sushiswap/swaps/historical | .
*sushiswapGetTokensCurrentSync* | *GET* /dapps/sushiswap/tokens/current | .
*sushiswapGetTokensCurrentASync* | *GET* /dapps/sushiswap/tokens/current | .
*sushiswapGetTokensHistoricalSync* | *GET* /dapps/sushiswap/tokens/historical | .
*sushiswapGetTokensHistoricalASync* | *GET* /dapps/sushiswap/tokens/historical | .


### UniswapV2Manager
Method | HTTP request | Description
------------- | ------------- | -------------
*dappsUniswapv2BundlesHistoricalGetSync* | *GET* /dapps/uniswapv2/bundles/historical | .
*dappsUniswapv2BundlesHistoricalGetASync* | *GET* /dapps/uniswapv2/bundles/historical | .
*dappsUniswapv2BurnsHistoricalGetSync* | *GET* /dapps/uniswapv2/burns/historical | .
*dappsUniswapv2BurnsHistoricalGetASync* | *GET* /dapps/uniswapv2/burns/historical | .
*dappsUniswapv2DayDataHistoricalGetSync* | *GET* /dapps/uniswapv2/dayData/historical | .
*dappsUniswapv2DayDataHistoricalGetASync* | *GET* /dapps/uniswapv2/dayData/historical | .
*dappsUniswapv2FactoryHistoricalGetSync* | *GET* /dapps/uniswapv2/factory/historical | .
*dappsUniswapv2FactoryHistoricalGetASync* | *GET* /dapps/uniswapv2/factory/historical | .
*dappsUniswapv2LiquidityPositionHistoricalGetSync* | *GET* /dapps/uniswapv2/liquidityPosition/historical | .
*dappsUniswapv2LiquidityPositionHistoricalGetASync* | *GET* /dapps/uniswapv2/liquidityPosition/historical | .
*dappsUniswapv2LiquidityPositionSnapshotsHistoricalGetSync* | *GET* /dapps/uniswapv2/liquidityPositionSnapshots/historical | .
*dappsUniswapv2LiquidityPositionSnapshotsHistoricalGetASync* | *GET* /dapps/uniswapv2/liquidityPositionSnapshots/historical | .
*dappsUniswapv2MintsHistoricalGetSync* | *GET* /dapps/uniswapv2/mints/historical | .
*dappsUniswapv2MintsHistoricalGetASync* | *GET* /dapps/uniswapv2/mints/historical | .
*dappsUniswapv2PoolDayDataHistoricalGetSync* | *GET* /dapps/uniswapv2/poolDayData/historical | .
*dappsUniswapv2PoolDayDataHistoricalGetASync* | *GET* /dapps/uniswapv2/poolDayData/historical | .
*dappsUniswapv2PoolHourDataHistoricalGetSync* | *GET* /dapps/uniswapv2/poolHourData/historical | .
*dappsUniswapv2PoolHourDataHistoricalGetASync* | *GET* /dapps/uniswapv2/poolHourData/historical | .
*dappsUniswapv2PoolsCurrentGetSync* | *GET* /dapps/uniswapv2/pools/current | GetPools.
*dappsUniswapv2PoolsCurrentGetASync* | *GET* /dapps/uniswapv2/pools/current | GetPools.
*dappsUniswapv2PoolsHistoricalGetSync* | *GET* /dapps/uniswapv2/pools/historical | .
*dappsUniswapv2PoolsHistoricalGetASync* | *GET* /dapps/uniswapv2/pools/historical | .
*dappsUniswapv2SwapsCurrentGetSync* | *GET* /dapps/uniswapv2/swaps/current | GetSwaps.
*dappsUniswapv2SwapsCurrentGetASync* | *GET* /dapps/uniswapv2/swaps/current | GetSwaps.
*dappsUniswapv2SwapsHistoricalGetSync* | *GET* /dapps/uniswapv2/swaps/historical | .
*dappsUniswapv2SwapsHistoricalGetASync* | *GET* /dapps/uniswapv2/swaps/historical | .
*dappsUniswapv2TokenDayDataHistoricalGetSync* | *GET* /dapps/uniswapv2/tokenDayData/historical | .
*dappsUniswapv2TokenDayDataHistoricalGetASync* | *GET* /dapps/uniswapv2/tokenDayData/historical | .
*dappsUniswapv2TokensCurrentGetSync* | *GET* /dapps/uniswapv2/tokens/current | GetTokens.
*dappsUniswapv2TokensCurrentGetASync* | *GET* /dapps/uniswapv2/tokens/current | GetTokens.
*dappsUniswapv2TokensHistoricalGetSync* | *GET* /dapps/uniswapv2/tokens/historical | .
*dappsUniswapv2TokensHistoricalGetASync* | *GET* /dapps/uniswapv2/tokens/historical | .
*dappsUniswapv2TransactionsHistoricalGetSync* | *GET* /dapps/uniswapv2/transactions/historical | .
*dappsUniswapv2TransactionsHistoricalGetASync* | *GET* /dapps/uniswapv2/transactions/historical | .
*dappsUniswapv2UsersHistoricalGetSync* | *GET* /dapps/uniswapv2/users/historical | .
*dappsUniswapv2UsersHistoricalGetASync* | *GET* /dapps/uniswapv2/users/historical | .


### UniswapV3Manager
Method | HTTP request | Description
------------- | ------------- | -------------
*dappsUniswapv3BundleCurrentGetSync* | *GET* /dapps/uniswapv3/bundle/current | GetBundles.
*dappsUniswapv3BundleCurrentGetASync* | *GET* /dapps/uniswapv3/bundle/current | GetBundles.
*dappsUniswapv3BundlesHistoricalGetSync* | *GET* /dapps/uniswapv3/bundles/historical | .
*dappsUniswapv3BundlesHistoricalGetASync* | *GET* /dapps/uniswapv3/bundles/historical | .
*dappsUniswapv3BurnsCurrentGetSync* | *GET* /dapps/uniswapv3/burns/current | GetBurns.
*dappsUniswapv3BurnsCurrentGetASync* | *GET* /dapps/uniswapv3/burns/current | GetBurns.
*dappsUniswapv3BurnsHistoricalGetSync* | *GET* /dapps/uniswapv3/burns/historical | .
*dappsUniswapv3BurnsHistoricalGetASync* | *GET* /dapps/uniswapv3/burns/historical | .
*dappsUniswapv3DayDataHistoricalGetSync* | *GET* /dapps/uniswapv3/dayData/historical | .
*dappsUniswapv3DayDataHistoricalGetASync* | *GET* /dapps/uniswapv3/dayData/historical | .
*dappsUniswapv3FactoryCurrentGetSync* | *GET* /dapps/uniswapv3/factory/current | GetFactory.
*dappsUniswapv3FactoryCurrentGetASync* | *GET* /dapps/uniswapv3/factory/current | GetFactory.
*dappsUniswapv3FactoryHistoricalGetSync* | *GET* /dapps/uniswapv3/factory/historical | .
*dappsUniswapv3FactoryHistoricalGetASync* | *GET* /dapps/uniswapv3/factory/historical | .
*dappsUniswapv3MintsCurrentGetSync* | *GET* /dapps/uniswapv3/mints/current | GetMints.
*dappsUniswapv3MintsCurrentGetASync* | *GET* /dapps/uniswapv3/mints/current | GetMints.
*dappsUniswapv3MintsHistoricalGetSync* | *GET* /dapps/uniswapv3/mints/historical | .
*dappsUniswapv3MintsHistoricalGetASync* | *GET* /dapps/uniswapv3/mints/historical | .
*dappsUniswapv3PoolDayDataHistoricalGetSync* | *GET* /dapps/uniswapv3/poolDayData/historical | .
*dappsUniswapv3PoolDayDataHistoricalGetASync* | *GET* /dapps/uniswapv3/poolDayData/historical | .
*dappsUniswapv3PoolHourDataHistoricalGetSync* | *GET* /dapps/uniswapv3/poolHourData/historical | .
*dappsUniswapv3PoolHourDataHistoricalGetASync* | *GET* /dapps/uniswapv3/poolHourData/historical | .
*dappsUniswapv3PoolsCurrentGetSync* | *GET* /dapps/uniswapv3/pools/current | GetPools.
*dappsUniswapv3PoolsCurrentGetASync* | *GET* /dapps/uniswapv3/pools/current | GetPools.
*dappsUniswapv3PoolsDayDataCurrentGetSync* | *GET* /dapps/uniswapv3/poolsDayData/current | GetPoolsDayData.
*dappsUniswapv3PoolsDayDataCurrentGetASync* | *GET* /dapps/uniswapv3/poolsDayData/current | GetPoolsDayData.
*dappsUniswapv3PoolsHistoricalGetSync* | *GET* /dapps/uniswapv3/pools/historical | .
*dappsUniswapv3PoolsHistoricalGetASync* | *GET* /dapps/uniswapv3/pools/historical | .
*dappsUniswapv3PoolsHourDataCurrentGetSync* | *GET* /dapps/uniswapv3/poolsHourData/current | GetPoolsHourData.
*dappsUniswapv3PoolsHourDataCurrentGetASync* | *GET* /dapps/uniswapv3/poolsHourData/current | GetPoolsHourData.
*dappsUniswapv3PositionSnapshotHistoricalGetSync* | *GET* /dapps/uniswapv3/positionSnapshot/historical | .
*dappsUniswapv3PositionSnapshotHistoricalGetASync* | *GET* /dapps/uniswapv3/positionSnapshot/historical | .
*dappsUniswapv3PositionSnapshotsCurrentGetSync* | *GET* /dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot.
*dappsUniswapv3PositionSnapshotsCurrentGetASync* | *GET* /dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot.
*dappsUniswapv3PositionsCurrentGetSync* | *GET* /dapps/uniswapv3/positions/current | GetPositions.
*dappsUniswapv3PositionsCurrentGetASync* | *GET* /dapps/uniswapv3/positions/current | GetPositions.
*dappsUniswapv3PositionsHistoricalGetSync* | *GET* /dapps/uniswapv3/positions/historical | .
*dappsUniswapv3PositionsHistoricalGetASync* | *GET* /dapps/uniswapv3/positions/historical | .
*dappsUniswapv3SwapsCurrentGetSync* | *GET* /dapps/uniswapv3/swaps/current | GetSwaps.
*dappsUniswapv3SwapsCurrentGetASync* | *GET* /dapps/uniswapv3/swaps/current | GetSwaps.
*dappsUniswapv3SwapsHistoricalGetSync* | *GET* /dapps/uniswapv3/swaps/historical | .
*dappsUniswapv3SwapsHistoricalGetASync* | *GET* /dapps/uniswapv3/swaps/historical | .
*dappsUniswapv3TickDayDataHistoricalGetSync* | *GET* /dapps/uniswapv3/tickDayData/historical | .
*dappsUniswapv3TickDayDataHistoricalGetASync* | *GET* /dapps/uniswapv3/tickDayData/historical | .
*dappsUniswapv3TicksCurrentGetSync* | *GET* /dapps/uniswapv3/ticks/current | GetTicks.
*dappsUniswapv3TicksCurrentGetASync* | *GET* /dapps/uniswapv3/ticks/current | GetTicks.
*dappsUniswapv3TicksDayDataCurrentGetSync* | *GET* /dapps/uniswapv3/ticksDayData/current | GetTicksDayData.
*dappsUniswapv3TicksDayDataCurrentGetASync* | *GET* /dapps/uniswapv3/ticksDayData/current | GetTicksDayData.
*dappsUniswapv3TicksHistoricalGetSync* | *GET* /dapps/uniswapv3/ticks/historical | .
*dappsUniswapv3TicksHistoricalGetASync* | *GET* /dapps/uniswapv3/ticks/historical | .
*dappsUniswapv3TokenDayDataHistoricalGetSync* | *GET* /dapps/uniswapv3/tokenDayData/historical | .
*dappsUniswapv3TokenDayDataHistoricalGetASync* | *GET* /dapps/uniswapv3/tokenDayData/historical | .
*dappsUniswapv3TokenHourDataHistoricalGetSync* | *GET* /dapps/uniswapv3/tokenHourData/historical | .
*dappsUniswapv3TokenHourDataHistoricalGetASync* | *GET* /dapps/uniswapv3/tokenHourData/historical | .
*dappsUniswapv3TokensCurrentGetSync* | *GET* /dapps/uniswapv3/tokens/current | GetTokens.
*dappsUniswapv3TokensCurrentGetASync* | *GET* /dapps/uniswapv3/tokens/current | GetTokens.
*dappsUniswapv3TokensDayDataCurrentGetSync* | *GET* /dapps/uniswapv3/tokensDayData/current | GetTokensDayData.
*dappsUniswapv3TokensDayDataCurrentGetASync* | *GET* /dapps/uniswapv3/tokensDayData/current | GetTokensDayData.
*dappsUniswapv3TokensHistoricalGetSync* | *GET* /dapps/uniswapv3/tokens/historical | .
*dappsUniswapv3TokensHistoricalGetASync* | *GET* /dapps/uniswapv3/tokens/historical | .
*dappsUniswapv3TokensHourDataCurrentGetSync* | *GET* /dapps/uniswapv3/tokensHourData/current | GetTokensHourData.
*dappsUniswapv3TokensHourDataCurrentGetASync* | *GET* /dapps/uniswapv3/tokensHourData/current | GetTokensHourData.
*dappsUniswapv3TransactionsHistoricalGetSync* | *GET* /dapps/uniswapv3/transactions/historical | .
*dappsUniswapv3TransactionsHistoricalGetASync* | *GET* /dapps/uniswapv3/transactions/historical | .
*dappsUniswapv3UniswapDayDataCurrentGetSync* | *GET* /dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData.
*dappsUniswapv3UniswapDayDataCurrentGetASync* | *GET* /dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData.


## What are the Model files for the data structures/objects?
Class | Description
------------- | -------------
 *Numerics.BigInteger* | 
 *Sushiswap.PairDTO* | Information about a pair. Includes references to each token within the pair, volume information, liquidity information, and more. The pair entity mirrors the pair smart contract, and also contains aggregated information about use.
 *Sushiswap.SwapDTO* | Swap are created for each token swap within a pair.
 *Sushiswap.TokenDTO* | Stores aggregated information for a specific token across all pairs that token is included in.
 *Transactions.ETradeAggressiveSide* | 
 *UniswapV2.PairV2DTO* | Information about a pair. Includes references to each token within the pair, volume information, liquidity information, and more. The pair entity mirrors the pair smart contract, and also contains aggregated information about use.
 *UniswapV2.SwapV2DTO* | Swap are created for each token swap within a pair.
 *UniswapV2.TokenV2DTO* | Stores aggregated information for a specific token across all pairs that token is included in.
 *UniswapV3.BundleV3DTO* | The Bundle is used as a global store of derived ETH price in USD. This provides a strong estimate for the USD price of ETH.
 *UniswapV3.BurnV3DTO* | Burn entities are created for every emitted Burn event on the Uniswap core contracts. The Burn entity stores key data about the event like token amounts, who burned, who received tokens, and more. This entity can be used to track liquidity removals on pairs.
 *UniswapV3.FactoryV3DTO* | The Uniswap Factory entity is responsible for storing aggregate information across all Uniswap pairs. It can be used to view stats about total liquidity, volume, amount of pairs and more.
 *UniswapV3.MintV3DTO* | Mint entities are created for every emitted Mint event on the Uniswap core contracts. The Mint entity stores key data about the event like token amounts, who sent the transaction, and more.
 *UniswapV3.PoolDayDataV3DTO* | Data accumulated and condensed into day stats for each pool.
 *UniswapV3.PoolHourDataV3DTO* | Hourly stats tracker for pool.
 *UniswapV3.PoolV3DTO* | Information about a pool. Includes references to each token within the pool, volume information, liquidity information, and more. The pool entity mirrors the pool smart contract, and also contains aggregated information about use.
 *UniswapV3.PositionSnapshotV3DTO* | 
 *UniswapV3.PositionV3DTO* | Positions created through NonfungiblePositionManager. Positions are represented as NFTs (ERC-721 tokens) as opposed to the fungible ERC-20 tokens on Uniswap V1 and V2.
 *UniswapV3.SwapV3DTO* | Swap are created for each token swap within a pair.
 *UniswapV3.TickDayDataV3DTO* | Data accumulated and condensed into day stats for each exchange. Entity gets saved only if there is a change during the day
 *UniswapV3.TickV3DTO* | Ticks are the boundaries between discrete areas in price space.
 *UniswapV3.TokenHourDataV3DTO* | Token data aggregated across all pairs that include token.
 *UniswapV3.TokenV3DTO* | Stores aggregated information for a specific token across all pairs that token is included in.
 *UniswapV3.TokenV3DayDataDTO* | Token data aggregated across all pairs that include token.
 *UniswapV3.UniswapDayDataV3DTO* | Data accumulated and condensed into day stats for all of Uniswap.

