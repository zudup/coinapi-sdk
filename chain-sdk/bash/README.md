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
*CowApi* | [**dappsCowOrdersHistoricalGet**](docs/CowApi.md#dappscowordershistoricalget) | **GET** /dapps/cow/orders/historical | 
*CowApi* | [**dappsCowSettlementHistoricalGet**](docs/CowApi.md#dappscowsettlementhistoricalget) | **GET** /dapps/cow/settlement/historical | 
*CowApi* | [**dappsCowTokensHistoricalGet**](docs/CowApi.md#dappscowtokenshistoricalget) | **GET** /dapps/cow/tokens/historical | 
*CowApi* | [**dappsCowTradesHistoricalGet**](docs/CowApi.md#dappscowtradeshistoricalget) | **GET** /dapps/cow/trades/historical | 
*CowApi* | [**dappsCowUsersHistoricalGet**](docs/CowApi.md#dappscowusershistoricalget) | **GET** /dapps/cow/users/historical | 
*CurveApi* | [**dappsCurveAccountsHistoricalGet**](docs/CurveApi.md#dappscurveaccountshistoricalget) | **GET** /dapps/curve/accounts/historical | 
*CurveApi* | [**dappsCurveAddLiquidityEventHistoricalGet**](docs/CurveApi.md#dappscurveaddliquidityeventhistoricalget) | **GET** /dapps/curve/addLiquidityEvent/historical | 
*CurveApi* | [**dappsCurveAdminFeeChangeLogHistoricalGet**](docs/CurveApi.md#dappscurveadminfeechangeloghistoricalget) | **GET** /dapps/curve/adminFeeChangeLog/historical | 
*CurveApi* | [**dappsCurveAmplificationCoeffChangeLogHistoricalGet**](docs/CurveApi.md#dappscurveamplificationcoeffchangeloghistoricalget) | **GET** /dapps/curve/amplificationCoeffChangeLog/historical | 
*CurveApi* | [**dappsCurveCoinsHistoricalGet**](docs/CurveApi.md#dappscurvecoinshistoricalget) | **GET** /dapps/curve/coins/historical | 
*CurveApi* | [**dappsCurveContractsHistoricalGet**](docs/CurveApi.md#dappscurvecontractshistoricalget) | **GET** /dapps/curve/contracts/historical | 
*CurveApi* | [**dappsCurveContractsVersionHistoricalGet**](docs/CurveApi.md#dappscurvecontractsversionhistoricalget) | **GET** /dapps/curve/contractsVersion/historical | 
*CurveApi* | [**dappsCurveDailyVolumeHistoricalGet**](docs/CurveApi.md#dappscurvedailyvolumehistoricalget) | **GET** /dapps/curve/dailyVolume/historical | 
*CurveApi* | [**dappsCurveFeeChangeLogHistoricalGet**](docs/CurveApi.md#dappscurvefeechangeloghistoricalget) | **GET** /dapps/curve/feeChangeLog/historical | 
*CurveApi* | [**dappsCurveGaugeDepositHistoricalGet**](docs/CurveApi.md#dappscurvegaugedeposithistoricalget) | **GET** /dapps/curve/gaugeDeposit/historical | 
*CurveApi* | [**dappsCurveGaugeHistoricalGet**](docs/CurveApi.md#dappscurvegaugehistoricalget) | **GET** /dapps/curve/gauge/historical | 
*CurveApi* | [**dappsCurveGaugeLiquidityHistoricalGet**](docs/CurveApi.md#dappscurvegaugeliquidityhistoricalget) | **GET** /dapps/curve/gaugeLiquidity/historical | 
*CurveApi* | [**dappsCurveGaugeTotalWeightHistoricalGet**](docs/CurveApi.md#dappscurvegaugetotalweighthistoricalget) | **GET** /dapps/curve/gaugeTotalWeight/historical | 
*CurveApi* | [**dappsCurveGaugeTypeHistoricalGet**](docs/CurveApi.md#dappscurvegaugetypehistoricalget) | **GET** /dapps/curve/gaugeType/historical | 
*CurveApi* | [**dappsCurveGaugeTypeWeightHistoricalGet**](docs/CurveApi.md#dappscurvegaugetypeweighthistoricalget) | **GET** /dapps/curve/gaugeTypeWeight/historical | 
*CurveApi* | [**dappsCurveGaugeWeightHistoricalGet**](docs/CurveApi.md#dappscurvegaugeweighthistoricalget) | **GET** /dapps/curve/gaugeWeight/historical | 
*CurveApi* | [**dappsCurveGaugeWeightVoteHistoricalGet**](docs/CurveApi.md#dappscurvegaugeweightvotehistoricalget) | **GET** /dapps/curve/gaugeWeightVote/historical | 
*CurveApi* | [**dappsCurveGaugeWithdrawHistoricalGet**](docs/CurveApi.md#dappscurvegaugewithdrawhistoricalget) | **GET** /dapps/curve/gaugeWithdraw/historical | 
*CurveApi* | [**dappsCurveHourlyVolumeHistoricalGet**](docs/CurveApi.md#dappscurvehourlyvolumehistoricalget) | **GET** /dapps/curve/hourlyVolume/historical | 
*CurveApi* | [**dappsCurveLpTokenHistoricalGet**](docs/CurveApi.md#dappscurvelptokenhistoricalget) | **GET** /dapps/curve/lpToken/historical | 
*CurveApi* | [**dappsCurvePoolsHistoricalGet**](docs/CurveApi.md#dappscurvepoolshistoricalget) | **GET** /dapps/curve/pools/historical | 
*CurveApi* | [**dappsCurveProposalsHistoricalGet**](docs/CurveApi.md#dappscurveproposalshistoricalget) | **GET** /dapps/curve/proposals/historical | 
*CurveApi* | [**dappsCurveProposalsVoteHistoricalGet**](docs/CurveApi.md#dappscurveproposalsvotehistoricalget) | **GET** /dapps/curve/proposalsVote/historical | 
*CurveApi* | [**dappsCurveRemoveLiquidityEventHistoricalGet**](docs/CurveApi.md#dappscurveremoveliquidityeventhistoricalget) | **GET** /dapps/curve/removeLiquidityEvent/historical | 
*CurveApi* | [**dappsCurveRemoveLiquidityOneEventHistoricalGet**](docs/CurveApi.md#dappscurveremoveliquidityoneeventhistoricalget) | **GET** /dapps/curve/removeLiquidityOneEvent/historical | 
*CurveApi* | [**dappsCurveSwapsHistoricalGet**](docs/CurveApi.md#dappscurveswapshistoricalget) | **GET** /dapps/curve/swaps/historical | 
*CurveApi* | [**dappsCurveSystemStateHistoricalGet**](docs/CurveApi.md#dappscurvesystemstatehistoricalget) | **GET** /dapps/curve/systemState/historical | 
*CurveApi* | [**dappsCurveTokensHistoricalGet**](docs/CurveApi.md#dappscurvetokenshistoricalget) | **GET** /dapps/curve/tokens/historical | 
*CurveApi* | [**dappsCurveTransferOwnershipEventHistoricalGet**](docs/CurveApi.md#dappscurvetransferownershipeventhistoricalget) | **GET** /dapps/curve/transferOwnershipEvent/historical | 
*CurveApi* | [**dappsCurveUnderlyingCoinHistoricalGet**](docs/CurveApi.md#dappscurveunderlyingcoinhistoricalget) | **GET** /dapps/curve/underlyingCoin/historical | 
*CurveApi* | [**dappsCurveVotingAppHistoricalGet**](docs/CurveApi.md#dappscurvevotingapphistoricalget) | **GET** /dapps/curve/votingApp/historical | 
*CurveApi* | [**dappsCurveWeeklyVolumeHistoricalGet**](docs/CurveApi.md#dappscurveweeklyvolumehistoricalget) | **GET** /dapps/curve/weeklyVolume/historical | 
*DexApi* | [**dappsDexBatchHistoricalGet**](docs/DexApi.md#dappsdexbatchhistoricalget) | **GET** /dapps/dex/batch/historical | 
*DexApi* | [**dappsDexOrdersHistoricalGet**](docs/DexApi.md#dappsdexordershistoricalget) | **GET** /dapps/dex/orders/historical | 
*DexApi* | [**dappsDexPricesHistoricalGet**](docs/DexApi.md#dappsdexpriceshistoricalget) | **GET** /dapps/dex/prices/historical | 
*DexApi* | [**dappsDexSolutionHistoricalGet**](docs/DexApi.md#dappsdexsolutionhistoricalget) | **GET** /dapps/dex/solution/historical | 
*DexApi* | [**dappsDexStatsHistoricalGet**](docs/DexApi.md#dappsdexstatshistoricalget) | **GET** /dapps/dex/stats/historical | 
*DexApi* | [**dappsDexTokensHistoricalGet**](docs/DexApi.md#dappsdextokenshistoricalget) | **GET** /dapps/dex/tokens/historical | 
*DexApi* | [**dappsDexTradesHistoricalGet**](docs/DexApi.md#dappsdextradeshistoricalget) | **GET** /dapps/dex/trades/historical | 
*DexApi* | [**dappsDexUsersHistoricalGet**](docs/DexApi.md#dappsdexusershistoricalget) | **GET** /dapps/dex/users/historical | 
*DexApi* | [**dappsDexWithdrawHistoricalGet**](docs/DexApi.md#dappsdexwithdrawhistoricalget) | **GET** /dapps/dex/withdraw/historical | 
*DexApi* | [**dappsDexWithdrawRequestHistoricalGet**](docs/DexApi.md#dappsdexwithdrawrequesthistoricalget) | **GET** /dapps/dex/withdrawRequest/historical | 
*SushiswapApi* | [**dappsSushiswapBundlesHistoricalGet**](docs/SushiswapApi.md#dappssushiswapbundleshistoricalget) | **GET** /dapps/sushiswap/bundles/historical | 
*SushiswapApi* | [**dappsSushiswapBurnsHistoricalGet**](docs/SushiswapApi.md#dappssushiswapburnshistoricalget) | **GET** /dapps/sushiswap/burns/historical | 
*SushiswapApi* | [**dappsSushiswapDayDataHistoricalGet**](docs/SushiswapApi.md#dappssushiswapdaydatahistoricalget) | **GET** /dapps/sushiswap/dayData/historical | 
*SushiswapApi* | [**dappsSushiswapFactoryHistoricalGet**](docs/SushiswapApi.md#dappssushiswapfactoryhistoricalget) | **GET** /dapps/sushiswap/factory/historical | 
*SushiswapApi* | [**dappsSushiswapHourDataHistoricalGet**](docs/SushiswapApi.md#dappssushiswaphourdatahistoricalget) | **GET** /dapps/sushiswap/hourData/historical | 
*SushiswapApi* | [**dappsSushiswapLiquidityPositionHistoricalGet**](docs/SushiswapApi.md#dappssushiswapliquiditypositionhistoricalget) | **GET** /dapps/sushiswap/liquidityPosition/historical | 
*SushiswapApi* | [**dappsSushiswapLiquidityPositionSnapshotsHistoricalGet**](docs/SushiswapApi.md#dappssushiswapliquiditypositionsnapshotshistoricalget) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | 
*SushiswapApi* | [**dappsSushiswapMintsHistoricalGet**](docs/SushiswapApi.md#dappssushiswapmintshistoricalget) | **GET** /dapps/sushiswap/mints/historical | 
*SushiswapApi* | [**dappsSushiswapPoolDayDataHistoricalGet**](docs/SushiswapApi.md#dappssushiswappooldaydatahistoricalget) | **GET** /dapps/sushiswap/poolDayData/historical | 
*SushiswapApi* | [**dappsSushiswapPoolHourDataHistoricalGet**](docs/SushiswapApi.md#dappssushiswappoolhourdatahistoricalget) | **GET** /dapps/sushiswap/poolHourData/historical | 
*SushiswapApi* | [**dappsSushiswapTokenDayDataHistoricalGet**](docs/SushiswapApi.md#dappssushiswaptokendaydatahistoricalget) | **GET** /dapps/sushiswap/tokenDayData/historical | 
*SushiswapApi* | [**dappsSushiswapTransactionsHistoricalGet**](docs/SushiswapApi.md#dappssushiswaptransactionshistoricalget) | **GET** /dapps/sushiswap/transactions/historical | 
*SushiswapApi* | [**dappsSushiswapUsersHistoricalGet**](docs/SushiswapApi.md#dappssushiswapusershistoricalget) | **GET** /dapps/sushiswap/users/historical | 
*SushiswapApi* | [**sushiswapGetPoolsCurrent**](docs/SushiswapApi.md#sushiswapgetpoolscurrent) | **GET** /dapps/sushiswap/pools/current | Gets latest ETH.DeFi.DTO.Sushiswap.PairDTO.
*SushiswapApi* | [**sushiswapGetPoolsHistorical**](docs/SushiswapApi.md#sushiswapgetpoolshistorical) | **GET** /dapps/sushiswap/pools/historical | Gets list of ETH.DeFi.DTO.Sushiswap.PairDTO data for the given filters.
*SushiswapApi* | [**sushiswapGetSwapsCurrent**](docs/SushiswapApi.md#sushiswapgetswapscurrent) | **GET** /dapps/sushiswap/swaps/current | Gets latest ETH.DeFi.DTO.Sushiswap.SwapDTO.
*SushiswapApi* | [**sushiswapGetSwapsHistorical**](docs/SushiswapApi.md#sushiswapgetswapshistorical) | **GET** /dapps/sushiswap/swaps/historical | Gets list of ETH.DeFi.DTO.Sushiswap.SwapDTO data for the given filters.
*SushiswapApi* | [**sushiswapGetTokensCurrent**](docs/SushiswapApi.md#sushiswapgettokenscurrent) | **GET** /dapps/sushiswap/tokens/current | Gets latest ETH.DeFi.DTO.Sushiswap.TokenDTO.
*SushiswapApi* | [**sushiswapGetTokensHistorical**](docs/SushiswapApi.md#sushiswapgettokenshistorical) | **GET** /dapps/sushiswap/tokens/historical | Gets list of ETH.DeFi.DTO.Sushiswap.TokenDTO for the given filters.
*UniswapV2Api* | [**dappsUniswapv2BundlesHistoricalGet**](docs/UniswapV2Api.md#dappsuniswapv2bundleshistoricalget) | **GET** /dapps/uniswapv2/bundles/historical | 
*UniswapV2Api* | [**dappsUniswapv2BurnsHistoricalGet**](docs/UniswapV2Api.md#dappsuniswapv2burnshistoricalget) | **GET** /dapps/uniswapv2/burns/historical | 
*UniswapV2Api* | [**dappsUniswapv2DayDataHistoricalGet**](docs/UniswapV2Api.md#dappsuniswapv2daydatahistoricalget) | **GET** /dapps/uniswapv2/dayData/historical | 
*UniswapV2Api* | [**dappsUniswapv2FactoryHistoricalGet**](docs/UniswapV2Api.md#dappsuniswapv2factoryhistoricalget) | **GET** /dapps/uniswapv2/factory/historical | 
*UniswapV2Api* | [**dappsUniswapv2LiquidityPositionHistoricalGet**](docs/UniswapV2Api.md#dappsuniswapv2liquiditypositionhistoricalget) | **GET** /dapps/uniswapv2/liquidityPosition/historical | 
*UniswapV2Api* | [**dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet**](docs/UniswapV2Api.md#dappsuniswapv2liquiditypositionsnapshotshistoricalget) | **GET** /dapps/uniswapv2/liquidityPositionSnapshots/historical | 
*UniswapV2Api* | [**dappsUniswapv2MintsHistoricalGet**](docs/UniswapV2Api.md#dappsuniswapv2mintshistoricalget) | **GET** /dapps/uniswapv2/mints/historical | 
*UniswapV2Api* | [**dappsUniswapv2PoolDayDataHistoricalGet**](docs/UniswapV2Api.md#dappsuniswapv2pooldaydatahistoricalget) | **GET** /dapps/uniswapv2/poolDayData/historical | 
*UniswapV2Api* | [**dappsUniswapv2PoolHourDataHistoricalGet**](docs/UniswapV2Api.md#dappsuniswapv2poolhourdatahistoricalget) | **GET** /dapps/uniswapv2/poolHourData/historical | 
*UniswapV2Api* | [**dappsUniswapv2PoolsCurrentGet**](docs/UniswapV2Api.md#dappsuniswapv2poolscurrentget) | **GET** /dapps/uniswapv2/pools/current | GetPools
*UniswapV2Api* | [**dappsUniswapv2PoolsHistoricalGet**](docs/UniswapV2Api.md#dappsuniswapv2poolshistoricalget) | **GET** /dapps/uniswapv2/pools/historical | 
*UniswapV2Api* | [**dappsUniswapv2SwapsCurrentGet**](docs/UniswapV2Api.md#dappsuniswapv2swapscurrentget) | **GET** /dapps/uniswapv2/swaps/current | GetSwaps
*UniswapV2Api* | [**dappsUniswapv2SwapsHistoricalGet**](docs/UniswapV2Api.md#dappsuniswapv2swapshistoricalget) | **GET** /dapps/uniswapv2/swaps/historical | 
*UniswapV2Api* | [**dappsUniswapv2TokenDayDataHistoricalGet**](docs/UniswapV2Api.md#dappsuniswapv2tokendaydatahistoricalget) | **GET** /dapps/uniswapv2/tokenDayData/historical | 
*UniswapV2Api* | [**dappsUniswapv2TokensCurrentGet**](docs/UniswapV2Api.md#dappsuniswapv2tokenscurrentget) | **GET** /dapps/uniswapv2/tokens/current | GetTokens
*UniswapV2Api* | [**dappsUniswapv2TokensHistoricalGet**](docs/UniswapV2Api.md#dappsuniswapv2tokenshistoricalget) | **GET** /dapps/uniswapv2/tokens/historical | 
*UniswapV2Api* | [**dappsUniswapv2TransactionsHistoricalGet**](docs/UniswapV2Api.md#dappsuniswapv2transactionshistoricalget) | **GET** /dapps/uniswapv2/transactions/historical | 
*UniswapV2Api* | [**dappsUniswapv2UsersHistoricalGet**](docs/UniswapV2Api.md#dappsuniswapv2usershistoricalget) | **GET** /dapps/uniswapv2/users/historical | 
*UniswapV3Api* | [**dappsUniswapv3BundleCurrentGet**](docs/UniswapV3Api.md#dappsuniswapv3bundlecurrentget) | **GET** /dapps/uniswapv3/bundle/current | GetBundles
*UniswapV3Api* | [**dappsUniswapv3BundlesHistoricalGet**](docs/UniswapV3Api.md#dappsuniswapv3bundleshistoricalget) | **GET** /dapps/uniswapv3/bundles/historical | 
*UniswapV3Api* | [**dappsUniswapv3BurnsCurrentGet**](docs/UniswapV3Api.md#dappsuniswapv3burnscurrentget) | **GET** /dapps/uniswapv3/burns/current | GetBurns
*UniswapV3Api* | [**dappsUniswapv3BurnsHistoricalGet**](docs/UniswapV3Api.md#dappsuniswapv3burnshistoricalget) | **GET** /dapps/uniswapv3/burns/historical | 
*UniswapV3Api* | [**dappsUniswapv3DayDataHistoricalGet**](docs/UniswapV3Api.md#dappsuniswapv3daydatahistoricalget) | **GET** /dapps/uniswapv3/dayData/historical | 
*UniswapV3Api* | [**dappsUniswapv3FactoryCurrentGet**](docs/UniswapV3Api.md#dappsuniswapv3factorycurrentget) | **GET** /dapps/uniswapv3/factory/current | GetFactory
*UniswapV3Api* | [**dappsUniswapv3FactoryHistoricalGet**](docs/UniswapV3Api.md#dappsuniswapv3factoryhistoricalget) | **GET** /dapps/uniswapv3/factory/historical | 
*UniswapV3Api* | [**dappsUniswapv3MintsCurrentGet**](docs/UniswapV3Api.md#dappsuniswapv3mintscurrentget) | **GET** /dapps/uniswapv3/mints/current | GetMints
*UniswapV3Api* | [**dappsUniswapv3MintsHistoricalGet**](docs/UniswapV3Api.md#dappsuniswapv3mintshistoricalget) | **GET** /dapps/uniswapv3/mints/historical | 
*UniswapV3Api* | [**dappsUniswapv3PoolDayDataHistoricalGet**](docs/UniswapV3Api.md#dappsuniswapv3pooldaydatahistoricalget) | **GET** /dapps/uniswapv3/poolDayData/historical | 
*UniswapV3Api* | [**dappsUniswapv3PoolHourDataHistoricalGet**](docs/UniswapV3Api.md#dappsuniswapv3poolhourdatahistoricalget) | **GET** /dapps/uniswapv3/poolHourData/historical | 
*UniswapV3Api* | [**dappsUniswapv3PoolsCurrentGet**](docs/UniswapV3Api.md#dappsuniswapv3poolscurrentget) | **GET** /dapps/uniswapv3/pools/current | GetPools
*UniswapV3Api* | [**dappsUniswapv3PoolsDayDataCurrentGet**](docs/UniswapV3Api.md#dappsuniswapv3poolsdaydatacurrentget) | **GET** /dapps/uniswapv3/poolsDayData/current | GetPoolsDayData
*UniswapV3Api* | [**dappsUniswapv3PoolsHistoricalGet**](docs/UniswapV3Api.md#dappsuniswapv3poolshistoricalget) | **GET** /dapps/uniswapv3/pools/historical | 
*UniswapV3Api* | [**dappsUniswapv3PoolsHourDataCurrentGet**](docs/UniswapV3Api.md#dappsuniswapv3poolshourdatacurrentget) | **GET** /dapps/uniswapv3/poolsHourData/current | GetPoolsHourData
*UniswapV3Api* | [**dappsUniswapv3PositionSnapshotHistoricalGet**](docs/UniswapV3Api.md#dappsuniswapv3positionsnapshothistoricalget) | **GET** /dapps/uniswapv3/positionSnapshot/historical | 
*UniswapV3Api* | [**dappsUniswapv3PositionSnapshotsCurrentGet**](docs/UniswapV3Api.md#dappsuniswapv3positionsnapshotscurrentget) | **GET** /dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot
*UniswapV3Api* | [**dappsUniswapv3PositionsCurrentGet**](docs/UniswapV3Api.md#dappsuniswapv3positionscurrentget) | **GET** /dapps/uniswapv3/positions/current | GetPositions
*UniswapV3Api* | [**dappsUniswapv3PositionsHistoricalGet**](docs/UniswapV3Api.md#dappsuniswapv3positionshistoricalget) | **GET** /dapps/uniswapv3/positions/historical | 
*UniswapV3Api* | [**dappsUniswapv3SwapsCurrentGet**](docs/UniswapV3Api.md#dappsuniswapv3swapscurrentget) | **GET** /dapps/uniswapv3/swaps/current | GetSwaps
*UniswapV3Api* | [**dappsUniswapv3SwapsHistoricalGet**](docs/UniswapV3Api.md#dappsuniswapv3swapshistoricalget) | **GET** /dapps/uniswapv3/swaps/historical | 
*UniswapV3Api* | [**dappsUniswapv3TickDayDataHistoricalGet**](docs/UniswapV3Api.md#dappsuniswapv3tickdaydatahistoricalget) | **GET** /dapps/uniswapv3/tickDayData/historical | 
*UniswapV3Api* | [**dappsUniswapv3TicksCurrentGet**](docs/UniswapV3Api.md#dappsuniswapv3tickscurrentget) | **GET** /dapps/uniswapv3/ticks/current | GetTicks
*UniswapV3Api* | [**dappsUniswapv3TicksDayDataCurrentGet**](docs/UniswapV3Api.md#dappsuniswapv3ticksdaydatacurrentget) | **GET** /dapps/uniswapv3/ticksDayData/current | GetTicksDayData
*UniswapV3Api* | [**dappsUniswapv3TicksHistoricalGet**](docs/UniswapV3Api.md#dappsuniswapv3tickshistoricalget) | **GET** /dapps/uniswapv3/ticks/historical | 
*UniswapV3Api* | [**dappsUniswapv3TokenDayDataHistoricalGet**](docs/UniswapV3Api.md#dappsuniswapv3tokendaydatahistoricalget) | **GET** /dapps/uniswapv3/tokenDayData/historical | 
*UniswapV3Api* | [**dappsUniswapv3TokenHourDataHistoricalGet**](docs/UniswapV3Api.md#dappsuniswapv3tokenhourdatahistoricalget) | **GET** /dapps/uniswapv3/tokenHourData/historical | 
*UniswapV3Api* | [**dappsUniswapv3TokensCurrentGet**](docs/UniswapV3Api.md#dappsuniswapv3tokenscurrentget) | **GET** /dapps/uniswapv3/tokens/current | GetTokens
*UniswapV3Api* | [**dappsUniswapv3TokensDayDataCurrentGet**](docs/UniswapV3Api.md#dappsuniswapv3tokensdaydatacurrentget) | **GET** /dapps/uniswapv3/tokensDayData/current | GetTokensDayData
*UniswapV3Api* | [**dappsUniswapv3TokensHistoricalGet**](docs/UniswapV3Api.md#dappsuniswapv3tokenshistoricalget) | **GET** /dapps/uniswapv3/tokens/historical | 
*UniswapV3Api* | [**dappsUniswapv3TokensHourDataCurrentGet**](docs/UniswapV3Api.md#dappsuniswapv3tokenshourdatacurrentget) | **GET** /dapps/uniswapv3/tokensHourData/current | GetTokensHourData
*UniswapV3Api* | [**dappsUniswapv3TransactionsHistoricalGet**](docs/UniswapV3Api.md#dappsuniswapv3transactionshistoricalget) | **GET** /dapps/uniswapv3/transactions/historical | 
*UniswapV3Api* | [**dappsUniswapv3UniswapDayDataCurrentGet**](docs/UniswapV3Api.md#dappsuniswapv3uniswapdaydatacurrentget) | **GET** /dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData


## Documentation For Models

 - [NumericsBigInteger](docs/NumericsBigInteger.md)
 - [SushiswapPairDTO](docs/SushiswapPairDTO.md)
 - [SushiswapSwapDTO](docs/SushiswapSwapDTO.md)
 - [SushiswapTokenDTO](docs/SushiswapTokenDTO.md)
 - [TransactionsETradeAggressiveSide](docs/TransactionsETradeAggressiveSide.md)
 - [UniswapV2PairV2DTO](docs/UniswapV2PairV2DTO.md)
 - [UniswapV2SwapV2DTO](docs/UniswapV2SwapV2DTO.md)
 - [UniswapV2TokenV2DTO](docs/UniswapV2TokenV2DTO.md)
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
 - [UniswapV3UniswapDayDataV3DTO](docs/UniswapV3UniswapDayDataV3DTO.md)


## Documentation For Authorization

 All endpoints do not require authorization.

