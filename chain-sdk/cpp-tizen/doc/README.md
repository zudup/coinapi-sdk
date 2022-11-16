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


### SushiswapManager
Method | HTTP request | Description
------------- | ------------- | -------------
*curveGetExchanges (current)Sync* | *GET* /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥.
*curveGetExchanges (current)ASync* | *GET* /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥.
*dexGetTrades (current)Sync* | *GET* /dapps/sushiswap/trades/current | Trades (current) 🔥.
*dexGetTrades (current)ASync* | *GET* /dapps/sushiswap/trades/current | Trades (current) 🔥.
*sushiswapGetPools (current)Sync* | *GET* /dapps/sushiswap/pools/current | Pools (current) 🔥.
*sushiswapGetPools (current)ASync* | *GET* /dapps/sushiswap/pools/current | Pools (current) 🔥.
*sushiswapGetSwaps (current)Sync* | *GET* /dapps/sushiswap/swaps/current | Swaps (current) 🔥.
*sushiswapGetSwaps (current)ASync* | *GET* /dapps/sushiswap/swaps/current | Swaps (current) 🔥.
*sushiswapGetTokens (current)Sync* | *GET* /dapps/sushiswap/tokens/current | Tokens (current) 🔥.
*sushiswapGetTokens (current)ASync* | *GET* /dapps/sushiswap/tokens/current | Tokens (current) 🔥.


### UniswapV2Manager
Method | HTTP request | Description
------------- | ------------- | -------------
*uniswapV2GetPools (current)Sync* | *GET* /dapps/uniswapv2/pools/current | Pools (current) 🔥.
*uniswapV2GetPools (current)ASync* | *GET* /dapps/uniswapv2/pools/current | Pools (current) 🔥.
*uniswapV2GetSwaps (current)Sync* | *GET* /dapps/uniswapv2/swaps/current | Swaps (current) 🔥.
*uniswapV2GetSwaps (current)ASync* | *GET* /dapps/uniswapv2/swaps/current | Swaps (current) 🔥.
*uniswapV2GetTokens (current)Sync* | *GET* /dapps/uniswapv2/tokens/current | Tokens (current) 🔥.
*uniswapV2GetTokens (current)ASync* | *GET* /dapps/uniswapv2/tokens/current | Tokens (current) 🔥.


### UniswapV3Manager
Method | HTTP request | Description
------------- | ------------- | -------------
*uniswapV3GetBundles (current)Sync* | *GET* /dapps/uniswapv3/bundles/current | Bundles (current).
*uniswapV3GetBundles (current)ASync* | *GET* /dapps/uniswapv3/bundles/current | Bundles (current).
*uniswapV3GetBurns (current)Sync* | *GET* /dapps/uniswapv3/burns/current | Burns (current).
*uniswapV3GetBurns (current)ASync* | *GET* /dapps/uniswapv3/burns/current | Burns (current).
*uniswapV3GetDayData (current)Sync* | *GET* /dapps/uniswapv3/dayData/current | DayData (current).
*uniswapV3GetDayData (current)ASync* | *GET* /dapps/uniswapv3/dayData/current | DayData (current).
*uniswapV3GetFactory (current)Sync* | *GET* /dapps/uniswapv3/factory/current | Factory (current).
*uniswapV3GetFactory (current)ASync* | *GET* /dapps/uniswapv3/factory/current | Factory (current).
*uniswapV3GetMints (current)Sync* | *GET* /dapps/uniswapv3/mints/current | Mints (current).
*uniswapV3GetMints (current)ASync* | *GET* /dapps/uniswapv3/mints/current | Mints (current).
*uniswapV3GetPools (current)Sync* | *GET* /dapps/uniswapv3/pools/current | Pools (current) 🔥.
*uniswapV3GetPools (current)ASync* | *GET* /dapps/uniswapv3/pools/current | Pools (current) 🔥.
*uniswapV3GetPoolsDayData (current)Sync* | *GET* /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current).
*uniswapV3GetPoolsDayData (current)ASync* | *GET* /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current).
*uniswapV3GetPoolsHourData (current)Sync* | *GET* /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current).
*uniswapV3GetPoolsHourData (current)ASync* | *GET* /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current).
*uniswapV3GetPositions (current)Sync* | *GET* /dapps/uniswapv3/positions/current | Positions (current).
*uniswapV3GetPositions (current)ASync* | *GET* /dapps/uniswapv3/positions/current | Positions (current).
*uniswapV3GetPositionsSnapshots (current)Sync* | *GET* /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current).
*uniswapV3GetPositionsSnapshots (current)ASync* | *GET* /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current).
*uniswapV3GetSwaps (current)Sync* | *GET* /dapps/uniswapv3/swaps/current | Swaps (current) 🔥.
*uniswapV3GetSwaps (current)ASync* | *GET* /dapps/uniswapv3/swaps/current | Swaps (current) 🔥.
*uniswapV3GetTicks (current)Sync* | *GET* /dapps/uniswapv3/ticks/current | Ticks (current).
*uniswapV3GetTicks (current)ASync* | *GET* /dapps/uniswapv3/ticks/current | Ticks (current).
*uniswapV3GetTicksDayData (current)Sync* | *GET* /dapps/uniswapv3/ticksDayData/current | TicksDayData (current).
*uniswapV3GetTicksDayData (current)ASync* | *GET* /dapps/uniswapv3/ticksDayData/current | TicksDayData (current).
*uniswapV3GetTokens (current)Sync* | *GET* /dapps/uniswapv3/tokens/current | Tokens (current) 🔥.
*uniswapV3GetTokens (current)ASync* | *GET* /dapps/uniswapv3/tokens/current | Tokens (current) 🔥.
*uniswapV3GetTokensDayData (current)Sync* | *GET* /dapps/uniswapv3/tokensDayData/current | TokensDayData (current).
*uniswapV3GetTokensDayData (current)ASync* | *GET* /dapps/uniswapv3/tokensDayData/current | TokensDayData (current).
*uniswapV3GetTokensHourData (current)Sync* | *GET* /dapps/uniswapv3/tokensHourData/current | TokensHourData (current).
*uniswapV3GetTokensHourData (current)ASync* | *GET* /dapps/uniswapv3/tokensHourData/current | TokensHourData (current).


## What are the Model files for the data structures/objects?
Class | Description
------------- | -------------
 *Curve.ExchangeDTO* | 
 *Dex.TradeDTO* | Trade for a single user, as part of a ring trade. It's part of the solution submitted by a solver for a given batch.
 *Numerics.BigInteger* | 
 *Sushiswap.PairDTO* | Information about a pair. Includes references to each token within the pair, volume information, liquidity information, and more. The pair entity mirrors the pair smart contract, and also contains aggregated information about use.
 *Sushiswap.SwapDTO* | Swap are created for each token swap within a pair.
 *Sushiswap.TokenDTO* | Stores aggregated information for a specific token across all pairs that token is included in.
 *Transactions.ETradeAggressiveSide* | 
 *UniswapV2.PairV2DTO* | Information about a pair. Includes references to each token within the pair, volume information, liquidity information, and more. The pair entity mirrors the pair smart contract, and also contains aggregated information about use.
 *UniswapV2.SwapV2DTO* | Swap are created for each token swap within a pair.
 *UniswapV2.TokenV2DTO* | Stores aggregated information for a specific token across all pairs that token is included in.
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
 *UniswapV3.UniswapDayDataV3DTO* | Data accumulated and condensed into day stats for all of Uniswap.

