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


### BundlesManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv2BundlesHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/bundles/historical | .
*chainsChainIdDappsUniswapv2BundlesHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/bundles/historical | .
*chainsChainIdDappsUniswapv3BundlesHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/bundles/historical | .
*chainsChainIdDappsUniswapv3BundlesHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/bundles/historical | .


### BurnsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv2BurnsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/burns/historical | .
*chainsChainIdDappsUniswapv2BurnsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/burns/historical | .
*chainsChainIdDappsUniswapv3BurnsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/burns/historical | .
*chainsChainIdDappsUniswapv3BurnsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/burns/historical | .


### FactoryManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv3FactoryHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/factory/historical | .
*chainsChainIdDappsUniswapv3FactoryHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/factory/historical | .


### LiquidityPositionManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/liquidityPosition/historical | .
*chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/liquidityPosition/historical | .


### LiquidityPositionSnapshotsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/liquidityPositionSnapshots/historical | .
*chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/liquidityPositionSnapshots/historical | .


### MintManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv2MintHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/mint/historical | .
*chainsChainIdDappsUniswapv2MintHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/mint/historical | .


### MintsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv3MintsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/mints/historical | .
*chainsChainIdDappsUniswapv3MintsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/mints/historical | .


### PoiManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv2PoiHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/poi/historical | .
*chainsChainIdDappsUniswapv2PoiHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/poi/historical | .
*chainsChainIdDappsUniswapv3PoiHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/poi/historical | .
*chainsChainIdDappsUniswapv3PoiHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/poi/historical | .


### PoolDayDataManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv2PoolDayDataHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/poolDayData/historical | .
*chainsChainIdDappsUniswapv2PoolDayDataHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/poolDayData/historical | .
*chainsChainIdDappsUniswapv3PoolDayDataHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/poolDayData/historical | .
*chainsChainIdDappsUniswapv3PoolDayDataHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/poolDayData/historical | .


### PoolHourDataManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv2PoolHourDataHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/poolHourData/historical | .
*chainsChainIdDappsUniswapv2PoolHourDataHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/poolHourData/historical | .
*chainsChainIdDappsUniswapv3PoolHourDataHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/poolHourData/historical | .
*chainsChainIdDappsUniswapv3PoolHourDataHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/poolHourData/historical | .


### PoolsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurvePoolsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/pools/historical | .
*chainsChainIdDappsCurvePoolsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/pools/historical | .
*chainsChainIdDappsSushiswapPoolsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/pools/historical | .
*chainsChainIdDappsSushiswapPoolsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/pools/historical | .
*chainsChainIdDappsUniswapv2PoolsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/pools/historical | .
*chainsChainIdDappsUniswapv2PoolsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/pools/historical | .
*chainsChainIdDappsUniswapv3PoolsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/pools/historical | .
*chainsChainIdDappsUniswapv3PoolsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/pools/historical | .


### PositionSnapshotManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/positionSnapshot/historical | .
*chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/positionSnapshot/historical | .


### PositionsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv3PositionsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/positions/historical | .
*chainsChainIdDappsUniswapv3PositionsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/positions/historical | .


### SushiswapManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsSushiswapPoolsCurrentGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/pools/current | GetPools.
*chainsChainIdDappsSushiswapPoolsCurrentGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/pools/current | GetPools.
*chainsChainIdDappsSushiswapSwapsCurrentGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/swaps/current | GetSwaps.
*chainsChainIdDappsSushiswapSwapsCurrentGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/swaps/current | GetSwaps.
*chainsChainIdDappsSushiswapTokensCurrentGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/tokens/current | GetTokens.
*chainsChainIdDappsSushiswapTokensCurrentGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/tokens/current | GetTokens.


### SwapsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCurveSwapsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/swaps/historical | .
*chainsChainIdDappsCurveSwapsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/swaps/historical | .
*chainsChainIdDappsSushiswapSwapsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/swaps/historical | .
*chainsChainIdDappsSushiswapSwapsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/swaps/historical | .
*chainsChainIdDappsUniswapv2SwapsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/swaps/historical | .
*chainsChainIdDappsUniswapv2SwapsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/swaps/historical | .
*chainsChainIdDappsUniswapv3SwapsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/swaps/historical | .
*chainsChainIdDappsUniswapv3SwapsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/swaps/historical | .


### TickDayDataManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv3TickDayDataHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tickDayData/historical | .
*chainsChainIdDappsUniswapv3TickDayDataHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tickDayData/historical | .


### TicksManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv3TicksHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/ticks/historical | .
*chainsChainIdDappsUniswapv3TicksHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/ticks/historical | .


### TokenDayDataManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv2TokenDayDataHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/tokenDayData/historical | .
*chainsChainIdDappsUniswapv2TokenDayDataHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/tokenDayData/historical | .
*chainsChainIdDappsUniswapv3TokenDayDataHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tokenDayData/historical | .
*chainsChainIdDappsUniswapv3TokenDayDataHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tokenDayData/historical | .


### TokenHourDataManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv3TokenHourDataHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tokenHourData/historical | .
*chainsChainIdDappsUniswapv3TokenHourDataHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tokenHourData/historical | .


### TokensManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCowTokensHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/cow/tokens/historical | .
*chainsChainIdDappsCowTokensHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/cow/tokens/historical | .
*chainsChainIdDappsCurveTokensHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/curve/tokens/historical | .
*chainsChainIdDappsCurveTokensHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/curve/tokens/historical | .
*chainsChainIdDappsDexTokensHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/dex/tokens/historical | .
*chainsChainIdDappsDexTokensHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/dex/tokens/historical | .
*chainsChainIdDappsSushiswapTokensHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/sushiswap/tokens/historical | .
*chainsChainIdDappsSushiswapTokensHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/sushiswap/tokens/historical | .
*chainsChainIdDappsUniswapv2TokensHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/tokens/historical | .
*chainsChainIdDappsUniswapv2TokensHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/tokens/historical | .
*chainsChainIdDappsUniswapv3TokensHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tokens/historical | .
*chainsChainIdDappsUniswapv3TokensHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tokens/historical | .


### TradesManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsCowTradesHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/cow/trades/historical | .
*chainsChainIdDappsCowTradesHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/cow/trades/historical | .
*chainsChainIdDappsDexTradesHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/dex/trades/historical | .
*chainsChainIdDappsDexTradesHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/dex/trades/historical | .


### TransactionsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv3TransactionsHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/transactions/historical | .
*chainsChainIdDappsUniswapv3TransactionsHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/transactions/historical | .


### UniswapDayDataManager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv3UniswapDayDataHistoricalGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/historical | .
*chainsChainIdDappsUniswapv3UniswapDayDataHistoricalGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/historical | .


### UniswapV2Manager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv2PoolsCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools.
*chainsChainIdDappsUniswapv2PoolsCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools.
*chainsChainIdDappsUniswapv2SwapsCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps.
*chainsChainIdDappsUniswapv2SwapsCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps.
*chainsChainIdDappsUniswapv2TokensCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens.
*chainsChainIdDappsUniswapv2TokensCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens.


### UniswapV3Manager
Method | HTTP request | Description
------------- | ------------- | -------------
*chainsChainIdDappsUniswapv3BundleCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles.
*chainsChainIdDappsUniswapv3BundleCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles.
*chainsChainIdDappsUniswapv3BurnsCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns.
*chainsChainIdDappsUniswapv3BurnsCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns.
*chainsChainIdDappsUniswapv3FactoryCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory.
*chainsChainIdDappsUniswapv3FactoryCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory.
*chainsChainIdDappsUniswapv3MintsCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints.
*chainsChainIdDappsUniswapv3MintsCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints.
*chainsChainIdDappsUniswapv3PoolsCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools.
*chainsChainIdDappsUniswapv3PoolsCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools.
*chainsChainIdDappsUniswapv3PoolsDayDataCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData.
*chainsChainIdDappsUniswapv3PoolsDayDataCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData.
*chainsChainIdDappsUniswapv3PoolsHourDataCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData.
*chainsChainIdDappsUniswapv3PoolsHourDataCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData.
*chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot.
*chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot.
*chainsChainIdDappsUniswapv3PositionsCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions.
*chainsChainIdDappsUniswapv3PositionsCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions.
*chainsChainIdDappsUniswapv3SwapsCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps.
*chainsChainIdDappsUniswapv3SwapsCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps.
*chainsChainIdDappsUniswapv3TicksCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks.
*chainsChainIdDappsUniswapv3TicksCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks.
*chainsChainIdDappsUniswapv3TicksDayDataCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData.
*chainsChainIdDappsUniswapv3TicksDayDataCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData.
*chainsChainIdDappsUniswapv3TokensCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens.
*chainsChainIdDappsUniswapv3TokensCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens.
*chainsChainIdDappsUniswapv3TokensDayDataCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData.
*chainsChainIdDappsUniswapv3TokensDayDataCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData.
*chainsChainIdDappsUniswapv3TokensHourDataCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData.
*chainsChainIdDappsUniswapv3TokensHourDataCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData.
*chainsChainIdDappsUniswapv3UniswapDayDataCurrentGetSync* | *GET* /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData.
*chainsChainIdDappsUniswapv3UniswapDayDataCurrentGetASync* | *GET* /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData.


## What are the Model files for the data structures/objects?
Class | Description
------------- | -------------
 *BigInteger* | 
 *BundleV3DTO* | 
 *BurnV3DTO* | 
 *ETradeAggressiveSide* | 
 *FactoryV3DTO* | 
 *MintV3DTO* | 
 *PairDTO* | 
 *PairV2DTO* | 
 *PoolDayDataV3DTO* | 
 *PoolHourDataV3DTO* | 
 *PoolV3DTO* | 
 *PositionSnapshotV3DTO* | 
 *PositionV3DTO* | 
 *SwapDTO* | 
 *SwapV2DTO* | 
 *SwapV3DTO* | 
 *TickDayDataV3DTO* | 
 *TickV3DTO* | 
 *TokenDTO* | 
 *TokenHourDataV3DTO* | 
 *TokenV2DTO* | 
 *TokenV3DTO* | 
 *TokenV3DayDataDTO* | 
 *UniswapDayDataV3DTO* | 

