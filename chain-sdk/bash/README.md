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
*CurveApi* | [**curveGetAccountsHistorical**](docs/CurveApi.md#curvegetaccountshistorical) | **GET** /dapps/curve/accounts/historical | Accounts (historical) 🔥
*CurveApi* | [**curveGetAddLiquidityEventsHistorical**](docs/CurveApi.md#curvegetaddliquidityeventshistorical) | **GET** /dapps/curve/addliquidityevents/historical | AddLiquidityEvents (historical) 🔥
*CurveApi* | [**curveGetAdminFeeChangeLogsHistorical**](docs/CurveApi.md#curvegetadminfeechangelogshistorical) | **GET** /dapps/curve/adminfeechangelogs/historical | AdminFeeChangeLogs (historical) 🔥
*CurveApi* | [**curveGetAmplificationCoeffChangeLogsHistorical**](docs/CurveApi.md#curvegetamplificationcoeffchangelogshistorical) | **GET** /dapps/curve/amplificationcoeffchangelogs/historical | AmplificationCoeffChangeLogs (historical) 🔥
*CurveApi* | [**curveGetCoinsHistorical**](docs/CurveApi.md#curvegetcoinshistorical) | **GET** /dapps/curve/coins/historical | Coins (historical) 🔥
*CurveApi* | [**curveGetContractVersionsHistorical**](docs/CurveApi.md#curvegetcontractversionshistorical) | **GET** /dapps/curve/contractversions/historical | ContractVersions (historical) 🔥
*CurveApi* | [**curveGetContractsHistorical**](docs/CurveApi.md#curvegetcontractshistorical) | **GET** /dapps/curve/contracts/historical | Contracts (historical) 🔥
*CurveApi* | [**curveGetDailyVolumesHistorical**](docs/CurveApi.md#curvegetdailyvolumeshistorical) | **GET** /dapps/curve/dailyvolumes/historical | DailyVolumes (historical) 🔥
*CurveApi* | [**curveGetExchangesHistorical**](docs/CurveApi.md#curvegetexchangeshistorical) | **GET** /dapps/curve/exchanges/historical | Exchanges (historical) 🔥
*CurveApi* | [**curveGetFeeChangeLogsHistorical**](docs/CurveApi.md#curvegetfeechangelogshistorical) | **GET** /dapps/curve/feechangelogs/historical | FeeChangeLogs (historical) 🔥
*CurveApi* | [**curveGetGaugeDepositsHistorical**](docs/CurveApi.md#curvegetgaugedepositshistorical) | **GET** /dapps/curve/gaugedeposits/historical | GaugeDeposits (historical) 🔥
*CurveApi* | [**curveGetGaugeLiquiditysHistorical**](docs/CurveApi.md#curvegetgaugeliquidityshistorical) | **GET** /dapps/curve/gaugeliquiditys/historical | GaugeLiquiditys (historical) 🔥
*CurveApi* | [**curveGetGaugeTotalWeightsHistorical**](docs/CurveApi.md#curvegetgaugetotalweightshistorical) | **GET** /dapps/curve/gaugetotalweights/historical | GaugeTotalWeights (historical) 🔥
*CurveApi* | [**curveGetGaugeTypeWeightsHistorical**](docs/CurveApi.md#curvegetgaugetypeweightshistorical) | **GET** /dapps/curve/gaugetypeweights/historical | GaugeTypeWeights (historical) 🔥
*CurveApi* | [**curveGetGaugeTypesHistorical**](docs/CurveApi.md#curvegetgaugetypeshistorical) | **GET** /dapps/curve/gaugetypes/historical | GaugeTypes (historical) 🔥
*CurveApi* | [**curveGetGaugeWeightVotesHistorical**](docs/CurveApi.md#curvegetgaugeweightvoteshistorical) | **GET** /dapps/curve/gaugeweightvotes/historical | GaugeWeightVotes (historical) 🔥
*CurveApi* | [**curveGetGaugeWeightsHistorical**](docs/CurveApi.md#curvegetgaugeweightshistorical) | **GET** /dapps/curve/gaugeweights/historical | GaugeWeights (historical) 🔥
*CurveApi* | [**curveGetGaugeWithdrawsHistorical**](docs/CurveApi.md#curvegetgaugewithdrawshistorical) | **GET** /dapps/curve/gaugewithdraws/historical | GaugeWithdraws (historical) 🔥
*CurveApi* | [**curveGetGaugesHistorical**](docs/CurveApi.md#curvegetgaugeshistorical) | **GET** /dapps/curve/gauges/historical | Gauges (historical) 🔥
*CurveApi* | [**curveGetHourlyVolumesHistorical**](docs/CurveApi.md#curvegethourlyvolumeshistorical) | **GET** /dapps/curve/hourlyvolumes/historical | HourlyVolumes (historical) 🔥
*CurveApi* | [**curveGetLpTokensHistorical**](docs/CurveApi.md#curvegetlptokenshistorical) | **GET** /dapps/curve/lptokens/historical | LpTokens (historical) 🔥
*CurveApi* | [**curveGetPoolsHistorical**](docs/CurveApi.md#curvegetpoolshistorical) | **GET** /dapps/curve/pools/historical | Pools (historical) 🔥
*CurveApi* | [**curveGetProposalVotesHistorical**](docs/CurveApi.md#curvegetproposalvoteshistorical) | **GET** /dapps/curve/proposalvotes/historical | ProposalVotes (historical) 🔥
*CurveApi* | [**curveGetProposalsHistorical**](docs/CurveApi.md#curvegetproposalshistorical) | **GET** /dapps/curve/proposals/historical | Proposals (historical) 🔥
*CurveApi* | [**curveGetRemoveLiquidityEventsHistorical**](docs/CurveApi.md#curvegetremoveliquidityeventshistorical) | **GET** /dapps/curve/removeliquidityevents/historical | RemoveLiquidityEvents (historical) 🔥
*CurveApi* | [**curveGetRemoveLiquidityOneEventsHistorical**](docs/CurveApi.md#curvegetremoveliquidityoneeventshistorical) | **GET** /dapps/curve/removeliquidityoneevents/historical | RemoveLiquidityOneEvents (historical) 🔥
*CurveApi* | [**curveGetSystemStatesHistorical**](docs/CurveApi.md#curvegetsystemstateshistorical) | **GET** /dapps/curve/systemstates/historical | SystemStates (historical) 🔥
*CurveApi* | [**curveGetTokensHistorical**](docs/CurveApi.md#curvegettokenshistorical) | **GET** /dapps/curve/tokens/historical | Tokens (historical) 🔥
*CurveApi* | [**curveGetTransferOwnershipEventsHistorical**](docs/CurveApi.md#curvegettransferownershipeventshistorical) | **GET** /dapps/curve/transferownershipevents/historical | TransferOwnershipEvents (historical) 🔥
*CurveApi* | [**curveGetUnderlyingCoinsHistorical**](docs/CurveApi.md#curvegetunderlyingcoinshistorical) | **GET** /dapps/curve/underlyingcoins/historical | UnderlyingCoins (historical) 🔥
*CurveApi* | [**curveGetVotingAppsHistorical**](docs/CurveApi.md#curvegetvotingappshistorical) | **GET** /dapps/curve/votingapps/historical | VotingApps (historical) 🔥
*CurveApi* | [**curveGetWeeklyVolumesHistorical**](docs/CurveApi.md#curvegetweeklyvolumeshistorical) | **GET** /dapps/curve/weeklyvolumes/historical | WeeklyVolumes (historical) 🔥
*DexApi* | [**dexGetBatchsHistorical**](docs/DexApi.md#dexgetbatchshistorical) | **GET** /dapps/dex/batchs/historical | Batchs (historical) 🔥
*DexApi* | [**dexGetDepositsHistorical**](docs/DexApi.md#dexgetdepositshistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical) 🔥
*DexApi* | [**dexGetOrdersHistorical**](docs/DexApi.md#dexgetordershistorical) | **GET** /dapps/dex/orders/historical | Orders (historical) 🔥
*DexApi* | [**dexGetPricesHistorical**](docs/DexApi.md#dexgetpriceshistorical) | **GET** /dapps/dex/prices/historical | Prices (historical) 🔥
*DexApi* | [**dexGetSolutionsHistorical**](docs/DexApi.md#dexgetsolutionshistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical) 🔥
*DexApi* | [**dexGetStatssHistorical**](docs/DexApi.md#dexgetstatsshistorical) | **GET** /dapps/dex/statss/historical | Statss (historical) 🔥
*DexApi* | [**dexGetTokensHistorical**](docs/DexApi.md#dexgettokenshistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical) 🔥
*DexApi* | [**dexGetTradesHistorical**](docs/DexApi.md#dexgettradeshistorical) | **GET** /dapps/dex/trades/historical | Trades (historical) 🔥
*DexApi* | [**dexGetUsersHistorical**](docs/DexApi.md#dexgetusershistorical) | **GET** /dapps/dex/users/historical | Users (historical) 🔥
*DexApi* | [**dexGetWithdrawRequestsHistorical**](docs/DexApi.md#dexgetwithdrawrequestshistorical) | **GET** /dapps/dex/withdrawrequests/historical | WithdrawRequests (historical) 🔥
*DexApi* | [**dexGetWithdrawsHistorical**](docs/DexApi.md#dexgetwithdrawshistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical) 🔥
*SushiswapApi* | [**curveGetExchangesCurrent**](docs/SushiswapApi.md#curvegetexchangescurrent) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
*SushiswapApi* | [**dexGetTradesCurrent**](docs/SushiswapApi.md#dexgettradescurrent) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥
*SushiswapApi* | [**sushiswapGetBundlesHistorical**](docs/SushiswapApi.md#sushiswapgetbundleshistorical) | **GET** /dapps/sushiswap/bundles/historical | Bundles (historical) 🔥
*SushiswapApi* | [**sushiswapGetBurnsHistorical**](docs/SushiswapApi.md#sushiswapgetburnshistorical) | **GET** /dapps/sushiswap/burns/historical | Burns (historical) 🔥
*SushiswapApi* | [**sushiswapGetDayDatasHistorical**](docs/SushiswapApi.md#sushiswapgetdaydatashistorical) | **GET** /dapps/sushiswap/daydatas/historical | DayDatas (historical) 🔥
*SushiswapApi* | [**sushiswapGetFactorysHistorical**](docs/SushiswapApi.md#sushiswapgetfactoryshistorical) | **GET** /dapps/sushiswap/factorys/historical | Factorys (historical) 🔥
*SushiswapApi* | [**sushiswapGetHourDatasHistorical**](docs/SushiswapApi.md#sushiswapgethourdatashistorical) | **GET** /dapps/sushiswap/hourdatas/historical | HourDatas (historical) 🔥
*SushiswapApi* | [**sushiswapGetLiquidityPositionSnapshotsHistorical**](docs/SushiswapApi.md#sushiswapgetliquiditypositionsnapshotshistorical) | **GET** /dapps/sushiswap/liquiditypositionsnapshots/historical | LiquidityPositionSnapshots (historical) 🔥
*SushiswapApi* | [**sushiswapGetLiquidityPositionsHistorical**](docs/SushiswapApi.md#sushiswapgetliquiditypositionshistorical) | **GET** /dapps/sushiswap/liquiditypositions/historical | LiquidityPositions (historical) 🔥
*SushiswapApi* | [**sushiswapGetMintsHistorical**](docs/SushiswapApi.md#sushiswapgetmintshistorical) | **GET** /dapps/sushiswap/mints/historical | Mints (historical) 🔥
*SushiswapApi* | [**sushiswapGetPairDayDatasHistorical**](docs/SushiswapApi.md#sushiswapgetpairdaydatashistorical) | **GET** /dapps/sushiswap/pairdaydatas/historical | PairDayDatas (historical) 🔥
*SushiswapApi* | [**sushiswapGetPairHourDatasHistorical**](docs/SushiswapApi.md#sushiswapgetpairhourdatashistorical) | **GET** /dapps/sushiswap/pairhourdatas/historical | PairHourDatas (historical) 🔥
*SushiswapApi* | [**sushiswapGetPairsHistorical**](docs/SushiswapApi.md#sushiswapgetpairshistorical) | **GET** /dapps/sushiswap/pairs/historical | Pairs (historical) 🔥
*SushiswapApi* | [**sushiswapGetPoolsCurrent**](docs/SushiswapApi.md#sushiswapgetpoolscurrent) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥
*SushiswapApi* | [**sushiswapGetSwapsCurrent**](docs/SushiswapApi.md#sushiswapgetswapscurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
*SushiswapApi* | [**sushiswapGetSwapsHistorical**](docs/SushiswapApi.md#sushiswapgetswapshistorical) | **GET** /dapps/sushiswap/swaps/historical | Swaps (historical) 🔥
*SushiswapApi* | [**sushiswapGetTokenDayDatasHistorical**](docs/SushiswapApi.md#sushiswapgettokendaydatashistorical) | **GET** /dapps/sushiswap/tokendaydatas/historical | TokenDayDatas (historical) 🔥
*SushiswapApi* | [**sushiswapGetTokensCurrent**](docs/SushiswapApi.md#sushiswapgettokenscurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) 🔥
*SushiswapApi* | [**sushiswapGetTokensHistorical**](docs/SushiswapApi.md#sushiswapgettokenshistorical) | **GET** /dapps/sushiswap/tokens/historical | Tokens (historical) 🔥
*SushiswapApi* | [**sushiswapGetTransactionsHistorical**](docs/SushiswapApi.md#sushiswapgettransactionshistorical) | **GET** /dapps/sushiswap/transactions/historical | Transactions (historical) 🔥
*SushiswapApi* | [**sushiswapGetUsersHistorical**](docs/SushiswapApi.md#sushiswapgetusershistorical) | **GET** /dapps/sushiswap/users/historical | Users (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetBundleV2sHistorical**](docs/UniswapV2Api.md#uniswapv2getbundlev2shistorical) | **GET** /dapps/uniswapv2/bundlev2s/historical | BundleV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetBurnV2sHistorical**](docs/UniswapV2Api.md#uniswapv2getburnv2shistorical) | **GET** /dapps/uniswapv2/burnv2s/historical | BurnV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetLiquidityPositionSnapshotV2sHistorical**](docs/UniswapV2Api.md#uniswapv2getliquiditypositionsnapshotv2shistorical) | **GET** /dapps/uniswapv2/liquiditypositionsnapshotv2s/historical | LiquidityPositionSnapshotV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetLiquidityPositionV2sHistorical**](docs/UniswapV2Api.md#uniswapv2getliquiditypositionv2shistorical) | **GET** /dapps/uniswapv2/liquiditypositionv2s/historical | LiquidityPositionV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetMintV2sHistorical**](docs/UniswapV2Api.md#uniswapv2getmintv2shistorical) | **GET** /dapps/uniswapv2/mintv2s/historical | MintV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPairDayDataV2sHistorical**](docs/UniswapV2Api.md#uniswapv2getpairdaydatav2shistorical) | **GET** /dapps/uniswapv2/pairdaydatav2s/historical | PairDayDataV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPairHourDataV2sHistorical**](docs/UniswapV2Api.md#uniswapv2getpairhourdatav2shistorical) | **GET** /dapps/uniswapv2/pairhourdatav2s/historical | PairHourDataV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPairV2sHistorical**](docs/UniswapV2Api.md#uniswapv2getpairv2shistorical) | **GET** /dapps/uniswapv2/pairv2s/historical | PairV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPoolsCurrent**](docs/UniswapV2Api.md#uniswapv2getpoolscurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
*UniswapV2Api* | [**uniswapV2GetSwapV2sHistorical**](docs/UniswapV2Api.md#uniswapv2getswapv2shistorical) | **GET** /dapps/uniswapv2/swapv2s/historical | SwapV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetSwapsCurrent**](docs/UniswapV2Api.md#uniswapv2getswapscurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
*UniswapV2Api* | [**uniswapV2GetTokenDayDataV2sHistorical**](docs/UniswapV2Api.md#uniswapv2gettokendaydatav2shistorical) | **GET** /dapps/uniswapv2/tokendaydatav2s/historical | TokenDayDataV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTokenV2sHistorical**](docs/UniswapV2Api.md#uniswapv2gettokenv2shistorical) | **GET** /dapps/uniswapv2/tokenv2s/historical | TokenV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTokensCurrent**](docs/UniswapV2Api.md#uniswapv2gettokenscurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥
*UniswapV2Api* | [**uniswapV2GetTransactionV2sHistorical**](docs/UniswapV2Api.md#uniswapv2gettransactionv2shistorical) | **GET** /dapps/uniswapv2/transactionv2s/historical | TransactionV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetUniswapDayDataV2sHistorical**](docs/UniswapV2Api.md#uniswapv2getuniswapdaydatav2shistorical) | **GET** /dapps/uniswapv2/uniswapdaydatav2s/historical | UniswapDayDataV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetUniswapFactoryV2sHistorical**](docs/UniswapV2Api.md#uniswapv2getuniswapfactoryv2shistorical) | **GET** /dapps/uniswapv2/uniswapfactoryv2s/historical | UniswapFactoryV2s (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetUserV2sHistorical**](docs/UniswapV2Api.md#uniswapv2getuserv2shistorical) | **GET** /dapps/uniswapv2/userv2s/historical | UserV2s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetBundleV3sHistorical**](docs/UniswapV3Api.md#uniswapv3getbundlev3shistorical) | **GET** /dapps/uniswapv3/bundlev3s/historical | BundleV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetBundlesCurrent**](docs/UniswapV3Api.md#uniswapv3getbundlescurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current)
*UniswapV3Api* | [**uniswapV3GetBurnV3sHistorical**](docs/UniswapV3Api.md#uniswapv3getburnv3shistorical) | **GET** /dapps/uniswapv3/burnv3s/historical | BurnV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetBurnsCurrent**](docs/UniswapV3Api.md#uniswapv3getburnscurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current)
*UniswapV3Api* | [**uniswapV3GetDayDataCurrent**](docs/UniswapV3Api.md#uniswapv3getdaydatacurrent) | **GET** /dapps/uniswapv3/dayData/current | DayData (current)
*UniswapV3Api* | [**uniswapV3GetFactoryCurrent**](docs/UniswapV3Api.md#uniswapv3getfactorycurrent) | **GET** /dapps/uniswapv3/factory/current | Factory (current)
*UniswapV3Api* | [**uniswapV3GetFactoryV3sHistorical**](docs/UniswapV3Api.md#uniswapv3getfactoryv3shistorical) | **GET** /dapps/uniswapv3/factoryv3s/historical | FactoryV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetMintV3sHistorical**](docs/UniswapV3Api.md#uniswapv3getmintv3shistorical) | **GET** /dapps/uniswapv3/mintv3s/historical | MintV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetMintsCurrent**](docs/UniswapV3Api.md#uniswapv3getmintscurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current)
*UniswapV3Api* | [**uniswapV3GetPoolDayDataV3sHistorical**](docs/UniswapV3Api.md#uniswapv3getpooldaydatav3shistorical) | **GET** /dapps/uniswapv3/pooldaydatav3s/historical | PoolDayDataV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolHourDataV3sHistorical**](docs/UniswapV3Api.md#uniswapv3getpoolhourdatav3shistorical) | **GET** /dapps/uniswapv3/poolhourdatav3s/historical | PoolHourDataV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolV3sHistorical**](docs/UniswapV3Api.md#uniswapv3getpoolv3shistorical) | **GET** /dapps/uniswapv3/poolv3s/historical | PoolV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolsCurrent**](docs/UniswapV3Api.md#uniswapv3getpoolscurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolsDayDataCurrent**](docs/UniswapV3Api.md#uniswapv3getpoolsdaydatacurrent) | **GET** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current)
*UniswapV3Api* | [**uniswapV3GetPoolsHourDataCurrent**](docs/UniswapV3Api.md#uniswapv3getpoolshourdatacurrent) | **GET** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current)
*UniswapV3Api* | [**uniswapV3GetPositionSnapshotV3sHistorical**](docs/UniswapV3Api.md#uniswapv3getpositionsnapshotv3shistorical) | **GET** /dapps/uniswapv3/positionsnapshotv3s/historical | PositionSnapshotV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPositionV3sHistorical**](docs/UniswapV3Api.md#uniswapv3getpositionv3shistorical) | **GET** /dapps/uniswapv3/positionv3s/historical | PositionV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPositionsCurrent**](docs/UniswapV3Api.md#uniswapv3getpositionscurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current)
*UniswapV3Api* | [**uniswapV3GetPositionsSnapshotsCurrent**](docs/UniswapV3Api.md#uniswapv3getpositionssnapshotscurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current)
*UniswapV3Api* | [**uniswapV3GetSwapV3sHistorical**](docs/UniswapV3Api.md#uniswapv3getswapv3shistorical) | **GET** /dapps/uniswapv3/swapv3s/historical | SwapV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetSwapsCurrent**](docs/UniswapV3Api.md#uniswapv3getswapscurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥
*UniswapV3Api* | [**uniswapV3GetTickDayDataV3sHistorical**](docs/UniswapV3Api.md#uniswapv3gettickdaydatav3shistorical) | **GET** /dapps/uniswapv3/tickdaydatav3s/historical | TickDayDataV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTickV3sHistorical**](docs/UniswapV3Api.md#uniswapv3gettickv3shistorical) | **GET** /dapps/uniswapv3/tickv3s/historical | TickV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTicksCurrent**](docs/UniswapV3Api.md#uniswapv3gettickscurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current)
*UniswapV3Api* | [**uniswapV3GetTicksDayDataCurrent**](docs/UniswapV3Api.md#uniswapv3getticksdaydatacurrent) | **GET** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current)
*UniswapV3Api* | [**uniswapV3GetTokenHourDataV3sHistorical**](docs/UniswapV3Api.md#uniswapv3gettokenhourdatav3shistorical) | **GET** /dapps/uniswapv3/tokenhourdatav3s/historical | TokenHourDataV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTokenV3DayDatasHistorical**](docs/UniswapV3Api.md#uniswapv3gettokenv3daydatashistorical) | **GET** /dapps/uniswapv3/tokenv3daydatas/historical | TokenV3DayDatas (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTokenV3sHistorical**](docs/UniswapV3Api.md#uniswapv3gettokenv3shistorical) | **GET** /dapps/uniswapv3/tokenv3s/historical | TokenV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTokensCurrent**](docs/UniswapV3Api.md#uniswapv3gettokenscurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥
*UniswapV3Api* | [**uniswapV3GetTokensDayDataCurrent**](docs/UniswapV3Api.md#uniswapv3gettokensdaydatacurrent) | **GET** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current)
*UniswapV3Api* | [**uniswapV3GetTokensHourDataCurrent**](docs/UniswapV3Api.md#uniswapv3gettokenshourdatacurrent) | **GET** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current)
*UniswapV3Api* | [**uniswapV3GetTransactionV3sHistorical**](docs/UniswapV3Api.md#uniswapv3gettransactionv3shistorical) | **GET** /dapps/uniswapv3/transactionv3s/historical | TransactionV3s (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetUniswapDayDataV3sHistorical**](docs/UniswapV3Api.md#uniswapv3getuniswapdaydatav3shistorical) | **GET** /dapps/uniswapv3/uniswapdaydatav3s/historical | UniswapDayDataV3s (historical) 🔥


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

