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

import org.openapitools.client.api.PoolsApi;

public class PoolsApiExample {

    public static void main(String[] args) {
        PoolsApi apiInstance = new PoolsApi();
        String chainId = null; // String | 
        Long startBlock = null; // Long | 
        Long endBlock = null; // Long | 
        Date startDate = null; // Date | 
        Date endDate = null; // Date | 
        String poolId = null; // String | 
        try {
            apiInstance.chainsChainIdDappsCurvePoolsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId);
        } catch (ApiException e) {
            System.err.println("Exception when calling PoolsApi#chainsChainIdDappsCurvePoolsHistoricalGet");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://onchain.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*PoolsApi* | [**chainsChainIdDappsCurvePoolsHistoricalGet**](docs/PoolsApi.md#chainsChainIdDappsCurvePoolsHistoricalGet) | **GET** /chains/{chain_id}/dapps/curve/pools/historical | 
*PoolsApi* | [**chainsChainIdDappsSushiswapPoolsHistoricalGet**](docs/PoolsApi.md#chainsChainIdDappsSushiswapPoolsHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/pools/historical | 
*PoolsApi* | [**chainsChainIdDappsUniswapv2PoolsHistoricalGet**](docs/PoolsApi.md#chainsChainIdDappsUniswapv2PoolsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/historical | 
*PoolsApi* | [**chainsChainIdDappsUniswapv3PoolsHistoricalGet**](docs/PoolsApi.md#chainsChainIdDappsUniswapv3PoolsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/historical | 
*SushiswapApi* | [**chainsChainIdDappsSushiswapPoolsCurrentGet**](docs/SushiswapApi.md#chainsChainIdDappsSushiswapPoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/pools/current | GetPools
*SushiswapApi* | [**chainsChainIdDappsSushiswapSwapsCurrentGet**](docs/SushiswapApi.md#chainsChainIdDappsSushiswapSwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/swaps/current | GetSwaps
*SushiswapApi* | [**chainsChainIdDappsSushiswapTokensCurrentGet**](docs/SushiswapApi.md#chainsChainIdDappsSushiswapTokensCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/current | GetTokens
*SwapsApi* | [**chainsChainIdDappsCurveSwapsHistoricalGet**](docs/SwapsApi.md#chainsChainIdDappsCurveSwapsHistoricalGet) | **GET** /chains/{chain_id}/dapps/curve/swaps/historical | 
*SwapsApi* | [**chainsChainIdDappsSushiswapSwapsHistoricalGet**](docs/SwapsApi.md#chainsChainIdDappsSushiswapSwapsHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/swaps/historical | 
*SwapsApi* | [**chainsChainIdDappsUniswapv2SwapsHistoricalGet**](docs/SwapsApi.md#chainsChainIdDappsUniswapv2SwapsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/historical | 
*SwapsApi* | [**chainsChainIdDappsUniswapv3SwapsHistoricalGet**](docs/SwapsApi.md#chainsChainIdDappsUniswapv3SwapsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/historical | 
*TokensApi* | [**chainsChainIdDappsCowTokensHistoricalGet**](docs/TokensApi.md#chainsChainIdDappsCowTokensHistoricalGet) | **GET** /chains/{chain_id}/dapps/cow/tokens/historical | 
*TokensApi* | [**chainsChainIdDappsCurveTokensHistoricalGet**](docs/TokensApi.md#chainsChainIdDappsCurveTokensHistoricalGet) | **GET** /chains/{chain_id}/dapps/curve/tokens/historical | 
*TokensApi* | [**chainsChainIdDappsDexTokensHistoricalGet**](docs/TokensApi.md#chainsChainIdDappsDexTokensHistoricalGet) | **GET** /chains/{chain_id}/dapps/dex/tokens/historical | 
*TokensApi* | [**chainsChainIdDappsSushiswapTokensHistoricalGet**](docs/TokensApi.md#chainsChainIdDappsSushiswapTokensHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/historical | 
*TokensApi* | [**chainsChainIdDappsUniswapv2TokensHistoricalGet**](docs/TokensApi.md#chainsChainIdDappsUniswapv2TokensHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/historical | 
*TokensApi* | [**chainsChainIdDappsUniswapv3TokensHistoricalGet**](docs/TokensApi.md#chainsChainIdDappsUniswapv3TokensHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/historical | 
*TradesApi* | [**chainsChainIdDappsCowTradesHistoricalGet**](docs/TradesApi.md#chainsChainIdDappsCowTradesHistoricalGet) | **GET** /chains/{chain_id}/dapps/cow/trades/historical | 
*TradesApi* | [**chainsChainIdDappsDexTradesHistoricalGet**](docs/TradesApi.md#chainsChainIdDappsDexTradesHistoricalGet) | **GET** /chains/{chain_id}/dapps/dex/trades/historical | 
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
