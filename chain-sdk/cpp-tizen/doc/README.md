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
*cowGetOrderDTOs (historical)Sync* | *GET* /dapps/cow/OrderDTOs/historical | OrderDTOs (historical) 🔥.
*cowGetOrderDTOs (historical)ASync* | *GET* /dapps/cow/OrderDTOs/historical | OrderDTOs (historical) 🔥.
*cowGetOrders (historical)Sync* | *GET* /dapps/cow/orders/historical | Orders (historical).
*cowGetOrders (historical)ASync* | *GET* /dapps/cow/orders/historical | Orders (historical).
*cowGetSettlementDTOs (historical)Sync* | *GET* /dapps/cow/SettlementDTOs/historical | SettlementDTOs (historical) 🔥.
*cowGetSettlementDTOs (historical)ASync* | *GET* /dapps/cow/SettlementDTOs/historical | SettlementDTOs (historical) 🔥.
*cowGetSettlements (historical)Sync* | *GET* /dapps/cow/settlements/historical | Settlements (historical).
*cowGetSettlements (historical)ASync* | *GET* /dapps/cow/settlements/historical | Settlements (historical).
*cowGetTokenDTOs (historical)Sync* | *GET* /dapps/cow/TokenDTOs/historical | TokenDTOs (historical) 🔥.
*cowGetTokenDTOs (historical)ASync* | *GET* /dapps/cow/TokenDTOs/historical | TokenDTOs (historical) 🔥.
*cowGetTokens (historical)Sync* | *GET* /dapps/cow/tokens/historical | Tokens (historical) 🔥.
*cowGetTokens (historical)ASync* | *GET* /dapps/cow/tokens/historical | Tokens (historical) 🔥.
*cowGetTradeDTOs (historical)Sync* | *GET* /dapps/cow/TradeDTOs/historical | TradeDTOs (historical) 🔥.
*cowGetTradeDTOs (historical)ASync* | *GET* /dapps/cow/TradeDTOs/historical | TradeDTOs (historical) 🔥.
*cowGetTrades (historical)Sync* | *GET* /dapps/cow/trades/historical | Trades (historical) 🔥.
*cowGetTrades (historical)ASync* | *GET* /dapps/cow/trades/historical | Trades (historical) 🔥.
*cowGetUserDTOs (historical)Sync* | *GET* /dapps/cow/UserDTOs/historical | UserDTOs (historical) 🔥.
*cowGetUserDTOs (historical)ASync* | *GET* /dapps/cow/UserDTOs/historical | UserDTOs (historical) 🔥.
*cowGetUsers (historical)Sync* | *GET* /dapps/cow/users/historical | Users (historical).
*cowGetUsers (historical)ASync* | *GET* /dapps/cow/users/historical | Users (historical).


### CurveManager
Method | HTTP request | Description
------------- | ------------- | -------------
*curveGetAccountDTOs (historical)Sync* | *GET* /dapps/curve/AccountDTOs/historical | AccountDTOs (historical) 🔥.
*curveGetAccountDTOs (historical)ASync* | *GET* /dapps/curve/AccountDTOs/historical | AccountDTOs (historical) 🔥.
*curveGetAccounts (historical)Sync* | *GET* /dapps/curve/accounts/historical | Accounts (historical).
*curveGetAccounts (historical)ASync* | *GET* /dapps/curve/accounts/historical | Accounts (historical).
*curveGetAddLiquidityEventDTOs (historical)Sync* | *GET* /dapps/curve/AddLiquidityEventDTOs/historical | AddLiquidityEventDTOs (historical) 🔥.
*curveGetAddLiquidityEventDTOs (historical)ASync* | *GET* /dapps/curve/AddLiquidityEventDTOs/historical | AddLiquidityEventDTOs (historical) 🔥.
*curveGetAddLiquidityEvents (historical)Sync* | *GET* /dapps/curve/addLiquidityEvents/historical | AddLiquidityEvents (historical).
*curveGetAddLiquidityEvents (historical)ASync* | *GET* /dapps/curve/addLiquidityEvents/historical | AddLiquidityEvents (historical).
*curveGetAdminFeeChangeLogDTOs (historical)Sync* | *GET* /dapps/curve/AdminFeeChangeLogDTOs/historical | AdminFeeChangeLogDTOs (historical) 🔥.
*curveGetAdminFeeChangeLogDTOs (historical)ASync* | *GET* /dapps/curve/AdminFeeChangeLogDTOs/historical | AdminFeeChangeLogDTOs (historical) 🔥.
*curveGetAdminFeeChangeLogs (historical)Sync* | *GET* /dapps/curve/adminFeeChangeLogs/historical | AdminFeeChangeLogs (historical).
*curveGetAdminFeeChangeLogs (historical)ASync* | *GET* /dapps/curve/adminFeeChangeLogs/historical | AdminFeeChangeLogs (historical).
*curveGetAmplificationCoeffChangeLogDTOs (historical)Sync* | *GET* /dapps/curve/AmplificationCoeffChangeLogDTOs/historical | AmplificationCoeffChangeLogDTOs (historical) 🔥.
*curveGetAmplificationCoeffChangeLogDTOs (historical)ASync* | *GET* /dapps/curve/AmplificationCoeffChangeLogDTOs/historical | AmplificationCoeffChangeLogDTOs (historical) 🔥.
*curveGetAmplificationCoeffChangeLogs (historical)Sync* | *GET* /dapps/curve/amplificationCoeffChangeLogs/historical | AmplificationCoeffChangeLogs (historical).
*curveGetAmplificationCoeffChangeLogs (historical)ASync* | *GET* /dapps/curve/amplificationCoeffChangeLogs/historical | AmplificationCoeffChangeLogs (historical).
*curveGetCoinDTOs (historical)Sync* | *GET* /dapps/curve/CoinDTOs/historical | CoinDTOs (historical) 🔥.
*curveGetCoinDTOs (historical)ASync* | *GET* /dapps/curve/CoinDTOs/historical | CoinDTOs (historical) 🔥.
*curveGetCoins (historical)Sync* | *GET* /dapps/curve/coins/historical | Coins (historical).
*curveGetCoins (historical)ASync* | *GET* /dapps/curve/coins/historical | Coins (historical).
*curveGetContractDTOs (historical)Sync* | *GET* /dapps/curve/ContractDTOs/historical | ContractDTOs (historical) 🔥.
*curveGetContractDTOs (historical)ASync* | *GET* /dapps/curve/ContractDTOs/historical | ContractDTOs (historical) 🔥.
*curveGetContractVersionDTOs (historical)Sync* | *GET* /dapps/curve/ContractVersionDTOs/historical | ContractVersionDTOs (historical) 🔥.
*curveGetContractVersionDTOs (historical)ASync* | *GET* /dapps/curve/ContractVersionDTOs/historical | ContractVersionDTOs (historical) 🔥.
*curveGetContracts (historical)Sync* | *GET* /dapps/curve/contracts/historical | Contracts (historical).
*curveGetContracts (historical)ASync* | *GET* /dapps/curve/contracts/historical | Contracts (historical).
*curveGetContractsVersions (historical)Sync* | *GET* /dapps/curve/contractsVersions/historical | ContractsVersions (historical).
*curveGetContractsVersions (historical)ASync* | *GET* /dapps/curve/contractsVersions/historical | ContractsVersions (historical).
*curveGetDailyVolumeDTOs (historical)Sync* | *GET* /dapps/curve/DailyVolumeDTOs/historical | DailyVolumeDTOs (historical) 🔥.
*curveGetDailyVolumeDTOs (historical)ASync* | *GET* /dapps/curve/DailyVolumeDTOs/historical | DailyVolumeDTOs (historical) 🔥.
*curveGetDailyVolumes (historical)Sync* | *GET* /dapps/curve/dailyVolumes/historical | DailyVolumes (historical).
*curveGetDailyVolumes (historical)ASync* | *GET* /dapps/curve/dailyVolumes/historical | DailyVolumes (historical).
*curveGetExchangeDTOs (historical)Sync* | *GET* /dapps/curve/ExchangeDTOs/historical | ExchangeDTOs (historical) 🔥.
*curveGetExchangeDTOs (historical)ASync* | *GET* /dapps/curve/ExchangeDTOs/historical | ExchangeDTOs (historical) 🔥.
*curveGetExchanges (historical)Sync* | *GET* /dapps/curve/exchanges/historical | Exchanges (historical) 🔥.
*curveGetExchanges (historical)ASync* | *GET* /dapps/curve/exchanges/historical | Exchanges (historical) 🔥.
*curveGetFeeChangeLogDTOs (historical)Sync* | *GET* /dapps/curve/FeeChangeLogDTOs/historical | FeeChangeLogDTOs (historical) 🔥.
*curveGetFeeChangeLogDTOs (historical)ASync* | *GET* /dapps/curve/FeeChangeLogDTOs/historical | FeeChangeLogDTOs (historical) 🔥.
*curveGetFeeChangeLogs (historical)Sync* | *GET* /dapps/curve/feeChangeLogs/historical | FeeChangeLogs (historical).
*curveGetFeeChangeLogs (historical)ASync* | *GET* /dapps/curve/feeChangeLogs/historical | FeeChangeLogs (historical).
*curveGetGaugeDTOs (historical)Sync* | *GET* /dapps/curve/GaugeDTOs/historical | GaugeDTOs (historical) 🔥.
*curveGetGaugeDTOs (historical)ASync* | *GET* /dapps/curve/GaugeDTOs/historical | GaugeDTOs (historical) 🔥.
*curveGetGaugeDepositDTOs (historical)Sync* | *GET* /dapps/curve/GaugeDepositDTOs/historical | GaugeDepositDTOs (historical) 🔥.
*curveGetGaugeDepositDTOs (historical)ASync* | *GET* /dapps/curve/GaugeDepositDTOs/historical | GaugeDepositDTOs (historical) 🔥.
*curveGetGaugeLiquidityDTOs (historical)Sync* | *GET* /dapps/curve/GaugeLiquidityDTOs/historical | GaugeLiquidityDTOs (historical) 🔥.
*curveGetGaugeLiquidityDTOs (historical)ASync* | *GET* /dapps/curve/GaugeLiquidityDTOs/historical | GaugeLiquidityDTOs (historical) 🔥.
*curveGetGaugeTotalWeightDTOs (historical)Sync* | *GET* /dapps/curve/GaugeTotalWeightDTOs/historical | GaugeTotalWeightDTOs (historical) 🔥.
*curveGetGaugeTotalWeightDTOs (historical)ASync* | *GET* /dapps/curve/GaugeTotalWeightDTOs/historical | GaugeTotalWeightDTOs (historical) 🔥.
*curveGetGaugeTypeDTOs (historical)Sync* | *GET* /dapps/curve/GaugeTypeDTOs/historical | GaugeTypeDTOs (historical) 🔥.
*curveGetGaugeTypeDTOs (historical)ASync* | *GET* /dapps/curve/GaugeTypeDTOs/historical | GaugeTypeDTOs (historical) 🔥.
*curveGetGaugeTypeWeightDTOs (historical)Sync* | *GET* /dapps/curve/GaugeTypeWeightDTOs/historical | GaugeTypeWeightDTOs (historical) 🔥.
*curveGetGaugeTypeWeightDTOs (historical)ASync* | *GET* /dapps/curve/GaugeTypeWeightDTOs/historical | GaugeTypeWeightDTOs (historical) 🔥.
*curveGetGaugeWeightDTOs (historical)Sync* | *GET* /dapps/curve/GaugeWeightDTOs/historical | GaugeWeightDTOs (historical) 🔥.
*curveGetGaugeWeightDTOs (historical)ASync* | *GET* /dapps/curve/GaugeWeightDTOs/historical | GaugeWeightDTOs (historical) 🔥.
*curveGetGaugeWeightVoteDTOs (historical)Sync* | *GET* /dapps/curve/GaugeWeightVoteDTOs/historical | GaugeWeightVoteDTOs (historical) 🔥.
*curveGetGaugeWeightVoteDTOs (historical)ASync* | *GET* /dapps/curve/GaugeWeightVoteDTOs/historical | GaugeWeightVoteDTOs (historical) 🔥.
*curveGetGaugeWithdrawDTOs (historical)Sync* | *GET* /dapps/curve/GaugeWithdrawDTOs/historical | GaugeWithdrawDTOs (historical) 🔥.
*curveGetGaugeWithdrawDTOs (historical)ASync* | *GET* /dapps/curve/GaugeWithdrawDTOs/historical | GaugeWithdrawDTOs (historical) 🔥.
*curveGetGauges (historical)Sync* | *GET* /dapps/curve/gauges/historical | Gauges (historical).
*curveGetGauges (historical)ASync* | *GET* /dapps/curve/gauges/historical | Gauges (historical).
*curveGetGaugesDeposits (historical)Sync* | *GET* /dapps/curve/gaugesDeposits/historical | GaugesDeposits (historical).
*curveGetGaugesDeposits (historical)ASync* | *GET* /dapps/curve/gaugesDeposits/historical | GaugesDeposits (historical).
*curveGetGaugesLiquidity (historical)Sync* | *GET* /dapps/curve/gaugesLiquidity/historical | GaugesLiquidity (historical).
*curveGetGaugesLiquidity (historical)ASync* | *GET* /dapps/curve/gaugesLiquidity/historical | GaugesLiquidity (historical).
*curveGetGaugesTotalWeights (historical)Sync* | *GET* /dapps/curve/gaugesTotalWeights/historical | GaugesTotalWeights (historical).
*curveGetGaugesTotalWeights (historical)ASync* | *GET* /dapps/curve/gaugesTotalWeights/historical | GaugesTotalWeights (historical).
*curveGetGaugesTypes (historical)Sync* | *GET* /dapps/curve/gaugesTypes/historical | GaugesTypes (historical).
*curveGetGaugesTypes (historical)ASync* | *GET* /dapps/curve/gaugesTypes/historical | GaugesTypes (historical).
*curveGetGaugesTypesWeights (historical)Sync* | *GET* /dapps/curve/gaugesTypesWeights/historical | GaugesTypesWeights (historical).
*curveGetGaugesTypesWeights (historical)ASync* | *GET* /dapps/curve/gaugesTypesWeights/historical | GaugesTypesWeights (historical).
*curveGetGaugesWeights (historical)Sync* | *GET* /dapps/curve/gaugesWeights/historical | GaugesWeights (historical).
*curveGetGaugesWeights (historical)ASync* | *GET* /dapps/curve/gaugesWeights/historical | GaugesWeights (historical).
*curveGetGaugesWeightsVotes (historical)Sync* | *GET* /dapps/curve/gaugesWeightsVotes/historical | GaugesWeightsVotes (historical).
*curveGetGaugesWeightsVotes (historical)ASync* | *GET* /dapps/curve/gaugesWeightsVotes/historical | GaugesWeightsVotes (historical).
*curveGetGaugesWithdraw (historical)Sync* | *GET* /dapps/curve/gaugesWithdraws/historical | GaugesWithdraw (historical).
*curveGetGaugesWithdraw (historical)ASync* | *GET* /dapps/curve/gaugesWithdraws/historical | GaugesWithdraw (historical).
*curveGetHourlyVolumeDTOs (historical)Sync* | *GET* /dapps/curve/HourlyVolumeDTOs/historical | HourlyVolumeDTOs (historical) 🔥.
*curveGetHourlyVolumeDTOs (historical)ASync* | *GET* /dapps/curve/HourlyVolumeDTOs/historical | HourlyVolumeDTOs (historical) 🔥.
*curveGetHourlyVolumes (historical)Sync* | *GET* /dapps/curve/hourlyVolumes/historical | HourlyVolumes (historical).
*curveGetHourlyVolumes (historical)ASync* | *GET* /dapps/curve/hourlyVolumes/historical | HourlyVolumes (historical).
*curveGetLpTokenDTOs (historical)Sync* | *GET* /dapps/curve/LpTokenDTOs/historical | LpTokenDTOs (historical) 🔥.
*curveGetLpTokenDTOs (historical)ASync* | *GET* /dapps/curve/LpTokenDTOs/historical | LpTokenDTOs (historical) 🔥.
*curveGetLpTokens (historical)Sync* | *GET* /dapps/curve/lpTokens/historical | LpTokens (historical).
*curveGetLpTokens (historical)ASync* | *GET* /dapps/curve/lpTokens/historical | LpTokens (historical).
*curveGetPoolDTOs (historical)Sync* | *GET* /dapps/curve/PoolDTOs/historical | PoolDTOs (historical) 🔥.
*curveGetPoolDTOs (historical)ASync* | *GET* /dapps/curve/PoolDTOs/historical | PoolDTOs (historical) 🔥.
*curveGetPools (historical)Sync* | *GET* /dapps/curve/pools/historical | Pools (historical) 🔥.
*curveGetPools (historical)ASync* | *GET* /dapps/curve/pools/historical | Pools (historical) 🔥.
*curveGetProposalDTOs (historical)Sync* | *GET* /dapps/curve/ProposalDTOs/historical | ProposalDTOs (historical) 🔥.
*curveGetProposalDTOs (historical)ASync* | *GET* /dapps/curve/ProposalDTOs/historical | ProposalDTOs (historical) 🔥.
*curveGetProposalVoteDTOs (historical)Sync* | *GET* /dapps/curve/ProposalVoteDTOs/historical | ProposalVoteDTOs (historical) 🔥.
*curveGetProposalVoteDTOs (historical)ASync* | *GET* /dapps/curve/ProposalVoteDTOs/historical | ProposalVoteDTOs (historical) 🔥.
*curveGetProposals (historical)Sync* | *GET* /dapps/curve/proposals/historical | Proposals (historical).
*curveGetProposals (historical)ASync* | *GET* /dapps/curve/proposals/historical | Proposals (historical).
*curveGetProposalsVotes (historical)Sync* | *GET* /dapps/curve/proposalsVotes/historical | ProposalsVotes (historical).
*curveGetProposalsVotes (historical)ASync* | *GET* /dapps/curve/proposalsVotes/historical | ProposalsVotes (historical).
*curveGetRemoveLiquidityEventDTOs (historical)Sync* | *GET* /dapps/curve/RemoveLiquidityEventDTOs/historical | RemoveLiquidityEventDTOs (historical) 🔥.
*curveGetRemoveLiquidityEventDTOs (historical)ASync* | *GET* /dapps/curve/RemoveLiquidityEventDTOs/historical | RemoveLiquidityEventDTOs (historical) 🔥.
*curveGetRemoveLiquidityEvents (historical)Sync* | *GET* /dapps/curve/removeLiquidityEvents/historical | RemoveLiquidityEvents (historical).
*curveGetRemoveLiquidityEvents (historical)ASync* | *GET* /dapps/curve/removeLiquidityEvents/historical | RemoveLiquidityEvents (historical).
*curveGetRemoveLiquidityOneEventDTOs (historical)Sync* | *GET* /dapps/curve/RemoveLiquidityOneEventDTOs/historical | RemoveLiquidityOneEventDTOs (historical) 🔥.
*curveGetRemoveLiquidityOneEventDTOs (historical)ASync* | *GET* /dapps/curve/RemoveLiquidityOneEventDTOs/historical | RemoveLiquidityOneEventDTOs (historical) 🔥.
*curveGetRemoveLiquidityOneEvents (historical)Sync* | *GET* /dapps/curve/removeLiquidityOneEvents/historical | RemoveLiquidityOneEvents (historical).
*curveGetRemoveLiquidityOneEvents (historical)ASync* | *GET* /dapps/curve/removeLiquidityOneEvents/historical | RemoveLiquidityOneEvents (historical).
*curveGetSystemStateDTOs (historical)Sync* | *GET* /dapps/curve/SystemStateDTOs/historical | SystemStateDTOs (historical) 🔥.
*curveGetSystemStateDTOs (historical)ASync* | *GET* /dapps/curve/SystemStateDTOs/historical | SystemStateDTOs (historical) 🔥.
*curveGetSystemStates (historical)Sync* | *GET* /dapps/curve/systemStates/historical | SystemStates (historical).
*curveGetSystemStates (historical)ASync* | *GET* /dapps/curve/systemStates/historical | SystemStates (historical).
*curveGetTokenDTOs (historical)Sync* | *GET* /dapps/curve/TokenDTOs/historical | TokenDTOs (historical) 🔥.
*curveGetTokenDTOs (historical)ASync* | *GET* /dapps/curve/TokenDTOs/historical | TokenDTOs (historical) 🔥.
*curveGetTokens (historical)Sync* | *GET* /dapps/curve/tokens/historical | Tokens (historical) 🔥.
*curveGetTokens (historical)ASync* | *GET* /dapps/curve/tokens/historical | Tokens (historical) 🔥.
*curveGetTransferOwnershipEventDTOs (historical)Sync* | *GET* /dapps/curve/TransferOwnershipEventDTOs/historical | TransferOwnershipEventDTOs (historical) 🔥.
*curveGetTransferOwnershipEventDTOs (historical)ASync* | *GET* /dapps/curve/TransferOwnershipEventDTOs/historical | TransferOwnershipEventDTOs (historical) 🔥.
*curveGetTransferOwnershipEvents (historical)Sync* | *GET* /dapps/curve/transferOwnershipEvents/historical | TransferOwnershipEvents (historical).
*curveGetTransferOwnershipEvents (historical)ASync* | *GET* /dapps/curve/transferOwnershipEvents/historical | TransferOwnershipEvents (historical).
*curveGetUnderlyingCoinDTOs (historical)Sync* | *GET* /dapps/curve/UnderlyingCoinDTOs/historical | UnderlyingCoinDTOs (historical) 🔥.
*curveGetUnderlyingCoinDTOs (historical)ASync* | *GET* /dapps/curve/UnderlyingCoinDTOs/historical | UnderlyingCoinDTOs (historical) 🔥.
*curveGetUnderlyingCoins (historical)Sync* | *GET* /dapps/curve/underlyingCoins/historical | UnderlyingCoins (historical).
*curveGetUnderlyingCoins (historical)ASync* | *GET* /dapps/curve/underlyingCoins/historical | UnderlyingCoins (historical).
*curveGetVotingAppDTOs (historical)Sync* | *GET* /dapps/curve/VotingAppDTOs/historical | VotingAppDTOs (historical) 🔥.
*curveGetVotingAppDTOs (historical)ASync* | *GET* /dapps/curve/VotingAppDTOs/historical | VotingAppDTOs (historical) 🔥.
*curveGetVotingApps (historical)Sync* | *GET* /dapps/curve/votingApps/historical | VotingApps (historical).
*curveGetVotingApps (historical)ASync* | *GET* /dapps/curve/votingApps/historical | VotingApps (historical).
*curveGetWeeklyVolumeDTOs (historical)Sync* | *GET* /dapps/curve/WeeklyVolumeDTOs/historical | WeeklyVolumeDTOs (historical) 🔥.
*curveGetWeeklyVolumeDTOs (historical)ASync* | *GET* /dapps/curve/WeeklyVolumeDTOs/historical | WeeklyVolumeDTOs (historical) 🔥.
*curveGetWeeklyVolumes (historical)Sync* | *GET* /dapps/curve/weeklyVolumes/historical | WeeklyVolumes (historical).
*curveGetWeeklyVolumes (historical)ASync* | *GET* /dapps/curve/weeklyVolumes/historical | WeeklyVolumes (historical).


### DexManager
Method | HTTP request | Description
------------- | ------------- | -------------
*dexGetBatchDTOs (historical)Sync* | *GET* /dapps/dex/BatchDTOs/historical | BatchDTOs (historical) 🔥.
*dexGetBatchDTOs (historical)ASync* | *GET* /dapps/dex/BatchDTOs/historical | BatchDTOs (historical) 🔥.
*dexGetBatches (historical)Sync* | *GET* /dapps/dex/batches/historical | Batches (historical).
*dexGetBatches (historical)ASync* | *GET* /dapps/dex/batches/historical | Batches (historical).
*dexGetDepositDTOs (historical)Sync* | *GET* /dapps/dex/DepositDTOs/historical | DepositDTOs (historical) 🔥.
*dexGetDepositDTOs (historical)ASync* | *GET* /dapps/dex/DepositDTOs/historical | DepositDTOs (historical) 🔥.
*dexGetDeposits (historical)Sync* | *GET* /dapps/dex/deposits/historical | Deposits (historical).
*dexGetDeposits (historical)ASync* | *GET* /dapps/dex/deposits/historical | Deposits (historical).
*dexGetOrderDTOs (historical)Sync* | *GET* /dapps/dex/OrderDTOs/historical | OrderDTOs (historical) 🔥.
*dexGetOrderDTOs (historical)ASync* | *GET* /dapps/dex/OrderDTOs/historical | OrderDTOs (historical) 🔥.
*dexGetOrders (historical)Sync* | *GET* /dapps/dex/orders/historical | Orders (historical).
*dexGetOrders (historical)ASync* | *GET* /dapps/dex/orders/historical | Orders (historical).
*dexGetPriceDTOs (historical)Sync* | *GET* /dapps/dex/PriceDTOs/historical | PriceDTOs (historical) 🔥.
*dexGetPriceDTOs (historical)ASync* | *GET* /dapps/dex/PriceDTOs/historical | PriceDTOs (historical) 🔥.
*dexGetPrices (historical)Sync* | *GET* /dapps/dex/prices/historical | Prices (historical).
*dexGetPrices (historical)ASync* | *GET* /dapps/dex/prices/historical | Prices (historical).
*dexGetSolutionDTOs (historical)Sync* | *GET* /dapps/dex/SolutionDTOs/historical | SolutionDTOs (historical) 🔥.
*dexGetSolutionDTOs (historical)ASync* | *GET* /dapps/dex/SolutionDTOs/historical | SolutionDTOs (historical) 🔥.
*dexGetSolutions (historical)Sync* | *GET* /dapps/dex/solutions/historical | Solutions (historical).
*dexGetSolutions (historical)ASync* | *GET* /dapps/dex/solutions/historical | Solutions (historical).
*dexGetStats (historical)Sync* | *GET* /dapps/dex/stats/historical | Stats (historical).
*dexGetStats (historical)ASync* | *GET* /dapps/dex/stats/historical | Stats (historical).
*dexGetStatsDTOs (historical)Sync* | *GET* /dapps/dex/StatsDTOs/historical | StatsDTOs (historical) 🔥.
*dexGetStatsDTOs (historical)ASync* | *GET* /dapps/dex/StatsDTOs/historical | StatsDTOs (historical) 🔥.
*dexGetTokenDTOs (historical)Sync* | *GET* /dapps/dex/TokenDTOs/historical | TokenDTOs (historical) 🔥.
*dexGetTokenDTOs (historical)ASync* | *GET* /dapps/dex/TokenDTOs/historical | TokenDTOs (historical) 🔥.
*dexGetTokens (historical)Sync* | *GET* /dapps/dex/tokens/historical | Tokens (historical) 🔥.
*dexGetTokens (historical)ASync* | *GET* /dapps/dex/tokens/historical | Tokens (historical) 🔥.
*dexGetTradeDTOs (historical)Sync* | *GET* /dapps/dex/TradeDTOs/historical | TradeDTOs (historical) 🔥.
*dexGetTradeDTOs (historical)ASync* | *GET* /dapps/dex/TradeDTOs/historical | TradeDTOs (historical) 🔥.
*dexGetTrades (historical)Sync* | *GET* /dapps/dex/trades/historical | Trades (historical) 🔥.
*dexGetTrades (historical)ASync* | *GET* /dapps/dex/trades/historical | Trades (historical) 🔥.
*dexGetUserDTOs (historical)Sync* | *GET* /dapps/dex/UserDTOs/historical | UserDTOs (historical) 🔥.
*dexGetUserDTOs (historical)ASync* | *GET* /dapps/dex/UserDTOs/historical | UserDTOs (historical) 🔥.
*dexGetUsers (historical)Sync* | *GET* /dapps/dex/users/historical | Users (historical).
*dexGetUsers (historical)ASync* | *GET* /dapps/dex/users/historical | Users (historical).
*dexGetWithdrawDTOs (historical)Sync* | *GET* /dapps/dex/WithdrawDTOs/historical | WithdrawDTOs (historical) 🔥.
*dexGetWithdrawDTOs (historical)ASync* | *GET* /dapps/dex/WithdrawDTOs/historical | WithdrawDTOs (historical) 🔥.
*dexGetWithdrawRequestDTOs (historical)Sync* | *GET* /dapps/dex/WithdrawRequestDTOs/historical | WithdrawRequestDTOs (historical) 🔥.
*dexGetWithdrawRequestDTOs (historical)ASync* | *GET* /dapps/dex/WithdrawRequestDTOs/historical | WithdrawRequestDTOs (historical) 🔥.
*dexGetWithdraws (historical)Sync* | *GET* /dapps/dex/withdraws/historical | Withdraws (historical).
*dexGetWithdraws (historical)ASync* | *GET* /dapps/dex/withdraws/historical | Withdraws (historical).
*dexGetWithdrawsRequests (historical)Sync* | *GET* /dapps/dex/withdrawsRequests/historical | WithdrawsRequests (historical).
*dexGetWithdrawsRequests (historical)ASync* | *GET* /dapps/dex/withdrawsRequests/historical | WithdrawsRequests (historical).


### SushiswapManager
Method | HTTP request | Description
------------- | ------------- | -------------
*curveGetExchanges (current)Sync* | *GET* /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥.
*curveGetExchanges (current)ASync* | *GET* /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥.
*dexGetTrades (current)Sync* | *GET* /dapps/sushiswap/trades/current | Trades (current) 🔥.
*dexGetTrades (current)ASync* | *GET* /dapps/sushiswap/trades/current | Trades (current) 🔥.
*sushiswapGetBundleDTOs (historical)Sync* | *GET* /dapps/sushiswap/BundleDTOs/historical | BundleDTOs (historical) 🔥.
*sushiswapGetBundleDTOs (historical)ASync* | *GET* /dapps/sushiswap/BundleDTOs/historical | BundleDTOs (historical) 🔥.
*sushiswapGetBundles (historical)Sync* | *GET* /dapps/sushiswap/bundles/historical | Bundles (historical).
*sushiswapGetBundles (historical)ASync* | *GET* /dapps/sushiswap/bundles/historical | Bundles (historical).
*sushiswapGetBurnDTOs (historical)Sync* | *GET* /dapps/sushiswap/BurnDTOs/historical | BurnDTOs (historical) 🔥.
*sushiswapGetBurnDTOs (historical)ASync* | *GET* /dapps/sushiswap/BurnDTOs/historical | BurnDTOs (historical) 🔥.
*sushiswapGetBurns (historical)Sync* | *GET* /dapps/sushiswap/burns/historical | Burns (historical).
*sushiswapGetBurns (historical)ASync* | *GET* /dapps/sushiswap/burns/historical | Burns (historical).
*sushiswapGetDayData (historical)Sync* | *GET* /dapps/sushiswap/dayData/historical | DayData (historical).
*sushiswapGetDayData (historical)ASync* | *GET* /dapps/sushiswap/dayData/historical | DayData (historical).
*sushiswapGetDayDataDTOs (historical)Sync* | *GET* /dapps/sushiswap/DayDataDTOs/historical | DayDataDTOs (historical) 🔥.
*sushiswapGetDayDataDTOs (historical)ASync* | *GET* /dapps/sushiswap/DayDataDTOs/historical | DayDataDTOs (historical) 🔥.
*sushiswapGetFactory (historical)Sync* | *GET* /dapps/sushiswap/factory/historical | Factory (historical).
*sushiswapGetFactory (historical)ASync* | *GET* /dapps/sushiswap/factory/historical | Factory (historical).
*sushiswapGetFactoryDTOs (historical)Sync* | *GET* /dapps/sushiswap/FactoryDTOs/historical | FactoryDTOs (historical) 🔥.
*sushiswapGetFactoryDTOs (historical)ASync* | *GET* /dapps/sushiswap/FactoryDTOs/historical | FactoryDTOs (historical) 🔥.
*sushiswapGetHourData (historical)Sync* | *GET* /dapps/sushiswap/hourData/historical | HourData (historical).
*sushiswapGetHourData (historical)ASync* | *GET* /dapps/sushiswap/hourData/historical | HourData (historical).
*sushiswapGetHourDataDTOs (historical)Sync* | *GET* /dapps/sushiswap/HourDataDTOs/historical | HourDataDTOs (historical) 🔥.
*sushiswapGetHourDataDTOs (historical)ASync* | *GET* /dapps/sushiswap/HourDataDTOs/historical | HourDataDTOs (historical) 🔥.
*sushiswapGetLiquidityPosition (historical)Sync* | *GET* /dapps/sushiswap/liquidityPosition/historical | LiquidityPosition (historical).
*sushiswapGetLiquidityPosition (historical)ASync* | *GET* /dapps/sushiswap/liquidityPosition/historical | LiquidityPosition (historical).
*sushiswapGetLiquidityPositionDTOs (historical)Sync* | *GET* /dapps/sushiswap/LiquidityPositionDTOs/historical | LiquidityPositionDTOs (historical) 🔥.
*sushiswapGetLiquidityPositionDTOs (historical)ASync* | *GET* /dapps/sushiswap/LiquidityPositionDTOs/historical | LiquidityPositionDTOs (historical) 🔥.
*sushiswapGetLiquidityPositionSnapshot (historical)Sync* | *GET* /dapps/sushiswap/liquidityPositionSnapshots/historical | LiquidityPositionSnapshot (historical).
*sushiswapGetLiquidityPositionSnapshot (historical)ASync* | *GET* /dapps/sushiswap/liquidityPositionSnapshots/historical | LiquidityPositionSnapshot (historical).
*sushiswapGetLiquidityPositionSnapshotDTOs (historical)Sync* | *GET* /dapps/sushiswap/LiquidityPositionSnapshotDTOs/historical | LiquidityPositionSnapshotDTOs (historical) 🔥.
*sushiswapGetLiquidityPositionSnapshotDTOs (historical)ASync* | *GET* /dapps/sushiswap/LiquidityPositionSnapshotDTOs/historical | LiquidityPositionSnapshotDTOs (historical) 🔥.
*sushiswapGetMintDTOs (historical)Sync* | *GET* /dapps/sushiswap/MintDTOs/historical | MintDTOs (historical) 🔥.
*sushiswapGetMintDTOs (historical)ASync* | *GET* /dapps/sushiswap/MintDTOs/historical | MintDTOs (historical) 🔥.
*sushiswapGetMints (historical)Sync* | *GET* /dapps/sushiswap/mints/historical | Mints (historical).
*sushiswapGetMints (historical)ASync* | *GET* /dapps/sushiswap/mints/historical | Mints (historical).
*sushiswapGetPairDTOs (historical)Sync* | *GET* /dapps/sushiswap/PairDTOs/historical | PairDTOs (historical) 🔥.
*sushiswapGetPairDTOs (historical)ASync* | *GET* /dapps/sushiswap/PairDTOs/historical | PairDTOs (historical) 🔥.
*sushiswapGetPairDayDataDTOs (historical)Sync* | *GET* /dapps/sushiswap/PairDayDataDTOs/historical | PairDayDataDTOs (historical) 🔥.
*sushiswapGetPairDayDataDTOs (historical)ASync* | *GET* /dapps/sushiswap/PairDayDataDTOs/historical | PairDayDataDTOs (historical) 🔥.
*sushiswapGetPairHourDataDTOs (historical)Sync* | *GET* /dapps/sushiswap/PairHourDataDTOs/historical | PairHourDataDTOs (historical) 🔥.
*sushiswapGetPairHourDataDTOs (historical)ASync* | *GET* /dapps/sushiswap/PairHourDataDTOs/historical | PairHourDataDTOs (historical) 🔥.
*sushiswapGetPools (current)Sync* | *GET* /dapps/sushiswap/pools/current | Pools (current) 🔥.
*sushiswapGetPools (current)ASync* | *GET* /dapps/sushiswap/pools/current | Pools (current) 🔥.
*sushiswapGetPools (historical)Sync* | *GET* /dapps/sushiswap/pools/historical | Pools (historical) 🔥.
*sushiswapGetPools (historical)ASync* | *GET* /dapps/sushiswap/pools/historical | Pools (historical) 🔥.
*sushiswapGetPoolsDayData (historical)Sync* | *GET* /dapps/sushiswap/poolsDayData/historical | PoolsDayData (historical).
*sushiswapGetPoolsDayData (historical)ASync* | *GET* /dapps/sushiswap/poolsDayData/historical | PoolsDayData (historical).
*sushiswapGetPoolsHourData (historical)Sync* | *GET* /dapps/sushiswap/poolsHourData/historical | PoolsHourData (historical).
*sushiswapGetPoolsHourData (historical)ASync* | *GET* /dapps/sushiswap/poolsHourData/historical | PoolsHourData (historical).
*sushiswapGetSwapDTOs (historical)Sync* | *GET* /dapps/sushiswap/SwapDTOs/historical | SwapDTOs (historical) 🔥.
*sushiswapGetSwapDTOs (historical)ASync* | *GET* /dapps/sushiswap/SwapDTOs/historical | SwapDTOs (historical) 🔥.
*sushiswapGetSwaps (current)Sync* | *GET* /dapps/sushiswap/swaps/current | Swaps (current) 🔥.
*sushiswapGetSwaps (current)ASync* | *GET* /dapps/sushiswap/swaps/current | Swaps (current) 🔥.
*sushiswapGetSwaps (historical)Sync* | *GET* /dapps/sushiswap/swaps/historical | Swaps (historical) 🔥.
*sushiswapGetSwaps (historical)ASync* | *GET* /dapps/sushiswap/swaps/historical | Swaps (historical) 🔥.
*sushiswapGetTokenDTOs (historical)Sync* | *GET* /dapps/sushiswap/TokenDTOs/historical | TokenDTOs (historical) 🔥.
*sushiswapGetTokenDTOs (historical)ASync* | *GET* /dapps/sushiswap/TokenDTOs/historical | TokenDTOs (historical) 🔥.
*sushiswapGetTokenDayDataDTOs (historical)Sync* | *GET* /dapps/sushiswap/TokenDayDataDTOs/historical | TokenDayDataDTOs (historical) 🔥.
*sushiswapGetTokenDayDataDTOs (historical)ASync* | *GET* /dapps/sushiswap/TokenDayDataDTOs/historical | TokenDayDataDTOs (historical) 🔥.
*sushiswapGetTokens (current)Sync* | *GET* /dapps/sushiswap/tokens/current | Tokens (current) 🔥.
*sushiswapGetTokens (current)ASync* | *GET* /dapps/sushiswap/tokens/current | Tokens (current) 🔥.
*sushiswapGetTokens (historical)Sync* | *GET* /dapps/sushiswap/tokens/historical | Tokens (historical) 🔥.
*sushiswapGetTokens (historical)ASync* | *GET* /dapps/sushiswap/tokens/historical | Tokens (historical) 🔥.
*sushiswapGetTokensDayData (historical)Sync* | *GET* /dapps/sushiswap/tokensDayData/historical | TokensDayData (historical).
*sushiswapGetTokensDayData (historical)ASync* | *GET* /dapps/sushiswap/tokensDayData/historical | TokensDayData (historical).
*sushiswapGetTransactionDTOs (historical)Sync* | *GET* /dapps/sushiswap/TransactionDTOs/historical | TransactionDTOs (historical) 🔥.
*sushiswapGetTransactionDTOs (historical)ASync* | *GET* /dapps/sushiswap/TransactionDTOs/historical | TransactionDTOs (historical) 🔥.
*sushiswapGetTransactions (historical)Sync* | *GET* /dapps/sushiswap/transactions/historical | Transactions (historical).
*sushiswapGetTransactions (historical)ASync* | *GET* /dapps/sushiswap/transactions/historical | Transactions (historical).
*sushiswapGetUserDTOs (historical)Sync* | *GET* /dapps/sushiswap/UserDTOs/historical | UserDTOs (historical) 🔥.
*sushiswapGetUserDTOs (historical)ASync* | *GET* /dapps/sushiswap/UserDTOs/historical | UserDTOs (historical) 🔥.
*sushiswapGetUsers (historical)Sync* | *GET* /dapps/sushiswap/users/historical | Users (historical).
*sushiswapGetUsers (historical)ASync* | *GET* /dapps/sushiswap/users/historical | Users (historical).


### UniswapV2Manager
Method | HTTP request | Description
------------- | ------------- | -------------
*uniswapV2GetBundleV2DTOs (historical)Sync* | *GET* /dapps/uniswapv2/BundleV2DTOs/historical | BundleV2DTOs (historical) 🔥.
*uniswapV2GetBundleV2DTOs (historical)ASync* | *GET* /dapps/uniswapv2/BundleV2DTOs/historical | BundleV2DTOs (historical) 🔥.
*uniswapV2GetBundles (historical)Sync* | *GET* /dapps/uniswapv2/bundles/historical | Bundles (historical).
*uniswapV2GetBundles (historical)ASync* | *GET* /dapps/uniswapv2/bundles/historical | Bundles (historical).
*uniswapV2GetBurnV2DTOs (historical)Sync* | *GET* /dapps/uniswapv2/BurnV2DTOs/historical | BurnV2DTOs (historical) 🔥.
*uniswapV2GetBurnV2DTOs (historical)ASync* | *GET* /dapps/uniswapv2/BurnV2DTOs/historical | BurnV2DTOs (historical) 🔥.
*uniswapV2GetBurns (historical)Sync* | *GET* /dapps/uniswapv2/burns/historical | Burns (historical).
*uniswapV2GetBurns (historical)ASync* | *GET* /dapps/uniswapv2/burns/historical | Burns (historical).
*uniswapV2GetDayData (historical)Sync* | *GET* /dapps/uniswapv2/dayData/historical | DayData (historical).
*uniswapV2GetDayData (historical)ASync* | *GET* /dapps/uniswapv2/dayData/historical | DayData (historical).
*uniswapV2GetFactory (historical)Sync* | *GET* /dapps/uniswapv2/factory/historical | Factory (historical).
*uniswapV2GetFactory (historical)ASync* | *GET* /dapps/uniswapv2/factory/historical | Factory (historical).
*uniswapV2GetLiquidityPositionSnapshotV2DTOs (historical)Sync* | *GET* /dapps/uniswapv2/LiquidityPositionSnapshotV2DTOs/historical | LiquidityPositionSnapshotV2DTOs (historical) 🔥.
*uniswapV2GetLiquidityPositionSnapshotV2DTOs (historical)ASync* | *GET* /dapps/uniswapv2/LiquidityPositionSnapshotV2DTOs/historical | LiquidityPositionSnapshotV2DTOs (historical) 🔥.
*uniswapV2GetLiquidityPositionV2DTOs (historical)Sync* | *GET* /dapps/uniswapv2/LiquidityPositionV2DTOs/historical | LiquidityPositionV2DTOs (historical) 🔥.
*uniswapV2GetLiquidityPositionV2DTOs (historical)ASync* | *GET* /dapps/uniswapv2/LiquidityPositionV2DTOs/historical | LiquidityPositionV2DTOs (historical) 🔥.
*uniswapV2GetLiquidityPositions (historical)Sync* | *GET* /dapps/uniswapv2/liquidityPositions/historical | LiquidityPositions (historical).
*uniswapV2GetLiquidityPositions (historical)ASync* | *GET* /dapps/uniswapv2/liquidityPositions/historical | LiquidityPositions (historical).
*uniswapV2GetLiquidityPositionsSnapshots (historical)Sync* | *GET* /dapps/uniswapv2/liquidityPositionsSnapshots/historical | LiquidityPositionsSnapshots (historical).
*uniswapV2GetLiquidityPositionsSnapshots (historical)ASync* | *GET* /dapps/uniswapv2/liquidityPositionsSnapshots/historical | LiquidityPositionsSnapshots (historical).
*uniswapV2GetMintV2DTOs (historical)Sync* | *GET* /dapps/uniswapv2/MintV2DTOs/historical | MintV2DTOs (historical) 🔥.
*uniswapV2GetMintV2DTOs (historical)ASync* | *GET* /dapps/uniswapv2/MintV2DTOs/historical | MintV2DTOs (historical) 🔥.
*uniswapV2GetMints (historical)Sync* | *GET* /dapps/uniswapv2/mints/historical | Mints (historical).
*uniswapV2GetMints (historical)ASync* | *GET* /dapps/uniswapv2/mints/historical | Mints (historical).
*uniswapV2GetPairDayDataV2DTOs (historical)Sync* | *GET* /dapps/uniswapv2/PairDayDataV2DTOs/historical | PairDayDataV2DTOs (historical) 🔥.
*uniswapV2GetPairDayDataV2DTOs (historical)ASync* | *GET* /dapps/uniswapv2/PairDayDataV2DTOs/historical | PairDayDataV2DTOs (historical) 🔥.
*uniswapV2GetPairHourDataV2DTOs (historical)Sync* | *GET* /dapps/uniswapv2/PairHourDataV2DTOs/historical | PairHourDataV2DTOs (historical) 🔥.
*uniswapV2GetPairHourDataV2DTOs (historical)ASync* | *GET* /dapps/uniswapv2/PairHourDataV2DTOs/historical | PairHourDataV2DTOs (historical) 🔥.
*uniswapV2GetPairV2DTOs (historical)Sync* | *GET* /dapps/uniswapv2/PairV2DTOs/historical | PairV2DTOs (historical) 🔥.
*uniswapV2GetPairV2DTOs (historical)ASync* | *GET* /dapps/uniswapv2/PairV2DTOs/historical | PairV2DTOs (historical) 🔥.
*uniswapV2GetPools (current)Sync* | *GET* /dapps/uniswapv2/pools/current | Pools (current) 🔥.
*uniswapV2GetPools (current)ASync* | *GET* /dapps/uniswapv2/pools/current | Pools (current) 🔥.
*uniswapV2GetPools (historical)Sync* | *GET* /dapps/uniswapv2/pools/historical | Pools (historical) 🔥.
*uniswapV2GetPools (historical)ASync* | *GET* /dapps/uniswapv2/pools/historical | Pools (historical) 🔥.
*uniswapV2GetPoolsDayData (historical)Sync* | *GET* /dapps/uniswapv2/poolsDayData/historical | PoolsDayData (historical).
*uniswapV2GetPoolsDayData (historical)ASync* | *GET* /dapps/uniswapv2/poolsDayData/historical | PoolsDayData (historical).
*uniswapV2GetPoolsHourData (historical)Sync* | *GET* /dapps/uniswapv2/poolsHourData/historical | PoolsHourData (historical).
*uniswapV2GetPoolsHourData (historical)ASync* | *GET* /dapps/uniswapv2/poolsHourData/historical | PoolsHourData (historical).
*uniswapV2GetSwapV2DTOs (historical)Sync* | *GET* /dapps/uniswapv2/SwapV2DTOs/historical | SwapV2DTOs (historical) 🔥.
*uniswapV2GetSwapV2DTOs (historical)ASync* | *GET* /dapps/uniswapv2/SwapV2DTOs/historical | SwapV2DTOs (historical) 🔥.
*uniswapV2GetSwaps (current)Sync* | *GET* /dapps/uniswapv2/swaps/current | Swaps (current) 🔥.
*uniswapV2GetSwaps (current)ASync* | *GET* /dapps/uniswapv2/swaps/current | Swaps (current) 🔥.
*uniswapV2GetSwaps (historical)Sync* | *GET* /dapps/uniswapv2/swaps/historical | Swaps (historical) 🔥.
*uniswapV2GetSwaps (historical)ASync* | *GET* /dapps/uniswapv2/swaps/historical | Swaps (historical) 🔥.
*uniswapV2GetTokenDayDataV2DTOs (historical)Sync* | *GET* /dapps/uniswapv2/TokenDayDataV2DTOs/historical | TokenDayDataV2DTOs (historical) 🔥.
*uniswapV2GetTokenDayDataV2DTOs (historical)ASync* | *GET* /dapps/uniswapv2/TokenDayDataV2DTOs/historical | TokenDayDataV2DTOs (historical) 🔥.
*uniswapV2GetTokenV2DTOs (historical)Sync* | *GET* /dapps/uniswapv2/TokenV2DTOs/historical | TokenV2DTOs (historical) 🔥.
*uniswapV2GetTokenV2DTOs (historical)ASync* | *GET* /dapps/uniswapv2/TokenV2DTOs/historical | TokenV2DTOs (historical) 🔥.
*uniswapV2GetTokens (current)Sync* | *GET* /dapps/uniswapv2/tokens/current | Tokens (current) 🔥.
*uniswapV2GetTokens (current)ASync* | *GET* /dapps/uniswapv2/tokens/current | Tokens (current) 🔥.
*uniswapV2GetTokens (historical)Sync* | *GET* /dapps/uniswapv2/tokens/historical | Tokens (historical) 🔥.
*uniswapV2GetTokens (historical)ASync* | *GET* /dapps/uniswapv2/tokens/historical | Tokens (historical) 🔥.
*uniswapV2GetTokensDayData (historical)Sync* | *GET* /dapps/uniswapv2/tokensDayData/historical | TokensDayData (historical).
*uniswapV2GetTokensDayData (historical)ASync* | *GET* /dapps/uniswapv2/tokensDayData/historical | TokensDayData (historical).
*uniswapV2GetTransactionV2DTOs (historical)Sync* | *GET* /dapps/uniswapv2/TransactionV2DTOs/historical | TransactionV2DTOs (historical) 🔥.
*uniswapV2GetTransactionV2DTOs (historical)ASync* | *GET* /dapps/uniswapv2/TransactionV2DTOs/historical | TransactionV2DTOs (historical) 🔥.
*uniswapV2GetTransactions (historical)Sync* | *GET* /dapps/uniswapv2/transactions/historical | Transactions (historical).
*uniswapV2GetTransactions (historical)ASync* | *GET* /dapps/uniswapv2/transactions/historical | Transactions (historical).
*uniswapV2GetUniswapDayDataV2DTOs (historical)Sync* | *GET* /dapps/uniswapv2/UniswapDayDataV2DTOs/historical | UniswapDayDataV2DTOs (historical) 🔥.
*uniswapV2GetUniswapDayDataV2DTOs (historical)ASync* | *GET* /dapps/uniswapv2/UniswapDayDataV2DTOs/historical | UniswapDayDataV2DTOs (historical) 🔥.
*uniswapV2GetUniswapFactoryV2DTOs (historical)Sync* | *GET* /dapps/uniswapv2/UniswapFactoryV2DTOs/historical | UniswapFactoryV2DTOs (historical) 🔥.
*uniswapV2GetUniswapFactoryV2DTOs (historical)ASync* | *GET* /dapps/uniswapv2/UniswapFactoryV2DTOs/historical | UniswapFactoryV2DTOs (historical) 🔥.
*uniswapV2GetUserV2DTOs (historical)Sync* | *GET* /dapps/uniswapv2/UserV2DTOs/historical | UserV2DTOs (historical) 🔥.
*uniswapV2GetUserV2DTOs (historical)ASync* | *GET* /dapps/uniswapv2/UserV2DTOs/historical | UserV2DTOs (historical) 🔥.
*uniswapV2GetUsers (historical)Sync* | *GET* /dapps/uniswapv2/users/historical | Users (historical).
*uniswapV2GetUsers (historical)ASync* | *GET* /dapps/uniswapv2/users/historical | Users (historical).


### UniswapV3Manager
Method | HTTP request | Description
------------- | ------------- | -------------
*uniswapV3GetBundleV3DTOs (historical)Sync* | *GET* /dapps/uniswapv3/BundleV3DTOs/historical | BundleV3DTOs (historical) 🔥.
*uniswapV3GetBundleV3DTOs (historical)ASync* | *GET* /dapps/uniswapv3/BundleV3DTOs/historical | BundleV3DTOs (historical) 🔥.
*uniswapV3GetBundles (current)Sync* | *GET* /dapps/uniswapv3/bundles/current | Bundles (current).
*uniswapV3GetBundles (current)ASync* | *GET* /dapps/uniswapv3/bundles/current | Bundles (current).
*uniswapV3GetBundles (historical)Sync* | *GET* /dapps/uniswapv3/bundles/historical | Bundles (historical).
*uniswapV3GetBundles (historical)ASync* | *GET* /dapps/uniswapv3/bundles/historical | Bundles (historical).
*uniswapV3GetBurnV3DTOs (historical)Sync* | *GET* /dapps/uniswapv3/BurnV3DTOs/historical | BurnV3DTOs (historical) 🔥.
*uniswapV3GetBurnV3DTOs (historical)ASync* | *GET* /dapps/uniswapv3/BurnV3DTOs/historical | BurnV3DTOs (historical) 🔥.
*uniswapV3GetBurns (current)Sync* | *GET* /dapps/uniswapv3/burns/current | Burns (current).
*uniswapV3GetBurns (current)ASync* | *GET* /dapps/uniswapv3/burns/current | Burns (current).
*uniswapV3GetBurns (historical)Sync* | *GET* /dapps/uniswapv3/burns/historical | Burns (historical).
*uniswapV3GetBurns (historical)ASync* | *GET* /dapps/uniswapv3/burns/historical | Burns (historical).
*uniswapV3GetDayData (current)Sync* | *GET* /dapps/uniswapv3/dayData/current | DayData (current).
*uniswapV3GetDayData (current)ASync* | *GET* /dapps/uniswapv3/dayData/current | DayData (current).
*uniswapV3GetDayData (historical)Sync* | *GET* /dapps/uniswapv3/dayData/historical | DayData (historical).
*uniswapV3GetDayData (historical)ASync* | *GET* /dapps/uniswapv3/dayData/historical | DayData (historical).
*uniswapV3GetFactory (current)Sync* | *GET* /dapps/uniswapv3/factory/current | Factory (current).
*uniswapV3GetFactory (current)ASync* | *GET* /dapps/uniswapv3/factory/current | Factory (current).
*uniswapV3GetFactory (historical)Sync* | *GET* /dapps/uniswapv3/factory/historical | Factory (historical).
*uniswapV3GetFactory (historical)ASync* | *GET* /dapps/uniswapv3/factory/historical | Factory (historical).
*uniswapV3GetFactoryV3DTOs (historical)Sync* | *GET* /dapps/uniswapv3/FactoryV3DTOs/historical | FactoryV3DTOs (historical) 🔥.
*uniswapV3GetFactoryV3DTOs (historical)ASync* | *GET* /dapps/uniswapv3/FactoryV3DTOs/historical | FactoryV3DTOs (historical) 🔥.
*uniswapV3GetMintV3DTOs (historical)Sync* | *GET* /dapps/uniswapv3/MintV3DTOs/historical | MintV3DTOs (historical) 🔥.
*uniswapV3GetMintV3DTOs (historical)ASync* | *GET* /dapps/uniswapv3/MintV3DTOs/historical | MintV3DTOs (historical) 🔥.
*uniswapV3GetMints (current)Sync* | *GET* /dapps/uniswapv3/mints/current | Mints (current).
*uniswapV3GetMints (current)ASync* | *GET* /dapps/uniswapv3/mints/current | Mints (current).
*uniswapV3GetMints (historical)Sync* | *GET* /dapps/uniswapv3/mints/historical | Mints (historical).
*uniswapV3GetMints (historical)ASync* | *GET* /dapps/uniswapv3/mints/historical | Mints (historical).
*uniswapV3GetPoolDayDataV3DTOs (historical)Sync* | *GET* /dapps/uniswapv3/PoolDayDataV3DTOs/historical | PoolDayDataV3DTOs (historical) 🔥.
*uniswapV3GetPoolDayDataV3DTOs (historical)ASync* | *GET* /dapps/uniswapv3/PoolDayDataV3DTOs/historical | PoolDayDataV3DTOs (historical) 🔥.
*uniswapV3GetPoolHourDataV3DTOs (historical)Sync* | *GET* /dapps/uniswapv3/PoolHourDataV3DTOs/historical | PoolHourDataV3DTOs (historical) 🔥.
*uniswapV3GetPoolHourDataV3DTOs (historical)ASync* | *GET* /dapps/uniswapv3/PoolHourDataV3DTOs/historical | PoolHourDataV3DTOs (historical) 🔥.
*uniswapV3GetPoolV3DTOs (historical)Sync* | *GET* /dapps/uniswapv3/PoolV3DTOs/historical | PoolV3DTOs (historical) 🔥.
*uniswapV3GetPoolV3DTOs (historical)ASync* | *GET* /dapps/uniswapv3/PoolV3DTOs/historical | PoolV3DTOs (historical) 🔥.
*uniswapV3GetPools (current)Sync* | *GET* /dapps/uniswapv3/pools/current | Pools (current) 🔥.
*uniswapV3GetPools (current)ASync* | *GET* /dapps/uniswapv3/pools/current | Pools (current) 🔥.
*uniswapV3GetPools (historical)Sync* | *GET* /dapps/uniswapv3/pools/historical | Pools (historical) 🔥.
*uniswapV3GetPools (historical)ASync* | *GET* /dapps/uniswapv3/pools/historical | Pools (historical) 🔥.
*uniswapV3GetPoolsDayData (current)Sync* | *GET* /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current).
*uniswapV3GetPoolsDayData (current)ASync* | *GET* /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current).
*uniswapV3GetPoolsDayData (historical)Sync* | *GET* /dapps/uniswapv3/poolsDayData/historical | PoolsDayData (historical).
*uniswapV3GetPoolsDayData (historical)ASync* | *GET* /dapps/uniswapv3/poolsDayData/historical | PoolsDayData (historical).
*uniswapV3GetPoolsHourData (current)Sync* | *GET* /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current).
*uniswapV3GetPoolsHourData (current)ASync* | *GET* /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current).
*uniswapV3GetPoolsHourData (historical)Sync* | *GET* /dapps/uniswapv3/poolsHourData/historical | PoolsHourData (historical).
*uniswapV3GetPoolsHourData (historical)ASync* | *GET* /dapps/uniswapv3/poolsHourData/historical | PoolsHourData (historical).
*uniswapV3GetPositionSnapshotV3DTOs (historical)Sync* | *GET* /dapps/uniswapv3/PositionSnapshotV3DTOs/historical | PositionSnapshotV3DTOs (historical) 🔥.
*uniswapV3GetPositionSnapshotV3DTOs (historical)ASync* | *GET* /dapps/uniswapv3/PositionSnapshotV3DTOs/historical | PositionSnapshotV3DTOs (historical) 🔥.
*uniswapV3GetPositionV3DTOs (historical)Sync* | *GET* /dapps/uniswapv3/PositionV3DTOs/historical | PositionV3DTOs (historical) 🔥.
*uniswapV3GetPositionV3DTOs (historical)ASync* | *GET* /dapps/uniswapv3/PositionV3DTOs/historical | PositionV3DTOs (historical) 🔥.
*uniswapV3GetPositions (current)Sync* | *GET* /dapps/uniswapv3/positions/current | Positions (current).
*uniswapV3GetPositions (current)ASync* | *GET* /dapps/uniswapv3/positions/current | Positions (current).
*uniswapV3GetPositions (historical)Sync* | *GET* /dapps/uniswapv3/positions/historical | Positions (historical).
*uniswapV3GetPositions (historical)ASync* | *GET* /dapps/uniswapv3/positions/historical | Positions (historical).
*uniswapV3GetPositionsSnaphots (historical)Sync* | *GET* /dapps/uniswapv3/positionsSnapshots/historical | PositionsSnaphots (historical).
*uniswapV3GetPositionsSnaphots (historical)ASync* | *GET* /dapps/uniswapv3/positionsSnapshots/historical | PositionsSnaphots (historical).
*uniswapV3GetPositionsSnapshots (current)Sync* | *GET* /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current).
*uniswapV3GetPositionsSnapshots (current)ASync* | *GET* /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current).
*uniswapV3GetSwapV3DTOs (historical)Sync* | *GET* /dapps/uniswapv3/SwapV3DTOs/historical | SwapV3DTOs (historical) 🔥.
*uniswapV3GetSwapV3DTOs (historical)ASync* | *GET* /dapps/uniswapv3/SwapV3DTOs/historical | SwapV3DTOs (historical) 🔥.
*uniswapV3GetSwaps (current)Sync* | *GET* /dapps/uniswapv3/swaps/current | Swaps (current) 🔥.
*uniswapV3GetSwaps (current)ASync* | *GET* /dapps/uniswapv3/swaps/current | Swaps (current) 🔥.
*uniswapV3GetSwaps (historical)Sync* | *GET* /dapps/uniswapv3/swaps/historical | Swaps (historical) 🔥.
*uniswapV3GetSwaps (historical)ASync* | *GET* /dapps/uniswapv3/swaps/historical | Swaps (historical) 🔥.
*uniswapV3GetTickDayDataV3DTOs (historical)Sync* | *GET* /dapps/uniswapv3/TickDayDataV3DTOs/historical | TickDayDataV3DTOs (historical) 🔥.
*uniswapV3GetTickDayDataV3DTOs (historical)ASync* | *GET* /dapps/uniswapv3/TickDayDataV3DTOs/historical | TickDayDataV3DTOs (historical) 🔥.
*uniswapV3GetTickV3DTOs (historical)Sync* | *GET* /dapps/uniswapv3/TickV3DTOs/historical | TickV3DTOs (historical) 🔥.
*uniswapV3GetTickV3DTOs (historical)ASync* | *GET* /dapps/uniswapv3/TickV3DTOs/historical | TickV3DTOs (historical) 🔥.
*uniswapV3GetTicks (current)Sync* | *GET* /dapps/uniswapv3/ticks/current | Ticks (current).
*uniswapV3GetTicks (current)ASync* | *GET* /dapps/uniswapv3/ticks/current | Ticks (current).
*uniswapV3GetTicks (historical)Sync* | *GET* /dapps/uniswapv3/ticks/historical | Ticks (historical).
*uniswapV3GetTicks (historical)ASync* | *GET* /dapps/uniswapv3/ticks/historical | Ticks (historical).
*uniswapV3GetTicksDayData (current)Sync* | *GET* /dapps/uniswapv3/ticksDayData/current | TicksDayData (current).
*uniswapV3GetTicksDayData (current)ASync* | *GET* /dapps/uniswapv3/ticksDayData/current | TicksDayData (current).
*uniswapV3GetTicksDayData (historical)Sync* | *GET* /dapps/uniswapv3/ticksDayData/historical | TicksDayData (historical).
*uniswapV3GetTicksDayData (historical)ASync* | *GET* /dapps/uniswapv3/ticksDayData/historical | TicksDayData (historical).
*uniswapV3GetTokenHourDataV3DTOs (historical)Sync* | *GET* /dapps/uniswapv3/TokenHourDataV3DTOs/historical | TokenHourDataV3DTOs (historical) 🔥.
*uniswapV3GetTokenHourDataV3DTOs (historical)ASync* | *GET* /dapps/uniswapv3/TokenHourDataV3DTOs/historical | TokenHourDataV3DTOs (historical) 🔥.
*uniswapV3GetTokenV3DTOs (historical)Sync* | *GET* /dapps/uniswapv3/TokenV3DTOs/historical | TokenV3DTOs (historical) 🔥.
*uniswapV3GetTokenV3DTOs (historical)ASync* | *GET* /dapps/uniswapv3/TokenV3DTOs/historical | TokenV3DTOs (historical) 🔥.
*uniswapV3GetTokenV3DayDataDTOs (historical)Sync* | *GET* /dapps/uniswapv3/TokenV3DayDataDTOs/historical | TokenV3DayDataDTOs (historical) 🔥.
*uniswapV3GetTokenV3DayDataDTOs (historical)ASync* | *GET* /dapps/uniswapv3/TokenV3DayDataDTOs/historical | TokenV3DayDataDTOs (historical) 🔥.
*uniswapV3GetTokens (current)Sync* | *GET* /dapps/uniswapv3/tokens/current | Tokens (current) 🔥.
*uniswapV3GetTokens (current)ASync* | *GET* /dapps/uniswapv3/tokens/current | Tokens (current) 🔥.
*uniswapV3GetTokens (historical)Sync* | *GET* /dapps/uniswapv3/tokens/historical | Tokens (historical) 🔥.
*uniswapV3GetTokens (historical)ASync* | *GET* /dapps/uniswapv3/tokens/historical | Tokens (historical) 🔥.
*uniswapV3GetTokensDayData (current)Sync* | *GET* /dapps/uniswapv3/tokensDayData/current | TokensDayData (current).
*uniswapV3GetTokensDayData (current)ASync* | *GET* /dapps/uniswapv3/tokensDayData/current | TokensDayData (current).
*uniswapV3GetTokensDayData (historical)Sync* | *GET* /dapps/uniswapv3/tokensDayData/historical | TokensDayData (historical).
*uniswapV3GetTokensDayData (historical)ASync* | *GET* /dapps/uniswapv3/tokensDayData/historical | TokensDayData (historical).
*uniswapV3GetTokensHourData (current)Sync* | *GET* /dapps/uniswapv3/tokensHourData/current | TokensHourData (current).
*uniswapV3GetTokensHourData (current)ASync* | *GET* /dapps/uniswapv3/tokensHourData/current | TokensHourData (current).
*uniswapV3GetTokensHourData (historical)Sync* | *GET* /dapps/uniswapv3/tokensHourData/historical | TokensHourData (historical).
*uniswapV3GetTokensHourData (historical)ASync* | *GET* /dapps/uniswapv3/tokensHourData/historical | TokensHourData (historical).
*uniswapV3GetTransactionV3DTOs (historical)Sync* | *GET* /dapps/uniswapv3/TransactionV3DTOs/historical | TransactionV3DTOs (historical) 🔥.
*uniswapV3GetTransactionV3DTOs (historical)ASync* | *GET* /dapps/uniswapv3/TransactionV3DTOs/historical | TransactionV3DTOs (historical) 🔥.
*uniswapV3GetTransactions (historical)Sync* | *GET* /dapps/uniswapv3/transactions/historical | Transactions (historical).
*uniswapV3GetTransactions (historical)ASync* | *GET* /dapps/uniswapv3/transactions/historical | Transactions (historical).
*uniswapV3GetUniswapDayDataV3DTOs (historical)Sync* | *GET* /dapps/uniswapv3/UniswapDayDataV3DTOs/historical | UniswapDayDataV3DTOs (historical) 🔥.
*uniswapV3GetUniswapDayDataV3DTOs (historical)ASync* | *GET* /dapps/uniswapv3/UniswapDayDataV3DTOs/historical | UniswapDayDataV3DTOs (historical) 🔥.


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

