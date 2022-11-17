# OnChain API Bash client

## Overview

This is a Bash client script for accessing OnChain API service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x 

# Print the list of operations available on the service
$ ./ -h

# Print the service description
$ ./ --about

# Print detailed information about specific operation
$ ./ <operationId> -h

# Make GET request
./ --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
 -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Make POST request with form data
$  --host <hostname> <operationId> key1:=value1 key2:=value2 key3:=23

# Preview the cURL command without actually executing it
$  --host http://<hostname>:<port> --dry-run <operationid>

```

## Docker image

You can easily create a Docker image containing a preconfigured environment
for using the REST Bash client including working autocompletion and short
welcome message with basic instructions, using the generated Dockerfile:

```shell
docker build -t my-rest-client .
docker run -it my-rest-client
```

By default you will be logged into a Zsh environment which has much more
advanced auto completion, but you can switch to Bash, where basic autocompletion
is also available.

## Shell completion

### Bash

The generated bash-completion script can be either directly loaded to the current Bash session using:

```shell
source .bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp .bash-completion /etc/bash-completion.d/
```

#### OS X

On OSX you might need to install bash-completion using Homebrew:

```shell
brew install bash-completion
```

and add the following to the `~/.bashrc`:

```shell
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
```

### Zsh

In Zsh, the generated `_` Zsh completion file must be copied to one of the folders under `$FPATH` variable.

## Documentation for API Endpoints

All URIs are relative to **

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CowApi* | [**cowGetOrdersHistorical**](docs/CowApi.md#cowgetordershistorical) | **GET** /dapps/cow/orders/historical | Orders (historical) 🔥
*CowApi* | [**cowGetSettlementsHistorical**](docs/CowApi.md#cowgetsettlementshistorical) | **GET** /dapps/cow/settlements/historical | Settlements (historical) 🔥
*CowApi* | [**cowGetTokensHistorical**](docs/CowApi.md#cowgettokenshistorical) | **GET** /dapps/cow/tokens/historical | Tokens (historical) 🔥
*CowApi* | [**cowGetTradesHistorical**](docs/CowApi.md#cowgettradeshistorical) | **GET** /dapps/cow/trades/historical | Trades (historical) 🔥
*CowApi* | [**cowGetUsersHistorical**](docs/CowApi.md#cowgetusershistorical) | **GET** /dapps/cow/users/historical | Users (historical) 🔥
*CowApi* | [**cowOrdersCurrent**](docs/CowApi.md#coworderscurrent) | **GET** /dapps/cow/orders/current | Orders (current)
*CowApi* | [**cowSettlementsCurrent**](docs/CowApi.md#cowsettlementscurrent) | **GET** /dapps/cow/settlements/current | Settlements (current)
*CowApi* | [**cowTokensCurrent**](docs/CowApi.md#cowtokenscurrent) | **GET** /dapps/cow/tokens/current | Tokens (current)
*CowApi* | [**cowTradesCurrent**](docs/CowApi.md#cowtradescurrent) | **GET** /dapps/cow/trades/current | Trades (current)
*CowApi* | [**cowUsersCurrent**](docs/CowApi.md#cowuserscurrent) | **GET** /dapps/cow/users/current | Users (current)
*CurveApi* | [**curveAccountsCurrent**](docs/CurveApi.md#curveaccountscurrent) | **GET** /dapps/curve/accounts/current | Accounts (current)
*CurveApi* | [**curveAddLiquidityEventsCurrent**](docs/CurveApi.md#curveaddliquidityeventscurrent) | **GET** /dapps/curve/addLiquidityEvents/current | AddLiquidityEvents (current)
*CurveApi* | [**curveAdminFeeChangeLogsCurrent**](docs/CurveApi.md#curveadminfeechangelogscurrent) | **GET** /dapps/curve/adminFeeChangeLogs/current | AdminFeeChangeLogs (current)
*CurveApi* | [**curveAmplificationCoeffChangeLogsCurrent**](docs/CurveApi.md#curveamplificationcoeffchangelogscurrent) | **GET** /dapps/curve/amplificationCoeffChangeLogs/current | AmplificationCoeffChangeLogs (current)
*CurveApi* | [**curveCoinsCurrent**](docs/CurveApi.md#curvecoinscurrent) | **GET** /dapps/curve/coins/current | Coins (current)
*CurveApi* | [**curveContractVersionsCurrent**](docs/CurveApi.md#curvecontractversionscurrent) | **GET** /dapps/curve/contractVersions/current | ContractVersions (current)
*CurveApi* | [**curveContractsCurrent**](docs/CurveApi.md#curvecontractscurrent) | **GET** /dapps/curve/contracts/current | Contracts (current)
*CurveApi* | [**curveDailyVolumesCurrent**](docs/CurveApi.md#curvedailyvolumescurrent) | **GET** /dapps/curve/dailyVolumes/current | DailyVolumes (current)
*CurveApi* | [**curveExchangesCurrent**](docs/CurveApi.md#curveexchangescurrent) | **GET** /dapps/curve/exchanges/current | Exchanges (current)
*CurveApi* | [**curveFeeChangeLogsCurrent**](docs/CurveApi.md#curvefeechangelogscurrent) | **GET** /dapps/curve/feeChangeLogs/current | FeeChangeLogs (current)
*CurveApi* | [**curveGaugeDepositsCurrent**](docs/CurveApi.md#curvegaugedepositscurrent) | **GET** /dapps/curve/gaugeDeposits/current | GaugeDeposits (current)
*CurveApi* | [**curveGaugeLiquiditysCurrent**](docs/CurveApi.md#curvegaugeliquidityscurrent) | **GET** /dapps/curve/gaugeLiquiditys/current | GaugeLiquiditys (current)
*CurveApi* | [**curveGaugeTotalWeightsCurrent**](docs/CurveApi.md#curvegaugetotalweightscurrent) | **GET** /dapps/curve/gaugeTotalWeights/current | GaugeTotalWeights (current)
*CurveApi* | [**curveGaugeTypeWeightsCurrent**](docs/CurveApi.md#curvegaugetypeweightscurrent) | **GET** /dapps/curve/gaugeTypeWeights/current | GaugeTypeWeights (current)
*CurveApi* | [**curveGaugeTypesCurrent**](docs/CurveApi.md#curvegaugetypescurrent) | **GET** /dapps/curve/gaugeTypes/current | GaugeTypes (current)
*CurveApi* | [**curveGaugeWeightVotesCurrent**](docs/CurveApi.md#curvegaugeweightvotescurrent) | **GET** /dapps/curve/gaugeWeightVotes/current | GaugeWeightVotes (current)
*CurveApi* | [**curveGaugeWeightsCurrent**](docs/CurveApi.md#curvegaugeweightscurrent) | **GET** /dapps/curve/gaugeWeights/current | GaugeWeights (current)
*CurveApi* | [**curveGaugeWithdrawsCurrent**](docs/CurveApi.md#curvegaugewithdrawscurrent) | **GET** /dapps/curve/gaugeWithdraws/current | GaugeWithdraws (current)
*CurveApi* | [**curveGaugesCurrent**](docs/CurveApi.md#curvegaugescurrent) | **GET** /dapps/curve/gauges/current | Gauges (current)
*CurveApi* | [**curveGetAccountsHistorical**](docs/CurveApi.md#curvegetaccountshistorical) | **GET** /dapps/curve/accounts/historical | Accounts (historical) 🔥
*CurveApi* | [**curveGetAddLiquidityEventsHistorical**](docs/CurveApi.md#curvegetaddliquidityeventshistorical) | **GET** /dapps/curve/addLiquidityEvents/historical | AddLiquidityEvents (historical) 🔥
*CurveApi* | [**curveGetAdminFeeChangeLogsHistorical**](docs/CurveApi.md#curvegetadminfeechangelogshistorical) | **GET** /dapps/curve/adminFeeChangeLogs/historical | AdminFeeChangeLogs (historical) 🔥
*CurveApi* | [**curveGetAmplificationCoeffChangeLogsHistorical**](docs/CurveApi.md#curvegetamplificationcoeffchangelogshistorical) | **GET** /dapps/curve/amplificationCoeffChangeLogs/historical | AmplificationCoeffChangeLogs (historical) 🔥
*CurveApi* | [**curveGetCoinsHistorical**](docs/CurveApi.md#curvegetcoinshistorical) | **GET** /dapps/curve/coins/historical | Coins (historical) 🔥
*CurveApi* | [**curveGetContractVersionsHistorical**](docs/CurveApi.md#curvegetcontractversionshistorical) | **GET** /dapps/curve/contractVersions/historical | ContractVersions (historical) 🔥
*CurveApi* | [**curveGetContractsHistorical**](docs/CurveApi.md#curvegetcontractshistorical) | **GET** /dapps/curve/contracts/historical | Contracts (historical) 🔥
*CurveApi* | [**curveGetDailyVolumesHistorical**](docs/CurveApi.md#curvegetdailyvolumeshistorical) | **GET** /dapps/curve/dailyVolumes/historical | DailyVolumes (historical) 🔥
*CurveApi* | [**curveGetExchangesHistorical**](docs/CurveApi.md#curvegetexchangeshistorical) | **GET** /dapps/curve/exchanges/historical | Exchanges (historical) 🔥
*CurveApi* | [**curveGetFeeChangeLogsHistorical**](docs/CurveApi.md#curvegetfeechangelogshistorical) | **GET** /dapps/curve/feeChangeLogs/historical | FeeChangeLogs (historical) 🔥
*CurveApi* | [**curveGetGaugeDepositsHistorical**](docs/CurveApi.md#curvegetgaugedepositshistorical) | **GET** /dapps/curve/gaugeDeposits/historical | GaugeDeposits (historical) 🔥
*CurveApi* | [**curveGetGaugeLiquiditysHistorical**](docs/CurveApi.md#curvegetgaugeliquidityshistorical) | **GET** /dapps/curve/gaugeLiquiditys/historical | GaugeLiquiditys (historical) 🔥
*CurveApi* | [**curveGetGaugeTotalWeightsHistorical**](docs/CurveApi.md#curvegetgaugetotalweightshistorical) | **GET** /dapps/curve/gaugeTotalWeights/historical | GaugeTotalWeights (historical) 🔥
*CurveApi* | [**curveGetGaugeTypeWeightsHistorical**](docs/CurveApi.md#curvegetgaugetypeweightshistorical) | **GET** /dapps/curve/gaugeTypeWeights/historical | GaugeTypeWeights (historical) 🔥
*CurveApi* | [**curveGetGaugeTypesHistorical**](docs/CurveApi.md#curvegetgaugetypeshistorical) | **GET** /dapps/curve/gaugeTypes/historical | GaugeTypes (historical) 🔥
*CurveApi* | [**curveGetGaugeWeightVotesHistorical**](docs/CurveApi.md#curvegetgaugeweightvoteshistorical) | **GET** /dapps/curve/gaugeWeightVotes/historical | GaugeWeightVotes (historical) 🔥
*CurveApi* | [**curveGetGaugeWeightsHistorical**](docs/CurveApi.md#curvegetgaugeweightshistorical) | **GET** /dapps/curve/gaugeWeights/historical | GaugeWeights (historical) 🔥
*CurveApi* | [**curveGetGaugeWithdrawsHistorical**](docs/CurveApi.md#curvegetgaugewithdrawshistorical) | **GET** /dapps/curve/gaugeWithdraws/historical | GaugeWithdraws (historical) 🔥
*CurveApi* | [**curveGetGaugesHistorical**](docs/CurveApi.md#curvegetgaugeshistorical) | **GET** /dapps/curve/gauges/historical | Gauges (historical) 🔥
*CurveApi* | [**curveGetHourlyVolumesHistorical**](docs/CurveApi.md#curvegethourlyvolumeshistorical) | **GET** /dapps/curve/hourlyVolumes/historical | HourlyVolumes (historical) 🔥
*CurveApi* | [**curveGetLpTokensHistorical**](docs/CurveApi.md#curvegetlptokenshistorical) | **GET** /dapps/curve/lpTokens/historical | LpTokens (historical) 🔥
*CurveApi* | [**curveGetPoolsHistorical**](docs/CurveApi.md#curvegetpoolshistorical) | **GET** /dapps/curve/pools/historical | Pools (historical) 🔥
*CurveApi* | [**curveGetProposalVotesHistorical**](docs/CurveApi.md#curvegetproposalvoteshistorical) | **GET** /dapps/curve/proposalVotes/historical | ProposalVotes (historical) 🔥
*CurveApi* | [**curveGetProposalsHistorical**](docs/CurveApi.md#curvegetproposalshistorical) | **GET** /dapps/curve/proposals/historical | Proposals (historical) 🔥
*CurveApi* | [**curveGetRemoveLiquidityEventsHistorical**](docs/CurveApi.md#curvegetremoveliquidityeventshistorical) | **GET** /dapps/curve/removeLiquidityEvents/historical | RemoveLiquidityEvents (historical) 🔥
*CurveApi* | [**curveGetRemoveLiquidityOneEventsHistorical**](docs/CurveApi.md#curvegetremoveliquidityoneeventshistorical) | **GET** /dapps/curve/removeLiquidityOneEvents/historical | RemoveLiquidityOneEvents (historical) 🔥
*CurveApi* | [**curveGetSystemStatesHistorical**](docs/CurveApi.md#curvegetsystemstateshistorical) | **GET** /dapps/curve/systemStates/historical | SystemStates (historical) 🔥
*CurveApi* | [**curveGetTokensHistorical**](docs/CurveApi.md#curvegettokenshistorical) | **GET** /dapps/curve/tokens/historical | Tokens (historical) 🔥
*CurveApi* | [**curveGetTransferOwnershipEventsHistorical**](docs/CurveApi.md#curvegettransferownershipeventshistorical) | **GET** /dapps/curve/transferOwnershipEvents/historical | TransferOwnershipEvents (historical) 🔥
*CurveApi* | [**curveGetUnderlyingCoinsHistorical**](docs/CurveApi.md#curvegetunderlyingcoinshistorical) | **GET** /dapps/curve/underlyingCoins/historical | UnderlyingCoins (historical) 🔥
*CurveApi* | [**curveGetVotingAppsHistorical**](docs/CurveApi.md#curvegetvotingappshistorical) | **GET** /dapps/curve/votingApps/historical | VotingApps (historical) 🔥
*CurveApi* | [**curveGetWeeklyVolumesHistorical**](docs/CurveApi.md#curvegetweeklyvolumeshistorical) | **GET** /dapps/curve/weeklyVolumes/historical | WeeklyVolumes (historical) 🔥
*CurveApi* | [**curveHourlyVolumesCurrent**](docs/CurveApi.md#curvehourlyvolumescurrent) | **GET** /dapps/curve/hourlyVolumes/current | HourlyVolumes (current)
*CurveApi* | [**curveLpTokensCurrent**](docs/CurveApi.md#curvelptokenscurrent) | **GET** /dapps/curve/lpTokens/current | LpTokens (current)
*CurveApi* | [**curvePoolsCurrent**](docs/CurveApi.md#curvepoolscurrent) | **GET** /dapps/curve/pools/current | Pools (current)
*CurveApi* | [**curveProposalVotesCurrent**](docs/CurveApi.md#curveproposalvotescurrent) | **GET** /dapps/curve/proposalVotes/current | ProposalVotes (current)
*CurveApi* | [**curveProposalsCurrent**](docs/CurveApi.md#curveproposalscurrent) | **GET** /dapps/curve/proposals/current | Proposals (current)
*CurveApi* | [**curveRemoveLiquidityEventsCurrent**](docs/CurveApi.md#curveremoveliquidityeventscurrent) | **GET** /dapps/curve/removeLiquidityEvents/current | RemoveLiquidityEvents (current)
*CurveApi* | [**curveRemoveLiquidityOneEventsCurrent**](docs/CurveApi.md#curveremoveliquidityoneeventscurrent) | **GET** /dapps/curve/removeLiquidityOneEvents/current | RemoveLiquidityOneEvents (current)
*CurveApi* | [**curveSystemStatesCurrent**](docs/CurveApi.md#curvesystemstatescurrent) | **GET** /dapps/curve/systemStates/current | SystemStates (current)
*CurveApi* | [**curveTokensCurrent**](docs/CurveApi.md#curvetokenscurrent) | **GET** /dapps/curve/tokens/current | Tokens (current)
*CurveApi* | [**curveTransferOwnershipEventsCurrent**](docs/CurveApi.md#curvetransferownershipeventscurrent) | **GET** /dapps/curve/transferOwnershipEvents/current | TransferOwnershipEvents (current)
*CurveApi* | [**curveUnderlyingCoinsCurrent**](docs/CurveApi.md#curveunderlyingcoinscurrent) | **GET** /dapps/curve/underlyingCoins/current | UnderlyingCoins (current)
*CurveApi* | [**curveVotingAppsCurrent**](docs/CurveApi.md#curvevotingappscurrent) | **GET** /dapps/curve/votingApps/current | VotingApps (current)
*CurveApi* | [**curveWeeklyVolumesCurrent**](docs/CurveApi.md#curveweeklyvolumescurrent) | **GET** /dapps/curve/weeklyVolumes/current | WeeklyVolumes (current)
*DexApi* | [**dexBatchsCurrent**](docs/DexApi.md#dexbatchscurrent) | **GET** /dapps/dex/batchs/current | Batchs (current)
*DexApi* | [**dexDepositsCurrent**](docs/DexApi.md#dexdepositscurrent) | **GET** /dapps/dex/deposits/current | Deposits (current)
*DexApi* | [**dexGetBatchsHistorical**](docs/DexApi.md#dexgetbatchshistorical) | **GET** /dapps/dex/batchs/historical | Batchs (historical) 🔥
*DexApi* | [**dexGetDepositsHistorical**](docs/DexApi.md#dexgetdepositshistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical) 🔥
*DexApi* | [**dexGetOrdersHistorical**](docs/DexApi.md#dexgetordershistorical) | **GET** /dapps/dex/orders/historical | Orders (historical) 🔥
*DexApi* | [**dexGetPricesHistorical**](docs/DexApi.md#dexgetpriceshistorical) | **GET** /dapps/dex/prices/historical | Prices (historical) 🔥
*DexApi* | [**dexGetSolutionsHistorical**](docs/DexApi.md#dexgetsolutionshistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical) 🔥
*DexApi* | [**dexGetStatssHistorical**](docs/DexApi.md#dexgetstatsshistorical) | **GET** /dapps/dex/statss/historical | Statss (historical) 🔥
*DexApi* | [**dexGetTokensHistorical**](docs/DexApi.md#dexgettokenshistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical) 🔥
*DexApi* | [**dexGetTradesHistorical**](docs/DexApi.md#dexgettradeshistorical) | **GET** /dapps/dex/trades/historical | Trades (historical) 🔥
*DexApi* | [**dexGetUsersHistorical**](docs/DexApi.md#dexgetusershistorical) | **GET** /dapps/dex/users/historical | Users (historical) 🔥
*DexApi* | [**dexGetWithdrawRequestsHistorical**](docs/DexApi.md#dexgetwithdrawrequestshistorical) | **GET** /dapps/dex/withdrawRequests/historical | WithdrawRequests (historical) 🔥
*DexApi* | [**dexGetWithdrawsHistorical**](docs/DexApi.md#dexgetwithdrawshistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical) 🔥
*DexApi* | [**dexOrdersCurrent**](docs/DexApi.md#dexorderscurrent) | **GET** /dapps/dex/orders/current | Orders (current)
*DexApi* | [**dexPricesCurrent**](docs/DexApi.md#dexpricescurrent) | **GET** /dapps/dex/prices/current | Prices (current)
*DexApi* | [**dexSolutionsCurrent**](docs/DexApi.md#dexsolutionscurrent) | **GET** /dapps/dex/solutions/current | Solutions (current)
*DexApi* | [**dexStatssCurrent**](docs/DexApi.md#dexstatsscurrent) | **GET** /dapps/dex/statss/current | Statss (current)
*DexApi* | [**dexTokensCurrent**](docs/DexApi.md#dextokenscurrent) | **GET** /dapps/dex/tokens/current | Tokens (current)
*DexApi* | [**dexTradesCurrent**](docs/DexApi.md#dextradescurrent) | **GET** /dapps/dex/trades/current | Trades (current)
*DexApi* | [**dexUsersCurrent**](docs/DexApi.md#dexuserscurrent) | **GET** /dapps/dex/users/current | Users (current)
*DexApi* | [**dexWithdrawRequestsCurrent**](docs/DexApi.md#dexwithdrawrequestscurrent) | **GET** /dapps/dex/withdrawRequests/current | WithdrawRequests (current)
*DexApi* | [**dexWithdrawsCurrent**](docs/DexApi.md#dexwithdrawscurrent) | **GET** /dapps/dex/withdraws/current | Withdraws (current)
*SushiswapApi* | [**curveGetExchangesCurrent**](docs/SushiswapApi.md#curvegetexchangescurrent) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
*SushiswapApi* | [**dexGetTradesCurrent**](docs/SushiswapApi.md#dexgettradescurrent) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥
*SushiswapApi* | [**sushiswapBundlesCurrent**](docs/SushiswapApi.md#sushiswapbundlescurrent) | **GET** /dapps/sushiswap/bundles/current | Bundles (current)
*SushiswapApi* | [**sushiswapBurnsCurrent**](docs/SushiswapApi.md#sushiswapburnscurrent) | **GET** /dapps/sushiswap/burns/current | Burns (current)
*SushiswapApi* | [**sushiswapDayDatasCurrent**](docs/SushiswapApi.md#sushiswapdaydatascurrent) | **GET** /dapps/sushiswap/dayDatas/current | DayDatas (current)
*SushiswapApi* | [**sushiswapFactorysCurrent**](docs/SushiswapApi.md#sushiswapfactoryscurrent) | **GET** /dapps/sushiswap/factorys/current | Factorys (current)
*SushiswapApi* | [**sushiswapGetBundlesHistorical**](docs/SushiswapApi.md#sushiswapgetbundleshistorical) | **GET** /dapps/sushiswap/bundles/historical | Bundles (historical) 🔥
*SushiswapApi* | [**sushiswapGetBurnsHistorical**](docs/SushiswapApi.md#sushiswapgetburnshistorical) | **GET** /dapps/sushiswap/burns/historical | Burns (historical) 🔥
*SushiswapApi* | [**sushiswapGetDayDatasHistorical**](docs/SushiswapApi.md#sushiswapgetdaydatashistorical) | **GET** /dapps/sushiswap/dayDatas/historical | DayDatas (historical) 🔥
*SushiswapApi* | [**sushiswapGetFactorysHistorical**](docs/SushiswapApi.md#sushiswapgetfactoryshistorical) | **GET** /dapps/sushiswap/factorys/historical | Factorys (historical) 🔥
*SushiswapApi* | [**sushiswapGetHourDatasHistorical**](docs/SushiswapApi.md#sushiswapgethourdatashistorical) | **GET** /dapps/sushiswap/hourDatas/historical | HourDatas (historical) 🔥
*SushiswapApi* | [**sushiswapGetLiquidityPositionSnapshotsHistorical**](docs/SushiswapApi.md#sushiswapgetliquiditypositionsnapshotshistorical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | LiquidityPositionSnapshots (historical) 🔥
*SushiswapApi* | [**sushiswapGetLiquidityPositionsHistorical**](docs/SushiswapApi.md#sushiswapgetliquiditypositionshistorical) | **GET** /dapps/sushiswap/liquidityPositions/historical | LiquidityPositions (historical) 🔥
*SushiswapApi* | [**sushiswapGetMintsHistorical**](docs/SushiswapApi.md#sushiswapgetmintshistorical) | **GET** /dapps/sushiswap/mints/historical | Mints (historical) 🔥
*SushiswapApi* | [**sushiswapGetPairDayDatasHistorical**](docs/SushiswapApi.md#sushiswapgetpairdaydatashistorical) | **GET** /dapps/sushiswap/pairDayDatas/historical | PairDayDatas (historical) 🔥
*SushiswapApi* | [**sushiswapGetPairHourDatasHistorical**](docs/SushiswapApi.md#sushiswapgetpairhourdatashistorical) | **GET** /dapps/sushiswap/pairHourDatas/historical | PairHourDatas (historical) 🔥
*SushiswapApi* | [**sushiswapGetPairsHistorical**](docs/SushiswapApi.md#sushiswapgetpairshistorical) | **GET** /dapps/sushiswap/pairs/historical | Pairs (historical) 🔥
*SushiswapApi* | [**sushiswapGetPoolsCurrent**](docs/SushiswapApi.md#sushiswapgetpoolscurrent) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥
*SushiswapApi* | [**sushiswapGetSwapsHistorical**](docs/SushiswapApi.md#sushiswapgetswapshistorical) | **GET** /dapps/sushiswap/swaps/historical | Swaps (historical) 🔥
*SushiswapApi* | [**sushiswapGetTokenDayDatasHistorical**](docs/SushiswapApi.md#sushiswapgettokendaydatashistorical) | **GET** /dapps/sushiswap/tokenDayDatas/historical | TokenDayDatas (historical) 🔥
*SushiswapApi* | [**sushiswapGetTokensHistorical**](docs/SushiswapApi.md#sushiswapgettokenshistorical) | **GET** /dapps/sushiswap/tokens/historical | Tokens (historical) 🔥
*SushiswapApi* | [**sushiswapGetTransactionsHistorical**](docs/SushiswapApi.md#sushiswapgettransactionshistorical) | **GET** /dapps/sushiswap/transactions/historical | Transactions (historical) 🔥
*SushiswapApi* | [**sushiswapGetUsersHistorical**](docs/SushiswapApi.md#sushiswapgetusershistorical) | **GET** /dapps/sushiswap/users/historical | Users (historical) 🔥
*SushiswapApi* | [**sushiswapHourDatasCurrent**](docs/SushiswapApi.md#sushiswaphourdatascurrent) | **GET** /dapps/sushiswap/hourDatas/current | HourDatas (current)
*SushiswapApi* | [**sushiswapLiquidityPositionSnapshotsCurrent**](docs/SushiswapApi.md#sushiswapliquiditypositionsnapshotscurrent) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/current | LiquidityPositionSnapshots (current)
*SushiswapApi* | [**sushiswapLiquidityPositionsCurrent**](docs/SushiswapApi.md#sushiswapliquiditypositionscurrent) | **GET** /dapps/sushiswap/liquidityPositions/current | LiquidityPositions (current)
*SushiswapApi* | [**sushiswapMintsCurrent**](docs/SushiswapApi.md#sushiswapmintscurrent) | **GET** /dapps/sushiswap/mints/current | Mints (current)
*SushiswapApi* | [**sushiswapPairDayDatasCurrent**](docs/SushiswapApi.md#sushiswappairdaydatascurrent) | **GET** /dapps/sushiswap/pairDayDatas/current | PairDayDatas (current)
*SushiswapApi* | [**sushiswapPairHourDatasCurrent**](docs/SushiswapApi.md#sushiswappairhourdatascurrent) | **GET** /dapps/sushiswap/pairHourDatas/current | PairHourDatas (current)
*SushiswapApi* | [**sushiswapPairsCurrent**](docs/SushiswapApi.md#sushiswappairscurrent) | **GET** /dapps/sushiswap/pairs/current | Pairs (current)
*SushiswapApi* | [**sushiswapSwapsCurrent**](docs/SushiswapApi.md#sushiswapswapscurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current)
*SushiswapApi* | [**sushiswapTokenDayDatasCurrent**](docs/SushiswapApi.md#sushiswaptokendaydatascurrent) | **GET** /dapps/sushiswap/tokenDayDatas/current | TokenDayDatas (current)
*SushiswapApi* | [**sushiswapTokensCurrent**](docs/SushiswapApi.md#sushiswaptokenscurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current)
*SushiswapApi* | [**sushiswapTransactionsCurrent**](docs/SushiswapApi.md#sushiswaptransactionscurrent) | **GET** /dapps/sushiswap/transactions/current | Transactions (current)
*SushiswapApi* | [**sushiswapUsersCurrent**](docs/SushiswapApi.md#sushiswapuserscurrent) | **GET** /dapps/sushiswap/users/current | Users (current)
*UniswapV2Api* | [**uniswapV2BundlesCurrent**](docs/UniswapV2Api.md#uniswapv2bundlescurrent) | **GET** /dapps/uniswapv2/bundles/current | Bundles (current)
*UniswapV2Api* | [**uniswapV2BurnsCurrent**](docs/UniswapV2Api.md#uniswapv2burnscurrent) | **GET** /dapps/uniswapv2/burns/current | Burns (current)
*UniswapV2Api* | [**uniswapV2GetBundlesHistorical**](docs/UniswapV2Api.md#uniswapv2getbundleshistorical) | **GET** /dapps/uniswapv2/bundles/historical | Bundles (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetBurnsHistorical**](docs/UniswapV2Api.md#uniswapv2getburnshistorical) | **GET** /dapps/uniswapv2/burns/historical | Burns (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetLiquidityPositionSnapshotsHistorical**](docs/UniswapV2Api.md#uniswapv2getliquiditypositionsnapshotshistorical) | **GET** /dapps/uniswapv2/liquidityPositionSnapshots/historical | LiquidityPositionSnapshots (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetLiquidityPositionsHistorical**](docs/UniswapV2Api.md#uniswapv2getliquiditypositionshistorical) | **GET** /dapps/uniswapv2/liquidityPositions/historical | LiquidityPositions (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetMintsHistorical**](docs/UniswapV2Api.md#uniswapv2getmintshistorical) | **GET** /dapps/uniswapv2/mints/historical | Mints (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPairDayDatasHistorical**](docs/UniswapV2Api.md#uniswapv2getpairdaydatashistorical) | **GET** /dapps/uniswapv2/pairDayDatas/historical | PairDayDatas (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPairHourDatasHistorical**](docs/UniswapV2Api.md#uniswapv2getpairhourdatashistorical) | **GET** /dapps/uniswapv2/pairHourDatas/historical | PairHourDatas (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPairsHistorical**](docs/UniswapV2Api.md#uniswapv2getpairshistorical) | **GET** /dapps/uniswapv2/pairs/historical | Pairs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPoolsCurrent**](docs/UniswapV2Api.md#uniswapv2getpoolscurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
*UniswapV2Api* | [**uniswapV2GetSwapsCurrent**](docs/UniswapV2Api.md#uniswapv2getswapscurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
*UniswapV2Api* | [**uniswapV2GetSwapsHistorical**](docs/UniswapV2Api.md#uniswapv2getswapshistorical) | **GET** /dapps/uniswapv2/swaps/historical | Swaps (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTokenDayDatasHistorical**](docs/UniswapV2Api.md#uniswapv2gettokendaydatashistorical) | **GET** /dapps/uniswapv2/tokenDayDatas/historical | TokenDayDatas (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTokensCurrent**](docs/UniswapV2Api.md#uniswapv2gettokenscurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥
*UniswapV2Api* | [**uniswapV2GetTokensHistorical**](docs/UniswapV2Api.md#uniswapv2gettokenshistorical) | **GET** /dapps/uniswapv2/tokens/historical | Tokens (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTransactionsHistorical**](docs/UniswapV2Api.md#uniswapv2gettransactionshistorical) | **GET** /dapps/uniswapv2/transactions/historical | Transactions (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetUniswapDayDatasHistorical**](docs/UniswapV2Api.md#uniswapv2getuniswapdaydatashistorical) | **GET** /dapps/uniswapv2/uniswapDayDatas/historical | UniswapDayDatas (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetUniswapFactorysHistorical**](docs/UniswapV2Api.md#uniswapv2getuniswapfactoryshistorical) | **GET** /dapps/uniswapv2/uniswapFactorys/historical | UniswapFactorys (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetUsersHistorical**](docs/UniswapV2Api.md#uniswapv2getusershistorical) | **GET** /dapps/uniswapv2/users/historical | Users (historical) 🔥
*UniswapV2Api* | [**uniswapV2LiquidityPositionSnapshotsCurrent**](docs/UniswapV2Api.md#uniswapv2liquiditypositionsnapshotscurrent) | **GET** /dapps/uniswapv2/liquidityPositionSnapshots/current | LiquidityPositionSnapshots (current)
*UniswapV2Api* | [**uniswapV2LiquidityPositionsCurrent**](docs/UniswapV2Api.md#uniswapv2liquiditypositionscurrent) | **GET** /dapps/uniswapv2/liquidityPositions/current | LiquidityPositions (current)
*UniswapV2Api* | [**uniswapV2MintsCurrent**](docs/UniswapV2Api.md#uniswapv2mintscurrent) | **GET** /dapps/uniswapv2/mints/current | Mints (current)
*UniswapV2Api* | [**uniswapV2PairDayDatasCurrent**](docs/UniswapV2Api.md#uniswapv2pairdaydatascurrent) | **GET** /dapps/uniswapv2/pairDayDatas/current | PairDayDatas (current)
*UniswapV2Api* | [**uniswapV2PairHourDatasCurrent**](docs/UniswapV2Api.md#uniswapv2pairhourdatascurrent) | **GET** /dapps/uniswapv2/pairHourDatas/current | PairHourDatas (current)
*UniswapV2Api* | [**uniswapV2PairsCurrent**](docs/UniswapV2Api.md#uniswapv2pairscurrent) | **GET** /dapps/uniswapv2/pairs/current | Pairs (current)
*UniswapV2Api* | [**uniswapV2TokenDayDatasCurrent**](docs/UniswapV2Api.md#uniswapv2tokendaydatascurrent) | **GET** /dapps/uniswapv2/tokenDayDatas/current | TokenDayDatas (current)
*UniswapV2Api* | [**uniswapV2TransactionsCurrent**](docs/UniswapV2Api.md#uniswapv2transactionscurrent) | **GET** /dapps/uniswapv2/transactions/current | Transactions (current)
*UniswapV2Api* | [**uniswapV2UniswapDayDatasCurrent**](docs/UniswapV2Api.md#uniswapv2uniswapdaydatascurrent) | **GET** /dapps/uniswapv2/uniswapDayDatas/current | UniswapDayDatas (current)
*UniswapV2Api* | [**uniswapV2UniswapFactorysCurrent**](docs/UniswapV2Api.md#uniswapv2uniswapfactoryscurrent) | **GET** /dapps/uniswapv2/uniswapFactorys/current | UniswapFactorys (current)
*UniswapV2Api* | [**uniswapV2UsersCurrent**](docs/UniswapV2Api.md#uniswapv2userscurrent) | **GET** /dapps/uniswapv2/users/current | Users (current)
*UniswapV3Api* | [**uniswapV3BundlesCurrent**](docs/UniswapV3Api.md#uniswapv3bundlescurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current)
*UniswapV3Api* | [**uniswapV3BurnsCurrent**](docs/UniswapV3Api.md#uniswapv3burnscurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current)
*UniswapV3Api* | [**uniswapV3FactorysCurrent**](docs/UniswapV3Api.md#uniswapv3factoryscurrent) | **GET** /dapps/uniswapv3/factorys/current | Factorys (current)
*UniswapV3Api* | [**uniswapV3GetBundlesHistorical**](docs/UniswapV3Api.md#uniswapv3getbundleshistorical) | **GET** /dapps/uniswapv3/bundles/historical | Bundles (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetBurnsHistorical**](docs/UniswapV3Api.md#uniswapv3getburnshistorical) | **GET** /dapps/uniswapv3/burns/historical | Burns (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetFactorysHistorical**](docs/UniswapV3Api.md#uniswapv3getfactoryshistorical) | **GET** /dapps/uniswapv3/factorys/historical | Factorys (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetMintsHistorical**](docs/UniswapV3Api.md#uniswapv3getmintshistorical) | **GET** /dapps/uniswapv3/mints/historical | Mints (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolDayDatasHistorical**](docs/UniswapV3Api.md#uniswapv3getpooldaydatashistorical) | **GET** /dapps/uniswapv3/poolDayDatas/historical | PoolDayDatas (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolHourDatasHistorical**](docs/UniswapV3Api.md#uniswapv3getpoolhourdatashistorical) | **GET** /dapps/uniswapv3/poolHourDatas/historical | PoolHourDatas (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolsHistorical**](docs/UniswapV3Api.md#uniswapv3getpoolshistorical) | **GET** /dapps/uniswapv3/pools/historical | Pools (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPositionSnapshotsHistorical**](docs/UniswapV3Api.md#uniswapv3getpositionsnapshotshistorical) | **GET** /dapps/uniswapv3/positionSnapshots/historical | PositionSnapshots (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPositionsHistorical**](docs/UniswapV3Api.md#uniswapv3getpositionshistorical) | **GET** /dapps/uniswapv3/positions/historical | Positions (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetSwapsHistorical**](docs/UniswapV3Api.md#uniswapv3getswapshistorical) | **GET** /dapps/uniswapv3/swaps/historical | Swaps (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTickDayDatasHistorical**](docs/UniswapV3Api.md#uniswapv3gettickdaydatashistorical) | **GET** /dapps/uniswapv3/tickDayDatas/historical | TickDayDatas (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTicksHistorical**](docs/UniswapV3Api.md#uniswapv3gettickshistorical) | **GET** /dapps/uniswapv3/ticks/historical | Ticks (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTokenHourDatasHistorical**](docs/UniswapV3Api.md#uniswapv3gettokenhourdatashistorical) | **GET** /dapps/uniswapv3/tokenHourDatas/historical | TokenHourDatas (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTokenV3DayDatasHistorical**](docs/UniswapV3Api.md#uniswapv3gettokenv3daydatashistorical) | **GET** /dapps/uniswapv3/tokenV3DayDatas/historical | TokenV3DayDatas (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTokensHistorical**](docs/UniswapV3Api.md#uniswapv3gettokenshistorical) | **GET** /dapps/uniswapv3/tokens/historical | Tokens (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTransactionsHistorical**](docs/UniswapV3Api.md#uniswapv3gettransactionshistorical) | **GET** /dapps/uniswapv3/transactions/historical | Transactions (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetUniswapDayDatasHistorical**](docs/UniswapV3Api.md#uniswapv3getuniswapdaydatashistorical) | **GET** /dapps/uniswapv3/uniswapDayDatas/historical | UniswapDayDatas (historical) 🔥
*UniswapV3Api* | [**uniswapV3MintsCurrent**](docs/UniswapV3Api.md#uniswapv3mintscurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current)
*UniswapV3Api* | [**uniswapV3PoolDayDatasCurrent**](docs/UniswapV3Api.md#uniswapv3pooldaydatascurrent) | **GET** /dapps/uniswapv3/poolDayDatas/current | PoolDayDatas (current)
*UniswapV3Api* | [**uniswapV3PoolHourDatasCurrent**](docs/UniswapV3Api.md#uniswapv3poolhourdatascurrent) | **GET** /dapps/uniswapv3/poolHourDatas/current | PoolHourDatas (current)
*UniswapV3Api* | [**uniswapV3PoolsCurrent**](docs/UniswapV3Api.md#uniswapv3poolscurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current)
*UniswapV3Api* | [**uniswapV3PositionSnapshotsCurrent**](docs/UniswapV3Api.md#uniswapv3positionsnapshotscurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionSnapshots (current)
*UniswapV3Api* | [**uniswapV3PositionsCurrent**](docs/UniswapV3Api.md#uniswapv3positionscurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current)
*UniswapV3Api* | [**uniswapV3SwapsCurrent**](docs/UniswapV3Api.md#uniswapv3swapscurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current)
*UniswapV3Api* | [**uniswapV3TickDayDatasCurrent**](docs/UniswapV3Api.md#uniswapv3tickdaydatascurrent) | **GET** /dapps/uniswapv3/tickDayDatas/current | TickDayDatas (current)
*UniswapV3Api* | [**uniswapV3TicksCurrent**](docs/UniswapV3Api.md#uniswapv3tickscurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current)
*UniswapV3Api* | [**uniswapV3TokenHourDatasCurrent**](docs/UniswapV3Api.md#uniswapv3tokenhourdatascurrent) | **GET** /dapps/uniswapv3/tokenHourDatas/current | TokenHourDatas (current)
*UniswapV3Api* | [**uniswapV3TokenV3DayDatasCurrent**](docs/UniswapV3Api.md#uniswapv3tokenv3daydatascurrent) | **GET** /dapps/uniswapv3/tokenV3DayDatas/current | TokenV3DayDatas (current)
*UniswapV3Api* | [**uniswapV3TokensCurrent**](docs/UniswapV3Api.md#uniswapv3tokenscurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current)
*UniswapV3Api* | [**uniswapV3TransactionsCurrent**](docs/UniswapV3Api.md#uniswapv3transactionscurrent) | **GET** /dapps/uniswapv3/transactions/current | Transactions (current)
*UniswapV3Api* | [**uniswapV3UniswapDayDatasCurrent**](docs/UniswapV3Api.md#uniswapv3uniswapdaydatascurrent) | **GET** /dapps/uniswapv3/uniswapDayDatas/current | UniswapDayDatas (current)


## Documentation For Models

 - [CowOrderDTO](docs/CowOrderDTO.md)
 - [CowSettlementDTO](docs/CowSettlementDTO.md)
 - [CowTokenDTO](docs/CowTokenDTO.md)
 - [CowTradeDTO](docs/CowTradeDTO.md)
 - [CowUserDTO](docs/CowUserDTO.md)
 - [CurveAccountDTO](docs/CurveAccountDTO.md)
 - [CurveAddLiquidityEventDTO](docs/CurveAddLiquidityEventDTO.md)
 - [CurveAdminFeeChangeLogDTO](docs/CurveAdminFeeChangeLogDTO.md)
 - [CurveAmplificationCoeffChangeLogDTO](docs/CurveAmplificationCoeffChangeLogDTO.md)
 - [CurveCoinDTO](docs/CurveCoinDTO.md)
 - [CurveContractDTO](docs/CurveContractDTO.md)
 - [CurveContractVersionDTO](docs/CurveContractVersionDTO.md)
 - [CurveDailyVolumeDTO](docs/CurveDailyVolumeDTO.md)
 - [CurveExchangeDTO](docs/CurveExchangeDTO.md)
 - [CurveFeeChangeLogDTO](docs/CurveFeeChangeLogDTO.md)
 - [CurveGaugeDTO](docs/CurveGaugeDTO.md)
 - [CurveGaugeDepositDTO](docs/CurveGaugeDepositDTO.md)
 - [CurveGaugeLiquidityDTO](docs/CurveGaugeLiquidityDTO.md)
 - [CurveGaugeTotalWeightDTO](docs/CurveGaugeTotalWeightDTO.md)
 - [CurveGaugeTypeDTO](docs/CurveGaugeTypeDTO.md)
 - [CurveGaugeTypeWeightDTO](docs/CurveGaugeTypeWeightDTO.md)
 - [CurveGaugeWeightDTO](docs/CurveGaugeWeightDTO.md)
 - [CurveGaugeWeightVoteDTO](docs/CurveGaugeWeightVoteDTO.md)
 - [CurveGaugeWithdrawDTO](docs/CurveGaugeWithdrawDTO.md)
 - [CurveHourlyVolumeDTO](docs/CurveHourlyVolumeDTO.md)
 - [CurveLpTokenDTO](docs/CurveLpTokenDTO.md)
 - [CurvePoolDTO](docs/CurvePoolDTO.md)
 - [CurveProposalDTO](docs/CurveProposalDTO.md)
 - [CurveProposalVoteDTO](docs/CurveProposalVoteDTO.md)
 - [CurveRemoveLiquidityEventDTO](docs/CurveRemoveLiquidityEventDTO.md)
 - [CurveRemoveLiquidityOneEventDTO](docs/CurveRemoveLiquidityOneEventDTO.md)
 - [CurveSystemStateDTO](docs/CurveSystemStateDTO.md)
 - [CurveTokenDTO](docs/CurveTokenDTO.md)
 - [CurveTransferOwnershipEventDTO](docs/CurveTransferOwnershipEventDTO.md)
 - [CurveUnderlyingCoinDTO](docs/CurveUnderlyingCoinDTO.md)
 - [CurveVotingAppDTO](docs/CurveVotingAppDTO.md)
 - [CurveWeeklyVolumeDTO](docs/CurveWeeklyVolumeDTO.md)
 - [DexBatchDTO](docs/DexBatchDTO.md)
 - [DexDepositDTO](docs/DexDepositDTO.md)
 - [DexOrderDTO](docs/DexOrderDTO.md)
 - [DexPriceDTO](docs/DexPriceDTO.md)
 - [DexSolutionDTO](docs/DexSolutionDTO.md)
 - [DexStatsDTO](docs/DexStatsDTO.md)
 - [DexTokenDTO](docs/DexTokenDTO.md)
 - [DexTradeDTO](docs/DexTradeDTO.md)
 - [DexUserDTO](docs/DexUserDTO.md)
 - [DexWithdrawDTO](docs/DexWithdrawDTO.md)
 - [DexWithdrawRequestDTO](docs/DexWithdrawRequestDTO.md)
 - [NumericsBigInteger](docs/NumericsBigInteger.md)
 - [SushiswapBundleDTO](docs/SushiswapBundleDTO.md)
 - [SushiswapBurnDTO](docs/SushiswapBurnDTO.md)
 - [SushiswapDayDataDTO](docs/SushiswapDayDataDTO.md)
 - [SushiswapFactoryDTO](docs/SushiswapFactoryDTO.md)
 - [SushiswapHourDataDTO](docs/SushiswapHourDataDTO.md)
 - [SushiswapLiquidityPositionDTO](docs/SushiswapLiquidityPositionDTO.md)
 - [SushiswapLiquidityPositionSnapshotDTO](docs/SushiswapLiquidityPositionSnapshotDTO.md)
 - [SushiswapMintDTO](docs/SushiswapMintDTO.md)
 - [SushiswapPairDTO](docs/SushiswapPairDTO.md)
 - [SushiswapPairDayDataDTO](docs/SushiswapPairDayDataDTO.md)
 - [SushiswapPairHourDataDTO](docs/SushiswapPairHourDataDTO.md)
 - [SushiswapSwapDTO](docs/SushiswapSwapDTO.md)
 - [SushiswapTokenDTO](docs/SushiswapTokenDTO.md)
 - [SushiswapTokenDayDataDTO](docs/SushiswapTokenDayDataDTO.md)
 - [SushiswapTransactionDTO](docs/SushiswapTransactionDTO.md)
 - [SushiswapUserDTO](docs/SushiswapUserDTO.md)
 - [TransactionsETradeAggressiveSide](docs/TransactionsETradeAggressiveSide.md)
 - [UniswapV2BundleDTO](docs/UniswapV2BundleDTO.md)
 - [UniswapV2BurnDTO](docs/UniswapV2BurnDTO.md)
 - [UniswapV2LiquidityPositionDTO](docs/UniswapV2LiquidityPositionDTO.md)
 - [UniswapV2LiquidityPositionSnapshotDTO](docs/UniswapV2LiquidityPositionSnapshotDTO.md)
 - [UniswapV2MintDTO](docs/UniswapV2MintDTO.md)
 - [UniswapV2PairDTO](docs/UniswapV2PairDTO.md)
 - [UniswapV2PairDayDataDTO](docs/UniswapV2PairDayDataDTO.md)
 - [UniswapV2PairHourDataDTO](docs/UniswapV2PairHourDataDTO.md)
 - [UniswapV2SwapDTO](docs/UniswapV2SwapDTO.md)
 - [UniswapV2TokenDTO](docs/UniswapV2TokenDTO.md)
 - [UniswapV2TokenDayDataDTO](docs/UniswapV2TokenDayDataDTO.md)
 - [UniswapV2TransactionDTO](docs/UniswapV2TransactionDTO.md)
 - [UniswapV2UniswapDayDataDTO](docs/UniswapV2UniswapDayDataDTO.md)
 - [UniswapV2UniswapFactoryDTO](docs/UniswapV2UniswapFactoryDTO.md)
 - [UniswapV2UserDTO](docs/UniswapV2UserDTO.md)
 - [UniswapV3BundleDTO](docs/UniswapV3BundleDTO.md)
 - [UniswapV3BurnDTO](docs/UniswapV3BurnDTO.md)
 - [UniswapV3FactoryDTO](docs/UniswapV3FactoryDTO.md)
 - [UniswapV3MintDTO](docs/UniswapV3MintDTO.md)
 - [UniswapV3PoolDTO](docs/UniswapV3PoolDTO.md)
 - [UniswapV3PoolDayDataDTO](docs/UniswapV3PoolDayDataDTO.md)
 - [UniswapV3PoolHourDataDTO](docs/UniswapV3PoolHourDataDTO.md)
 - [UniswapV3PositionDTO](docs/UniswapV3PositionDTO.md)
 - [UniswapV3PositionSnapshotDTO](docs/UniswapV3PositionSnapshotDTO.md)
 - [UniswapV3SwapDTO](docs/UniswapV3SwapDTO.md)
 - [UniswapV3TickDTO](docs/UniswapV3TickDTO.md)
 - [UniswapV3TickDayDataDTO](docs/UniswapV3TickDayDataDTO.md)
 - [UniswapV3TokenDTO](docs/UniswapV3TokenDTO.md)
 - [UniswapV3TokenHourDataDTO](docs/UniswapV3TokenHourDataDTO.md)
 - [UniswapV3TokenV3DayDataDTO](docs/UniswapV3TokenV3DayDataDTO.md)
 - [UniswapV3TransactionDTO](docs/UniswapV3TransactionDTO.md)
 - [UniswapV3UniswapDayDataDTO](docs/UniswapV3UniswapDayDataDTO.md)


## Documentation For Authorization

 All endpoints do not require authorization.

