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
*cowGetOrders (historical)Sync* | *GET* /dapps/cow/orders/historical-manual | Orders (historical).
*cowGetOrders (historical)ASync* | *GET* /dapps/cow/orders/historical-manual | Orders (historical).
*cowGetSettlements (historical)Sync* | *GET* /dapps/cow/settlements/historical-manual | Settlements (historical).
*cowGetSettlements (historical)ASync* | *GET* /dapps/cow/settlements/historical-manual | Settlements (historical).
*cowGetTokens (historical)Sync* | *GET* /dapps/cow/tokens/historical-manual | Tokens (historical) 🔥.
*cowGetTokens (historical)ASync* | *GET* /dapps/cow/tokens/historical-manual | Tokens (historical) 🔥.
*cowGetTrades (historical)Sync* | *GET* /dapps/cow/trades/historical-manual | Trades (historical) 🔥.
*cowGetTrades (historical)ASync* | *GET* /dapps/cow/trades/historical-manual | Trades (historical) 🔥.
*cowGetUsers (historical)Sync* | *GET* /dapps/cow/users/historical-manual | Users (historical).
*cowGetUsers (historical)ASync* | *GET* /dapps/cow/users/historical-manual | Users (historical).


### CurveManager
Method | HTTP request | Description
------------- | ------------- | -------------
*curveGetAccounts (historical)Sync* | *GET* /dapps/curve/accounts/historical-manual | Accounts (historical).
*curveGetAccounts (historical)ASync* | *GET* /dapps/curve/accounts/historical-manual | Accounts (historical).
*curveGetAddLiquidityEvents (historical)Sync* | *GET* /dapps/curve/addLiquidityEvents/historical-manual | AddLiquidityEvents (historical).
*curveGetAddLiquidityEvents (historical)ASync* | *GET* /dapps/curve/addLiquidityEvents/historical-manual | AddLiquidityEvents (historical).
*curveGetAdminFeeChangeLogs (historical)Sync* | *GET* /dapps/curve/adminFeeChangeLogs/historical-manual | AdminFeeChangeLogs (historical).
*curveGetAdminFeeChangeLogs (historical)ASync* | *GET* /dapps/curve/adminFeeChangeLogs/historical-manual | AdminFeeChangeLogs (historical).
*curveGetAmplificationCoeffChangeLogs (historical)Sync* | *GET* /dapps/curve/amplificationCoeffChangeLogs/historical-manual | AmplificationCoeffChangeLogs (historical).
*curveGetAmplificationCoeffChangeLogs (historical)ASync* | *GET* /dapps/curve/amplificationCoeffChangeLogs/historical-manual | AmplificationCoeffChangeLogs (historical).
*curveGetCoins (historical)Sync* | *GET* /dapps/curve/coins/historical-manual | Coins (historical).
*curveGetCoins (historical)ASync* | *GET* /dapps/curve/coins/historical-manual | Coins (historical).
*curveGetContracts (historical)Sync* | *GET* /dapps/curve/contracts/historical-manual | Contracts (historical).
*curveGetContracts (historical)ASync* | *GET* /dapps/curve/contracts/historical-manual | Contracts (historical).
*curveGetContractsVersions (historical)Sync* | *GET* /dapps/curve/contractsVersions/historical-manual | ContractsVersions (historical).
*curveGetContractsVersions (historical)ASync* | *GET* /dapps/curve/contractsVersions/historical-manual | ContractsVersions (historical).
*curveGetDailyVolumes (historical)Sync* | *GET* /dapps/curve/dailyVolumes/historical-manual | DailyVolumes (historical).
*curveGetDailyVolumes (historical)ASync* | *GET* /dapps/curve/dailyVolumes/historical-manual | DailyVolumes (historical).
*curveGetExchanges (historical)Sync* | *GET* /dapps/curve/exchanges/historical-manual | Exchanges (historical) 🔥.
*curveGetExchanges (historical)ASync* | *GET* /dapps/curve/exchanges/historical-manual | Exchanges (historical) 🔥.
*curveGetFeeChangeLogs (historical)Sync* | *GET* /dapps/curve/feeChangeLogs/historical-manual | FeeChangeLogs (historical).
*curveGetFeeChangeLogs (historical)ASync* | *GET* /dapps/curve/feeChangeLogs/historical-manual | FeeChangeLogs (historical).
*curveGetGauges (historical)Sync* | *GET* /dapps/curve/gauges/historical-manual | Gauges (historical).
*curveGetGauges (historical)ASync* | *GET* /dapps/curve/gauges/historical-manual | Gauges (historical).
*curveGetGaugesDeposits (historical)Sync* | *GET* /dapps/curve/gaugesDeposits/historical-manual | GaugesDeposits (historical).
*curveGetGaugesDeposits (historical)ASync* | *GET* /dapps/curve/gaugesDeposits/historical-manual | GaugesDeposits (historical).
*curveGetGaugesLiquidity (historical)Sync* | *GET* /dapps/curve/gaugesLiquidity/historical-manual | GaugesLiquidity (historical).
*curveGetGaugesLiquidity (historical)ASync* | *GET* /dapps/curve/gaugesLiquidity/historical-manual | GaugesLiquidity (historical).
*curveGetGaugesTotalWeights (historical)Sync* | *GET* /dapps/curve/gaugesTotalWeights/historical-manual | GaugesTotalWeights (historical).
*curveGetGaugesTotalWeights (historical)ASync* | *GET* /dapps/curve/gaugesTotalWeights/historical-manual | GaugesTotalWeights (historical).
*curveGetGaugesTypes (historical)Sync* | *GET* /dapps/curve/gaugesTypes/historical-manual | GaugesTypes (historical).
*curveGetGaugesTypes (historical)ASync* | *GET* /dapps/curve/gaugesTypes/historical-manual | GaugesTypes (historical).
*curveGetGaugesTypesWeights (historical)Sync* | *GET* /dapps/curve/gaugesTypesWeights/historical-manual | GaugesTypesWeights (historical).
*curveGetGaugesTypesWeights (historical)ASync* | *GET* /dapps/curve/gaugesTypesWeights/historical-manual | GaugesTypesWeights (historical).
*curveGetGaugesWeights (historical)Sync* | *GET* /dapps/curve/gaugesWeights/historical-manual | GaugesWeights (historical).
*curveGetGaugesWeights (historical)ASync* | *GET* /dapps/curve/gaugesWeights/historical-manual | GaugesWeights (historical).
*curveGetGaugesWeightsVotes (historical)Sync* | *GET* /dapps/curve/gaugesWeightsVotes/historical-manual | GaugesWeightsVotes (historical).
*curveGetGaugesWeightsVotes (historical)ASync* | *GET* /dapps/curve/gaugesWeightsVotes/historical-manual | GaugesWeightsVotes (historical).
*curveGetGaugesWithdraw (historical)Sync* | *GET* /dapps/curve/gaugesWithdraws/historical-manual | GaugesWithdraw (historical).
*curveGetGaugesWithdraw (historical)ASync* | *GET* /dapps/curve/gaugesWithdraws/historical-manual | GaugesWithdraw (historical).
*curveGetHourlyVolumes (historical)Sync* | *GET* /dapps/curve/hourlyVolumes/historical-manual | HourlyVolumes (historical).
*curveGetHourlyVolumes (historical)ASync* | *GET* /dapps/curve/hourlyVolumes/historical-manual | HourlyVolumes (historical).
*curveGetLpTokens (historical)Sync* | *GET* /dapps/curve/lpTokens/historical-manual | LpTokens (historical).
*curveGetLpTokens (historical)ASync* | *GET* /dapps/curve/lpTokens/historical-manual | LpTokens (historical).
*curveGetPools (historical)Sync* | *GET* /dapps/curve/pools/historical-manual | Pools (historical) 🔥.
*curveGetPools (historical)ASync* | *GET* /dapps/curve/pools/historical-manual | Pools (historical) 🔥.
*curveGetProposals (historical)Sync* | *GET* /dapps/curve/proposals/historical-manual | Proposals (historical).
*curveGetProposals (historical)ASync* | *GET* /dapps/curve/proposals/historical-manual | Proposals (historical).
*curveGetProposalsVotes (historical)Sync* | *GET* /dapps/curve/proposalsVotes/historical-manual | ProposalsVotes (historical).
*curveGetProposalsVotes (historical)ASync* | *GET* /dapps/curve/proposalsVotes/historical-manual | ProposalsVotes (historical).
*curveGetRemoveLiquidityEvents (historical)Sync* | *GET* /dapps/curve/removeLiquidityEvents/historical-manual | RemoveLiquidityEvents (historical).
*curveGetRemoveLiquidityEvents (historical)ASync* | *GET* /dapps/curve/removeLiquidityEvents/historical-manual | RemoveLiquidityEvents (historical).
*curveGetRemoveLiquidityOneEvents (historical)Sync* | *GET* /dapps/curve/removeLiquidityOneEvents/historical-manual | RemoveLiquidityOneEvents (historical).
*curveGetRemoveLiquidityOneEvents (historical)ASync* | *GET* /dapps/curve/removeLiquidityOneEvents/historical-manual | RemoveLiquidityOneEvents (historical).
*curveGetSystemStates (historical)Sync* | *GET* /dapps/curve/systemStates/historical-manual | SystemStates (historical).
*curveGetSystemStates (historical)ASync* | *GET* /dapps/curve/systemStates/historical-manual | SystemStates (historical).
*curveGetTokens (historical)Sync* | *GET* /dapps/curve/tokens/historical-manual | Tokens (historical) 🔥.
*curveGetTokens (historical)ASync* | *GET* /dapps/curve/tokens/historical-manual | Tokens (historical) 🔥.
*curveGetTransferOwnershipEvents (historical)Sync* | *GET* /dapps/curve/transferOwnershipEvents/historical-manual | TransferOwnershipEvents (historical).
*curveGetTransferOwnershipEvents (historical)ASync* | *GET* /dapps/curve/transferOwnershipEvents/historical-manual | TransferOwnershipEvents (historical).
*curveGetUnderlyingCoins (historical)Sync* | *GET* /dapps/curve/underlyingCoins/historical-manual | UnderlyingCoins (historical).
*curveGetUnderlyingCoins (historical)ASync* | *GET* /dapps/curve/underlyingCoins/historical-manual | UnderlyingCoins (historical).
*curveGetVotingApps (historical)Sync* | *GET* /dapps/curve/votingApps/historical-manual | VotingApps (historical).
*curveGetVotingApps (historical)ASync* | *GET* /dapps/curve/votingApps/historical-manual | VotingApps (historical).
*curveGetWeeklyVolumes (historical)Sync* | *GET* /dapps/curve/weeklyVolumes/historical-manual | WeeklyVolumes (historical).
*curveGetWeeklyVolumes (historical)ASync* | *GET* /dapps/curve/weeklyVolumes/historical-manual | WeeklyVolumes (historical).


### DexManager
Method | HTTP request | Description
------------- | ------------- | -------------
*dexGetBatches (historical)Sync* | *GET* /dapps/dex/batches/historical-manual | Batches (historical).
*dexGetBatches (historical)ASync* | *GET* /dapps/dex/batches/historical-manual | Batches (historical).
*dexGetDeposits (historical)Sync* | *GET* /dapps/dex/deposits/historical-manual | Deposits (historical).
*dexGetDeposits (historical)ASync* | *GET* /dapps/dex/deposits/historical-manual | Deposits (historical).
*dexGetOrders (historical)Sync* | *GET* /dapps/dex/orders/historical-manual | Orders (historical).
*dexGetOrders (historical)ASync* | *GET* /dapps/dex/orders/historical-manual | Orders (historical).
*dexGetPrices (historical)Sync* | *GET* /dapps/dex/prices/historical-manual | Prices (historical).
*dexGetPrices (historical)ASync* | *GET* /dapps/dex/prices/historical-manual | Prices (historical).
*dexGetSolutions (historical)Sync* | *GET* /dapps/dex/solutions/historical-manual | Solutions (historical).
*dexGetSolutions (historical)ASync* | *GET* /dapps/dex/solutions/historical-manual | Solutions (historical).
*dexGetStats (historical)Sync* | *GET* /dapps/dex/stats/historical-manual | Stats (historical).
*dexGetStats (historical)ASync* | *GET* /dapps/dex/stats/historical-manual | Stats (historical).
*dexGetTokens (historical)Sync* | *GET* /dapps/dex/tokens/historical-manual | Tokens (historical) 🔥.
*dexGetTokens (historical)ASync* | *GET* /dapps/dex/tokens/historical-manual | Tokens (historical) 🔥.
*dexGetTrades (historical)Sync* | *GET* /dapps/dex/trades/historical-manual | Trades (historical) 🔥.
*dexGetTrades (historical)ASync* | *GET* /dapps/dex/trades/historical-manual | Trades (historical) 🔥.
*dexGetUsers (historical)Sync* | *GET* /dapps/dex/users/historical-manual | Users (historical).
*dexGetUsers (historical)ASync* | *GET* /dapps/dex/users/historical-manual | Users (historical).
*dexGetWithdraws (historical)Sync* | *GET* /dapps/dex/withdraws/historical-manual | Withdraws (historical).
*dexGetWithdraws (historical)ASync* | *GET* /dapps/dex/withdraws/historical-manual | Withdraws (historical).
*dexGetWithdrawsRequests (historical)Sync* | *GET* /dapps/dex/withdrawsRequests/historical-manual | WithdrawsRequests (historical).
*dexGetWithdrawsRequests (historical)ASync* | *GET* /dapps/dex/withdrawsRequests/historical-manual | WithdrawsRequests (historical).


### SushiswapManager
Method | HTTP request | Description
------------- | ------------- | -------------
*curveGetExchanges (current)Sync* | *GET* /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥.
*curveGetExchanges (current)ASync* | *GET* /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥.
*dexGetTrades (current)Sync* | *GET* /dapps/sushiswap/trades/current | Trades (current) 🔥.
*dexGetTrades (current)ASync* | *GET* /dapps/sushiswap/trades/current | Trades (current) 🔥.
*sushiswapGetBundles (historical)Sync* | *GET* /dapps/sushiswap/bundles/historical-manual | Bundles (historical).
*sushiswapGetBundles (historical)ASync* | *GET* /dapps/sushiswap/bundles/historical-manual | Bundles (historical).
*sushiswapGetBurns (historical)Sync* | *GET* /dapps/sushiswap/burns/historical-manual | Burns (historical).
*sushiswapGetBurns (historical)ASync* | *GET* /dapps/sushiswap/burns/historical-manual | Burns (historical).
*sushiswapGetDayData (historical)Sync* | *GET* /dapps/sushiswap/dayData/historical-manual | DayData (historical).
*sushiswapGetDayData (historical)ASync* | *GET* /dapps/sushiswap/dayData/historical-manual | DayData (historical).
*sushiswapGetFactory (historical)Sync* | *GET* /dapps/sushiswap/factory/historical-manual | Factory (historical).
*sushiswapGetFactory (historical)ASync* | *GET* /dapps/sushiswap/factory/historical-manual | Factory (historical).
*sushiswapGetHourData (historical)Sync* | *GET* /dapps/sushiswap/hourData/historical-manual | HourData (historical).
*sushiswapGetHourData (historical)ASync* | *GET* /dapps/sushiswap/hourData/historical-manual | HourData (historical).
*sushiswapGetLiquidityPosition (historical)Sync* | *GET* /dapps/sushiswap/liquidityPosition/historical-manual | LiquidityPosition (historical).
*sushiswapGetLiquidityPosition (historical)ASync* | *GET* /dapps/sushiswap/liquidityPosition/historical-manual | LiquidityPosition (historical).
*sushiswapGetLiquidityPositionSnapshot (historical)Sync* | *GET* /dapps/sushiswap/liquidityPositionSnapshots/historical-manual | LiquidityPositionSnapshot (historical).
*sushiswapGetLiquidityPositionSnapshot (historical)ASync* | *GET* /dapps/sushiswap/liquidityPositionSnapshots/historical-manual | LiquidityPositionSnapshot (historical).
*sushiswapGetMints (historical)Sync* | *GET* /dapps/sushiswap/mints/historical-manual | Mints (historical).
*sushiswapGetMints (historical)ASync* | *GET* /dapps/sushiswap/mints/historical-manual | Mints (historical).
*sushiswapGetPools (current)Sync* | *GET* /dapps/sushiswap/pools/current | Pools (current) 🔥.
*sushiswapGetPools (current)ASync* | *GET* /dapps/sushiswap/pools/current | Pools (current) 🔥.
*sushiswapGetPools (historical)Sync* | *GET* /dapps/sushiswap/pools/historical-manual | Pools (historical) 🔥.
*sushiswapGetPools (historical)ASync* | *GET* /dapps/sushiswap/pools/historical-manual | Pools (historical) 🔥.
*sushiswapGetPoolsDayData (historical)Sync* | *GET* /dapps/sushiswap/poolsDayData/historical-manual | PoolsDayData (historical).
*sushiswapGetPoolsDayData (historical)ASync* | *GET* /dapps/sushiswap/poolsDayData/historical-manual | PoolsDayData (historical).
*sushiswapGetPoolsHourData (historical)Sync* | *GET* /dapps/sushiswap/poolsHourData/historical-manual | PoolsHourData (historical).
*sushiswapGetPoolsHourData (historical)ASync* | *GET* /dapps/sushiswap/poolsHourData/historical-manual | PoolsHourData (historical).
*sushiswapGetSwaps (current)Sync* | *GET* /dapps/sushiswap/swaps/current | Swaps (current) 🔥.
*sushiswapGetSwaps (current)ASync* | *GET* /dapps/sushiswap/swaps/current | Swaps (current) 🔥.
*sushiswapGetSwaps (historical)Sync* | *GET* /dapps/sushiswap/swaps/historical-manual | Swaps (historical) 🔥.
*sushiswapGetSwaps (historical)ASync* | *GET* /dapps/sushiswap/swaps/historical-manual | Swaps (historical) 🔥.
*sushiswapGetTokens (current)Sync* | *GET* /dapps/sushiswap/tokens/current | Tokens (current) 🔥.
*sushiswapGetTokens (current)ASync* | *GET* /dapps/sushiswap/tokens/current | Tokens (current) 🔥.
*sushiswapGetTokens (historical)Sync* | *GET* /dapps/sushiswap/tokens/historical-manual | Tokens (historical) 🔥.
*sushiswapGetTokens (historical)ASync* | *GET* /dapps/sushiswap/tokens/historical-manual | Tokens (historical) 🔥.
*sushiswapGetTokensDayData (historical)Sync* | *GET* /dapps/sushiswap/tokensDayData/historical-manual | TokensDayData (historical).
*sushiswapGetTokensDayData (historical)ASync* | *GET* /dapps/sushiswap/tokensDayData/historical-manual | TokensDayData (historical).
*sushiswapGetTransactions (historical)Sync* | *GET* /dapps/sushiswap/transactions/historical-manual | Transactions (historical).
*sushiswapGetTransactions (historical)ASync* | *GET* /dapps/sushiswap/transactions/historical-manual | Transactions (historical).
*sushiswapGetUsers (historical)Sync* | *GET* /dapps/sushiswap/users/historical-manual | Users (historical).
*sushiswapGetUsers (historical)ASync* | *GET* /dapps/sushiswap/users/historical-manual | Users (historical).


### UniswapV2Manager
Method | HTTP request | Description
------------- | ------------- | -------------
*uniswapV2GetBundles (historical)Sync* | *GET* /dapps/uniswapv2/bundles/historical-manual | Bundles (historical).
*uniswapV2GetBundles (historical)ASync* | *GET* /dapps/uniswapv2/bundles/historical-manual | Bundles (historical).
*uniswapV2GetBurns (historical)Sync* | *GET* /dapps/uniswapv2/burns/historical-manual | Burns (historical).
*uniswapV2GetBurns (historical)ASync* | *GET* /dapps/uniswapv2/burns/historical-manual | Burns (historical).
*uniswapV2GetDayData (historical)Sync* | *GET* /dapps/uniswapv2/dayData/historical-manual | DayData (historical).
*uniswapV2GetDayData (historical)ASync* | *GET* /dapps/uniswapv2/dayData/historical-manual | DayData (historical).
*uniswapV2GetFactory (historical)Sync* | *GET* /dapps/uniswapv2/factory/historical-manual | Factory (historical).
*uniswapV2GetFactory (historical)ASync* | *GET* /dapps/uniswapv2/factory/historical-manual | Factory (historical).
*uniswapV2GetLiquidityPositions (historical)Sync* | *GET* /dapps/uniswapv2/liquidityPositions/historical-manual | LiquidityPositions (historical).
*uniswapV2GetLiquidityPositions (historical)ASync* | *GET* /dapps/uniswapv2/liquidityPositions/historical-manual | LiquidityPositions (historical).
*uniswapV2GetLiquidityPositionsSnapshots (historical)Sync* | *GET* /dapps/uniswapv2/liquidityPositionsSnapshots/historical-manual | LiquidityPositionsSnapshots (historical).
*uniswapV2GetLiquidityPositionsSnapshots (historical)ASync* | *GET* /dapps/uniswapv2/liquidityPositionsSnapshots/historical-manual | LiquidityPositionsSnapshots (historical).
*uniswapV2GetMints (historical)Sync* | *GET* /dapps/uniswapv2/mints/historical-manual | Mints (historical).
*uniswapV2GetMints (historical)ASync* | *GET* /dapps/uniswapv2/mints/historical-manual | Mints (historical).
*uniswapV2GetPools (current)Sync* | *GET* /dapps/uniswapv2/pools/current | Pools (current) 🔥.
*uniswapV2GetPools (current)ASync* | *GET* /dapps/uniswapv2/pools/current | Pools (current) 🔥.
*uniswapV2GetPools (historical)Sync* | *GET* /dapps/uniswapv2/pools/historical-manual | Pools (historical) 🔥.
*uniswapV2GetPools (historical)ASync* | *GET* /dapps/uniswapv2/pools/historical-manual | Pools (historical) 🔥.
*uniswapV2GetPoolsDayData (historical)Sync* | *GET* /dapps/uniswapv2/poolsDayData/historical-manual | PoolsDayData (historical).
*uniswapV2GetPoolsDayData (historical)ASync* | *GET* /dapps/uniswapv2/poolsDayData/historical-manual | PoolsDayData (historical).
*uniswapV2GetPoolsHourData (historical)Sync* | *GET* /dapps/uniswapv2/poolsHourData/historical-manual | PoolsHourData (historical).
*uniswapV2GetPoolsHourData (historical)ASync* | *GET* /dapps/uniswapv2/poolsHourData/historical-manual | PoolsHourData (historical).
*uniswapV2GetSwaps (current)Sync* | *GET* /dapps/uniswapv2/swaps/current | Swaps (current) 🔥.
*uniswapV2GetSwaps (current)ASync* | *GET* /dapps/uniswapv2/swaps/current | Swaps (current) 🔥.
*uniswapV2GetSwaps (historical)Sync* | *GET* /dapps/uniswapv2/swaps/historical-manual | Swaps (historical) 🔥.
*uniswapV2GetSwaps (historical)ASync* | *GET* /dapps/uniswapv2/swaps/historical-manual | Swaps (historical) 🔥.
*uniswapV2GetTokens (current)Sync* | *GET* /dapps/uniswapv2/tokens/current | Tokens (current) 🔥.
*uniswapV2GetTokens (current)ASync* | *GET* /dapps/uniswapv2/tokens/current | Tokens (current) 🔥.
*uniswapV2GetTokens (historical)Sync* | *GET* /dapps/uniswapv2/tokens/historical-manual | Tokens (historical) 🔥.
*uniswapV2GetTokens (historical)ASync* | *GET* /dapps/uniswapv2/tokens/historical-manual | Tokens (historical) 🔥.
*uniswapV2GetTokensDayData (historical)Sync* | *GET* /dapps/uniswapv2/tokensDayData/historical-manual | TokensDayData (historical).
*uniswapV2GetTokensDayData (historical)ASync* | *GET* /dapps/uniswapv2/tokensDayData/historical-manual | TokensDayData (historical).
*uniswapV2GetTransactions (historical)Sync* | *GET* /dapps/uniswapv2/transactions/historical-manual | Transactions (historical).
*uniswapV2GetTransactions (historical)ASync* | *GET* /dapps/uniswapv2/transactions/historical-manual | Transactions (historical).
*uniswapV2GetUsers (historical)Sync* | *GET* /dapps/uniswapv2/users/historical-manual | Users (historical).
*uniswapV2GetUsers (historical)ASync* | *GET* /dapps/uniswapv2/users/historical-manual | Users (historical).


### UniswapV3Manager
Method | HTTP request | Description
------------- | ------------- | -------------
*uniswapV3GetBundles (current)Sync* | *GET* /dapps/uniswapv3/bundles/current | Bundles (current).
*uniswapV3GetBundles (current)ASync* | *GET* /dapps/uniswapv3/bundles/current | Bundles (current).
*uniswapV3GetBundles (historical)Sync* | *GET* /dapps/uniswapv3/bundles/historical-manual | Bundles (historical).
*uniswapV3GetBundles (historical)ASync* | *GET* /dapps/uniswapv3/bundles/historical-manual | Bundles (historical).
*uniswapV3GetBurns (current)Sync* | *GET* /dapps/uniswapv3/burns/current | Burns (current).
*uniswapV3GetBurns (current)ASync* | *GET* /dapps/uniswapv3/burns/current | Burns (current).
*uniswapV3GetBurns (historical)Sync* | *GET* /dapps/uniswapv3/burns/historical-manual | Burns (historical).
*uniswapV3GetBurns (historical)ASync* | *GET* /dapps/uniswapv3/burns/historical-manual | Burns (historical).
*uniswapV3GetDayData (current)Sync* | *GET* /dapps/uniswapv3/dayData/current | DayData (current).
*uniswapV3GetDayData (current)ASync* | *GET* /dapps/uniswapv3/dayData/current | DayData (current).
*uniswapV3GetDayData (historical)Sync* | *GET* /dapps/uniswapv3/dayData/historical-manual | DayData (historical).
*uniswapV3GetDayData (historical)ASync* | *GET* /dapps/uniswapv3/dayData/historical-manual | DayData (historical).
*uniswapV3GetFactory (current)Sync* | *GET* /dapps/uniswapv3/factory/current | Factory (current).
*uniswapV3GetFactory (current)ASync* | *GET* /dapps/uniswapv3/factory/current | Factory (current).
*uniswapV3GetFactory (historical)Sync* | *GET* /dapps/uniswapv3/factory/historical-manual | Factory (historical).
*uniswapV3GetFactory (historical)ASync* | *GET* /dapps/uniswapv3/factory/historical-manual | Factory (historical).
*uniswapV3GetMints (current)Sync* | *GET* /dapps/uniswapv3/mints/current | Mints (current).
*uniswapV3GetMints (current)ASync* | *GET* /dapps/uniswapv3/mints/current | Mints (current).
*uniswapV3GetMints (historical)Sync* | *GET* /dapps/uniswapv3/mints/historical-manual | Mints (historical).
*uniswapV3GetMints (historical)ASync* | *GET* /dapps/uniswapv3/mints/historical-manual | Mints (historical).
*uniswapV3GetPools (current)Sync* | *GET* /dapps/uniswapv3/pools/current | Pools (current) 🔥.
*uniswapV3GetPools (current)ASync* | *GET* /dapps/uniswapv3/pools/current | Pools (current) 🔥.
*uniswapV3GetPools (historical)Sync* | *GET* /dapps/uniswapv3/pools/historical-manual | Pools (historical) 🔥.
*uniswapV3GetPools (historical)ASync* | *GET* /dapps/uniswapv3/pools/historical-manual | Pools (historical) 🔥.
*uniswapV3GetPoolsDayData (current)Sync* | *GET* /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current).
*uniswapV3GetPoolsDayData (current)ASync* | *GET* /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current).
*uniswapV3GetPoolsDayData (historical)Sync* | *GET* /dapps/uniswapv3/poolsDayData/historical-manual | PoolsDayData (historical).
*uniswapV3GetPoolsDayData (historical)ASync* | *GET* /dapps/uniswapv3/poolsDayData/historical-manual | PoolsDayData (historical).
*uniswapV3GetPoolsHourData (current)Sync* | *GET* /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current).
*uniswapV3GetPoolsHourData (current)ASync* | *GET* /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current).
*uniswapV3GetPoolsHourData (historical)Sync* | *GET* /dapps/uniswapv3/poolsHourData/historical-manual | PoolsHourData (historical).
*uniswapV3GetPoolsHourData (historical)ASync* | *GET* /dapps/uniswapv3/poolsHourData/historical-manual | PoolsHourData (historical).
*uniswapV3GetPositions (current)Sync* | *GET* /dapps/uniswapv3/positions/current | Positions (current).
*uniswapV3GetPositions (current)ASync* | *GET* /dapps/uniswapv3/positions/current | Positions (current).
*uniswapV3GetPositions (historical)Sync* | *GET* /dapps/uniswapv3/positions/historical-manual | Positions (historical).
*uniswapV3GetPositions (historical)ASync* | *GET* /dapps/uniswapv3/positions/historical-manual | Positions (historical).
*uniswapV3GetPositionsSnaphots (historical)Sync* | *GET* /dapps/uniswapv3/positionsSnapshots/historical-manual | PositionsSnaphots (historical).
*uniswapV3GetPositionsSnaphots (historical)ASync* | *GET* /dapps/uniswapv3/positionsSnapshots/historical-manual | PositionsSnaphots (historical).
*uniswapV3GetPositionsSnapshots (current)Sync* | *GET* /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current).
*uniswapV3GetPositionsSnapshots (current)ASync* | *GET* /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current).
*uniswapV3GetSwaps (current)Sync* | *GET* /dapps/uniswapv3/swaps/current | Swaps (current) 🔥.
*uniswapV3GetSwaps (current)ASync* | *GET* /dapps/uniswapv3/swaps/current | Swaps (current) 🔥.
*uniswapV3GetSwaps (historical)Sync* | *GET* /dapps/uniswapv3/swaps/historical-manual | Swaps (historical) 🔥.
*uniswapV3GetSwaps (historical)ASync* | *GET* /dapps/uniswapv3/swaps/historical-manual | Swaps (historical) 🔥.
*uniswapV3GetTicks (current)Sync* | *GET* /dapps/uniswapv3/ticks/current | Ticks (current).
*uniswapV3GetTicks (current)ASync* | *GET* /dapps/uniswapv3/ticks/current | Ticks (current).
*uniswapV3GetTicks (historical)Sync* | *GET* /dapps/uniswapv3/ticks/historical-manual | Ticks (historical).
*uniswapV3GetTicks (historical)ASync* | *GET* /dapps/uniswapv3/ticks/historical-manual | Ticks (historical).
*uniswapV3GetTicksDayData (current)Sync* | *GET* /dapps/uniswapv3/ticksDayData/current | TicksDayData (current).
*uniswapV3GetTicksDayData (current)ASync* | *GET* /dapps/uniswapv3/ticksDayData/current | TicksDayData (current).
*uniswapV3GetTicksDayData (historical)Sync* | *GET* /dapps/uniswapv3/ticksDayData/historical-manual | TicksDayData (historical).
*uniswapV3GetTicksDayData (historical)ASync* | *GET* /dapps/uniswapv3/ticksDayData/historical-manual | TicksDayData (historical).
*uniswapV3GetTokens (current)Sync* | *GET* /dapps/uniswapv3/tokens/current | Tokens (current) 🔥.
*uniswapV3GetTokens (current)ASync* | *GET* /dapps/uniswapv3/tokens/current | Tokens (current) 🔥.
*uniswapV3GetTokens (historical)Sync* | *GET* /dapps/uniswapv3/tokens/historical-manual | Tokens (historical) 🔥.
*uniswapV3GetTokens (historical)ASync* | *GET* /dapps/uniswapv3/tokens/historical-manual | Tokens (historical) 🔥.
*uniswapV3GetTokensDayData (current)Sync* | *GET* /dapps/uniswapv3/tokensDayData/current | TokensDayData (current).
*uniswapV3GetTokensDayData (current)ASync* | *GET* /dapps/uniswapv3/tokensDayData/current | TokensDayData (current).
*uniswapV3GetTokensDayData (historical)Sync* | *GET* /dapps/uniswapv3/tokensDayData/historical-manual | TokensDayData (historical).
*uniswapV3GetTokensDayData (historical)ASync* | *GET* /dapps/uniswapv3/tokensDayData/historical-manual | TokensDayData (historical).
*uniswapV3GetTokensHourData (current)Sync* | *GET* /dapps/uniswapv3/tokensHourData/current | TokensHourData (current).
*uniswapV3GetTokensHourData (current)ASync* | *GET* /dapps/uniswapv3/tokensHourData/current | TokensHourData (current).
*uniswapV3GetTokensHourData (historical)Sync* | *GET* /dapps/uniswapv3/tokensHourData/historical-manual | TokensHourData (historical).
*uniswapV3GetTokensHourData (historical)ASync* | *GET* /dapps/uniswapv3/tokensHourData/historical-manual | TokensHourData (historical).
*uniswapV3GetTransactions (historical)Sync* | *GET* /dapps/uniswapv3/transactions/historical-manual | Transactions (historical).
*uniswapV3GetTransactions (historical)ASync* | *GET* /dapps/uniswapv3/transactions/historical-manual | Transactions (historical).


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

