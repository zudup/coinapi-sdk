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


### CurveManager
Method | HTTP request | Description
------------- | ------------- | -------------
*curveGetAccounts (historical)Sync* | *GET* /dapps/curve/accounts/historical | Accounts (historical) 🔥.
*curveGetAccounts (historical)ASync* | *GET* /dapps/curve/accounts/historical | Accounts (historical) 🔥.
*curveGetAddLiquidityEvents (historical)Sync* | *GET* /dapps/curve/addliquidityevents/historical | AddLiquidityEvents (historical) 🔥.
*curveGetAddLiquidityEvents (historical)ASync* | *GET* /dapps/curve/addliquidityevents/historical | AddLiquidityEvents (historical) 🔥.
*curveGetAdminFeeChangeLogs (historical)Sync* | *GET* /dapps/curve/adminfeechangelogs/historical | AdminFeeChangeLogs (historical) 🔥.
*curveGetAdminFeeChangeLogs (historical)ASync* | *GET* /dapps/curve/adminfeechangelogs/historical | AdminFeeChangeLogs (historical) 🔥.
*curveGetAmplificationCoeffChangeLogs (historical)Sync* | *GET* /dapps/curve/amplificationcoeffchangelogs/historical | AmplificationCoeffChangeLogs (historical) 🔥.
*curveGetAmplificationCoeffChangeLogs (historical)ASync* | *GET* /dapps/curve/amplificationcoeffchangelogs/historical | AmplificationCoeffChangeLogs (historical) 🔥.
*curveGetCoins (historical)Sync* | *GET* /dapps/curve/coins/historical | Coins (historical) 🔥.
*curveGetCoins (historical)ASync* | *GET* /dapps/curve/coins/historical | Coins (historical) 🔥.
*curveGetContractVersions (historical)Sync* | *GET* /dapps/curve/contractversions/historical | ContractVersions (historical) 🔥.
*curveGetContractVersions (historical)ASync* | *GET* /dapps/curve/contractversions/historical | ContractVersions (historical) 🔥.
*curveGetContracts (historical)Sync* | *GET* /dapps/curve/contracts/historical | Contracts (historical) 🔥.
*curveGetContracts (historical)ASync* | *GET* /dapps/curve/contracts/historical | Contracts (historical) 🔥.
*curveGetDailyVolumes (historical)Sync* | *GET* /dapps/curve/dailyvolumes/historical | DailyVolumes (historical) 🔥.
*curveGetDailyVolumes (historical)ASync* | *GET* /dapps/curve/dailyvolumes/historical | DailyVolumes (historical) 🔥.
*curveGetExchanges (historical)Sync* | *GET* /dapps/curve/exchanges/historical | Exchanges (historical) 🔥.
*curveGetExchanges (historical)ASync* | *GET* /dapps/curve/exchanges/historical | Exchanges (historical) 🔥.
*curveGetFeeChangeLogs (historical)Sync* | *GET* /dapps/curve/feechangelogs/historical | FeeChangeLogs (historical) 🔥.
*curveGetFeeChangeLogs (historical)ASync* | *GET* /dapps/curve/feechangelogs/historical | FeeChangeLogs (historical) 🔥.
*curveGetGaugeDeposits (historical)Sync* | *GET* /dapps/curve/gaugedeposits/historical | GaugeDeposits (historical) 🔥.
*curveGetGaugeDeposits (historical)ASync* | *GET* /dapps/curve/gaugedeposits/historical | GaugeDeposits (historical) 🔥.
*curveGetGaugeLiquiditys (historical)Sync* | *GET* /dapps/curve/gaugeliquiditys/historical | GaugeLiquiditys (historical) 🔥.
*curveGetGaugeLiquiditys (historical)ASync* | *GET* /dapps/curve/gaugeliquiditys/historical | GaugeLiquiditys (historical) 🔥.
*curveGetGaugeTotalWeights (historical)Sync* | *GET* /dapps/curve/gaugetotalweights/historical | GaugeTotalWeights (historical) 🔥.
*curveGetGaugeTotalWeights (historical)ASync* | *GET* /dapps/curve/gaugetotalweights/historical | GaugeTotalWeights (historical) 🔥.
*curveGetGaugeTypeWeights (historical)Sync* | *GET* /dapps/curve/gaugetypeweights/historical | GaugeTypeWeights (historical) 🔥.
*curveGetGaugeTypeWeights (historical)ASync* | *GET* /dapps/curve/gaugetypeweights/historical | GaugeTypeWeights (historical) 🔥.
*curveGetGaugeTypes (historical)Sync* | *GET* /dapps/curve/gaugetypes/historical | GaugeTypes (historical) 🔥.
*curveGetGaugeTypes (historical)ASync* | *GET* /dapps/curve/gaugetypes/historical | GaugeTypes (historical) 🔥.
*curveGetGaugeWeightVotes (historical)Sync* | *GET* /dapps/curve/gaugeweightvotes/historical | GaugeWeightVotes (historical) 🔥.
*curveGetGaugeWeightVotes (historical)ASync* | *GET* /dapps/curve/gaugeweightvotes/historical | GaugeWeightVotes (historical) 🔥.
*curveGetGaugeWeights (historical)Sync* | *GET* /dapps/curve/gaugeweights/historical | GaugeWeights (historical) 🔥.
*curveGetGaugeWeights (historical)ASync* | *GET* /dapps/curve/gaugeweights/historical | GaugeWeights (historical) 🔥.
*curveGetGaugeWithdraws (historical)Sync* | *GET* /dapps/curve/gaugewithdraws/historical | GaugeWithdraws (historical) 🔥.
*curveGetGaugeWithdraws (historical)ASync* | *GET* /dapps/curve/gaugewithdraws/historical | GaugeWithdraws (historical) 🔥.
*curveGetGauges (historical)Sync* | *GET* /dapps/curve/gauges/historical | Gauges (historical) 🔥.
*curveGetGauges (historical)ASync* | *GET* /dapps/curve/gauges/historical | Gauges (historical) 🔥.
*curveGetHourlyVolumes (historical)Sync* | *GET* /dapps/curve/hourlyvolumes/historical | HourlyVolumes (historical) 🔥.
*curveGetHourlyVolumes (historical)ASync* | *GET* /dapps/curve/hourlyvolumes/historical | HourlyVolumes (historical) 🔥.
*curveGetLpTokens (historical)Sync* | *GET* /dapps/curve/lptokens/historical | LpTokens (historical) 🔥.
*curveGetLpTokens (historical)ASync* | *GET* /dapps/curve/lptokens/historical | LpTokens (historical) 🔥.
*curveGetPools (historical)Sync* | *GET* /dapps/curve/pools/historical | Pools (historical) 🔥.
*curveGetPools (historical)ASync* | *GET* /dapps/curve/pools/historical | Pools (historical) 🔥.
*curveGetProposalVotes (historical)Sync* | *GET* /dapps/curve/proposalvotes/historical | ProposalVotes (historical) 🔥.
*curveGetProposalVotes (historical)ASync* | *GET* /dapps/curve/proposalvotes/historical | ProposalVotes (historical) 🔥.
*curveGetProposals (historical)Sync* | *GET* /dapps/curve/proposals/historical | Proposals (historical) 🔥.
*curveGetProposals (historical)ASync* | *GET* /dapps/curve/proposals/historical | Proposals (historical) 🔥.
*curveGetRemoveLiquidityEvents (historical)Sync* | *GET* /dapps/curve/removeliquidityevents/historical | RemoveLiquidityEvents (historical) 🔥.
*curveGetRemoveLiquidityEvents (historical)ASync* | *GET* /dapps/curve/removeliquidityevents/historical | RemoveLiquidityEvents (historical) 🔥.
*curveGetRemoveLiquidityOneEvents (historical)Sync* | *GET* /dapps/curve/removeliquidityoneevents/historical | RemoveLiquidityOneEvents (historical) 🔥.
*curveGetRemoveLiquidityOneEvents (historical)ASync* | *GET* /dapps/curve/removeliquidityoneevents/historical | RemoveLiquidityOneEvents (historical) 🔥.
*curveGetSystemStates (historical)Sync* | *GET* /dapps/curve/systemstates/historical | SystemStates (historical) 🔥.
*curveGetSystemStates (historical)ASync* | *GET* /dapps/curve/systemstates/historical | SystemStates (historical) 🔥.
*curveGetTokens (historical)Sync* | *GET* /dapps/curve/tokens/historical | Tokens (historical) 🔥.
*curveGetTokens (historical)ASync* | *GET* /dapps/curve/tokens/historical | Tokens (historical) 🔥.
*curveGetTransferOwnershipEvents (historical)Sync* | *GET* /dapps/curve/transferownershipevents/historical | TransferOwnershipEvents (historical) 🔥.
*curveGetTransferOwnershipEvents (historical)ASync* | *GET* /dapps/curve/transferownershipevents/historical | TransferOwnershipEvents (historical) 🔥.
*curveGetUnderlyingCoins (historical)Sync* | *GET* /dapps/curve/underlyingcoins/historical | UnderlyingCoins (historical) 🔥.
*curveGetUnderlyingCoins (historical)ASync* | *GET* /dapps/curve/underlyingcoins/historical | UnderlyingCoins (historical) 🔥.
*curveGetVotingApps (historical)Sync* | *GET* /dapps/curve/votingapps/historical | VotingApps (historical) 🔥.
*curveGetVotingApps (historical)ASync* | *GET* /dapps/curve/votingapps/historical | VotingApps (historical) 🔥.
*curveGetWeeklyVolumes (historical)Sync* | *GET* /dapps/curve/weeklyvolumes/historical | WeeklyVolumes (historical) 🔥.
*curveGetWeeklyVolumes (historical)ASync* | *GET* /dapps/curve/weeklyvolumes/historical | WeeklyVolumes (historical) 🔥.


### DexManager
Method | HTTP request | Description
------------- | ------------- | -------------
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
*dexGetWithdrawRequests (historical)Sync* | *GET* /dapps/dex/withdrawrequests/historical | WithdrawRequests (historical) 🔥.
*dexGetWithdrawRequests (historical)ASync* | *GET* /dapps/dex/withdrawrequests/historical | WithdrawRequests (historical) 🔥.
*dexGetWithdraws (historical)Sync* | *GET* /dapps/dex/withdraws/historical | Withdraws (historical) 🔥.
*dexGetWithdraws (historical)ASync* | *GET* /dapps/dex/withdraws/historical | Withdraws (historical) 🔥.


### SushiswapManager
Method | HTTP request | Description
------------- | ------------- | -------------
*curveGetExchanges (current)Sync* | *GET* /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥.
*curveGetExchanges (current)ASync* | *GET* /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥.
*dexGetTrades (current)Sync* | *GET* /dapps/sushiswap/trades/current | Trades (current) 🔥.
*dexGetTrades (current)ASync* | *GET* /dapps/sushiswap/trades/current | Trades (current) 🔥.
*sushiswapGetBundles (historical)Sync* | *GET* /dapps/sushiswap/bundles/historical | Bundles (historical) 🔥.
*sushiswapGetBundles (historical)ASync* | *GET* /dapps/sushiswap/bundles/historical | Bundles (historical) 🔥.
*sushiswapGetBurns (historical)Sync* | *GET* /dapps/sushiswap/burns/historical | Burns (historical) 🔥.
*sushiswapGetBurns (historical)ASync* | *GET* /dapps/sushiswap/burns/historical | Burns (historical) 🔥.
*sushiswapGetDayDatas (historical)Sync* | *GET* /dapps/sushiswap/daydatas/historical | DayDatas (historical) 🔥.
*sushiswapGetDayDatas (historical)ASync* | *GET* /dapps/sushiswap/daydatas/historical | DayDatas (historical) 🔥.
*sushiswapGetFactorys (historical)Sync* | *GET* /dapps/sushiswap/factorys/historical | Factorys (historical) 🔥.
*sushiswapGetFactorys (historical)ASync* | *GET* /dapps/sushiswap/factorys/historical | Factorys (historical) 🔥.
*sushiswapGetHourDatas (historical)Sync* | *GET* /dapps/sushiswap/hourdatas/historical | HourDatas (historical) 🔥.
*sushiswapGetHourDatas (historical)ASync* | *GET* /dapps/sushiswap/hourdatas/historical | HourDatas (historical) 🔥.
*sushiswapGetLiquidityPositionSnapshots (historical)Sync* | *GET* /dapps/sushiswap/liquiditypositionsnapshots/historical | LiquidityPositionSnapshots (historical) 🔥.
*sushiswapGetLiquidityPositionSnapshots (historical)ASync* | *GET* /dapps/sushiswap/liquiditypositionsnapshots/historical | LiquidityPositionSnapshots (historical) 🔥.
*sushiswapGetLiquidityPositions (historical)Sync* | *GET* /dapps/sushiswap/liquiditypositions/historical | LiquidityPositions (historical) 🔥.
*sushiswapGetLiquidityPositions (historical)ASync* | *GET* /dapps/sushiswap/liquiditypositions/historical | LiquidityPositions (historical) 🔥.
*sushiswapGetMints (historical)Sync* | *GET* /dapps/sushiswap/mints/historical | Mints (historical) 🔥.
*sushiswapGetMints (historical)ASync* | *GET* /dapps/sushiswap/mints/historical | Mints (historical) 🔥.
*sushiswapGetPairDayDatas (historical)Sync* | *GET* /dapps/sushiswap/pairdaydatas/historical | PairDayDatas (historical) 🔥.
*sushiswapGetPairDayDatas (historical)ASync* | *GET* /dapps/sushiswap/pairdaydatas/historical | PairDayDatas (historical) 🔥.
*sushiswapGetPairHourDatas (historical)Sync* | *GET* /dapps/sushiswap/pairhourdatas/historical | PairHourDatas (historical) 🔥.
*sushiswapGetPairHourDatas (historical)ASync* | *GET* /dapps/sushiswap/pairhourdatas/historical | PairHourDatas (historical) 🔥.
*sushiswapGetPairs (historical)Sync* | *GET* /dapps/sushiswap/pairs/historical | Pairs (historical) 🔥.
*sushiswapGetPairs (historical)ASync* | *GET* /dapps/sushiswap/pairs/historical | Pairs (historical) 🔥.
*sushiswapGetPools (current)Sync* | *GET* /dapps/sushiswap/pools/current | Pools (current) 🔥.
*sushiswapGetPools (current)ASync* | *GET* /dapps/sushiswap/pools/current | Pools (current) 🔥.
*sushiswapGetSwaps (current)Sync* | *GET* /dapps/sushiswap/swaps/current | Swaps (current) 🔥.
*sushiswapGetSwaps (current)ASync* | *GET* /dapps/sushiswap/swaps/current | Swaps (current) 🔥.
*sushiswapGetSwaps (historical)Sync* | *GET* /dapps/sushiswap/swaps/historical | Swaps (historical) 🔥.
*sushiswapGetSwaps (historical)ASync* | *GET* /dapps/sushiswap/swaps/historical | Swaps (historical) 🔥.
*sushiswapGetTokenDayDatas (historical)Sync* | *GET* /dapps/sushiswap/tokendaydatas/historical | TokenDayDatas (historical) 🔥.
*sushiswapGetTokenDayDatas (historical)ASync* | *GET* /dapps/sushiswap/tokendaydatas/historical | TokenDayDatas (historical) 🔥.
*sushiswapGetTokens (current)Sync* | *GET* /dapps/sushiswap/tokens/current | Tokens (current) 🔥.
*sushiswapGetTokens (current)ASync* | *GET* /dapps/sushiswap/tokens/current | Tokens (current) 🔥.
*sushiswapGetTokens (historical)Sync* | *GET* /dapps/sushiswap/tokens/historical | Tokens (historical) 🔥.
*sushiswapGetTokens (historical)ASync* | *GET* /dapps/sushiswap/tokens/historical | Tokens (historical) 🔥.
*sushiswapGetTransactions (historical)Sync* | *GET* /dapps/sushiswap/transactions/historical | Transactions (historical) 🔥.
*sushiswapGetTransactions (historical)ASync* | *GET* /dapps/sushiswap/transactions/historical | Transactions (historical) 🔥.
*sushiswapGetUsers (historical)Sync* | *GET* /dapps/sushiswap/users/historical | Users (historical) 🔥.
*sushiswapGetUsers (historical)ASync* | *GET* /dapps/sushiswap/users/historical | Users (historical) 🔥.


### UniswapV2Manager
Method | HTTP request | Description
------------- | ------------- | -------------
*uniswapV2GetBundleV2s (historical)Sync* | *GET* /dapps/uniswapv2/bundlev2s/historical | BundleV2s (historical) 🔥.
*uniswapV2GetBundleV2s (historical)ASync* | *GET* /dapps/uniswapv2/bundlev2s/historical | BundleV2s (historical) 🔥.
*uniswapV2GetBurnV2s (historical)Sync* | *GET* /dapps/uniswapv2/burnv2s/historical | BurnV2s (historical) 🔥.
*uniswapV2GetBurnV2s (historical)ASync* | *GET* /dapps/uniswapv2/burnv2s/historical | BurnV2s (historical) 🔥.
*uniswapV2GetLiquidityPositionSnapshotV2s (historical)Sync* | *GET* /dapps/uniswapv2/liquiditypositionsnapshotv2s/historical | LiquidityPositionSnapshotV2s (historical) 🔥.
*uniswapV2GetLiquidityPositionSnapshotV2s (historical)ASync* | *GET* /dapps/uniswapv2/liquiditypositionsnapshotv2s/historical | LiquidityPositionSnapshotV2s (historical) 🔥.
*uniswapV2GetLiquidityPositionV2s (historical)Sync* | *GET* /dapps/uniswapv2/liquiditypositionv2s/historical | LiquidityPositionV2s (historical) 🔥.
*uniswapV2GetLiquidityPositionV2s (historical)ASync* | *GET* /dapps/uniswapv2/liquiditypositionv2s/historical | LiquidityPositionV2s (historical) 🔥.
*uniswapV2GetMintV2s (historical)Sync* | *GET* /dapps/uniswapv2/mintv2s/historical | MintV2s (historical) 🔥.
*uniswapV2GetMintV2s (historical)ASync* | *GET* /dapps/uniswapv2/mintv2s/historical | MintV2s (historical) 🔥.
*uniswapV2GetPairDayDataV2s (historical)Sync* | *GET* /dapps/uniswapv2/pairdaydatav2s/historical | PairDayDataV2s (historical) 🔥.
*uniswapV2GetPairDayDataV2s (historical)ASync* | *GET* /dapps/uniswapv2/pairdaydatav2s/historical | PairDayDataV2s (historical) 🔥.
*uniswapV2GetPairHourDataV2s (historical)Sync* | *GET* /dapps/uniswapv2/pairhourdatav2s/historical | PairHourDataV2s (historical) 🔥.
*uniswapV2GetPairHourDataV2s (historical)ASync* | *GET* /dapps/uniswapv2/pairhourdatav2s/historical | PairHourDataV2s (historical) 🔥.
*uniswapV2GetPairV2s (historical)Sync* | *GET* /dapps/uniswapv2/pairv2s/historical | PairV2s (historical) 🔥.
*uniswapV2GetPairV2s (historical)ASync* | *GET* /dapps/uniswapv2/pairv2s/historical | PairV2s (historical) 🔥.
*uniswapV2GetPools (current)Sync* | *GET* /dapps/uniswapv2/pools/current | Pools (current) 🔥.
*uniswapV2GetPools (current)ASync* | *GET* /dapps/uniswapv2/pools/current | Pools (current) 🔥.
*uniswapV2GetSwapV2s (historical)Sync* | *GET* /dapps/uniswapv2/swapv2s/historical | SwapV2s (historical) 🔥.
*uniswapV2GetSwapV2s (historical)ASync* | *GET* /dapps/uniswapv2/swapv2s/historical | SwapV2s (historical) 🔥.
*uniswapV2GetSwaps (current)Sync* | *GET* /dapps/uniswapv2/swaps/current | Swaps (current) 🔥.
*uniswapV2GetSwaps (current)ASync* | *GET* /dapps/uniswapv2/swaps/current | Swaps (current) 🔥.
*uniswapV2GetTokenDayDataV2s (historical)Sync* | *GET* /dapps/uniswapv2/tokendaydatav2s/historical | TokenDayDataV2s (historical) 🔥.
*uniswapV2GetTokenDayDataV2s (historical)ASync* | *GET* /dapps/uniswapv2/tokendaydatav2s/historical | TokenDayDataV2s (historical) 🔥.
*uniswapV2GetTokenV2s (historical)Sync* | *GET* /dapps/uniswapv2/tokenv2s/historical | TokenV2s (historical) 🔥.
*uniswapV2GetTokenV2s (historical)ASync* | *GET* /dapps/uniswapv2/tokenv2s/historical | TokenV2s (historical) 🔥.
*uniswapV2GetTokens (current)Sync* | *GET* /dapps/uniswapv2/tokens/current | Tokens (current) 🔥.
*uniswapV2GetTokens (current)ASync* | *GET* /dapps/uniswapv2/tokens/current | Tokens (current) 🔥.
*uniswapV2GetTransactionV2s (historical)Sync* | *GET* /dapps/uniswapv2/transactionv2s/historical | TransactionV2s (historical) 🔥.
*uniswapV2GetTransactionV2s (historical)ASync* | *GET* /dapps/uniswapv2/transactionv2s/historical | TransactionV2s (historical) 🔥.
*uniswapV2GetUniswapDayDataV2s (historical)Sync* | *GET* /dapps/uniswapv2/uniswapdaydatav2s/historical | UniswapDayDataV2s (historical) 🔥.
*uniswapV2GetUniswapDayDataV2s (historical)ASync* | *GET* /dapps/uniswapv2/uniswapdaydatav2s/historical | UniswapDayDataV2s (historical) 🔥.
*uniswapV2GetUniswapFactoryV2s (historical)Sync* | *GET* /dapps/uniswapv2/uniswapfactoryv2s/historical | UniswapFactoryV2s (historical) 🔥.
*uniswapV2GetUniswapFactoryV2s (historical)ASync* | *GET* /dapps/uniswapv2/uniswapfactoryv2s/historical | UniswapFactoryV2s (historical) 🔥.
*uniswapV2GetUserV2s (historical)Sync* | *GET* /dapps/uniswapv2/userv2s/historical | UserV2s (historical) 🔥.
*uniswapV2GetUserV2s (historical)ASync* | *GET* /dapps/uniswapv2/userv2s/historical | UserV2s (historical) 🔥.


### UniswapV3Manager
Method | HTTP request | Description
------------- | ------------- | -------------
*uniswapV3GetBundleV3s (historical)Sync* | *GET* /dapps/uniswapv3/bundlev3s/historical | BundleV3s (historical) 🔥.
*uniswapV3GetBundleV3s (historical)ASync* | *GET* /dapps/uniswapv3/bundlev3s/historical | BundleV3s (historical) 🔥.
*uniswapV3GetBundles (current)Sync* | *GET* /dapps/uniswapv3/bundles/current | Bundles (current).
*uniswapV3GetBundles (current)ASync* | *GET* /dapps/uniswapv3/bundles/current | Bundles (current).
*uniswapV3GetBurnV3s (historical)Sync* | *GET* /dapps/uniswapv3/burnv3s/historical | BurnV3s (historical) 🔥.
*uniswapV3GetBurnV3s (historical)ASync* | *GET* /dapps/uniswapv3/burnv3s/historical | BurnV3s (historical) 🔥.
*uniswapV3GetBurns (current)Sync* | *GET* /dapps/uniswapv3/burns/current | Burns (current).
*uniswapV3GetBurns (current)ASync* | *GET* /dapps/uniswapv3/burns/current | Burns (current).
*uniswapV3GetDayData (current)Sync* | *GET* /dapps/uniswapv3/dayData/current | DayData (current).
*uniswapV3GetDayData (current)ASync* | *GET* /dapps/uniswapv3/dayData/current | DayData (current).
*uniswapV3GetFactory (current)Sync* | *GET* /dapps/uniswapv3/factory/current | Factory (current).
*uniswapV3GetFactory (current)ASync* | *GET* /dapps/uniswapv3/factory/current | Factory (current).
*uniswapV3GetFactoryV3s (historical)Sync* | *GET* /dapps/uniswapv3/factoryv3s/historical | FactoryV3s (historical) 🔥.
*uniswapV3GetFactoryV3s (historical)ASync* | *GET* /dapps/uniswapv3/factoryv3s/historical | FactoryV3s (historical) 🔥.
*uniswapV3GetMintV3s (historical)Sync* | *GET* /dapps/uniswapv3/mintv3s/historical | MintV3s (historical) 🔥.
*uniswapV3GetMintV3s (historical)ASync* | *GET* /dapps/uniswapv3/mintv3s/historical | MintV3s (historical) 🔥.
*uniswapV3GetMints (current)Sync* | *GET* /dapps/uniswapv3/mints/current | Mints (current).
*uniswapV3GetMints (current)ASync* | *GET* /dapps/uniswapv3/mints/current | Mints (current).
*uniswapV3GetPoolDayDataV3s (historical)Sync* | *GET* /dapps/uniswapv3/pooldaydatav3s/historical | PoolDayDataV3s (historical) 🔥.
*uniswapV3GetPoolDayDataV3s (historical)ASync* | *GET* /dapps/uniswapv3/pooldaydatav3s/historical | PoolDayDataV3s (historical) 🔥.
*uniswapV3GetPoolHourDataV3s (historical)Sync* | *GET* /dapps/uniswapv3/poolhourdatav3s/historical | PoolHourDataV3s (historical) 🔥.
*uniswapV3GetPoolHourDataV3s (historical)ASync* | *GET* /dapps/uniswapv3/poolhourdatav3s/historical | PoolHourDataV3s (historical) 🔥.
*uniswapV3GetPoolV3s (historical)Sync* | *GET* /dapps/uniswapv3/poolv3s/historical | PoolV3s (historical) 🔥.
*uniswapV3GetPoolV3s (historical)ASync* | *GET* /dapps/uniswapv3/poolv3s/historical | PoolV3s (historical) 🔥.
*uniswapV3GetPools (current)Sync* | *GET* /dapps/uniswapv3/pools/current | Pools (current) 🔥.
*uniswapV3GetPools (current)ASync* | *GET* /dapps/uniswapv3/pools/current | Pools (current) 🔥.
*uniswapV3GetPoolsDayData (current)Sync* | *GET* /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current).
*uniswapV3GetPoolsDayData (current)ASync* | *GET* /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current).
*uniswapV3GetPoolsHourData (current)Sync* | *GET* /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current).
*uniswapV3GetPoolsHourData (current)ASync* | *GET* /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current).
*uniswapV3GetPositionSnapshotV3s (historical)Sync* | *GET* /dapps/uniswapv3/positionsnapshotv3s/historical | PositionSnapshotV3s (historical) 🔥.
*uniswapV3GetPositionSnapshotV3s (historical)ASync* | *GET* /dapps/uniswapv3/positionsnapshotv3s/historical | PositionSnapshotV3s (historical) 🔥.
*uniswapV3GetPositionV3s (historical)Sync* | *GET* /dapps/uniswapv3/positionv3s/historical | PositionV3s (historical) 🔥.
*uniswapV3GetPositionV3s (historical)ASync* | *GET* /dapps/uniswapv3/positionv3s/historical | PositionV3s (historical) 🔥.
*uniswapV3GetPositions (current)Sync* | *GET* /dapps/uniswapv3/positions/current | Positions (current).
*uniswapV3GetPositions (current)ASync* | *GET* /dapps/uniswapv3/positions/current | Positions (current).
*uniswapV3GetPositionsSnapshots (current)Sync* | *GET* /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current).
*uniswapV3GetPositionsSnapshots (current)ASync* | *GET* /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current).
*uniswapV3GetSwapV3s (historical)Sync* | *GET* /dapps/uniswapv3/swapv3s/historical | SwapV3s (historical) 🔥.
*uniswapV3GetSwapV3s (historical)ASync* | *GET* /dapps/uniswapv3/swapv3s/historical | SwapV3s (historical) 🔥.
*uniswapV3GetSwaps (current)Sync* | *GET* /dapps/uniswapv3/swaps/current | Swaps (current) 🔥.
*uniswapV3GetSwaps (current)ASync* | *GET* /dapps/uniswapv3/swaps/current | Swaps (current) 🔥.
*uniswapV3GetTickDayDataV3s (historical)Sync* | *GET* /dapps/uniswapv3/tickdaydatav3s/historical | TickDayDataV3s (historical) 🔥.
*uniswapV3GetTickDayDataV3s (historical)ASync* | *GET* /dapps/uniswapv3/tickdaydatav3s/historical | TickDayDataV3s (historical) 🔥.
*uniswapV3GetTickV3s (historical)Sync* | *GET* /dapps/uniswapv3/tickv3s/historical | TickV3s (historical) 🔥.
*uniswapV3GetTickV3s (historical)ASync* | *GET* /dapps/uniswapv3/tickv3s/historical | TickV3s (historical) 🔥.
*uniswapV3GetTicks (current)Sync* | *GET* /dapps/uniswapv3/ticks/current | Ticks (current).
*uniswapV3GetTicks (current)ASync* | *GET* /dapps/uniswapv3/ticks/current | Ticks (current).
*uniswapV3GetTicksDayData (current)Sync* | *GET* /dapps/uniswapv3/ticksDayData/current | TicksDayData (current).
*uniswapV3GetTicksDayData (current)ASync* | *GET* /dapps/uniswapv3/ticksDayData/current | TicksDayData (current).
*uniswapV3GetTokenHourDataV3s (historical)Sync* | *GET* /dapps/uniswapv3/tokenhourdatav3s/historical | TokenHourDataV3s (historical) 🔥.
*uniswapV3GetTokenHourDataV3s (historical)ASync* | *GET* /dapps/uniswapv3/tokenhourdatav3s/historical | TokenHourDataV3s (historical) 🔥.
*uniswapV3GetTokenV3DayDatas (historical)Sync* | *GET* /dapps/uniswapv3/tokenv3daydatas/historical | TokenV3DayDatas (historical) 🔥.
*uniswapV3GetTokenV3DayDatas (historical)ASync* | *GET* /dapps/uniswapv3/tokenv3daydatas/historical | TokenV3DayDatas (historical) 🔥.
*uniswapV3GetTokenV3s (historical)Sync* | *GET* /dapps/uniswapv3/tokenv3s/historical | TokenV3s (historical) 🔥.
*uniswapV3GetTokenV3s (historical)ASync* | *GET* /dapps/uniswapv3/tokenv3s/historical | TokenV3s (historical) 🔥.
*uniswapV3GetTokens (current)Sync* | *GET* /dapps/uniswapv3/tokens/current | Tokens (current) 🔥.
*uniswapV3GetTokens (current)ASync* | *GET* /dapps/uniswapv3/tokens/current | Tokens (current) 🔥.
*uniswapV3GetTokensDayData (current)Sync* | *GET* /dapps/uniswapv3/tokensDayData/current | TokensDayData (current).
*uniswapV3GetTokensDayData (current)ASync* | *GET* /dapps/uniswapv3/tokensDayData/current | TokensDayData (current).
*uniswapV3GetTokensHourData (current)Sync* | *GET* /dapps/uniswapv3/tokensHourData/current | TokensHourData (current).
*uniswapV3GetTokensHourData (current)ASync* | *GET* /dapps/uniswapv3/tokensHourData/current | TokensHourData (current).
*uniswapV3GetTransactionV3s (historical)Sync* | *GET* /dapps/uniswapv3/transactionv3s/historical | TransactionV3s (historical) 🔥.
*uniswapV3GetTransactionV3s (historical)ASync* | *GET* /dapps/uniswapv3/transactionv3s/historical | TransactionV3s (historical) 🔥.
*uniswapV3GetUniswapDayDataV3s (historical)Sync* | *GET* /dapps/uniswapv3/uniswapdaydatav3s/historical | UniswapDayDataV3s (historical) 🔥.
*uniswapV3GetUniswapDayDataV3s (historical)ASync* | *GET* /dapps/uniswapv3/uniswapdaydatav3s/historical | UniswapDayDataV3s (historical) 🔥.


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

