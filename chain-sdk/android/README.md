# openapi-android-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>org.openapitools</groupId>
    <artifactId>openapi-android-client</artifactId>
    <version>1.0.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "org.openapitools:openapi-android-client:1.0.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

- target/openapi-android-client-1.0.0.jar
- target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import org.openapitools.client.api.BundlesApi;

public class BundlesApiExample {

    public static void main(String[] args) {
        BundlesApi apiInstance = new BundlesApi();
        String chainId = null; // String | 
        Long startBlock = null; // Long | 
        Long endBlock = null; // Long | 
        Date startDate = null; // Date | 
        Date endDate = null; // Date | 
        try {
            apiInstance.chainsChainIdDappsSushiswapBundlesHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
        } catch (ApiException e) {
            System.err.println("Exception when calling BundlesApi#chainsChainIdDappsSushiswapBundlesHistoricalGet");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://onchain.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BundlesApi* | [**chainsChainIdDappsSushiswapBundlesHistoricalGet**](docs/BundlesApi.md#chainsChainIdDappsSushiswapBundlesHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/bundles/historical | 
*BundlesApi* | [**chainsChainIdDappsUniswapv2BundlesHistoricalGet**](docs/BundlesApi.md#chainsChainIdDappsUniswapv2BundlesHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/bundles/historical | 
*BundlesApi* | [**chainsChainIdDappsUniswapv3BundlesHistoricalGet**](docs/BundlesApi.md#chainsChainIdDappsUniswapv3BundlesHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundles/historical | 
*BurnsApi* | [**chainsChainIdDappsSushiswapBurnsHistoricalGet**](docs/BurnsApi.md#chainsChainIdDappsSushiswapBurnsHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/burns/historical | 
*BurnsApi* | [**chainsChainIdDappsUniswapv2BurnsHistoricalGet**](docs/BurnsApi.md#chainsChainIdDappsUniswapv2BurnsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/burns/historical | 
*BurnsApi* | [**chainsChainIdDappsUniswapv3BurnsHistoricalGet**](docs/BurnsApi.md#chainsChainIdDappsUniswapv3BurnsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/burns/historical | 
*DayDataApi* | [**chainsChainIdDappsSushiswapDayDataHistoricalGet**](docs/DayDataApi.md#chainsChainIdDappsSushiswapDayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/dayData/historical | 
*FactoryApi* | [**chainsChainIdDappsSushiswapFactoryHistoricalGet**](docs/FactoryApi.md#chainsChainIdDappsSushiswapFactoryHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/factory/historical | 
*FactoryApi* | [**chainsChainIdDappsUniswapv2FactoryHistoricalGet**](docs/FactoryApi.md#chainsChainIdDappsUniswapv2FactoryHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/factory/historical | 
*FactoryApi* | [**chainsChainIdDappsUniswapv3FactoryHistoricalGet**](docs/FactoryApi.md#chainsChainIdDappsUniswapv3FactoryHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/factory/historical | 
*HourDataApi* | [**chainsChainIdDappsSushiswapHourDataHistoricalGet**](docs/HourDataApi.md#chainsChainIdDappsSushiswapHourDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/hourData/historical | 
*LiquidityPositionApi* | [**chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet**](docs/LiquidityPositionApi.md#chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/liquidityPosition/historical | 
*LiquidityPositionApi* | [**chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet**](docs/LiquidityPositionApi.md#chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/liquidityPosition/historical | 
*LiquidityPositionSnapshotsApi* | [**chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet**](docs/LiquidityPositionSnapshotsApi.md#chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/liquidityPositionSnapshots/historical | 
*LiquidityPositionSnapshotsApi* | [**chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet**](docs/LiquidityPositionSnapshotsApi.md#chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/liquidityPositionSnapshots/historical | 
*MintsApi* | [**chainsChainIdDappsSushiswapMintsHistoricalGet**](docs/MintsApi.md#chainsChainIdDappsSushiswapMintsHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/mints/historical | 
*MintsApi* | [**chainsChainIdDappsUniswapv2MintsHistoricalGet**](docs/MintsApi.md#chainsChainIdDappsUniswapv2MintsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/mints/historical | 
*MintsApi* | [**chainsChainIdDappsUniswapv3MintsHistoricalGet**](docs/MintsApi.md#chainsChainIdDappsUniswapv3MintsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/mints/historical | 
*OrdersApi* | [**chainsChainIdDappsCowOrdersHistoricalGet**](docs/OrdersApi.md#chainsChainIdDappsCowOrdersHistoricalGet) | **GET** /chains/{chain_id}/dapps/cow/orders/historical | 
*PoiApi* | [**chainsChainIdDappsCowPoiHistoricalGet**](docs/PoiApi.md#chainsChainIdDappsCowPoiHistoricalGet) | **GET** /chains/{chain_id}/dapps/cow/poi/historical | 
*PoiApi* | [**chainsChainIdDappsSushiswapPoiHistoricalGet**](docs/PoiApi.md#chainsChainIdDappsSushiswapPoiHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/poi/historical | 
*PoiApi* | [**chainsChainIdDappsUniswapv2PoiHistoricalGet**](docs/PoiApi.md#chainsChainIdDappsUniswapv2PoiHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/poi/historical | 
*PoiApi* | [**chainsChainIdDappsUniswapv3PoiHistoricalGet**](docs/PoiApi.md#chainsChainIdDappsUniswapv3PoiHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poi/historical | 
*PoolDayDataApi* | [**chainsChainIdDappsSushiswapPoolDayDataHistoricalGet**](docs/PoolDayDataApi.md#chainsChainIdDappsSushiswapPoolDayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/poolDayData/historical | 
*PoolDayDataApi* | [**chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet**](docs/PoolDayDataApi.md#chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/poolDayData/historical | 
*PoolDayDataApi* | [**chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet**](docs/PoolDayDataApi.md#chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolDayData/historical | 
*PoolHourDataApi* | [**chainsChainIdDappsSushiswapPoolHourDataHistoricalGet**](docs/PoolHourDataApi.md#chainsChainIdDappsSushiswapPoolHourDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/poolHourData/historical | 
*PoolHourDataApi* | [**chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet**](docs/PoolHourDataApi.md#chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/poolHourData/historical | 
*PoolHourDataApi* | [**chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet**](docs/PoolHourDataApi.md#chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolHourData/historical | 
*PoolsApi* | [**chainsChainIdDappsCurvePoolsHistoricalGet**](docs/PoolsApi.md#chainsChainIdDappsCurvePoolsHistoricalGet) | **GET** /chains/{chain_id}/dapps/curve/pools/historical | 
*PoolsApi* | [**chainsChainIdDappsSushiswapPoolsHistoricalGet**](docs/PoolsApi.md#chainsChainIdDappsSushiswapPoolsHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/pools/historical | 
*PoolsApi* | [**chainsChainIdDappsUniswapv2PoolsHistoricalGet**](docs/PoolsApi.md#chainsChainIdDappsUniswapv2PoolsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/historical | 
*PoolsApi* | [**chainsChainIdDappsUniswapv3PoolsHistoricalGet**](docs/PoolsApi.md#chainsChainIdDappsUniswapv3PoolsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/historical | 
*PositionSnapshotApi* | [**chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet**](docs/PositionSnapshotApi.md#chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/positionSnapshot/historical | 
*PositionsApi* | [**chainsChainIdDappsUniswapv3PositionsHistoricalGet**](docs/PositionsApi.md#chainsChainIdDappsUniswapv3PositionsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/positions/historical | 
*SettlementApi* | [**chainsChainIdDappsCowSettlementHistoricalGet**](docs/SettlementApi.md#chainsChainIdDappsCowSettlementHistoricalGet) | **GET** /chains/{chain_id}/dapps/cow/settlement/historical | 
*SushiswapApi* | [**chainsChainIdDappsSushiswapPoolsCurrentGet**](docs/SushiswapApi.md#chainsChainIdDappsSushiswapPoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/pools/current | GetPools
*SushiswapApi* | [**chainsChainIdDappsSushiswapSwapsCurrentGet**](docs/SushiswapApi.md#chainsChainIdDappsSushiswapSwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/swaps/current | GetSwaps
*SushiswapApi* | [**chainsChainIdDappsSushiswapTokensCurrentGet**](docs/SushiswapApi.md#chainsChainIdDappsSushiswapTokensCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/current | GetTokens
*SwapsApi* | [**chainsChainIdDappsCurveSwapsHistoricalGet**](docs/SwapsApi.md#chainsChainIdDappsCurveSwapsHistoricalGet) | **GET** /chains/{chain_id}/dapps/curve/swaps/historical | 
*SwapsApi* | [**chainsChainIdDappsSushiswapSwapsHistoricalGet**](docs/SwapsApi.md#chainsChainIdDappsSushiswapSwapsHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/swaps/historical | 
*SwapsApi* | [**chainsChainIdDappsUniswapv2SwapsHistoricalGet**](docs/SwapsApi.md#chainsChainIdDappsUniswapv2SwapsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/historical | 
*SwapsApi* | [**chainsChainIdDappsUniswapv3SwapsHistoricalGet**](docs/SwapsApi.md#chainsChainIdDappsUniswapv3SwapsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/historical | 
*TickDayDataApi* | [**chainsChainIdDappsUniswapv3TickDayDataHistoricalGet**](docs/TickDayDataApi.md#chainsChainIdDappsUniswapv3TickDayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tickDayData/historical | 
*TicksApi* | [**chainsChainIdDappsUniswapv3TicksHistoricalGet**](docs/TicksApi.md#chainsChainIdDappsUniswapv3TicksHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticks/historical | 
*TokenDayDataApi* | [**chainsChainIdDappsSushiswapTokenDayDataHistoricalGet**](docs/TokenDayDataApi.md#chainsChainIdDappsSushiswapTokenDayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/tokenDayData/historical | 
*TokenDayDataApi* | [**chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet**](docs/TokenDayDataApi.md#chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokenDayData/historical | 
*TokenDayDataApi* | [**chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet**](docs/TokenDayDataApi.md#chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokenDayData/historical | 
*TokenHourDataApi* | [**chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet**](docs/TokenHourDataApi.md#chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokenHourData/historical | 
*TokensApi* | [**chainsChainIdDappsCowTokensHistoricalGet**](docs/TokensApi.md#chainsChainIdDappsCowTokensHistoricalGet) | **GET** /chains/{chain_id}/dapps/cow/tokens/historical | 
*TokensApi* | [**chainsChainIdDappsCurveTokensHistoricalGet**](docs/TokensApi.md#chainsChainIdDappsCurveTokensHistoricalGet) | **GET** /chains/{chain_id}/dapps/curve/tokens/historical | 
*TokensApi* | [**chainsChainIdDappsDexTokensHistoricalGet**](docs/TokensApi.md#chainsChainIdDappsDexTokensHistoricalGet) | **GET** /chains/{chain_id}/dapps/dex/tokens/historical | 
*TokensApi* | [**chainsChainIdDappsSushiswapTokensHistoricalGet**](docs/TokensApi.md#chainsChainIdDappsSushiswapTokensHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/historical | 
*TokensApi* | [**chainsChainIdDappsUniswapv2TokensHistoricalGet**](docs/TokensApi.md#chainsChainIdDappsUniswapv2TokensHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/historical | 
*TokensApi* | [**chainsChainIdDappsUniswapv3TokensHistoricalGet**](docs/TokensApi.md#chainsChainIdDappsUniswapv3TokensHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/historical | 
*TradesApi* | [**chainsChainIdDappsCowTradesHistoricalGet**](docs/TradesApi.md#chainsChainIdDappsCowTradesHistoricalGet) | **GET** /chains/{chain_id}/dapps/cow/trades/historical | 
*TradesApi* | [**chainsChainIdDappsDexTradesHistoricalGet**](docs/TradesApi.md#chainsChainIdDappsDexTradesHistoricalGet) | **GET** /chains/{chain_id}/dapps/dex/trades/historical | 
*TransactionsApi* | [**chainsChainIdDappsSushiswapTransactionsHistoricalGet**](docs/TransactionsApi.md#chainsChainIdDappsSushiswapTransactionsHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/transactions/historical | 
*TransactionsApi* | [**chainsChainIdDappsUniswapv2TransactionsHistoricalGet**](docs/TransactionsApi.md#chainsChainIdDappsUniswapv2TransactionsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/transactions/historical | 
*TransactionsApi* | [**chainsChainIdDappsUniswapv3TransactionsHistoricalGet**](docs/TransactionsApi.md#chainsChainIdDappsUniswapv3TransactionsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/transactions/historical | 
*UniswapDayDataApi* | [**chainsChainIdDappsUniswapv2DayDataHistoricalGet**](docs/UniswapDayDataApi.md#chainsChainIdDappsUniswapv2DayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/dayData/historical | 
*UniswapDayDataApi* | [**chainsChainIdDappsUniswapv3DayDataHistoricalGet**](docs/UniswapDayDataApi.md#chainsChainIdDappsUniswapv3DayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/dayData/historical | 
*UniswapV2Api* | [**chainsChainIdDappsUniswapv2PoolsCurrentGet**](docs/UniswapV2Api.md#chainsChainIdDappsUniswapv2PoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools
*UniswapV2Api* | [**chainsChainIdDappsUniswapv2SwapsCurrentGet**](docs/UniswapV2Api.md#chainsChainIdDappsUniswapv2SwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps
*UniswapV2Api* | [**chainsChainIdDappsUniswapv2TokensCurrentGet**](docs/UniswapV2Api.md#chainsChainIdDappsUniswapv2TokensCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3BundleCurrentGet**](docs/UniswapV3Api.md#chainsChainIdDappsUniswapv3BundleCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3BurnsCurrentGet**](docs/UniswapV3Api.md#chainsChainIdDappsUniswapv3BurnsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3FactoryCurrentGet**](docs/UniswapV3Api.md#chainsChainIdDappsUniswapv3FactoryCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3MintsCurrentGet**](docs/UniswapV3Api.md#chainsChainIdDappsUniswapv3MintsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3PoolsCurrentGet**](docs/UniswapV3Api.md#chainsChainIdDappsUniswapv3PoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet**](docs/UniswapV3Api.md#chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet**](docs/UniswapV3Api.md#chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet**](docs/UniswapV3Api.md#chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3PositionsCurrentGet**](docs/UniswapV3Api.md#chainsChainIdDappsUniswapv3PositionsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3SwapsCurrentGet**](docs/UniswapV3Api.md#chainsChainIdDappsUniswapv3SwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3TicksCurrentGet**](docs/UniswapV3Api.md#chainsChainIdDappsUniswapv3TicksCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3TicksDayDataCurrentGet**](docs/UniswapV3Api.md#chainsChainIdDappsUniswapv3TicksDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3TokensCurrentGet**](docs/UniswapV3Api.md#chainsChainIdDappsUniswapv3TokensCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3TokensDayDataCurrentGet**](docs/UniswapV3Api.md#chainsChainIdDappsUniswapv3TokensDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3TokensHourDataCurrentGet**](docs/UniswapV3Api.md#chainsChainIdDappsUniswapv3TokensHourDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData
*UniswapV3Api* | [**chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet**](docs/UniswapV3Api.md#chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData
*UsersApi* | [**chainsChainIdDappsCowUsersHistoricalGet**](docs/UsersApi.md#chainsChainIdDappsCowUsersHistoricalGet) | **GET** /chains/{chain_id}/dapps/cow/users/historical | 
*UsersApi* | [**chainsChainIdDappsSushiswapUsersHistoricalGet**](docs/UsersApi.md#chainsChainIdDappsSushiswapUsersHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/users/historical | 
*UsersApi* | [**chainsChainIdDappsUniswapv2UsersHistoricalGet**](docs/UsersApi.md#chainsChainIdDappsUniswapv2UsersHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/users/historical | 


## Documentation for Models

 - [BigInteger](docs/BigInteger.md)
 - [BundleV3DTO](docs/BundleV3DTO.md)
 - [BurnV3DTO](docs/BurnV3DTO.md)
 - [ETradeAggressiveSide](docs/ETradeAggressiveSide.md)
 - [FactoryV3DTO](docs/FactoryV3DTO.md)
 - [MintV3DTO](docs/MintV3DTO.md)
 - [PairDTO](docs/PairDTO.md)
 - [PairV2DTO](docs/PairV2DTO.md)
 - [PoolDayDataV3DTO](docs/PoolDayDataV3DTO.md)
 - [PoolHourDataV3DTO](docs/PoolHourDataV3DTO.md)
 - [PoolV3DTO](docs/PoolV3DTO.md)
 - [PositionSnapshotV3DTO](docs/PositionSnapshotV3DTO.md)
 - [PositionV3DTO](docs/PositionV3DTO.md)
 - [SwapDTO](docs/SwapDTO.md)
 - [SwapV2DTO](docs/SwapV2DTO.md)
 - [SwapV3DTO](docs/SwapV3DTO.md)
 - [TickDayDataV3DTO](docs/TickDayDataV3DTO.md)
 - [TickV3DTO](docs/TickV3DTO.md)
 - [TokenDTO](docs/TokenDTO.md)
 - [TokenHourDataV3DTO](docs/TokenHourDataV3DTO.md)
 - [TokenV2DTO](docs/TokenV2DTO.md)
 - [TokenV3DTO](docs/TokenV3DTO.md)
 - [TokenV3DayDataDTO](docs/TokenV3DayDataDTO.md)
 - [UniswapDayDataV3DTO](docs/UniswapDayDataV3DTO.md)


## Documentation for Authorization

All endpoints do not require authorization.
Authentication schemes defined for the API:

## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

support@coinapi.io

