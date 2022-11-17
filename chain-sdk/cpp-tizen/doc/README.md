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
*cowGetOrders (historical)Sync* | *GET* /dapps/cow/orders/historical | Orders (historical) 🔥.
*cowGetOrders (historical)ASync* | *GET* /dapps/cow/orders/historical | Orders (historical) 🔥.
*cowGetSettlements (historical)Sync* | *GET* /dapps/cow/settlements/historical | Settlements (historical) 🔥.
*cowGetSettlements (historical)ASync* | *GET* /dapps/cow/settlements/historical | Settlements (historical) 🔥.
*cowGetTokens (historical)Sync* | *GET* /dapps/cow/tokens/historical | Tokens (historical) 🔥.
*cowGetTokens (historical)ASync* | *GET* /dapps/cow/tokens/historical | Tokens (historical) 🔥.
*cowGetTrades (historical)Sync* | *GET* /dapps/cow/trades/historical | Trades (historical) 🔥.
*cowGetTrades (historical)ASync* | *GET* /dapps/cow/trades/historical | Trades (historical) 🔥.
*cowGetUsers (historical)Sync* | *GET* /dapps/cow/users/historical | Users (historical) 🔥.
*cowGetUsers (historical)ASync* | *GET* /dapps/cow/users/historical | Users (historical) 🔥.
*cowOrders (current)Sync* | *GET* /dapps/cow/orders/current | Orders (current).
*cowOrders (current)ASync* | *GET* /dapps/cow/orders/current | Orders (current).
*cowSettlements (current)Sync* | *GET* /dapps/cow/settlements/current | Settlements (current).
*cowSettlements (current)ASync* | *GET* /dapps/cow/settlements/current | Settlements (current).
*cowTokens (current)Sync* | *GET* /dapps/cow/tokens/current | Tokens (current).
*cowTokens (current)ASync* | *GET* /dapps/cow/tokens/current | Tokens (current).
*cowTrades (current)Sync* | *GET* /dapps/cow/trades/current | Trades (current).
*cowTrades (current)ASync* | *GET* /dapps/cow/trades/current | Trades (current).
*cowUsers (current)Sync* | *GET* /dapps/cow/users/current | Users (current).
*cowUsers (current)ASync* | *GET* /dapps/cow/users/current | Users (current).


### CurveManager
Method | HTTP request | Description
------------- | ------------- | -------------
*curveAccounts (current)Sync* | *GET* /dapps/curve/accounts/current | Accounts (current).
*curveAccounts (current)ASync* | *GET* /dapps/curve/accounts/current | Accounts (current).
*curveAddLiquidityEvents (current)Sync* | *GET* /dapps/curve/addLiquidityEvents/current | AddLiquidityEvents (current).
*curveAddLiquidityEvents (current)ASync* | *GET* /dapps/curve/addLiquidityEvents/current | AddLiquidityEvents (current).
*curveAdminFeeChangeLogs (current)Sync* | *GET* /dapps/curve/adminFeeChangeLogs/current | AdminFeeChangeLogs (current).
*curveAdminFeeChangeLogs (current)ASync* | *GET* /dapps/curve/adminFeeChangeLogs/current | AdminFeeChangeLogs (current).
*curveAmplificationCoeffChangeLogs (current)Sync* | *GET* /dapps/curve/amplificationCoeffChangeLogs/current | AmplificationCoeffChangeLogs (current).
*curveAmplificationCoeffChangeLogs (current)ASync* | *GET* /dapps/curve/amplificationCoeffChangeLogs/current | AmplificationCoeffChangeLogs (current).
*curveCoins (current)Sync* | *GET* /dapps/curve/coins/current | Coins (current).
*curveCoins (current)ASync* | *GET* /dapps/curve/coins/current | Coins (current).
*curveContractVersions (current)Sync* | *GET* /dapps/curve/contractVersions/current | ContractVersions (current).
*curveContractVersions (current)ASync* | *GET* /dapps/curve/contractVersions/current | ContractVersions (current).
*curveContracts (current)Sync* | *GET* /dapps/curve/contracts/current | Contracts (current).
*curveContracts (current)ASync* | *GET* /dapps/curve/contracts/current | Contracts (current).
*curveDailyVolumes (current)Sync* | *GET* /dapps/curve/dailyVolumes/current | DailyVolumes (current).
*curveDailyVolumes (current)ASync* | *GET* /dapps/curve/dailyVolumes/current | DailyVolumes (current).
*curveExchanges (current)Sync* | *GET* /dapps/curve/exchanges/current | Exchanges (current).
*curveExchanges (current)ASync* | *GET* /dapps/curve/exchanges/current | Exchanges (current).
*curveFeeChangeLogs (current)Sync* | *GET* /dapps/curve/feeChangeLogs/current | FeeChangeLogs (current).
*curveFeeChangeLogs (current)ASync* | *GET* /dapps/curve/feeChangeLogs/current | FeeChangeLogs (current).
*curveGaugeDeposits (current)Sync* | *GET* /dapps/curve/gaugeDeposits/current | GaugeDeposits (current).
*curveGaugeDeposits (current)ASync* | *GET* /dapps/curve/gaugeDeposits/current | GaugeDeposits (current).
*curveGaugeLiquiditys (current)Sync* | *GET* /dapps/curve/gaugeLiquiditys/current | GaugeLiquiditys (current).
*curveGaugeLiquiditys (current)ASync* | *GET* /dapps/curve/gaugeLiquiditys/current | GaugeLiquiditys (current).
*curveGaugeTotalWeights (current)Sync* | *GET* /dapps/curve/gaugeTotalWeights/current | GaugeTotalWeights (current).
*curveGaugeTotalWeights (current)ASync* | *GET* /dapps/curve/gaugeTotalWeights/current | GaugeTotalWeights (current).
*curveGaugeTypeWeights (current)Sync* | *GET* /dapps/curve/gaugeTypeWeights/current | GaugeTypeWeights (current).
*curveGaugeTypeWeights (current)ASync* | *GET* /dapps/curve/gaugeTypeWeights/current | GaugeTypeWeights (current).
*curveGaugeTypes (current)Sync* | *GET* /dapps/curve/gaugeTypes/current | GaugeTypes (current).
*curveGaugeTypes (current)ASync* | *GET* /dapps/curve/gaugeTypes/current | GaugeTypes (current).
*curveGaugeWeightVotes (current)Sync* | *GET* /dapps/curve/gaugeWeightVotes/current | GaugeWeightVotes (current).
*curveGaugeWeightVotes (current)ASync* | *GET* /dapps/curve/gaugeWeightVotes/current | GaugeWeightVotes (current).
*curveGaugeWeights (current)Sync* | *GET* /dapps/curve/gaugeWeights/current | GaugeWeights (current).
*curveGaugeWeights (current)ASync* | *GET* /dapps/curve/gaugeWeights/current | GaugeWeights (current).
*curveGaugeWithdraws (current)Sync* | *GET* /dapps/curve/gaugeWithdraws/current | GaugeWithdraws (current).
*curveGaugeWithdraws (current)ASync* | *GET* /dapps/curve/gaugeWithdraws/current | GaugeWithdraws (current).
*curveGauges (current)Sync* | *GET* /dapps/curve/gauges/current | Gauges (current).
*curveGauges (current)ASync* | *GET* /dapps/curve/gauges/current | Gauges (current).
*curveGetAccounts (historical)Sync* | *GET* /dapps/curve/accounts/historical | Accounts (historical) 🔥.
*curveGetAccounts (historical)ASync* | *GET* /dapps/curve/accounts/historical | Accounts (historical) 🔥.
*curveGetAddLiquidityEvents (historical)Sync* | *GET* /dapps/curve/addLiquidityEvents/historical | AddLiquidityEvents (historical) 🔥.
*curveGetAddLiquidityEvents (historical)ASync* | *GET* /dapps/curve/addLiquidityEvents/historical | AddLiquidityEvents (historical) 🔥.
*curveGetAdminFeeChangeLogs (historical)Sync* | *GET* /dapps/curve/adminFeeChangeLogs/historical | AdminFeeChangeLogs (historical) 🔥.
*curveGetAdminFeeChangeLogs (historical)ASync* | *GET* /dapps/curve/adminFeeChangeLogs/historical | AdminFeeChangeLogs (historical) 🔥.
*curveGetAmplificationCoeffChangeLogs (historical)Sync* | *GET* /dapps/curve/amplificationCoeffChangeLogs/historical | AmplificationCoeffChangeLogs (historical) 🔥.
*curveGetAmplificationCoeffChangeLogs (historical)ASync* | *GET* /dapps/curve/amplificationCoeffChangeLogs/historical | AmplificationCoeffChangeLogs (historical) 🔥.
*curveGetCoins (historical)Sync* | *GET* /dapps/curve/coins/historical | Coins (historical) 🔥.
*curveGetCoins (historical)ASync* | *GET* /dapps/curve/coins/historical | Coins (historical) 🔥.
*curveGetContractVersions (historical)Sync* | *GET* /dapps/curve/contractVersions/historical | ContractVersions (historical) 🔥.
*curveGetContractVersions (historical)ASync* | *GET* /dapps/curve/contractVersions/historical | ContractVersions (historical) 🔥.
*curveGetContracts (historical)Sync* | *GET* /dapps/curve/contracts/historical | Contracts (historical) 🔥.
*curveGetContracts (historical)ASync* | *GET* /dapps/curve/contracts/historical | Contracts (historical) 🔥.
*curveGetDailyVolumes (historical)Sync* | *GET* /dapps/curve/dailyVolumes/historical | DailyVolumes (historical) 🔥.
*curveGetDailyVolumes (historical)ASync* | *GET* /dapps/curve/dailyVolumes/historical | DailyVolumes (historical) 🔥.
*curveGetExchanges (historical)Sync* | *GET* /dapps/curve/exchanges/historical | Exchanges (historical) 🔥.
*curveGetExchanges (historical)ASync* | *GET* /dapps/curve/exchanges/historical | Exchanges (historical) 🔥.
*curveGetFeeChangeLogs (historical)Sync* | *GET* /dapps/curve/feeChangeLogs/historical | FeeChangeLogs (historical) 🔥.
*curveGetFeeChangeLogs (historical)ASync* | *GET* /dapps/curve/feeChangeLogs/historical | FeeChangeLogs (historical) 🔥.
*curveGetGaugeDeposits (historical)Sync* | *GET* /dapps/curve/gaugeDeposits/historical | GaugeDeposits (historical) 🔥.
*curveGetGaugeDeposits (historical)ASync* | *GET* /dapps/curve/gaugeDeposits/historical | GaugeDeposits (historical) 🔥.
*curveGetGaugeLiquiditys (historical)Sync* | *GET* /dapps/curve/gaugeLiquiditys/historical | GaugeLiquiditys (historical) 🔥.
*curveGetGaugeLiquiditys (historical)ASync* | *GET* /dapps/curve/gaugeLiquiditys/historical | GaugeLiquiditys (historical) 🔥.
*curveGetGaugeTotalWeights (historical)Sync* | *GET* /dapps/curve/gaugeTotalWeights/historical | GaugeTotalWeights (historical) 🔥.
*curveGetGaugeTotalWeights (historical)ASync* | *GET* /dapps/curve/gaugeTotalWeights/historical | GaugeTotalWeights (historical) 🔥.
*curveGetGaugeTypeWeights (historical)Sync* | *GET* /dapps/curve/gaugeTypeWeights/historical | GaugeTypeWeights (historical) 🔥.
*curveGetGaugeTypeWeights (historical)ASync* | *GET* /dapps/curve/gaugeTypeWeights/historical | GaugeTypeWeights (historical) 🔥.
*curveGetGaugeTypes (historical)Sync* | *GET* /dapps/curve/gaugeTypes/historical | GaugeTypes (historical) 🔥.
*curveGetGaugeTypes (historical)ASync* | *GET* /dapps/curve/gaugeTypes/historical | GaugeTypes (historical) 🔥.
*curveGetGaugeWeightVotes (historical)Sync* | *GET* /dapps/curve/gaugeWeightVotes/historical | GaugeWeightVotes (historical) 🔥.
*curveGetGaugeWeightVotes (historical)ASync* | *GET* /dapps/curve/gaugeWeightVotes/historical | GaugeWeightVotes (historical) 🔥.
*curveGetGaugeWeights (historical)Sync* | *GET* /dapps/curve/gaugeWeights/historical | GaugeWeights (historical) 🔥.
*curveGetGaugeWeights (historical)ASync* | *GET* /dapps/curve/gaugeWeights/historical | GaugeWeights (historical) 🔥.
*curveGetGaugeWithdraws (historical)Sync* | *GET* /dapps/curve/gaugeWithdraws/historical | GaugeWithdraws (historical) 🔥.
*curveGetGaugeWithdraws (historical)ASync* | *GET* /dapps/curve/gaugeWithdraws/historical | GaugeWithdraws (historical) 🔥.
*curveGetGauges (historical)Sync* | *GET* /dapps/curve/gauges/historical | Gauges (historical) 🔥.
*curveGetGauges (historical)ASync* | *GET* /dapps/curve/gauges/historical | Gauges (historical) 🔥.
*curveGetHourlyVolumes (historical)Sync* | *GET* /dapps/curve/hourlyVolumes/historical | HourlyVolumes (historical) 🔥.
*curveGetHourlyVolumes (historical)ASync* | *GET* /dapps/curve/hourlyVolumes/historical | HourlyVolumes (historical) 🔥.
*curveGetLpTokens (historical)Sync* | *GET* /dapps/curve/lpTokens/historical | LpTokens (historical) 🔥.
*curveGetLpTokens (historical)ASync* | *GET* /dapps/curve/lpTokens/historical | LpTokens (historical) 🔥.
*curveGetPools (historical)Sync* | *GET* /dapps/curve/pools/historical | Pools (historical) 🔥.
*curveGetPools (historical)ASync* | *GET* /dapps/curve/pools/historical | Pools (historical) 🔥.
*curveGetProposalVotes (historical)Sync* | *GET* /dapps/curve/proposalVotes/historical | ProposalVotes (historical) 🔥.
*curveGetProposalVotes (historical)ASync* | *GET* /dapps/curve/proposalVotes/historical | ProposalVotes (historical) 🔥.
*curveGetProposals (historical)Sync* | *GET* /dapps/curve/proposals/historical | Proposals (historical) 🔥.
*curveGetProposals (historical)ASync* | *GET* /dapps/curve/proposals/historical | Proposals (historical) 🔥.
*curveGetRemoveLiquidityEvents (historical)Sync* | *GET* /dapps/curve/removeLiquidityEvents/historical | RemoveLiquidityEvents (historical) 🔥.
*curveGetRemoveLiquidityEvents (historical)ASync* | *GET* /dapps/curve/removeLiquidityEvents/historical | RemoveLiquidityEvents (historical) 🔥.
*curveGetRemoveLiquidityOneEvents (historical)Sync* | *GET* /dapps/curve/removeLiquidityOneEvents/historical | RemoveLiquidityOneEvents (historical) 🔥.
*curveGetRemoveLiquidityOneEvents (historical)ASync* | *GET* /dapps/curve/removeLiquidityOneEvents/historical | RemoveLiquidityOneEvents (historical) 🔥.
*curveGetSystemStates (historical)Sync* | *GET* /dapps/curve/systemStates/historical | SystemStates (historical) 🔥.
*curveGetSystemStates (historical)ASync* | *GET* /dapps/curve/systemStates/historical | SystemStates (historical) 🔥.
*curveGetTokens (historical)Sync* | *GET* /dapps/curve/tokens/historical | Tokens (historical) 🔥.
*curveGetTokens (historical)ASync* | *GET* /dapps/curve/tokens/historical | Tokens (historical) 🔥.
*curveGetTransferOwnershipEvents (historical)Sync* | *GET* /dapps/curve/transferOwnershipEvents/historical | TransferOwnershipEvents (historical) 🔥.
*curveGetTransferOwnershipEvents (historical)ASync* | *GET* /dapps/curve/transferOwnershipEvents/historical | TransferOwnershipEvents (historical) 🔥.
*curveGetUnderlyingCoins (historical)Sync* | *GET* /dapps/curve/underlyingCoins/historical | UnderlyingCoins (historical) 🔥.
*curveGetUnderlyingCoins (historical)ASync* | *GET* /dapps/curve/underlyingCoins/historical | UnderlyingCoins (historical) 🔥.
*curveGetVotingApps (historical)Sync* | *GET* /dapps/curve/votingApps/historical | VotingApps (historical) 🔥.
*curveGetVotingApps (historical)ASync* | *GET* /dapps/curve/votingApps/historical | VotingApps (historical) 🔥.
*curveGetWeeklyVolumes (historical)Sync* | *GET* /dapps/curve/weeklyVolumes/historical | WeeklyVolumes (historical) 🔥.
*curveGetWeeklyVolumes (historical)ASync* | *GET* /dapps/curve/weeklyVolumes/historical | WeeklyVolumes (historical) 🔥.
*curveHourlyVolumes (current)Sync* | *GET* /dapps/curve/hourlyVolumes/current | HourlyVolumes (current).
*curveHourlyVolumes (current)ASync* | *GET* /dapps/curve/hourlyVolumes/current | HourlyVolumes (current).
*curveLpTokens (current)Sync* | *GET* /dapps/curve/lpTokens/current | LpTokens (current).
*curveLpTokens (current)ASync* | *GET* /dapps/curve/lpTokens/current | LpTokens (current).
*curvePools (current)Sync* | *GET* /dapps/curve/pools/current | Pools (current).
*curvePools (current)ASync* | *GET* /dapps/curve/pools/current | Pools (current).
*curveProposalVotes (current)Sync* | *GET* /dapps/curve/proposalVotes/current | ProposalVotes (current).
*curveProposalVotes (current)ASync* | *GET* /dapps/curve/proposalVotes/current | ProposalVotes (current).
*curveProposals (current)Sync* | *GET* /dapps/curve/proposals/current | Proposals (current).
*curveProposals (current)ASync* | *GET* /dapps/curve/proposals/current | Proposals (current).
*curveRemoveLiquidityEvents (current)Sync* | *GET* /dapps/curve/removeLiquidityEvents/current | RemoveLiquidityEvents (current).
*curveRemoveLiquidityEvents (current)ASync* | *GET* /dapps/curve/removeLiquidityEvents/current | RemoveLiquidityEvents (current).
*curveRemoveLiquidityOneEvents (current)Sync* | *GET* /dapps/curve/removeLiquidityOneEvents/current | RemoveLiquidityOneEvents (current).
*curveRemoveLiquidityOneEvents (current)ASync* | *GET* /dapps/curve/removeLiquidityOneEvents/current | RemoveLiquidityOneEvents (current).
*curveSystemStates (current)Sync* | *GET* /dapps/curve/systemStates/current | SystemStates (current).
*curveSystemStates (current)ASync* | *GET* /dapps/curve/systemStates/current | SystemStates (current).
*curveTokens (current)Sync* | *GET* /dapps/curve/tokens/current | Tokens (current).
*curveTokens (current)ASync* | *GET* /dapps/curve/tokens/current | Tokens (current).
*curveTransferOwnershipEvents (current)Sync* | *GET* /dapps/curve/transferOwnershipEvents/current | TransferOwnershipEvents (current).
*curveTransferOwnershipEvents (current)ASync* | *GET* /dapps/curve/transferOwnershipEvents/current | TransferOwnershipEvents (current).
*curveUnderlyingCoins (current)Sync* | *GET* /dapps/curve/underlyingCoins/current | UnderlyingCoins (current).
*curveUnderlyingCoins (current)ASync* | *GET* /dapps/curve/underlyingCoins/current | UnderlyingCoins (current).
*curveVotingApps (current)Sync* | *GET* /dapps/curve/votingApps/current | VotingApps (current).
*curveVotingApps (current)ASync* | *GET* /dapps/curve/votingApps/current | VotingApps (current).
*curveWeeklyVolumes (current)Sync* | *GET* /dapps/curve/weeklyVolumes/current | WeeklyVolumes (current).
*curveWeeklyVolumes (current)ASync* | *GET* /dapps/curve/weeklyVolumes/current | WeeklyVolumes (current).


### DexManager
Method | HTTP request | Description
------------- | ------------- | -------------
*dexBatchs (current)Sync* | *GET* /dapps/dex/batchs/current | Batchs (current).
*dexBatchs (current)ASync* | *GET* /dapps/dex/batchs/current | Batchs (current).
*dexDeposits (current)Sync* | *GET* /dapps/dex/deposits/current | Deposits (current).
*dexDeposits (current)ASync* | *GET* /dapps/dex/deposits/current | Deposits (current).
*dexGetBatchs (historical)Sync* | *GET* /dapps/dex/batchs/historical | Batchs (historical) 🔥.
*dexGetBatchs (historical)ASync* | *GET* /dapps/dex/batchs/historical | Batchs (historical) 🔥.
*dexGetDeposits (historical)Sync* | *GET* /dapps/dex/deposits/historical | Deposits (historical) 🔥.
*dexGetDeposits (historical)ASync* | *GET* /dapps/dex/deposits/historical | Deposits (historical) 🔥.
*dexGetOrders (historical)Sync* | *GET* /dapps/dex/orders/historical | Orders (historical) 🔥.
*dexGetOrders (historical)ASync* | *GET* /dapps/dex/orders/historical | Orders (historical) 🔥.
*dexGetPrices (historical)Sync* | *GET* /dapps/dex/prices/historical | Prices (historical) 🔥.
*dexGetPrices (historical)ASync* | *GET* /dapps/dex/prices/historical | Prices (historical) 🔥.
*dexGetSolutions (historical)Sync* | *GET* /dapps/dex/solutions/historical | Solutions (historical) 🔥.
*dexGetSolutions (historical)ASync* | *GET* /dapps/dex/solutions/historical | Solutions (historical) 🔥.
*dexGetStatss (historical)Sync* | *GET* /dapps/dex/statss/historical | Statss (historical) 🔥.
*dexGetStatss (historical)ASync* | *GET* /dapps/dex/statss/historical | Statss (historical) 🔥.
*dexGetTokens (historical)Sync* | *GET* /dapps/dex/tokens/historical | Tokens (historical) 🔥.
*dexGetTokens (historical)ASync* | *GET* /dapps/dex/tokens/historical | Tokens (historical) 🔥.
*dexGetTrades (historical)Sync* | *GET* /dapps/dex/trades/historical | Trades (historical) 🔥.
*dexGetTrades (historical)ASync* | *GET* /dapps/dex/trades/historical | Trades (historical) 🔥.
*dexGetUsers (historical)Sync* | *GET* /dapps/dex/users/historical | Users (historical) 🔥.
*dexGetUsers (historical)ASync* | *GET* /dapps/dex/users/historical | Users (historical) 🔥.
*dexGetWithdrawRequests (historical)Sync* | *GET* /dapps/dex/withdrawRequests/historical | WithdrawRequests (historical) 🔥.
*dexGetWithdrawRequests (historical)ASync* | *GET* /dapps/dex/withdrawRequests/historical | WithdrawRequests (historical) 🔥.
*dexGetWithdraws (historical)Sync* | *GET* /dapps/dex/withdraws/historical | Withdraws (historical) 🔥.
*dexGetWithdraws (historical)ASync* | *GET* /dapps/dex/withdraws/historical | Withdraws (historical) 🔥.
*dexOrders (current)Sync* | *GET* /dapps/dex/orders/current | Orders (current).
*dexOrders (current)ASync* | *GET* /dapps/dex/orders/current | Orders (current).
*dexPrices (current)Sync* | *GET* /dapps/dex/prices/current | Prices (current).
*dexPrices (current)ASync* | *GET* /dapps/dex/prices/current | Prices (current).
*dexSolutions (current)Sync* | *GET* /dapps/dex/solutions/current | Solutions (current).
*dexSolutions (current)ASync* | *GET* /dapps/dex/solutions/current | Solutions (current).
*dexStatss (current)Sync* | *GET* /dapps/dex/statss/current | Statss (current).
*dexStatss (current)ASync* | *GET* /dapps/dex/statss/current | Statss (current).
*dexTokens (current)Sync* | *GET* /dapps/dex/tokens/current | Tokens (current).
*dexTokens (current)ASync* | *GET* /dapps/dex/tokens/current | Tokens (current).
*dexTrades (current)Sync* | *GET* /dapps/dex/trades/current | Trades (current).
*dexTrades (current)ASync* | *GET* /dapps/dex/trades/current | Trades (current).
*dexUsers (current)Sync* | *GET* /dapps/dex/users/current | Users (current).
*dexUsers (current)ASync* | *GET* /dapps/dex/users/current | Users (current).
*dexWithdrawRequests (current)Sync* | *GET* /dapps/dex/withdrawRequests/current | WithdrawRequests (current).
*dexWithdrawRequests (current)ASync* | *GET* /dapps/dex/withdrawRequests/current | WithdrawRequests (current).
*dexWithdraws (current)Sync* | *GET* /dapps/dex/withdraws/current | Withdraws (current).
*dexWithdraws (current)ASync* | *GET* /dapps/dex/withdraws/current | Withdraws (current).


### SushiswapManager
Method | HTTP request | Description
------------- | ------------- | -------------
*sushiswapBundles (current)Sync* | *GET* /dapps/sushiswap/bundles/current | Bundles (current).
*sushiswapBundles (current)ASync* | *GET* /dapps/sushiswap/bundles/current | Bundles (current).
*sushiswapBurns (current)Sync* | *GET* /dapps/sushiswap/burns/current | Burns (current).
*sushiswapBurns (current)ASync* | *GET* /dapps/sushiswap/burns/current | Burns (current).
*sushiswapDayDatas (current)Sync* | *GET* /dapps/sushiswap/dayDatas/current | DayDatas (current).
*sushiswapDayDatas (current)ASync* | *GET* /dapps/sushiswap/dayDatas/current | DayDatas (current).
*sushiswapFactorys (current)Sync* | *GET* /dapps/sushiswap/factorys/current | Factorys (current).
*sushiswapFactorys (current)ASync* | *GET* /dapps/sushiswap/factorys/current | Factorys (current).
*sushiswapGetBundles (historical)Sync* | *GET* /dapps/sushiswap/bundles/historical | Bundles (historical) 🔥.
*sushiswapGetBundles (historical)ASync* | *GET* /dapps/sushiswap/bundles/historical | Bundles (historical) 🔥.
*sushiswapGetBurns (historical)Sync* | *GET* /dapps/sushiswap/burns/historical | Burns (historical) 🔥.
*sushiswapGetBurns (historical)ASync* | *GET* /dapps/sushiswap/burns/historical | Burns (historical) 🔥.
*sushiswapGetDayDatas (historical)Sync* | *GET* /dapps/sushiswap/dayDatas/historical | DayDatas (historical) 🔥.
*sushiswapGetDayDatas (historical)ASync* | *GET* /dapps/sushiswap/dayDatas/historical | DayDatas (historical) 🔥.
*sushiswapGetFactorys (historical)Sync* | *GET* /dapps/sushiswap/factorys/historical | Factorys (historical) 🔥.
*sushiswapGetFactorys (historical)ASync* | *GET* /dapps/sushiswap/factorys/historical | Factorys (historical) 🔥.
*sushiswapGetHourDatas (historical)Sync* | *GET* /dapps/sushiswap/hourDatas/historical | HourDatas (historical) 🔥.
*sushiswapGetHourDatas (historical)ASync* | *GET* /dapps/sushiswap/hourDatas/historical | HourDatas (historical) 🔥.
*sushiswapGetLiquidityPositionSnapshots (historical)Sync* | *GET* /dapps/sushiswap/liquidityPositionSnapshots/historical | LiquidityPositionSnapshots (historical) 🔥.
*sushiswapGetLiquidityPositionSnapshots (historical)ASync* | *GET* /dapps/sushiswap/liquidityPositionSnapshots/historical | LiquidityPositionSnapshots (historical) 🔥.
*sushiswapGetLiquidityPositions (historical)Sync* | *GET* /dapps/sushiswap/liquidityPositions/historical | LiquidityPositions (historical) 🔥.
*sushiswapGetLiquidityPositions (historical)ASync* | *GET* /dapps/sushiswap/liquidityPositions/historical | LiquidityPositions (historical) 🔥.
*sushiswapGetMints (historical)Sync* | *GET* /dapps/sushiswap/mints/historical | Mints (historical) 🔥.
*sushiswapGetMints (historical)ASync* | *GET* /dapps/sushiswap/mints/historical | Mints (historical) 🔥.
*sushiswapGetPairDayDatas (historical)Sync* | *GET* /dapps/sushiswap/pairDayDatas/historical | PairDayDatas (historical) 🔥.
*sushiswapGetPairDayDatas (historical)ASync* | *GET* /dapps/sushiswap/pairDayDatas/historical | PairDayDatas (historical) 🔥.
*sushiswapGetPairHourDatas (historical)Sync* | *GET* /dapps/sushiswap/pairHourDatas/historical | PairHourDatas (historical) 🔥.
*sushiswapGetPairHourDatas (historical)ASync* | *GET* /dapps/sushiswap/pairHourDatas/historical | PairHourDatas (historical) 🔥.
*sushiswapGetPairs (historical)Sync* | *GET* /dapps/sushiswap/pairs/historical | Pairs (historical) 🔥.
*sushiswapGetPairs (historical)ASync* | *GET* /dapps/sushiswap/pairs/historical | Pairs (historical) 🔥.
*sushiswapGetSwaps (historical)Sync* | *GET* /dapps/sushiswap/swaps/historical | Swaps (historical) 🔥.
*sushiswapGetSwaps (historical)ASync* | *GET* /dapps/sushiswap/swaps/historical | Swaps (historical) 🔥.
*sushiswapGetTokenDayDatas (historical)Sync* | *GET* /dapps/sushiswap/tokenDayDatas/historical | TokenDayDatas (historical) 🔥.
*sushiswapGetTokenDayDatas (historical)ASync* | *GET* /dapps/sushiswap/tokenDayDatas/historical | TokenDayDatas (historical) 🔥.
*sushiswapGetTokens (historical)Sync* | *GET* /dapps/sushiswap/tokens/historical | Tokens (historical) 🔥.
*sushiswapGetTokens (historical)ASync* | *GET* /dapps/sushiswap/tokens/historical | Tokens (historical) 🔥.
*sushiswapGetTransactions (historical)Sync* | *GET* /dapps/sushiswap/transactions/historical | Transactions (historical) 🔥.
*sushiswapGetTransactions (historical)ASync* | *GET* /dapps/sushiswap/transactions/historical | Transactions (historical) 🔥.
*sushiswapGetUsers (historical)Sync* | *GET* /dapps/sushiswap/users/historical | Users (historical) 🔥.
*sushiswapGetUsers (historical)ASync* | *GET* /dapps/sushiswap/users/historical | Users (historical) 🔥.
*sushiswapHourDatas (current)Sync* | *GET* /dapps/sushiswap/hourDatas/current | HourDatas (current).
*sushiswapHourDatas (current)ASync* | *GET* /dapps/sushiswap/hourDatas/current | HourDatas (current).
*sushiswapLiquidityPositionSnapshots (current)Sync* | *GET* /dapps/sushiswap/liquidityPositionSnapshots/current | LiquidityPositionSnapshots (current).
*sushiswapLiquidityPositionSnapshots (current)ASync* | *GET* /dapps/sushiswap/liquidityPositionSnapshots/current | LiquidityPositionSnapshots (current).
*sushiswapLiquidityPositions (current)Sync* | *GET* /dapps/sushiswap/liquidityPositions/current | LiquidityPositions (current).
*sushiswapLiquidityPositions (current)ASync* | *GET* /dapps/sushiswap/liquidityPositions/current | LiquidityPositions (current).
*sushiswapMints (current)Sync* | *GET* /dapps/sushiswap/mints/current | Mints (current).
*sushiswapMints (current)ASync* | *GET* /dapps/sushiswap/mints/current | Mints (current).
*sushiswapPairDayDatas (current)Sync* | *GET* /dapps/sushiswap/pairDayDatas/current | PairDayDatas (current).
*sushiswapPairDayDatas (current)ASync* | *GET* /dapps/sushiswap/pairDayDatas/current | PairDayDatas (current).
*sushiswapPairHourDatas (current)Sync* | *GET* /dapps/sushiswap/pairHourDatas/current | PairHourDatas (current).
*sushiswapPairHourDatas (current)ASync* | *GET* /dapps/sushiswap/pairHourDatas/current | PairHourDatas (current).
*sushiswapPairs (current)Sync* | *GET* /dapps/sushiswap/pairs/current | Pairs (current).
*sushiswapPairs (current)ASync* | *GET* /dapps/sushiswap/pairs/current | Pairs (current).
*sushiswapSwaps (current)Sync* | *GET* /dapps/sushiswap/swaps/current | Swaps (current).
*sushiswapSwaps (current)ASync* | *GET* /dapps/sushiswap/swaps/current | Swaps (current).
*sushiswapTokenDayDatas (current)Sync* | *GET* /dapps/sushiswap/tokenDayDatas/current | TokenDayDatas (current).
*sushiswapTokenDayDatas (current)ASync* | *GET* /dapps/sushiswap/tokenDayDatas/current | TokenDayDatas (current).
*sushiswapTokens (current)Sync* | *GET* /dapps/sushiswap/tokens/current | Tokens (current).
*sushiswapTokens (current)ASync* | *GET* /dapps/sushiswap/tokens/current | Tokens (current).
*sushiswapTransactions (current)Sync* | *GET* /dapps/sushiswap/transactions/current | Transactions (current).
*sushiswapTransactions (current)ASync* | *GET* /dapps/sushiswap/transactions/current | Transactions (current).
*sushiswapUsers (current)Sync* | *GET* /dapps/sushiswap/users/current | Users (current).
*sushiswapUsers (current)ASync* | *GET* /dapps/sushiswap/users/current | Users (current).


### UniswapV2Manager
Method | HTTP request | Description
------------- | ------------- | -------------
*uniswapV2Bundles (current)Sync* | *GET* /dapps/uniswapv2/bundles/current | Bundles (current).
*uniswapV2Bundles (current)ASync* | *GET* /dapps/uniswapv2/bundles/current | Bundles (current).
*uniswapV2Burns (current)Sync* | *GET* /dapps/uniswapv2/burns/current | Burns (current).
*uniswapV2Burns (current)ASync* | *GET* /dapps/uniswapv2/burns/current | Burns (current).
*uniswapV2GetBundles (historical)Sync* | *GET* /dapps/uniswapv2/bundles/historical | Bundles (historical) 🔥.
*uniswapV2GetBundles (historical)ASync* | *GET* /dapps/uniswapv2/bundles/historical | Bundles (historical) 🔥.
*uniswapV2GetBurns (historical)Sync* | *GET* /dapps/uniswapv2/burns/historical | Burns (historical) 🔥.
*uniswapV2GetBurns (historical)ASync* | *GET* /dapps/uniswapv2/burns/historical | Burns (historical) 🔥.
*uniswapV2GetLiquidityPositionSnapshots (historical)Sync* | *GET* /dapps/uniswapv2/liquidityPositionSnapshots/historical | LiquidityPositionSnapshots (historical) 🔥.
*uniswapV2GetLiquidityPositionSnapshots (historical)ASync* | *GET* /dapps/uniswapv2/liquidityPositionSnapshots/historical | LiquidityPositionSnapshots (historical) 🔥.
*uniswapV2GetLiquidityPositions (historical)Sync* | *GET* /dapps/uniswapv2/liquidityPositions/historical | LiquidityPositions (historical) 🔥.
*uniswapV2GetLiquidityPositions (historical)ASync* | *GET* /dapps/uniswapv2/liquidityPositions/historical | LiquidityPositions (historical) 🔥.
*uniswapV2GetMints (historical)Sync* | *GET* /dapps/uniswapv2/mints/historical | Mints (historical) 🔥.
*uniswapV2GetMints (historical)ASync* | *GET* /dapps/uniswapv2/mints/historical | Mints (historical) 🔥.
*uniswapV2GetPairDayDatas (historical)Sync* | *GET* /dapps/uniswapv2/pairDayDatas/historical | PairDayDatas (historical) 🔥.
*uniswapV2GetPairDayDatas (historical)ASync* | *GET* /dapps/uniswapv2/pairDayDatas/historical | PairDayDatas (historical) 🔥.
*uniswapV2GetPairHourDatas (historical)Sync* | *GET* /dapps/uniswapv2/pairHourDatas/historical | PairHourDatas (historical) 🔥.
*uniswapV2GetPairHourDatas (historical)ASync* | *GET* /dapps/uniswapv2/pairHourDatas/historical | PairHourDatas (historical) 🔥.
*uniswapV2GetPairs (historical)Sync* | *GET* /dapps/uniswapv2/pairs/historical | Pairs (historical) 🔥.
*uniswapV2GetPairs (historical)ASync* | *GET* /dapps/uniswapv2/pairs/historical | Pairs (historical) 🔥.
*uniswapV2GetSwaps (historical)Sync* | *GET* /dapps/uniswapv2/swaps/historical | Swaps (historical) 🔥.
*uniswapV2GetSwaps (historical)ASync* | *GET* /dapps/uniswapv2/swaps/historical | Swaps (historical) 🔥.
*uniswapV2GetTokenDayDatas (historical)Sync* | *GET* /dapps/uniswapv2/tokenDayDatas/historical | TokenDayDatas (historical) 🔥.
*uniswapV2GetTokenDayDatas (historical)ASync* | *GET* /dapps/uniswapv2/tokenDayDatas/historical | TokenDayDatas (historical) 🔥.
*uniswapV2GetTokens (historical)Sync* | *GET* /dapps/uniswapv2/tokens/historical | Tokens (historical) 🔥.
*uniswapV2GetTokens (historical)ASync* | *GET* /dapps/uniswapv2/tokens/historical | Tokens (historical) 🔥.
*uniswapV2GetTransactions (historical)Sync* | *GET* /dapps/uniswapv2/transactions/historical | Transactions (historical) 🔥.
*uniswapV2GetTransactions (historical)ASync* | *GET* /dapps/uniswapv2/transactions/historical | Transactions (historical) 🔥.
*uniswapV2GetUniswapDayDatas (historical)Sync* | *GET* /dapps/uniswapv2/uniswapDayDatas/historical | UniswapDayDatas (historical) 🔥.
*uniswapV2GetUniswapDayDatas (historical)ASync* | *GET* /dapps/uniswapv2/uniswapDayDatas/historical | UniswapDayDatas (historical) 🔥.
*uniswapV2GetUniswapFactorys (historical)Sync* | *GET* /dapps/uniswapv2/uniswapFactorys/historical | UniswapFactorys (historical) 🔥.
*uniswapV2GetUniswapFactorys (historical)ASync* | *GET* /dapps/uniswapv2/uniswapFactorys/historical | UniswapFactorys (historical) 🔥.
*uniswapV2GetUsers (historical)Sync* | *GET* /dapps/uniswapv2/users/historical | Users (historical) 🔥.
*uniswapV2GetUsers (historical)ASync* | *GET* /dapps/uniswapv2/users/historical | Users (historical) 🔥.
*uniswapV2LiquidityPositionSnapshots (current)Sync* | *GET* /dapps/uniswapv2/liquidityPositionSnapshots/current | LiquidityPositionSnapshots (current).
*uniswapV2LiquidityPositionSnapshots (current)ASync* | *GET* /dapps/uniswapv2/liquidityPositionSnapshots/current | LiquidityPositionSnapshots (current).
*uniswapV2LiquidityPositions (current)Sync* | *GET* /dapps/uniswapv2/liquidityPositions/current | LiquidityPositions (current).
*uniswapV2LiquidityPositions (current)ASync* | *GET* /dapps/uniswapv2/liquidityPositions/current | LiquidityPositions (current).
*uniswapV2Mints (current)Sync* | *GET* /dapps/uniswapv2/mints/current | Mints (current).
*uniswapV2Mints (current)ASync* | *GET* /dapps/uniswapv2/mints/current | Mints (current).
*uniswapV2PairDayDatas (current)Sync* | *GET* /dapps/uniswapv2/pairDayDatas/current | PairDayDatas (current).
*uniswapV2PairDayDatas (current)ASync* | *GET* /dapps/uniswapv2/pairDayDatas/current | PairDayDatas (current).
*uniswapV2PairHourDatas (current)Sync* | *GET* /dapps/uniswapv2/pairHourDatas/current | PairHourDatas (current).
*uniswapV2PairHourDatas (current)ASync* | *GET* /dapps/uniswapv2/pairHourDatas/current | PairHourDatas (current).
*uniswapV2Pairs (current)Sync* | *GET* /dapps/uniswapv2/pairs/current | Pairs (current).
*uniswapV2Pairs (current)ASync* | *GET* /dapps/uniswapv2/pairs/current | Pairs (current).
*uniswapV2Swaps (current)Sync* | *GET* /dapps/uniswapv2/swaps/current | Swaps (current).
*uniswapV2Swaps (current)ASync* | *GET* /dapps/uniswapv2/swaps/current | Swaps (current).
*uniswapV2TokenDayDatas (current)Sync* | *GET* /dapps/uniswapv2/tokenDayDatas/current | TokenDayDatas (current).
*uniswapV2TokenDayDatas (current)ASync* | *GET* /dapps/uniswapv2/tokenDayDatas/current | TokenDayDatas (current).
*uniswapV2Tokens (current)Sync* | *GET* /dapps/uniswapv2/tokens/current | Tokens (current).
*uniswapV2Tokens (current)ASync* | *GET* /dapps/uniswapv2/tokens/current | Tokens (current).
*uniswapV2Transactions (current)Sync* | *GET* /dapps/uniswapv2/transactions/current | Transactions (current).
*uniswapV2Transactions (current)ASync* | *GET* /dapps/uniswapv2/transactions/current | Transactions (current).
*uniswapV2UniswapDayDatas (current)Sync* | *GET* /dapps/uniswapv2/uniswapDayDatas/current | UniswapDayDatas (current).
*uniswapV2UniswapDayDatas (current)ASync* | *GET* /dapps/uniswapv2/uniswapDayDatas/current | UniswapDayDatas (current).
*uniswapV2UniswapFactorys (current)Sync* | *GET* /dapps/uniswapv2/uniswapFactorys/current | UniswapFactorys (current).
*uniswapV2UniswapFactorys (current)ASync* | *GET* /dapps/uniswapv2/uniswapFactorys/current | UniswapFactorys (current).
*uniswapV2Users (current)Sync* | *GET* /dapps/uniswapv2/users/current | Users (current).
*uniswapV2Users (current)ASync* | *GET* /dapps/uniswapv2/users/current | Users (current).


### UniswapV3Manager
Method | HTTP request | Description
------------- | ------------- | -------------
*uniswapV3Bundles (current)Sync* | *GET* /dapps/uniswapv3/bundles/current | Bundles (current).
*uniswapV3Bundles (current)ASync* | *GET* /dapps/uniswapv3/bundles/current | Bundles (current).
*uniswapV3Burns (current)Sync* | *GET* /dapps/uniswapv3/burns/current | Burns (current).
*uniswapV3Burns (current)ASync* | *GET* /dapps/uniswapv3/burns/current | Burns (current).
*uniswapV3Factorys (current)Sync* | *GET* /dapps/uniswapv3/factorys/current | Factorys (current).
*uniswapV3Factorys (current)ASync* | *GET* /dapps/uniswapv3/factorys/current | Factorys (current).
*uniswapV3GetBundles (historical)Sync* | *GET* /dapps/uniswapv3/bundles/historical | Bundles (historical) 🔥.
*uniswapV3GetBundles (historical)ASync* | *GET* /dapps/uniswapv3/bundles/historical | Bundles (historical) 🔥.
*uniswapV3GetBurns (historical)Sync* | *GET* /dapps/uniswapv3/burns/historical | Burns (historical) 🔥.
*uniswapV3GetBurns (historical)ASync* | *GET* /dapps/uniswapv3/burns/historical | Burns (historical) 🔥.
*uniswapV3GetFactorys (historical)Sync* | *GET* /dapps/uniswapv3/factorys/historical | Factorys (historical) 🔥.
*uniswapV3GetFactorys (historical)ASync* | *GET* /dapps/uniswapv3/factorys/historical | Factorys (historical) 🔥.
*uniswapV3GetMints (historical)Sync* | *GET* /dapps/uniswapv3/mints/historical | Mints (historical) 🔥.
*uniswapV3GetMints (historical)ASync* | *GET* /dapps/uniswapv3/mints/historical | Mints (historical) 🔥.
*uniswapV3GetPoolDayDatas (historical)Sync* | *GET* /dapps/uniswapv3/poolDayDatas/historical | PoolDayDatas (historical) 🔥.
*uniswapV3GetPoolDayDatas (historical)ASync* | *GET* /dapps/uniswapv3/poolDayDatas/historical | PoolDayDatas (historical) 🔥.
*uniswapV3GetPoolHourDatas (historical)Sync* | *GET* /dapps/uniswapv3/poolHourDatas/historical | PoolHourDatas (historical) 🔥.
*uniswapV3GetPoolHourDatas (historical)ASync* | *GET* /dapps/uniswapv3/poolHourDatas/historical | PoolHourDatas (historical) 🔥.
*uniswapV3GetPools (historical)Sync* | *GET* /dapps/uniswapv3/pools/historical | Pools (historical) 🔥.
*uniswapV3GetPools (historical)ASync* | *GET* /dapps/uniswapv3/pools/historical | Pools (historical) 🔥.
*uniswapV3GetPositionSnapshots (historical)Sync* | *GET* /dapps/uniswapv3/positionSnapshots/historical | PositionSnapshots (historical) 🔥.
*uniswapV3GetPositionSnapshots (historical)ASync* | *GET* /dapps/uniswapv3/positionSnapshots/historical | PositionSnapshots (historical) 🔥.
*uniswapV3GetPositions (historical)Sync* | *GET* /dapps/uniswapv3/positions/historical | Positions (historical) 🔥.
*uniswapV3GetPositions (historical)ASync* | *GET* /dapps/uniswapv3/positions/historical | Positions (historical) 🔥.
*uniswapV3GetSwaps (historical)Sync* | *GET* /dapps/uniswapv3/swaps/historical | Swaps (historical) 🔥.
*uniswapV3GetSwaps (historical)ASync* | *GET* /dapps/uniswapv3/swaps/historical | Swaps (historical) 🔥.
*uniswapV3GetTickDayDatas (historical)Sync* | *GET* /dapps/uniswapv3/tickDayDatas/historical | TickDayDatas (historical) 🔥.
*uniswapV3GetTickDayDatas (historical)ASync* | *GET* /dapps/uniswapv3/tickDayDatas/historical | TickDayDatas (historical) 🔥.
*uniswapV3GetTicks (historical)Sync* | *GET* /dapps/uniswapv3/ticks/historical | Ticks (historical) 🔥.
*uniswapV3GetTicks (historical)ASync* | *GET* /dapps/uniswapv3/ticks/historical | Ticks (historical) 🔥.
*uniswapV3GetTokenHourDatas (historical)Sync* | *GET* /dapps/uniswapv3/tokenHourDatas/historical | TokenHourDatas (historical) 🔥.
*uniswapV3GetTokenHourDatas (historical)ASync* | *GET* /dapps/uniswapv3/tokenHourDatas/historical | TokenHourDatas (historical) 🔥.
*uniswapV3GetTokenV3DayDatas (historical)Sync* | *GET* /dapps/uniswapv3/tokenV3DayDatas/historical | TokenV3DayDatas (historical) 🔥.
*uniswapV3GetTokenV3DayDatas (historical)ASync* | *GET* /dapps/uniswapv3/tokenV3DayDatas/historical | TokenV3DayDatas (historical) 🔥.
*uniswapV3GetTokens (historical)Sync* | *GET* /dapps/uniswapv3/tokens/historical | Tokens (historical) 🔥.
*uniswapV3GetTokens (historical)ASync* | *GET* /dapps/uniswapv3/tokens/historical | Tokens (historical) 🔥.
*uniswapV3GetTransactions (historical)Sync* | *GET* /dapps/uniswapv3/transactions/historical | Transactions (historical) 🔥.
*uniswapV3GetTransactions (historical)ASync* | *GET* /dapps/uniswapv3/transactions/historical | Transactions (historical) 🔥.
*uniswapV3GetUniswapDayDatas (historical)Sync* | *GET* /dapps/uniswapv3/uniswapDayDatas/historical | UniswapDayDatas (historical) 🔥.
*uniswapV3GetUniswapDayDatas (historical)ASync* | *GET* /dapps/uniswapv3/uniswapDayDatas/historical | UniswapDayDatas (historical) 🔥.
*uniswapV3Mints (current)Sync* | *GET* /dapps/uniswapv3/mints/current | Mints (current).
*uniswapV3Mints (current)ASync* | *GET* /dapps/uniswapv3/mints/current | Mints (current).
*uniswapV3PoolDayDatas (current)Sync* | *GET* /dapps/uniswapv3/poolDayDatas/current | PoolDayDatas (current).
*uniswapV3PoolDayDatas (current)ASync* | *GET* /dapps/uniswapv3/poolDayDatas/current | PoolDayDatas (current).
*uniswapV3PoolHourDatas (current)Sync* | *GET* /dapps/uniswapv3/poolHourDatas/current | PoolHourDatas (current).
*uniswapV3PoolHourDatas (current)ASync* | *GET* /dapps/uniswapv3/poolHourDatas/current | PoolHourDatas (current).
*uniswapV3Pools (current)Sync* | *GET* /dapps/uniswapv3/pools/current | Pools (current).
*uniswapV3Pools (current)ASync* | *GET* /dapps/uniswapv3/pools/current | Pools (current).
*uniswapV3PositionSnapshots (current)Sync* | *GET* /dapps/uniswapv3/positionSnapshots/current | PositionSnapshots (current).
*uniswapV3PositionSnapshots (current)ASync* | *GET* /dapps/uniswapv3/positionSnapshots/current | PositionSnapshots (current).
*uniswapV3Positions (current)Sync* | *GET* /dapps/uniswapv3/positions/current | Positions (current).
*uniswapV3Positions (current)ASync* | *GET* /dapps/uniswapv3/positions/current | Positions (current).
*uniswapV3Swaps (current)Sync* | *GET* /dapps/uniswapv3/swaps/current | Swaps (current).
*uniswapV3Swaps (current)ASync* | *GET* /dapps/uniswapv3/swaps/current | Swaps (current).
*uniswapV3TickDayDatas (current)Sync* | *GET* /dapps/uniswapv3/tickDayDatas/current | TickDayDatas (current).
*uniswapV3TickDayDatas (current)ASync* | *GET* /dapps/uniswapv3/tickDayDatas/current | TickDayDatas (current).
*uniswapV3Ticks (current)Sync* | *GET* /dapps/uniswapv3/ticks/current | Ticks (current).
*uniswapV3Ticks (current)ASync* | *GET* /dapps/uniswapv3/ticks/current | Ticks (current).
*uniswapV3TokenHourDatas (current)Sync* | *GET* /dapps/uniswapv3/tokenHourDatas/current | TokenHourDatas (current).
*uniswapV3TokenHourDatas (current)ASync* | *GET* /dapps/uniswapv3/tokenHourDatas/current | TokenHourDatas (current).
*uniswapV3TokenV3DayDatas (current)Sync* | *GET* /dapps/uniswapv3/tokenV3DayDatas/current | TokenV3DayDatas (current).
*uniswapV3TokenV3DayDatas (current)ASync* | *GET* /dapps/uniswapv3/tokenV3DayDatas/current | TokenV3DayDatas (current).
*uniswapV3Tokens (current)Sync* | *GET* /dapps/uniswapv3/tokens/current | Tokens (current).
*uniswapV3Tokens (current)ASync* | *GET* /dapps/uniswapv3/tokens/current | Tokens (current).
*uniswapV3Transactions (current)Sync* | *GET* /dapps/uniswapv3/transactions/current | Transactions (current).
*uniswapV3Transactions (current)ASync* | *GET* /dapps/uniswapv3/transactions/current | Transactions (current).
*uniswapV3UniswapDayDatas (current)Sync* | *GET* /dapps/uniswapv3/uniswapDayDatas/current | UniswapDayDatas (current).
*uniswapV3UniswapDayDatas (current)ASync* | *GET* /dapps/uniswapv3/uniswapDayDatas/current | UniswapDayDatas (current).


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
 *UniswapV2.BundleDTO* | The Bundle is used as a global store of derived ETH price in USD. Because there is no guaranteed common base token across pairs, a global reference of USD price is useful for deriving other USD values. The Bundle entity stores an updated weighted average of ETH<->Stablecoin pair prices. This provides a strong estimate for the USD price of ETH.
 *UniswapV2.BurnDTO* | Burn entities are created for every emitted Burn event on the Uniswap core contracts. The Burn entity stores key data about the event like token amounts, who burned LP tokens, who received tokens, and more. This entity can be used to track liquidity removals on pairs.
 *UniswapV2.LiquidityPositionDTO* | This entity is used to store data about a user's liquidity position. This information, along with information from the pair itself can be used to provide position sizes, token deposits, and more.
 *UniswapV2.LiquidityPositionSnapshotDTO* | This entity is used to store data about a user's liquidity position over time. This information, along with information from the pair itself can be used to provide position sizes, token deposits, and more. It gets created and never updated.
 *UniswapV2.MintDTO* | Mint entities are created for every emitted Mint event on the Uniswap core contracts. The Mint entity stores key data about the event like token amounts, who sent the transaction, who received the liquidity, and more. This entity can be used to track liquidity provisions on pairs.
 *UniswapV2.PairDTO* | Information about a pair. Includes references to each token within the pair, volume information, liquidity information, and more. The pair entity mirrors the pair smart contract, and also contains aggregated information about use.
 *UniswapV2.PairDayDataDTO* | Tracks pair data across each day.
 *UniswapV2.PairHourDataDTO* | Tracks pair data across each hour.
 *UniswapV2.SwapDTO* | Swap are created for each token swap within a pair.
 *UniswapV2.TokenDTO* | Stores aggregated information for a specific token across all pairs that token is included in.
 *UniswapV2.TokenDayDataDTO* | Token data aggregated across all pairs that include token.
 *UniswapV2.TransactionDTO* | Transaction entities are created for each Ethereum transaction that contains an interaction within Uniswap contracts. Each transaction contains 3 arrays, and at least one of these arrays has a length of 1.
 *UniswapV2.UniswapDayDataDTO* | Tracks data across all pairs aggregated into a daily bucket.
 *UniswapV2.UniswapFactoryDTO* | The Uniswap Factory entity is responsible for storing aggregate information across all Uniswap pairs. It can be used to view stats about total liquidity, volume, amount of pairs and more.
 *UniswapV2.UserDTO* | A user entity is created for any address that provides liquidity to a pool on Uniswap. This entity can be used to track open positions for users.
 *UniswapV3.BundleDTO* | The Bundle is used as a global store of derived ETH price in USD. This provides a strong estimate for the USD price of ETH.
 *UniswapV3.BurnDTO* | Burn entities are created for every emitted Burn event on the Uniswap core contracts. The Burn entity stores key data about the event like token amounts, who burned, who received tokens, and more. This entity can be used to track liquidity removals on pairs.
 *UniswapV3.FactoryDTO* | The Uniswap Factory entity is responsible for storing aggregate information across all Uniswap pairs. It can be used to view stats about total liquidity, volume, amount of pairs and more.
 *UniswapV3.MintDTO* | Mint entities are created for every emitted Mint event on the Uniswap core contracts. The Mint entity stores key data about the event like token amounts, who sent the transaction, and more.
 *UniswapV3.PoolDTO* | Information about a pool. Includes references to each token within the pool, volume information, liquidity information, and more. The pool entity mirrors the pool smart contract, and also contains aggregated information about use.
 *UniswapV3.PoolDayDataDTO* | Data accumulated and condensed into day stats for each pool.
 *UniswapV3.PoolHourDataDTO* | Hourly stats tracker for pool.
 *UniswapV3.PositionDTO* | Positions created through NonfungiblePositionManager. Positions are represented as NFTs (ERC-721 tokens) as opposed to the fungible ERC-20 tokens on Uniswap V1 and V2.
 *UniswapV3.PositionSnapshotDTO* | 
 *UniswapV3.SwapDTO* | Swap are created for each token swap within a pair.
 *UniswapV3.TickDTO* | Ticks are the boundaries between discrete areas in price space.
 *UniswapV3.TickDayDataDTO* | Data accumulated and condensed into day stats for each exchange. Entity gets saved only if there is a change during the day
 *UniswapV3.TokenDTO* | Stores aggregated information for a specific token across all pairs that token is included in.
 *UniswapV3.TokenHourDataDTO* | Token data aggregated across all pairs that include token.
 *UniswapV3.TokenV3DayDataDTO* | Token data aggregated across all pairs that include token.
 *UniswapV3.TransactionDTO* | 
 *UniswapV3.UniswapDayDataDTO* | Data accumulated and condensed into day stats for all of Uniswap.

