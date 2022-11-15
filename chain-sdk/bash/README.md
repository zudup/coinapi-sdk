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
*CowApi* | [**cowGetOrdersHistorical**](docs/CowApi.md#cowgetordershistorical) | **GET** /dapps/cow/orders/historical-manual | Orders (historical)
*CowApi* | [**cowGetSettlementsHistorical**](docs/CowApi.md#cowgetsettlementshistorical) | **GET** /dapps/cow/settlements/historical-manual | Settlements (historical)
*CowApi* | [**cowGetTokensHistorical**](docs/CowApi.md#cowgettokenshistorical) | **GET** /dapps/cow/tokens/historical-manual | Tokens (historical) 🔥
*CowApi* | [**cowGetTradesHistorical**](docs/CowApi.md#cowgettradeshistorical) | **GET** /dapps/cow/trades/historical-manual | Trades (historical) 🔥
*CowApi* | [**cowGetUsersHistorical**](docs/CowApi.md#cowgetusershistorical) | **GET** /dapps/cow/users/historical-manual | Users (historical)
*CurveApi* | [**curveGetAccountsHistorical**](docs/CurveApi.md#curvegetaccountshistorical) | **GET** /dapps/curve/accounts/historical-manual | Accounts (historical)
*CurveApi* | [**curveGetAddLiquidityEventsHistorical**](docs/CurveApi.md#curvegetaddliquidityeventshistorical) | **GET** /dapps/curve/addLiquidityEvents/historical-manual | AddLiquidityEvents (historical)
*CurveApi* | [**curveGetAdminFeeChangeLogsHistorical**](docs/CurveApi.md#curvegetadminfeechangelogshistorical) | **GET** /dapps/curve/adminFeeChangeLogs/historical-manual | AdminFeeChangeLogs (historical)
*CurveApi* | [**curveGetAmplificationCoeffChangeLogsHistorical**](docs/CurveApi.md#curvegetamplificationcoeffchangelogshistorical) | **GET** /dapps/curve/amplificationCoeffChangeLogs/historical-manual | AmplificationCoeffChangeLogs (historical)
*CurveApi* | [**curveGetCoinsHistorical**](docs/CurveApi.md#curvegetcoinshistorical) | **GET** /dapps/curve/coins/historical-manual | Coins (historical)
*CurveApi* | [**curveGetContractsHistorical**](docs/CurveApi.md#curvegetcontractshistorical) | **GET** /dapps/curve/contracts/historical-manual | Contracts (historical)
*CurveApi* | [**curveGetContractsVersionsHistorical**](docs/CurveApi.md#curvegetcontractsversionshistorical) | **GET** /dapps/curve/contractsVersions/historical-manual | ContractsVersions (historical)
*CurveApi* | [**curveGetDailyVolumesHistorical**](docs/CurveApi.md#curvegetdailyvolumeshistorical) | **GET** /dapps/curve/dailyVolumes/historical-manual | DailyVolumes (historical)
*CurveApi* | [**curveGetExchangesHistorical**](docs/CurveApi.md#curvegetexchangeshistorical) | **GET** /dapps/curve/exchanges/historical-manual | Exchanges (historical) 🔥
*CurveApi* | [**curveGetFeeChangeLogsHistorical**](docs/CurveApi.md#curvegetfeechangelogshistorical) | **GET** /dapps/curve/feeChangeLogs/historical-manual | FeeChangeLogs (historical)
*CurveApi* | [**curveGetGaugesDepositsHistorical**](docs/CurveApi.md#curvegetgaugesdepositshistorical) | **GET** /dapps/curve/gaugesDeposits/historical-manual | GaugesDeposits (historical)
*CurveApi* | [**curveGetGaugesHistorical**](docs/CurveApi.md#curvegetgaugeshistorical) | **GET** /dapps/curve/gauges/historical-manual | Gauges (historical)
*CurveApi* | [**curveGetGaugesLiquidityHistorical**](docs/CurveApi.md#curvegetgaugesliquidityhistorical) | **GET** /dapps/curve/gaugesLiquidity/historical-manual | GaugesLiquidity (historical)
*CurveApi* | [**curveGetGaugesTotalWeightsHistorical**](docs/CurveApi.md#curvegetgaugestotalweightshistorical) | **GET** /dapps/curve/gaugesTotalWeights/historical-manual | GaugesTotalWeights (historical)
*CurveApi* | [**curveGetGaugesTypesHistorical**](docs/CurveApi.md#curvegetgaugestypeshistorical) | **GET** /dapps/curve/gaugesTypes/historical-manual | GaugesTypes (historical)
*CurveApi* | [**curveGetGaugesTypesWeightsHistorical**](docs/CurveApi.md#curvegetgaugestypesweightshistorical) | **GET** /dapps/curve/gaugesTypesWeights/historical-manual | GaugesTypesWeights (historical)
*CurveApi* | [**curveGetGaugesWeightsHistorical**](docs/CurveApi.md#curvegetgaugesweightshistorical) | **GET** /dapps/curve/gaugesWeights/historical-manual | GaugesWeights (historical)
*CurveApi* | [**curveGetGaugesWeightsVotesHistorical**](docs/CurveApi.md#curvegetgaugesweightsvoteshistorical) | **GET** /dapps/curve/gaugesWeightsVotes/historical-manual | GaugesWeightsVotes (historical)
*CurveApi* | [**curveGetGaugesWithdrawHistorical**](docs/CurveApi.md#curvegetgaugeswithdrawhistorical) | **GET** /dapps/curve/gaugesWithdraws/historical-manual | GaugesWithdraw (historical)
*CurveApi* | [**curveGetHourlyVolumesHistorical**](docs/CurveApi.md#curvegethourlyvolumeshistorical) | **GET** /dapps/curve/hourlyVolumes/historical-manual | HourlyVolumes (historical)
*CurveApi* | [**curveGetLpTokensHistorical**](docs/CurveApi.md#curvegetlptokenshistorical) | **GET** /dapps/curve/lpTokens/historical-manual | LpTokens (historical)
*CurveApi* | [**curveGetPoolsHistorical**](docs/CurveApi.md#curvegetpoolshistorical) | **GET** /dapps/curve/pools/historical-manual | Pools (historical) 🔥
*CurveApi* | [**curveGetProposalsHistorical**](docs/CurveApi.md#curvegetproposalshistorical) | **GET** /dapps/curve/proposals/historical-manual | Proposals (historical)
*CurveApi* | [**curveGetProposalsVotesHistorical**](docs/CurveApi.md#curvegetproposalsvoteshistorical) | **GET** /dapps/curve/proposalsVotes/historical-manual | ProposalsVotes (historical)
*CurveApi* | [**curveGetRemoveLiquidityEventsHistorical**](docs/CurveApi.md#curvegetremoveliquidityeventshistorical) | **GET** /dapps/curve/removeLiquidityEvents/historical-manual | RemoveLiquidityEvents (historical)
*CurveApi* | [**curveGetRemoveLiquidityOneEventsHistorical**](docs/CurveApi.md#curvegetremoveliquidityoneeventshistorical) | **GET** /dapps/curve/removeLiquidityOneEvents/historical-manual | RemoveLiquidityOneEvents (historical)
*CurveApi* | [**curveGetSystemStatesHistorical**](docs/CurveApi.md#curvegetsystemstateshistorical) | **GET** /dapps/curve/systemStates/historical-manual | SystemStates (historical)
*CurveApi* | [**curveGetTokensHistorical**](docs/CurveApi.md#curvegettokenshistorical) | **GET** /dapps/curve/tokens/historical-manual | Tokens (historical) 🔥
*CurveApi* | [**curveGetTransferOwnershipEventsHistorical**](docs/CurveApi.md#curvegettransferownershipeventshistorical) | **GET** /dapps/curve/transferOwnershipEvents/historical-manual | TransferOwnershipEvents (historical)
*CurveApi* | [**curveGetUnderlyingCoinsHistorical**](docs/CurveApi.md#curvegetunderlyingcoinshistorical) | **GET** /dapps/curve/underlyingCoins/historical-manual | UnderlyingCoins (historical)
*CurveApi* | [**curveGetVotingAppsHistorical**](docs/CurveApi.md#curvegetvotingappshistorical) | **GET** /dapps/curve/votingApps/historical-manual | VotingApps (historical)
*CurveApi* | [**curveGetWeeklyVolumesHistorical**](docs/CurveApi.md#curvegetweeklyvolumeshistorical) | **GET** /dapps/curve/weeklyVolumes/historical-manual | WeeklyVolumes (historical)
*DexApi* | [**dexGetBatchesHistorical**](docs/DexApi.md#dexgetbatcheshistorical) | **GET** /dapps/dex/batches/historical-manual | Batches (historical)
*DexApi* | [**dexGetDepositsHistorical**](docs/DexApi.md#dexgetdepositshistorical) | **GET** /dapps/dex/deposits/historical-manual | Deposits (historical)
*DexApi* | [**dexGetOrdersHistorical**](docs/DexApi.md#dexgetordershistorical) | **GET** /dapps/dex/orders/historical-manual | Orders (historical)
*DexApi* | [**dexGetPricesHistorical**](docs/DexApi.md#dexgetpriceshistorical) | **GET** /dapps/dex/prices/historical-manual | Prices (historical)
*DexApi* | [**dexGetSolutionsHistorical**](docs/DexApi.md#dexgetsolutionshistorical) | **GET** /dapps/dex/solutions/historical-manual | Solutions (historical)
*DexApi* | [**dexGetStatsHistorical**](docs/DexApi.md#dexgetstatshistorical) | **GET** /dapps/dex/stats/historical-manual | Stats (historical)
*DexApi* | [**dexGetTokensHistorical**](docs/DexApi.md#dexgettokenshistorical) | **GET** /dapps/dex/tokens/historical-manual | Tokens (historical) 🔥
*DexApi* | [**dexGetTradesHistorical**](docs/DexApi.md#dexgettradeshistorical) | **GET** /dapps/dex/trades/historical-manual | Trades (historical) 🔥
*DexApi* | [**dexGetUsersHistorical**](docs/DexApi.md#dexgetusershistorical) | **GET** /dapps/dex/users/historical-manual | Users (historical)
*DexApi* | [**dexGetWithdrawsHistorical**](docs/DexApi.md#dexgetwithdrawshistorical) | **GET** /dapps/dex/withdraws/historical-manual | Withdraws (historical)
*DexApi* | [**dexGetWithdrawsRequestsHistorical**](docs/DexApi.md#dexgetwithdrawsrequestshistorical) | **GET** /dapps/dex/withdrawsRequests/historical-manual | WithdrawsRequests (historical)
*SushiswapApi* | [**curveGetExchangesCurrent**](docs/SushiswapApi.md#curvegetexchangescurrent) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
*SushiswapApi* | [**dexGetTradesCurrent**](docs/SushiswapApi.md#dexgettradescurrent) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥
*SushiswapApi* | [**sushiswapGetBundlesHistorical**](docs/SushiswapApi.md#sushiswapgetbundleshistorical) | **GET** /dapps/sushiswap/bundles/historical-manual | Bundles (historical)
*SushiswapApi* | [**sushiswapGetBurnsHistorical**](docs/SushiswapApi.md#sushiswapgetburnshistorical) | **GET** /dapps/sushiswap/burns/historical-manual | Burns (historical)
*SushiswapApi* | [**sushiswapGetDayDataHistorical**](docs/SushiswapApi.md#sushiswapgetdaydatahistorical) | **GET** /dapps/sushiswap/dayData/historical-manual | DayData (historical)
*SushiswapApi* | [**sushiswapGetFactoryHistorical**](docs/SushiswapApi.md#sushiswapgetfactoryhistorical) | **GET** /dapps/sushiswap/factory/historical-manual | Factory (historical)
*SushiswapApi* | [**sushiswapGetHourDataHistorical**](docs/SushiswapApi.md#sushiswapgethourdatahistorical) | **GET** /dapps/sushiswap/hourData/historical-manual | HourData (historical)
*SushiswapApi* | [**sushiswapGetLiquidityPositionHistorical**](docs/SushiswapApi.md#sushiswapgetliquiditypositionhistorical) | **GET** /dapps/sushiswap/liquidityPosition/historical-manual | LiquidityPosition (historical)
*SushiswapApi* | [**sushiswapGetLiquidityPositionSnapshotHistorical**](docs/SushiswapApi.md#sushiswapgetliquiditypositionsnapshothistorical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical-manual | LiquidityPositionSnapshot (historical)
*SushiswapApi* | [**sushiswapGetMintsHistorical**](docs/SushiswapApi.md#sushiswapgetmintshistorical) | **GET** /dapps/sushiswap/mints/historical-manual | Mints (historical)
*SushiswapApi* | [**sushiswapGetPoolsCurrent**](docs/SushiswapApi.md#sushiswapgetpoolscurrent) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥
*SushiswapApi* | [**sushiswapGetPoolsDayDataHistorical**](docs/SushiswapApi.md#sushiswapgetpoolsdaydatahistorical) | **GET** /dapps/sushiswap/poolsDayData/historical-manual | PoolsDayData (historical)
*SushiswapApi* | [**sushiswapGetPoolsHistorical**](docs/SushiswapApi.md#sushiswapgetpoolshistorical) | **GET** /dapps/sushiswap/pools/historical-manual | Pools (historical) 🔥
*SushiswapApi* | [**sushiswapGetPoolsHourDataHistorical**](docs/SushiswapApi.md#sushiswapgetpoolshourdatahistorical) | **GET** /dapps/sushiswap/poolsHourData/historical-manual | PoolsHourData (historical)
*SushiswapApi* | [**sushiswapGetSwapsCurrent**](docs/SushiswapApi.md#sushiswapgetswapscurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
*SushiswapApi* | [**sushiswapGetSwapsHistorical**](docs/SushiswapApi.md#sushiswapgetswapshistorical) | **GET** /dapps/sushiswap/swaps/historical-manual | Swaps (historical) 🔥
*SushiswapApi* | [**sushiswapGetTokensCurrent**](docs/SushiswapApi.md#sushiswapgettokenscurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) 🔥
*SushiswapApi* | [**sushiswapGetTokensDayDataHistorical**](docs/SushiswapApi.md#sushiswapgettokensdaydatahistorical) | **GET** /dapps/sushiswap/tokensDayData/historical-manual | TokensDayData (historical)
*SushiswapApi* | [**sushiswapGetTokensHistorical**](docs/SushiswapApi.md#sushiswapgettokenshistorical) | **GET** /dapps/sushiswap/tokens/historical-manual | Tokens (historical) 🔥
*SushiswapApi* | [**sushiswapGetTransactionsHistorical**](docs/SushiswapApi.md#sushiswapgettransactionshistorical) | **GET** /dapps/sushiswap/transactions/historical-manual | Transactions (historical)
*SushiswapApi* | [**sushiswapGetUsersHistorical**](docs/SushiswapApi.md#sushiswapgetusershistorical) | **GET** /dapps/sushiswap/users/historical-manual | Users (historical)
*UniswapV2Api* | [**uniswapV2GetBundlesHistorical**](docs/UniswapV2Api.md#uniswapv2getbundleshistorical) | **GET** /dapps/uniswapv2/bundles/historical-manual | Bundles (historical)
*UniswapV2Api* | [**uniswapV2GetBurnsHistorical**](docs/UniswapV2Api.md#uniswapv2getburnshistorical) | **GET** /dapps/uniswapv2/burns/historical-manual | Burns (historical)
*UniswapV2Api* | [**uniswapV2GetDayDataHistorical**](docs/UniswapV2Api.md#uniswapv2getdaydatahistorical) | **GET** /dapps/uniswapv2/dayData/historical-manual | DayData (historical)
*UniswapV2Api* | [**uniswapV2GetFactoryHistorical**](docs/UniswapV2Api.md#uniswapv2getfactoryhistorical) | **GET** /dapps/uniswapv2/factory/historical-manual | Factory (historical)
*UniswapV2Api* | [**uniswapV2GetLiquidityPositionsHistorical**](docs/UniswapV2Api.md#uniswapv2getliquiditypositionshistorical) | **GET** /dapps/uniswapv2/liquidityPositions/historical-manual | LiquidityPositions (historical)
*UniswapV2Api* | [**uniswapV2GetLiquidityPositionsSnapshotsHistorical**](docs/UniswapV2Api.md#uniswapv2getliquiditypositionssnapshotshistorical) | **GET** /dapps/uniswapv2/liquidityPositionsSnapshots/historical-manual | LiquidityPositionsSnapshots (historical)
*UniswapV2Api* | [**uniswapV2GetMintsHistorical**](docs/UniswapV2Api.md#uniswapv2getmintshistorical) | **GET** /dapps/uniswapv2/mints/historical-manual | Mints (historical)
*UniswapV2Api* | [**uniswapV2GetPoolsCurrent**](docs/UniswapV2Api.md#uniswapv2getpoolscurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
*UniswapV2Api* | [**uniswapV2GetPoolsDayDataHistorical**](docs/UniswapV2Api.md#uniswapv2getpoolsdaydatahistorical) | **GET** /dapps/uniswapv2/poolsDayData/historical-manual | PoolsDayData (historical)
*UniswapV2Api* | [**uniswapV2GetPoolsHistorical**](docs/UniswapV2Api.md#uniswapv2getpoolshistorical) | **GET** /dapps/uniswapv2/pools/historical-manual | Pools (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPoolsHourDataHistorical**](docs/UniswapV2Api.md#uniswapv2getpoolshourdatahistorical) | **GET** /dapps/uniswapv2/poolsHourData/historical-manual | PoolsHourData (historical)
*UniswapV2Api* | [**uniswapV2GetSwapsCurrent**](docs/UniswapV2Api.md#uniswapv2getswapscurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
*UniswapV2Api* | [**uniswapV2GetSwapsHistorical**](docs/UniswapV2Api.md#uniswapv2getswapshistorical) | **GET** /dapps/uniswapv2/swaps/historical-manual | Swaps (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTokensCurrent**](docs/UniswapV2Api.md#uniswapv2gettokenscurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥
*UniswapV2Api* | [**uniswapV2GetTokensDayDataHistorical**](docs/UniswapV2Api.md#uniswapv2gettokensdaydatahistorical) | **GET** /dapps/uniswapv2/tokensDayData/historical-manual | TokensDayData (historical)
*UniswapV2Api* | [**uniswapV2GetTokensHistorical**](docs/UniswapV2Api.md#uniswapv2gettokenshistorical) | **GET** /dapps/uniswapv2/tokens/historical-manual | Tokens (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTransactionsHistorical**](docs/UniswapV2Api.md#uniswapv2gettransactionshistorical) | **GET** /dapps/uniswapv2/transactions/historical-manual | Transactions (historical)
*UniswapV2Api* | [**uniswapV2GetUsersHistorical**](docs/UniswapV2Api.md#uniswapv2getusershistorical) | **GET** /dapps/uniswapv2/users/historical-manual | Users (historical)
*UniswapV3Api* | [**uniswapV3GetBundlesCurrent**](docs/UniswapV3Api.md#uniswapv3getbundlescurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current)
*UniswapV3Api* | [**uniswapV3GetBundlesHistorical**](docs/UniswapV3Api.md#uniswapv3getbundleshistorical) | **GET** /dapps/uniswapv3/bundles/historical-manual | Bundles (historical)
*UniswapV3Api* | [**uniswapV3GetBurnsCurrent**](docs/UniswapV3Api.md#uniswapv3getburnscurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current)
*UniswapV3Api* | [**uniswapV3GetBurnsHistorical**](docs/UniswapV3Api.md#uniswapv3getburnshistorical) | **GET** /dapps/uniswapv3/burns/historical-manual | Burns (historical)
*UniswapV3Api* | [**uniswapV3GetDayDataCurrent**](docs/UniswapV3Api.md#uniswapv3getdaydatacurrent) | **GET** /dapps/uniswapv3/dayData/current | DayData (current)
*UniswapV3Api* | [**uniswapV3GetDayDataHistorical**](docs/UniswapV3Api.md#uniswapv3getdaydatahistorical) | **GET** /dapps/uniswapv3/dayData/historical-manual | DayData (historical)
*UniswapV3Api* | [**uniswapV3GetFactoryCurrent**](docs/UniswapV3Api.md#uniswapv3getfactorycurrent) | **GET** /dapps/uniswapv3/factory/current | Factory (current)
*UniswapV3Api* | [**uniswapV3GetFactoryHistorical**](docs/UniswapV3Api.md#uniswapv3getfactoryhistorical) | **GET** /dapps/uniswapv3/factory/historical-manual | Factory (historical)
*UniswapV3Api* | [**uniswapV3GetMintsCurrent**](docs/UniswapV3Api.md#uniswapv3getmintscurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current)
*UniswapV3Api* | [**uniswapV3GetMintsHistorical**](docs/UniswapV3Api.md#uniswapv3getmintshistorical) | **GET** /dapps/uniswapv3/mints/historical-manual | Mints (historical)
*UniswapV3Api* | [**uniswapV3GetPoolsCurrent**](docs/UniswapV3Api.md#uniswapv3getpoolscurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolsDayDataCurrent**](docs/UniswapV3Api.md#uniswapv3getpoolsdaydatacurrent) | **GET** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current)
*UniswapV3Api* | [**uniswapV3GetPoolsDayDataHistorical**](docs/UniswapV3Api.md#uniswapv3getpoolsdaydatahistorical) | **GET** /dapps/uniswapv3/poolsDayData/historical-manual | PoolsDayData (historical)
*UniswapV3Api* | [**uniswapV3GetPoolsHistorical**](docs/UniswapV3Api.md#uniswapv3getpoolshistorical) | **GET** /dapps/uniswapv3/pools/historical-manual | Pools (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolsHourDataCurrent**](docs/UniswapV3Api.md#uniswapv3getpoolshourdatacurrent) | **GET** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current)
*UniswapV3Api* | [**uniswapV3GetPoolsHourDataHistorical**](docs/UniswapV3Api.md#uniswapv3getpoolshourdatahistorical) | **GET** /dapps/uniswapv3/poolsHourData/historical-manual | PoolsHourData (historical)
*UniswapV3Api* | [**uniswapV3GetPositionsCurrent**](docs/UniswapV3Api.md#uniswapv3getpositionscurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current)
*UniswapV3Api* | [**uniswapV3GetPositionsHistorical**](docs/UniswapV3Api.md#uniswapv3getpositionshistorical) | **GET** /dapps/uniswapv3/positions/historical-manual | Positions (historical)
*UniswapV3Api* | [**uniswapV3GetPositionsSnaphotsHistorical**](docs/UniswapV3Api.md#uniswapv3getpositionssnaphotshistorical) | **GET** /dapps/uniswapv3/positionsSnapshots/historical-manual | PositionsSnaphots (historical)
*UniswapV3Api* | [**uniswapV3GetPositionsSnapshotsCurrent**](docs/UniswapV3Api.md#uniswapv3getpositionssnapshotscurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current)
*UniswapV3Api* | [**uniswapV3GetSwapsCurrent**](docs/UniswapV3Api.md#uniswapv3getswapscurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥
*UniswapV3Api* | [**uniswapV3GetSwapsHistorical**](docs/UniswapV3Api.md#uniswapv3getswapshistorical) | **GET** /dapps/uniswapv3/swaps/historical-manual | Swaps (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTicksCurrent**](docs/UniswapV3Api.md#uniswapv3gettickscurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current)
*UniswapV3Api* | [**uniswapV3GetTicksDayDataCurrent**](docs/UniswapV3Api.md#uniswapv3getticksdaydatacurrent) | **GET** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current)
*UniswapV3Api* | [**uniswapV3GetTicksDayDataHistorical**](docs/UniswapV3Api.md#uniswapv3getticksdaydatahistorical) | **GET** /dapps/uniswapv3/ticksDayData/historical-manual | TicksDayData (historical)
*UniswapV3Api* | [**uniswapV3GetTicksHistorical**](docs/UniswapV3Api.md#uniswapv3gettickshistorical) | **GET** /dapps/uniswapv3/ticks/historical-manual | Ticks (historical)
*UniswapV3Api* | [**uniswapV3GetTokensCurrent**](docs/UniswapV3Api.md#uniswapv3gettokenscurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥
*UniswapV3Api* | [**uniswapV3GetTokensDayDataCurrent**](docs/UniswapV3Api.md#uniswapv3gettokensdaydatacurrent) | **GET** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current)
*UniswapV3Api* | [**uniswapV3GetTokensDayDataHistorical**](docs/UniswapV3Api.md#uniswapv3gettokensdaydatahistorical) | **GET** /dapps/uniswapv3/tokensDayData/historical-manual | TokensDayData (historical)
*UniswapV3Api* | [**uniswapV3GetTokensHistorical**](docs/UniswapV3Api.md#uniswapv3gettokenshistorical) | **GET** /dapps/uniswapv3/tokens/historical-manual | Tokens (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTokensHourDataCurrent**](docs/UniswapV3Api.md#uniswapv3gettokenshourdatacurrent) | **GET** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current)
*UniswapV3Api* | [**uniswapV3GetTokensHourDataHistorical**](docs/UniswapV3Api.md#uniswapv3gettokenshourdatahistorical) | **GET** /dapps/uniswapv3/tokensHourData/historical-manual | TokensHourData (historical)
*UniswapV3Api* | [**uniswapV3GetTransactionsHistorical**](docs/UniswapV3Api.md#uniswapv3gettransactionshistorical) | **GET** /dapps/uniswapv3/transactions/historical-manual | Transactions (historical)


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
 - [UniswapV2BundleV2DTO](docs/UniswapV2BundleV2DTO.md)
 - [UniswapV2BurnV2DTO](docs/UniswapV2BurnV2DTO.md)
 - [UniswapV2LiquidityPositionSnapshotV2DTO](docs/UniswapV2LiquidityPositionSnapshotV2DTO.md)
 - [UniswapV2LiquidityPositionV2DTO](docs/UniswapV2LiquidityPositionV2DTO.md)
 - [UniswapV2MintV2DTO](docs/UniswapV2MintV2DTO.md)
 - [UniswapV2PairDayDataV2DTO](docs/UniswapV2PairDayDataV2DTO.md)
 - [UniswapV2PairHourDataV2DTO](docs/UniswapV2PairHourDataV2DTO.md)
 - [UniswapV2PairV2DTO](docs/UniswapV2PairV2DTO.md)
 - [UniswapV2SwapV2DTO](docs/UniswapV2SwapV2DTO.md)
 - [UniswapV2TokenDayDataV2DTO](docs/UniswapV2TokenDayDataV2DTO.md)
 - [UniswapV2TokenV2DTO](docs/UniswapV2TokenV2DTO.md)
 - [UniswapV2TransactionV2DTO](docs/UniswapV2TransactionV2DTO.md)
 - [UniswapV2UniswapDayDataV2DTO](docs/UniswapV2UniswapDayDataV2DTO.md)
 - [UniswapV2UniswapFactoryV2DTO](docs/UniswapV2UniswapFactoryV2DTO.md)
 - [UniswapV2UserV2DTO](docs/UniswapV2UserV2DTO.md)
 - [UniswapV3BundleV3DTO](docs/UniswapV3BundleV3DTO.md)
 - [UniswapV3BurnV3DTO](docs/UniswapV3BurnV3DTO.md)
 - [UniswapV3FactoryV3DTO](docs/UniswapV3FactoryV3DTO.md)
 - [UniswapV3MintV3DTO](docs/UniswapV3MintV3DTO.md)
 - [UniswapV3PoolDayDataV3DTO](docs/UniswapV3PoolDayDataV3DTO.md)
 - [UniswapV3PoolHourDataV3DTO](docs/UniswapV3PoolHourDataV3DTO.md)
 - [UniswapV3PoolV3DTO](docs/UniswapV3PoolV3DTO.md)
 - [UniswapV3PositionSnapshotV3DTO](docs/UniswapV3PositionSnapshotV3DTO.md)
 - [UniswapV3PositionV3DTO](docs/UniswapV3PositionV3DTO.md)
 - [UniswapV3SwapV3DTO](docs/UniswapV3SwapV3DTO.md)
 - [UniswapV3TickDayDataV3DTO](docs/UniswapV3TickDayDataV3DTO.md)
 - [UniswapV3TickV3DTO](docs/UniswapV3TickV3DTO.md)
 - [UniswapV3TokenHourDataV3DTO](docs/UniswapV3TokenHourDataV3DTO.md)
 - [UniswapV3TokenV3DTO](docs/UniswapV3TokenV3DTO.md)
 - [UniswapV3TokenV3DayDataDTO](docs/UniswapV3TokenV3DayDataDTO.md)
 - [UniswapV3TransactionV3DTO](docs/UniswapV3TransactionV3DTO.md)
 - [UniswapV3UniswapDayDataV3DTO](docs/UniswapV3UniswapDayDataV3DTO.md)


## Documentation For Authorization

 All endpoints do not require authorization.

