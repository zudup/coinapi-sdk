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
*cowGetOrders (historical)Sync* | *GET* /dapps/cow/orders/historical | GetOrders (historical).
*cowGetOrders (historical)ASync* | *GET* /dapps/cow/orders/historical | GetOrders (historical).
*cowGetSettlements (historical)Sync* | *GET* /dapps/cow/settlements/historical | GetSettlements (historical).
*cowGetSettlements (historical)ASync* | *GET* /dapps/cow/settlements/historical | GetSettlements (historical).
*cowGetTokens (historical)Sync* | *GET* /dapps/cow/tokens/historical | GetTokens (historical) 🔥.
*cowGetTokens (historical)ASync* | *GET* /dapps/cow/tokens/historical | GetTokens (historical) 🔥.
*cowGetTrades (historical)Sync* | *GET* /dapps/cow/trades/historical | GetTrades (historical) 🔥.
*cowGetTrades (historical)ASync* | *GET* /dapps/cow/trades/historical | GetTrades (historical) 🔥.
*cowGetUsers (historical)Sync* | *GET* /dapps/cow/users/historical | GetUsers (historical).
*cowGetUsers (historical)ASync* | *GET* /dapps/cow/users/historical | GetUsers (historical).


### CurveManager
Method | HTTP request | Description
------------- | ------------- | -------------
*curveGetAccounts (historical)Sync* | *GET* /dapps/curve/accounts/historical | GetAccounts (historical).
*curveGetAccounts (historical)ASync* | *GET* /dapps/curve/accounts/historical | GetAccounts (historical).
*curveGetAddLiquidityEvents (historical)Sync* | *GET* /dapps/curve/addLiquidityEvents/historical | GetAddLiquidityEvents (historical).
*curveGetAddLiquidityEvents (historical)ASync* | *GET* /dapps/curve/addLiquidityEvents/historical | GetAddLiquidityEvents (historical).
*curveGetAdminFeeChangeLogs (historical)Sync* | *GET* /dapps/curve/adminFeeChangeLogs/historical | GetAdminFeeChangeLogs (historical).
*curveGetAdminFeeChangeLogs (historical)ASync* | *GET* /dapps/curve/adminFeeChangeLogs/historical | GetAdminFeeChangeLogs (historical).
*curveGetAmplificationCoeffChangeLogs (historical)Sync* | *GET* /dapps/curve/amplificationCoeffChangeLogs/historical | GetAmplificationCoeffChangeLogs (historical).
*curveGetAmplificationCoeffChangeLogs (historical)ASync* | *GET* /dapps/curve/amplificationCoeffChangeLogs/historical | GetAmplificationCoeffChangeLogs (historical).
*curveGetCoins (historical)Sync* | *GET* /dapps/curve/coins/historical | GetCoins (historical).
*curveGetCoins (historical)ASync* | *GET* /dapps/curve/coins/historical | GetCoins (historical).
*curveGetContracts (historical)Sync* | *GET* /dapps/curve/contracts/historical | GetContracts (historical).
*curveGetContracts (historical)ASync* | *GET* /dapps/curve/contracts/historical | GetContracts (historical).
*curveGetContractsVersions (historical)Sync* | *GET* /dapps/curve/contractsVersions/historical | GetContractsVersions (historical).
*curveGetContractsVersions (historical)ASync* | *GET* /dapps/curve/contractsVersions/historical | GetContractsVersions (historical).
*curveGetDailyVolumes (historical)Sync* | *GET* /dapps/curve/dailyVolumes/historical | GetDailyVolumes (historical).
*curveGetDailyVolumes (historical)ASync* | *GET* /dapps/curve/dailyVolumes/historical | GetDailyVolumes (historical).
*curveGetExchanges (historical)Sync* | *GET* /dapps/curve/exchanges/historical | GetExchanges (historical) 🔥.
*curveGetExchanges (historical)ASync* | *GET* /dapps/curve/exchanges/historical | GetExchanges (historical) 🔥.
*curveGetFeeChangeLogs (historical)Sync* | *GET* /dapps/curve/feeChangeLogs/historical | GetFeeChangeLogs (historical).
*curveGetFeeChangeLogs (historical)ASync* | *GET* /dapps/curve/feeChangeLogs/historical | GetFeeChangeLogs (historical).
*curveGetGauges (historical)Sync* | *GET* /dapps/curve/gauges/historical | GetGauges (historical).
*curveGetGauges (historical)ASync* | *GET* /dapps/curve/gauges/historical | GetGauges (historical).
*curveGetGaugesDeposits (historical)Sync* | *GET* /dapps/curve/gaugesDeposits/historical | GetGaugesDeposits (historical).
*curveGetGaugesDeposits (historical)ASync* | *GET* /dapps/curve/gaugesDeposits/historical | GetGaugesDeposits (historical).
*curveGetGaugesLiquidity (historical)Sync* | *GET* /dapps/curve/gaugesLiquidity/historical | GetGaugesLiquidity (historical).
*curveGetGaugesLiquidity (historical)ASync* | *GET* /dapps/curve/gaugesLiquidity/historical | GetGaugesLiquidity (historical).
*curveGetGaugesTotalWeights (historical)Sync* | *GET* /dapps/curve/gaugesTotalWeights/historical | GetGaugesTotalWeights (historical).
*curveGetGaugesTotalWeights (historical)ASync* | *GET* /dapps/curve/gaugesTotalWeights/historical | GetGaugesTotalWeights (historical).
*curveGetGaugesTypes (historical)Sync* | *GET* /dapps/curve/gaugesTypes/historical | GetGaugesTypes (historical).
*curveGetGaugesTypes (historical)ASync* | *GET* /dapps/curve/gaugesTypes/historical | GetGaugesTypes (historical).
*curveGetGaugesTypesWeights (historical)Sync* | *GET* /dapps/curve/gaugesTypesWeights/historical | GetGaugesTypesWeights (historical).
*curveGetGaugesTypesWeights (historical)ASync* | *GET* /dapps/curve/gaugesTypesWeights/historical | GetGaugesTypesWeights (historical).
*curveGetGaugesWeights (historical)Sync* | *GET* /dapps/curve/gaugesWeights/historical | GetGaugesWeights (historical).
*curveGetGaugesWeights (historical)ASync* | *GET* /dapps/curve/gaugesWeights/historical | GetGaugesWeights (historical).
*curveGetGaugesWeightsVotes (historical)Sync* | *GET* /dapps/curve/gaugesWeightsVotes/historical | GetGaugesWeightsVotes (historical).
*curveGetGaugesWeightsVotes (historical)ASync* | *GET* /dapps/curve/gaugesWeightsVotes/historical | GetGaugesWeightsVotes (historical).
*curveGetGaugesWithdraw (historical)Sync* | *GET* /dapps/curve/gaugesWithdraws/historical | GetGaugesWithdraw (historical).
*curveGetGaugesWithdraw (historical)ASync* | *GET* /dapps/curve/gaugesWithdraws/historical | GetGaugesWithdraw (historical).
*curveGetHourlyVolumes (historical)Sync* | *GET* /dapps/curve/hourlyVolumes/historical | GetHourlyVolumes (historical).
*curveGetHourlyVolumes (historical)ASync* | *GET* /dapps/curve/hourlyVolumes/historical | GetHourlyVolumes (historical).
*curveGetLpTokens (historical)Sync* | *GET* /dapps/curve/lpTokens/historical | GetLpTokens (historical).
*curveGetLpTokens (historical)ASync* | *GET* /dapps/curve/lpTokens/historical | GetLpTokens (historical).
*curveGetPools (historical)Sync* | *GET* /dapps/curve/pools/historical | GetPools (historical) 🔥.
*curveGetPools (historical)ASync* | *GET* /dapps/curve/pools/historical | GetPools (historical) 🔥.
*curveGetProposals (historical)Sync* | *GET* /dapps/curve/proposals/historical | GetProposals (historical).
*curveGetProposals (historical)ASync* | *GET* /dapps/curve/proposals/historical | GetProposals (historical).
*curveGetProposalsVotes (historical)Sync* | *GET* /dapps/curve/proposalsVotes/historical | GetProposalsVotes (historical).
*curveGetProposalsVotes (historical)ASync* | *GET* /dapps/curve/proposalsVotes/historical | GetProposalsVotes (historical).
*curveGetRemoveLiquidityEvents (historical)Sync* | *GET* /dapps/curve/removeLiquidityEvents/historical | GetRemoveLiquidityEvents (historical).
*curveGetRemoveLiquidityEvents (historical)ASync* | *GET* /dapps/curve/removeLiquidityEvents/historical | GetRemoveLiquidityEvents (historical).
*curveGetRemoveLiquidityOneEvents (historical)Sync* | *GET* /dapps/curve/removeLiquidityOneEvents/historical | GetRemoveLiquidityOneEvents (historical).
*curveGetRemoveLiquidityOneEvents (historical)ASync* | *GET* /dapps/curve/removeLiquidityOneEvents/historical | GetRemoveLiquidityOneEvents (historical).
*curveGetSystemStates (historical)Sync* | *GET* /dapps/curve/systemStates/historical | GetSystemStates (historical).
*curveGetSystemStates (historical)ASync* | *GET* /dapps/curve/systemStates/historical | GetSystemStates (historical).
*curveGetTokens (historical)Sync* | *GET* /dapps/curve/tokens/historical | GetTokens (historical) 🔥.
*curveGetTokens (historical)ASync* | *GET* /dapps/curve/tokens/historical | GetTokens (historical) 🔥.
*curveGetTransferOwnershipEvents (historical)Sync* | *GET* /dapps/curve/transferOwnershipEvents/historical | GetTransferOwnershipEvents (historical).
*curveGetTransferOwnershipEvents (historical)ASync* | *GET* /dapps/curve/transferOwnershipEvents/historical | GetTransferOwnershipEvents (historical).
*curveGetUnderlyingCoins (historical)Sync* | *GET* /dapps/curve/underlyingCoins/historical | GetUnderlyingCoins (historical).
*curveGetUnderlyingCoins (historical)ASync* | *GET* /dapps/curve/underlyingCoins/historical | GetUnderlyingCoins (historical).
*curveGetVotingApps (historical)Sync* | *GET* /dapps/curve/votingApps/historical | GetVotingApps (historical).
*curveGetVotingApps (historical)ASync* | *GET* /dapps/curve/votingApps/historical | GetVotingApps (historical).
*curveGetWeeklyVolumes (historical)Sync* | *GET* /dapps/curve/weeklyVolumes/historical | GetWeeklyVolumes (historical).
*curveGetWeeklyVolumes (historical)ASync* | *GET* /dapps/curve/weeklyVolumes/historical | GetWeeklyVolumes (historical).


### DexManager
Method | HTTP request | Description
------------- | ------------- | -------------
*dexGetBatches (historical)Sync* | *GET* /dapps/dex/batches/historical | GetBatches (historical).
*dexGetBatches (historical)ASync* | *GET* /dapps/dex/batches/historical | GetBatches (historical).
*dexGetDeposits (historical)Sync* | *GET* /dapps/dex/deposits/historical | GetDeposits (historical).
*dexGetDeposits (historical)ASync* | *GET* /dapps/dex/deposits/historical | GetDeposits (historical).
*dexGetOrders (historical)Sync* | *GET* /dapps/dex/orders/historical | GetOrders (historical).
*dexGetOrders (historical)ASync* | *GET* /dapps/dex/orders/historical | GetOrders (historical).
*dexGetPrices (historical)Sync* | *GET* /dapps/dex/prices/historical | GetPrices (historical).
*dexGetPrices (historical)ASync* | *GET* /dapps/dex/prices/historical | GetPrices (historical).
*dexGetSolutions (historical)Sync* | *GET* /dapps/dex/solutions/historical | GetSolutions (historical).
*dexGetSolutions (historical)ASync* | *GET* /dapps/dex/solutions/historical | GetSolutions (historical).
*dexGetStats (historical)Sync* | *GET* /dapps/dex/stats/historical | GetStats (historical).
*dexGetStats (historical)ASync* | *GET* /dapps/dex/stats/historical | GetStats (historical).
*dexGetTokens (historical)Sync* | *GET* /dapps/dex/tokens/historical | GetTokens (historical) 🔥.
*dexGetTokens (historical)ASync* | *GET* /dapps/dex/tokens/historical | GetTokens (historical) 🔥.
*dexGetTrades (historical)Sync* | *GET* /dapps/dex/trades/historical | GetTrades (historical) 🔥.
*dexGetTrades (historical)ASync* | *GET* /dapps/dex/trades/historical | GetTrades (historical) 🔥.
*dexGetUsers (historical)Sync* | *GET* /dapps/dex/users/historical | GetUsers (historical).
*dexGetUsers (historical)ASync* | *GET* /dapps/dex/users/historical | GetUsers (historical).
*dexGetWithdraws (historical)Sync* | *GET* /dapps/dex/withdraws/historical | GetWithdraws (historical).
*dexGetWithdraws (historical)ASync* | *GET* /dapps/dex/withdraws/historical | GetWithdraws (historical).
*dexGetWithdrawsRequests (historical)Sync* | *GET* /dapps/dex/withdrawsRequests/historical | GetWithdrawsRequests (historical).
*dexGetWithdrawsRequests (historical)ASync* | *GET* /dapps/dex/withdrawsRequests/historical | GetWithdrawsRequests (historical).


### SushiswapManager
Method | HTTP request | Description
------------- | ------------- | -------------
*curveGetExchanges (current)Sync* | *GET* /dapps/sushiswap/exchanges/current | GetExchanges (current) 🔥.
*curveGetExchanges (current)ASync* | *GET* /dapps/sushiswap/exchanges/current | GetExchanges (current) 🔥.
*dexGetTrades (current)Sync* | *GET* /dapps/sushiswap/trades/current | GetTrades (current) 🔥.
*dexGetTrades (current)ASync* | *GET* /dapps/sushiswap/trades/current | GetTrades (current) 🔥.
*sushiswapGetBundles (historical)Sync* | *GET* /dapps/sushiswap/bundles/historical | GetBundles (historical).
*sushiswapGetBundles (historical)ASync* | *GET* /dapps/sushiswap/bundles/historical | GetBundles (historical).
*sushiswapGetBurns (historical)Sync* | *GET* /dapps/sushiswap/burns/historical | GetBurns (historical).
*sushiswapGetBurns (historical)ASync* | *GET* /dapps/sushiswap/burns/historical | GetBurns (historical).
*sushiswapGetDayData (historical)Sync* | *GET* /dapps/sushiswap/dayData/historical | GetDayData (historical).
*sushiswapGetDayData (historical)ASync* | *GET* /dapps/sushiswap/dayData/historical | GetDayData (historical).
*sushiswapGetFactory (historical)Sync* | *GET* /dapps/sushiswap/factory/historical | GetFactory (historical).
*sushiswapGetFactory (historical)ASync* | *GET* /dapps/sushiswap/factory/historical | GetFactory (historical).
*sushiswapGetHourData (historical)Sync* | *GET* /dapps/sushiswap/hourData/historical | GetHourData (historical).
*sushiswapGetHourData (historical)ASync* | *GET* /dapps/sushiswap/hourData/historical | GetHourData (historical).
*sushiswapGetLiquidityPosition (historical)Sync* | *GET* /dapps/sushiswap/liquidityPosition/historical | GetLiquidityPosition (historical).
*sushiswapGetLiquidityPosition (historical)ASync* | *GET* /dapps/sushiswap/liquidityPosition/historical | GetLiquidityPosition (historical).
*sushiswapGetLiquidityPositionSnapshot (historical)Sync* | *GET* /dapps/sushiswap/liquidityPositionSnapshots/historical | GetLiquidityPositionSnapshot (historical).
*sushiswapGetLiquidityPositionSnapshot (historical)ASync* | *GET* /dapps/sushiswap/liquidityPositionSnapshots/historical | GetLiquidityPositionSnapshot (historical).
*sushiswapGetMints (historical)Sync* | *GET* /dapps/sushiswap/mints/historical | GetMints (historical).
*sushiswapGetMints (historical)ASync* | *GET* /dapps/sushiswap/mints/historical | GetMints (historical).
*sushiswapGetPools (current)Sync* | *GET* /dapps/sushiswap/pools/current | GetPools (current) 🔥.
*sushiswapGetPools (current)ASync* | *GET* /dapps/sushiswap/pools/current | GetPools (current) 🔥.
*sushiswapGetPools (historical)Sync* | *GET* /dapps/sushiswap/pools/historical | GetPools (historical) 🔥.
*sushiswapGetPools (historical)ASync* | *GET* /dapps/sushiswap/pools/historical | GetPools (historical) 🔥.
*sushiswapGetPoolsDayData (historical)Sync* | *GET* /dapps/sushiswap/poolsDayData/historical | GetPoolsDayData (historical).
*sushiswapGetPoolsDayData (historical)ASync* | *GET* /dapps/sushiswap/poolsDayData/historical | GetPoolsDayData (historical).
*sushiswapGetPoolsHourData (historical)Sync* | *GET* /dapps/sushiswap/poolsHourData/historical | GetPoolsHourData (historical).
*sushiswapGetPoolsHourData (historical)ASync* | *GET* /dapps/sushiswap/poolsHourData/historical | GetPoolsHourData (historical).
*sushiswapGetSwaps (current)Sync* | *GET* /dapps/sushiswap/swaps/current | GetSwaps (current) 🔥.
*sushiswapGetSwaps (current)ASync* | *GET* /dapps/sushiswap/swaps/current | GetSwaps (current) 🔥.
*sushiswapGetSwaps (historical)Sync* | *GET* /dapps/sushiswap/swaps/historical | GetSwaps (historical) 🔥.
*sushiswapGetSwaps (historical)ASync* | *GET* /dapps/sushiswap/swaps/historical | GetSwaps (historical) 🔥.
*sushiswapGetTokens (current)Sync* | *GET* /dapps/sushiswap/tokens/current | GetTokens (current) 🔥.
*sushiswapGetTokens (current)ASync* | *GET* /dapps/sushiswap/tokens/current | GetTokens (current) 🔥.
*sushiswapGetTokens (historical)Sync* | *GET* /dapps/sushiswap/tokens/historical | GetTokens (historical) 🔥.
*sushiswapGetTokens (historical)ASync* | *GET* /dapps/sushiswap/tokens/historical | GetTokens (historical) 🔥.
*sushiswapGetTokensDayData (historical)Sync* | *GET* /dapps/sushiswap/tokensDayData/historical | GetTokensDayData (historical).
*sushiswapGetTokensDayData (historical)ASync* | *GET* /dapps/sushiswap/tokensDayData/historical | GetTokensDayData (historical).
*sushiswapGetTransactions (historical)Sync* | *GET* /dapps/sushiswap/transactions/historical | GetTransactions (historical).
*sushiswapGetTransactions (historical)ASync* | *GET* /dapps/sushiswap/transactions/historical | GetTransactions (historical).
*sushiswapGetUsers (historical)Sync* | *GET* /dapps/sushiswap/users/historical | GetUsers (historical).
*sushiswapGetUsers (historical)ASync* | *GET* /dapps/sushiswap/users/historical | GetUsers (historical).


### UniswapV2Manager
Method | HTTP request | Description
------------- | ------------- | -------------
*uniswapV2GetBundles (historical)Sync* | *GET* /dapps/uniswapv2/bundles/historical | GetBundles (historical).
*uniswapV2GetBundles (historical)ASync* | *GET* /dapps/uniswapv2/bundles/historical | GetBundles (historical).
*uniswapV2GetBurns (historical)Sync* | *GET* /dapps/uniswapv2/burns/historical | GetBurns (historical).
*uniswapV2GetBurns (historical)ASync* | *GET* /dapps/uniswapv2/burns/historical | GetBurns (historical).
*uniswapV2GetDayData (historical)Sync* | *GET* /dapps/uniswapv2/dayData/historical | GetDayData (historical).
*uniswapV2GetDayData (historical)ASync* | *GET* /dapps/uniswapv2/dayData/historical | GetDayData (historical).
*uniswapV2GetFactory (historical)Sync* | *GET* /dapps/uniswapv2/factory/historical | GetFactory (historical).
*uniswapV2GetFactory (historical)ASync* | *GET* /dapps/uniswapv2/factory/historical | GetFactory (historical).
*uniswapV2GetLiquidityPositions (historical)Sync* | *GET* /dapps/uniswapv2/liquidityPositions/historical | GetLiquidityPositions (historical).
*uniswapV2GetLiquidityPositions (historical)ASync* | *GET* /dapps/uniswapv2/liquidityPositions/historical | GetLiquidityPositions (historical).
*uniswapV2GetLiquidityPositionsSnapshots (historical)Sync* | *GET* /dapps/uniswapv2/liquidityPositionsSnapshots/historical | GetLiquidityPositionsSnapshots (historical).
*uniswapV2GetLiquidityPositionsSnapshots (historical)ASync* | *GET* /dapps/uniswapv2/liquidityPositionsSnapshots/historical | GetLiquidityPositionsSnapshots (historical).
*uniswapV2GetMints (historical)Sync* | *GET* /dapps/uniswapv2/mints/historical | GetMints (historical).
*uniswapV2GetMints (historical)ASync* | *GET* /dapps/uniswapv2/mints/historical | GetMints (historical).
*uniswapV2GetPools (current)Sync* | *GET* /dapps/uniswapv2/pools/current | GetPools (current) 🔥.
*uniswapV2GetPools (current)ASync* | *GET* /dapps/uniswapv2/pools/current | GetPools (current) 🔥.
*uniswapV2GetPools (historical)Sync* | *GET* /dapps/uniswapv2/pools/historical | GetPools (historical) 🔥.
*uniswapV2GetPools (historical)ASync* | *GET* /dapps/uniswapv2/pools/historical | GetPools (historical) 🔥.
*uniswapV2GetPoolsDayData (historical)Sync* | *GET* /dapps/uniswapv2/poolsDayData/historical | GetPoolsDayData (historical).
*uniswapV2GetPoolsDayData (historical)ASync* | *GET* /dapps/uniswapv2/poolsDayData/historical | GetPoolsDayData (historical).
*uniswapV2GetPoolsHourData (historical)Sync* | *GET* /dapps/uniswapv2/poolsHourData/historical | GetPoolsHourData (historical).
*uniswapV2GetPoolsHourData (historical)ASync* | *GET* /dapps/uniswapv2/poolsHourData/historical | GetPoolsHourData (historical).
*uniswapV2GetSwaps (current)Sync* | *GET* /dapps/uniswapv2/swaps/current | GetSwaps (current) 🔥.
*uniswapV2GetSwaps (current)ASync* | *GET* /dapps/uniswapv2/swaps/current | GetSwaps (current) 🔥.
*uniswapV2GetSwaps (historical)Sync* | *GET* /dapps/uniswapv2/swaps/historical | GetSwaps (historical) 🔥.
*uniswapV2GetSwaps (historical)ASync* | *GET* /dapps/uniswapv2/swaps/historical | GetSwaps (historical) 🔥.
*uniswapV2GetTokens (current)Sync* | *GET* /dapps/uniswapv2/tokens/current | GetTokens (current) 🔥.
*uniswapV2GetTokens (current)ASync* | *GET* /dapps/uniswapv2/tokens/current | GetTokens (current) 🔥.
*uniswapV2GetTokens (historical)Sync* | *GET* /dapps/uniswapv2/tokens/historical | GetTokens (historical) 🔥.
*uniswapV2GetTokens (historical)ASync* | *GET* /dapps/uniswapv2/tokens/historical | GetTokens (historical) 🔥.
*uniswapV2GetTokensDayData (historical)Sync* | *GET* /dapps/uniswapv2/tokensDayData/historical | GetTokensDayData (historical).
*uniswapV2GetTokensDayData (historical)ASync* | *GET* /dapps/uniswapv2/tokensDayData/historical | GetTokensDayData (historical).
*uniswapV2GetTransactions (historical)Sync* | *GET* /dapps/uniswapv2/transactions/historical | GetTransactions (historical).
*uniswapV2GetTransactions (historical)ASync* | *GET* /dapps/uniswapv2/transactions/historical | GetTransactions (historical).
*uniswapV2GetUsers (historical)Sync* | *GET* /dapps/uniswapv2/users/historical | GetUsers (historical).
*uniswapV2GetUsers (historical)ASync* | *GET* /dapps/uniswapv2/users/historical | GetUsers (historical).


### UniswapV3Manager
Method | HTTP request | Description
------------- | ------------- | -------------
*uniswapV3GetBundles (current)Sync* | *GET* /dapps/uniswapv3/bundles/current | GetBundles (current).
*uniswapV3GetBundles (current)ASync* | *GET* /dapps/uniswapv3/bundles/current | GetBundles (current).
*uniswapV3GetBundles (historical)Sync* | *GET* /dapps/uniswapv3/bundles/historical | GetBundles (historical).
*uniswapV3GetBundles (historical)ASync* | *GET* /dapps/uniswapv3/bundles/historical | GetBundles (historical).
*uniswapV3GetBurns (current)Sync* | *GET* /dapps/uniswapv3/burns/current | GetBurns (current).
*uniswapV3GetBurns (current)ASync* | *GET* /dapps/uniswapv3/burns/current | GetBurns (current).
*uniswapV3GetBurns (historical)Sync* | *GET* /dapps/uniswapv3/burns/historical | GetBurns (historical).
*uniswapV3GetBurns (historical)ASync* | *GET* /dapps/uniswapv3/burns/historical | GetBurns (historical).
*uniswapV3GetDayData (current)Sync* | *GET* /dapps/uniswapv3/dayData/current | GetDayData (current).
*uniswapV3GetDayData (current)ASync* | *GET* /dapps/uniswapv3/dayData/current | GetDayData (current).
*uniswapV3GetDayData (historical)Sync* | *GET* /dapps/uniswapv3/dayData/historical | GetDayData (historical).
*uniswapV3GetDayData (historical)ASync* | *GET* /dapps/uniswapv3/dayData/historical | GetDayData (historical).
*uniswapV3GetFactory (current)Sync* | *GET* /dapps/uniswapv3/factory/current | GetFactory (current).
*uniswapV3GetFactory (current)ASync* | *GET* /dapps/uniswapv3/factory/current | GetFactory (current).
*uniswapV3GetFactory (historical)Sync* | *GET* /dapps/uniswapv3/factory/historical | GetFactory (historical).
*uniswapV3GetFactory (historical)ASync* | *GET* /dapps/uniswapv3/factory/historical | GetFactory (historical).
*uniswapV3GetMints (current)Sync* | *GET* /dapps/uniswapv3/mints/current | GetMints (current).
*uniswapV3GetMints (current)ASync* | *GET* /dapps/uniswapv3/mints/current | GetMints (current).
*uniswapV3GetMints (historical)Sync* | *GET* /dapps/uniswapv3/mints/historical | GetMints (historical).
*uniswapV3GetMints (historical)ASync* | *GET* /dapps/uniswapv3/mints/historical | GetMints (historical).
*uniswapV3GetPools (current)Sync* | *GET* /dapps/uniswapv3/pools/current | GetPools (current) 🔥.
*uniswapV3GetPools (current)ASync* | *GET* /dapps/uniswapv3/pools/current | GetPools (current) 🔥.
*uniswapV3GetPools (historical)Sync* | *GET* /dapps/uniswapv3/pools/historical | GetPools (historical) 🔥.
*uniswapV3GetPools (historical)ASync* | *GET* /dapps/uniswapv3/pools/historical | GetPools (historical) 🔥.
*uniswapV3GetPoolsDayData (current)Sync* | *GET* /dapps/uniswapv3/poolsDayData/current | GetPoolsDayData (current).
*uniswapV3GetPoolsDayData (current)ASync* | *GET* /dapps/uniswapv3/poolsDayData/current | GetPoolsDayData (current).
*uniswapV3GetPoolsDayData (historical)Sync* | *GET* /dapps/uniswapv3/poolsDayData/historical | GetPoolsDayData (historical).
*uniswapV3GetPoolsDayData (historical)ASync* | *GET* /dapps/uniswapv3/poolsDayData/historical | GetPoolsDayData (historical).
*uniswapV3GetPoolsHourData (current)Sync* | *GET* /dapps/uniswapv3/poolsHourData/current | GetPoolsHourData (current).
*uniswapV3GetPoolsHourData (current)ASync* | *GET* /dapps/uniswapv3/poolsHourData/current | GetPoolsHourData (current).
*uniswapV3GetPoolsHourData (historical)Sync* | *GET* /dapps/uniswapv3/poolsHourData/historical | GetPoolsHourData (historical).
*uniswapV3GetPoolsHourData (historical)ASync* | *GET* /dapps/uniswapv3/poolsHourData/historical | GetPoolsHourData (historical).
*uniswapV3GetPositions (current)Sync* | *GET* /dapps/uniswapv3/positions/current | GetPositions (current).
*uniswapV3GetPositions (current)ASync* | *GET* /dapps/uniswapv3/positions/current | GetPositions (current).
*uniswapV3GetPositions (historical)Sync* | *GET* /dapps/uniswapv3/positions/historical | GetPositions (historical).
*uniswapV3GetPositions (historical)ASync* | *GET* /dapps/uniswapv3/positions/historical | GetPositions (historical).
*uniswapV3GetPositionsSnaphots (historical)Sync* | *GET* /dapps/uniswapv3/positionsSnapshots/historical | GetPositionsSnaphots (historical).
*uniswapV3GetPositionsSnaphots (historical)ASync* | *GET* /dapps/uniswapv3/positionsSnapshots/historical | GetPositionsSnaphots (historical).
*uniswapV3GetPositionsSnapshots (current)Sync* | *GET* /dapps/uniswapv3/positionSnapshots/current | GetPositionsSnapshots (current).
*uniswapV3GetPositionsSnapshots (current)ASync* | *GET* /dapps/uniswapv3/positionSnapshots/current | GetPositionsSnapshots (current).
*uniswapV3GetSwaps (current)Sync* | *GET* /dapps/uniswapv3/swaps/current | GetSwaps (current) 🔥.
*uniswapV3GetSwaps (current)ASync* | *GET* /dapps/uniswapv3/swaps/current | GetSwaps (current) 🔥.
*uniswapV3GetSwaps (historical)Sync* | *GET* /dapps/uniswapv3/swaps/historical | GetSwaps (historical) 🔥.
*uniswapV3GetSwaps (historical)ASync* | *GET* /dapps/uniswapv3/swaps/historical | GetSwaps (historical) 🔥.
*uniswapV3GetTicks (current)Sync* | *GET* /dapps/uniswapv3/ticks/current | GetTicks (current).
*uniswapV3GetTicks (current)ASync* | *GET* /dapps/uniswapv3/ticks/current | GetTicks (current).
*uniswapV3GetTicks (historical)Sync* | *GET* /dapps/uniswapv3/ticks/historical | GetTicks (historical).
*uniswapV3GetTicks (historical)ASync* | *GET* /dapps/uniswapv3/ticks/historical | GetTicks (historical).
*uniswapV3GetTicksDayData (current)Sync* | *GET* /dapps/uniswapv3/ticksDayData/current | GetTicksDayData (current).
*uniswapV3GetTicksDayData (current)ASync* | *GET* /dapps/uniswapv3/ticksDayData/current | GetTicksDayData (current).
*uniswapV3GetTicksDayData (historical)Sync* | *GET* /dapps/uniswapv3/ticksDayData/historical | GetTicksDayData (historical).
*uniswapV3GetTicksDayData (historical)ASync* | *GET* /dapps/uniswapv3/ticksDayData/historical | GetTicksDayData (historical).
*uniswapV3GetTokens (current)Sync* | *GET* /dapps/uniswapv3/tokens/current | GetTokens (current) 🔥.
*uniswapV3GetTokens (current)ASync* | *GET* /dapps/uniswapv3/tokens/current | GetTokens (current) 🔥.
*uniswapV3GetTokens (historical)Sync* | *GET* /dapps/uniswapv3/tokens/historical | GetTokens (historical) 🔥.
*uniswapV3GetTokens (historical)ASync* | *GET* /dapps/uniswapv3/tokens/historical | GetTokens (historical) 🔥.
*uniswapV3GetTokensDayData (current)Sync* | *GET* /dapps/uniswapv3/tokensDayData/current | GetTokensDayData (current).
*uniswapV3GetTokensDayData (current)ASync* | *GET* /dapps/uniswapv3/tokensDayData/current | GetTokensDayData (current).
*uniswapV3GetTokensDayData (historical)Sync* | *GET* /dapps/uniswapv3/tokensDayData/historical | GetTokensDayData (historical).
*uniswapV3GetTokensDayData (historical)ASync* | *GET* /dapps/uniswapv3/tokensDayData/historical | GetTokensDayData (historical).
*uniswapV3GetTokensHourData (current)Sync* | *GET* /dapps/uniswapv3/tokensHourData/current | GetTokensHourData (current).
*uniswapV3GetTokensHourData (current)ASync* | *GET* /dapps/uniswapv3/tokensHourData/current | GetTokensHourData (current).
*uniswapV3GetTokensHourData (historical)Sync* | *GET* /dapps/uniswapv3/tokensHourData/historical | GetTokensHourData (historical).
*uniswapV3GetTokensHourData (historical)ASync* | *GET* /dapps/uniswapv3/tokensHourData/historical | GetTokensHourData (historical).
*uniswapV3GetTransactions (historical)Sync* | *GET* /dapps/uniswapv3/transactions/historical | GetTransactions (historical).
*uniswapV3GetTransactions (historical)ASync* | *GET* /dapps/uniswapv3/transactions/historical | GetTransactions (historical).


## What are the Model files for the data structures/objects?
Class | Description
------------- | -------------
 *Cow.OrderDTO* | 
 *Cow.SettlementDTO* | A settlement comprises a list of traded tokens with their corresponding price in the batch.
 *Cow.TokenDTO* | Stores information for a specific token across all pairs that token is included in.
 *Cow.TradeDTO* | Trade entity.
 *Cow.UserDTO* | 
 *Curve.AccountDTO* | 
 *Curve.AddLiquidityEventDTO* | 
 *Curve.AdminFeeChangeLogDTO* | 
 *Curve.AmplificationCoeffChangeLogDTO* | 
 *Curve.CoinDTO* | 
 *Curve.ContractDTO* | 
 *Curve.ContractVersionDTO* | 
 *Curve.DailyVolumeDTO* | 
 *Curve.ExchangeDTO* | 
 *Curve.FeeChangeLogDTO* | 
 *Curve.GaugeDTO* | 
 *Curve.GaugeDepositDTO* | 
 *Curve.GaugeLiquidityDTO* | 
 *Curve.GaugeTotalWeightDTO* | 
 *Curve.GaugeTypeDTO* | 
 *Curve.GaugeTypeWeightDTO* | 
 *Curve.GaugeWeightDTO* | 
 *Curve.GaugeWeightVoteDTO* | 
 *Curve.GaugeWithdrawDTO* | 
 *Curve.HourlyVolumeDTO* | 
 *Curve.LpTokenDTO* | 
 *Curve.PoolDTO* | 
 *Curve.ProposalDTO* | 
 *Curve.ProposalVoteDTO* | 
 *Curve.RemoveLiquidityEventDTO* | 
 *Curve.RemoveLiquidityOneEventDTO* | 
 *Curve.SystemStateDTO* | 
 *Curve.TokenDTO* | 
 *Curve.TransferOwnershipEventDTO* | 
 *Curve.UnderlyingCoinDTO* | 
 *Curve.VotingAppDTO* | 
 *Curve.WeeklyVolumeDTO* | 
 *Dex.BatchDTO* | Batch executed. Every batch will contain at least solution with the a set of trades that are executed in it
 *Dex.DepositDTO* | Deposit of an user.
 *Dex.OrderDTO* | Order submitted by an user. It has a validity (dates) so they can only be executed from/until some given batches. Partial executions of this trades must respect the limit price.
 *Dex.PriceDTO* | Token price in conjuction with batch id.
 *Dex.SolutionDTO* | 
 *Dex.StatsDTO* | A type collecting global stats about this instance of Gnosis Protocol.
 *Dex.TokenDTO* | Registered token.
 *Dex.TradeDTO* | Trade for a single user, as part of a ring trade. It's part of the solution submitted by a solver for a given batch.
 *Dex.UserDTO* | User of the protocol. Any ethereum account that deposited tokens or traded.
 *Dex.WithdrawDTO* | Withdraw of an user.
 *Dex.WithdrawRequestDTO* | Withdraw request of an user
 *Numerics.BigInteger* | 
 *Sushiswap.BundleDTO* | The Bundle is used as a global store of derived ETH price in USD.
 *Sushiswap.BurnDTO* | Burn entities are created for every emitted Burn event on the Uniswap core contracts. The Burn entity stores key data about the event like token amounts, who burned LP tokens, who received tokens, and more. This entity can be used to track liquidity removals on pairs.
 *Sushiswap.DayDataDTO* | Tracks data across all pairs aggregated into a daily bucket.
 *Sushiswap.FactoryDTO* | The Sushiswap Factory entity is responsible for storing aggregate information across all Sushiswap pairs. It can be used to view stats about total liquidity, volume, amount of pairs and more.
 *Sushiswap.HourDataDTO* | 
 *Sushiswap.LiquidityPositionDTO* | 
 *Sushiswap.LiquidityPositionSnapshotDTO* | This entity is used to store data about a user's liquidity position over time. This information, along with information from the pair itself can be used to provide position sizes, token deposits, and more. It gets created and never updated.
 *Sushiswap.MintDTO* | Mint entities are created for every emitted Mint event on the Sushiswap core contracts. The Mint entity stores key data about the event like token amounts, who sent the transaction, who received the liquidity, and more. This entity can be used to track liquidity provisions on pairs.
 *Sushiswap.PairDTO* | Information about a pair. Includes references to each token within the pair, volume information, liquidity information, and more. The pair entity mirrors the pair smart contract, and also contains aggregated information about use.
 *Sushiswap.PairDayDataDTO* | Tracks pair data across each day.
 *Sushiswap.PairHourDataDTO* | Tracks pair data across each hour.
 *Sushiswap.SwapDTO* | Swap are created for each token swap within a pair.
 *Sushiswap.TokenDTO* | Stores aggregated information for a specific token across all pairs that token is included in.
 *Sushiswap.TokenDayDataDTO* | Token data aggregated across all pairs that include token.
 *Sushiswap.TransactionDTO* | Transaction entities are created for each Ethereum transaction that contains an interaction within Sushiswap contracts. Each transaction contains 3 arrays, and at least one of these arrays has a length of 1.
 *Sushiswap.UserDTO* | 
 *Transactions.ETradeAggressiveSide* | 
 *UniswapV2.BundleV2DTO* | The Bundle is used as a global store of derived ETH price in USD. Because there is no guaranteed common base token across pairs, a global reference of USD price is useful for deriving other USD values. The Bundle entity stores an updated weighted average of ETH<->Stablecoin pair prices. This provides a strong estimate for the USD price of ETH.
 *UniswapV2.BurnV2DTO* | Burn entities are created for every emitted Burn event on the Uniswap core contracts. The Burn entity stores key data about the event like token amounts, who burned LP tokens, who received tokens, and more. This entity can be used to track liquidity removals on pairs.
 *UniswapV2.LiquidityPositionSnapshotV2DTO* | This entity is used to store data about a user's liquidity position over time. This information, along with information from the pair itself can be used to provide position sizes, token deposits, and more. It gets created and never updated.
 *UniswapV2.LiquidityPositionV2DTO* | This entity is used to store data about a user's liquidity position. This information, along with information from the pair itself can be used to provide position sizes, token deposits, and more.
 *UniswapV2.MintV2DTO* | Mint entities are created for every emitted Mint event on the Uniswap core contracts. The Mint entity stores key data about the event like token amounts, who sent the transaction, who received the liquidity, and more. This entity can be used to track liquidity provisions on pairs.
 *UniswapV2.PairDayDataV2DTO* | Tracks pair data across each day.
 *UniswapV2.PairHourDataV2DTO* | Tracks pair data across each hour.
 *UniswapV2.PairV2DTO* | Information about a pair. Includes references to each token within the pair, volume information, liquidity information, and more. The pair entity mirrors the pair smart contract, and also contains aggregated information about use.
 *UniswapV2.SwapV2DTO* | Swap are created for each token swap within a pair.
 *UniswapV2.TokenDayDataV2DTO* | Token data aggregated across all pairs that include token.
 *UniswapV2.TokenV2DTO* | Stores aggregated information for a specific token across all pairs that token is included in.
 *UniswapV2.TransactionV2DTO* | Transaction entities are created for each Ethereum transaction that contains an interaction within Uniswap contracts. Each transaction contains 3 arrays, and at least one of these arrays has a length of 1.
 *UniswapV2.UniswapDayDataV2DTO* | Tracks data across all pairs aggregated into a daily bucket.
 *UniswapV2.UniswapFactoryV2DTO* | The Uniswap Factory entity is responsible for storing aggregate information across all Uniswap pairs. It can be used to view stats about total liquidity, volume, amount of pairs and more.
 *UniswapV2.UserV2DTO* | A user entity is created for any address that provides liquidity to a pool on Uniswap. This entity can be used to track open positions for users.
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
 *UniswapV3.TransactionV3DTO* | 
 *UniswapV3.UniswapDayDataV3DTO* | Data accumulated and condensed into day stats for all of Uniswap.

