# PSOpenAPITools - the PowerShell module for the OnChain API


This section will provide necessary information about the `OnChain API` protocol. 
<br/><br/>
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.        
                    

This PowerShell module is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v1
- SDK version: 0.1.2
- Build package: org.openapitools.codegen.languages.PowerShellClientCodegen
    For more information, please visit [https://www.coinapi.io](https://www.coinapi.io)

<a name="frameworks-supported"></a>
## Frameworks supported
- PowerShell 6.2 or later

<a name="dependencies"></a>
## Dependencies

<a name="installation"></a>
## Installation


To install from the source, run the following command to build and install the PowerShell module locally:
```powershell
Build.ps1
Import-Module -Name '.\src\PSOpenAPITools' -Verbose
```

To avoid function name collision, one can use `-Prefix`, e.g. `Import-Module -Name '.\src\PSOpenAPITools' -Prefix prefix`

To uninstall the module, simply run:
```powershell
Remove-Module -FullyQualifiedName @{ModuleName = "PSOpenAPITools"; ModuleVersion = "0.1.2"}
```

<a name="tests"></a>
## Tests

To install and run `Pester`, please execute the following commands in the terminal:

```powershell
Install-module -name Pester -force

Invoke-Pester
```

For troubleshooting, please run `$DebugPreference = 'Continue'` to turn on debugging and disable it with `$DebugPreference = 'SilentlyContinue'` when done with the troubleshooting.

## Documentation for API Endpoints

All URIs are relative to *https://onchain.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*PoolsApi* | [**Invoke-ChainsChainIdDappsCurvePoolsHistoricalGet**](docs/PoolsApi.md#Invoke-ChainsChainIdDappsCurvePoolsHistoricalGet) | **GET** /chains/{chain_id}/dapps/curve/pools/historical | 
*PoolsApi* | [**Invoke-ChainsChainIdDappsSushiswapPoolsHistoricalGet**](docs/PoolsApi.md#Invoke-ChainsChainIdDappsSushiswapPoolsHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/pools/historical | 
*PoolsApi* | [**Invoke-ChainsChainIdDappsUniswapv2PoolsHistoricalGet**](docs/PoolsApi.md#Invoke-ChainsChainIdDappsUniswapv2PoolsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/historical | 
*PoolsApi* | [**Invoke-ChainsChainIdDappsUniswapv3PoolsHistoricalGet**](docs/PoolsApi.md#Invoke-ChainsChainIdDappsUniswapv3PoolsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/historical | 
*SushiswapApi* | [**Invoke-ChainsChainIdDappsSushiswapPoolsCurrentGet**](docs/SushiswapApi.md#Invoke-ChainsChainIdDappsSushiswapPoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/pools/current | GetPools
*SushiswapApi* | [**Invoke-ChainsChainIdDappsSushiswapSwapsCurrentGet**](docs/SushiswapApi.md#Invoke-ChainsChainIdDappsSushiswapSwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/swaps/current | GetSwaps
*SushiswapApi* | [**Invoke-ChainsChainIdDappsSushiswapTokensCurrentGet**](docs/SushiswapApi.md#Invoke-ChainsChainIdDappsSushiswapTokensCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/current | GetTokens
*SwapsApi* | [**Invoke-ChainsChainIdDappsCurveSwapsHistoricalGet**](docs/SwapsApi.md#Invoke-ChainsChainIdDappsCurveSwapsHistoricalGet) | **GET** /chains/{chain_id}/dapps/curve/swaps/historical | 
*SwapsApi* | [**Invoke-ChainsChainIdDappsSushiswapSwapsHistoricalGet**](docs/SwapsApi.md#Invoke-ChainsChainIdDappsSushiswapSwapsHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/swaps/historical | 
*SwapsApi* | [**Invoke-ChainsChainIdDappsUniswapv2SwapsHistoricalGet**](docs/SwapsApi.md#Invoke-ChainsChainIdDappsUniswapv2SwapsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/historical | 
*SwapsApi* | [**Invoke-ChainsChainIdDappsUniswapv3SwapsHistoricalGet**](docs/SwapsApi.md#Invoke-ChainsChainIdDappsUniswapv3SwapsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/historical | 
*TokensApi* | [**Invoke-ChainsChainIdDappsCowTokensHistoricalGet**](docs/TokensApi.md#Invoke-ChainsChainIdDappsCowTokensHistoricalGet) | **GET** /chains/{chain_id}/dapps/cow/tokens/historical | 
*TokensApi* | [**Invoke-ChainsChainIdDappsCurveTokensHistoricalGet**](docs/TokensApi.md#Invoke-ChainsChainIdDappsCurveTokensHistoricalGet) | **GET** /chains/{chain_id}/dapps/curve/tokens/historical | 
*TokensApi* | [**Invoke-ChainsChainIdDappsDexTokensHistoricalGet**](docs/TokensApi.md#Invoke-ChainsChainIdDappsDexTokensHistoricalGet) | **GET** /chains/{chain_id}/dapps/dex/tokens/historical | 
*TokensApi* | [**Invoke-ChainsChainIdDappsSushiswapTokensHistoricalGet**](docs/TokensApi.md#Invoke-ChainsChainIdDappsSushiswapTokensHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/historical | 
*TokensApi* | [**Invoke-ChainsChainIdDappsUniswapv2TokensHistoricalGet**](docs/TokensApi.md#Invoke-ChainsChainIdDappsUniswapv2TokensHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/historical | 
*TokensApi* | [**Invoke-ChainsChainIdDappsUniswapv3TokensHistoricalGet**](docs/TokensApi.md#Invoke-ChainsChainIdDappsUniswapv3TokensHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/historical | 
*TradesApi* | [**Invoke-ChainsChainIdDappsCowTradesHistoricalGet**](docs/TradesApi.md#Invoke-ChainsChainIdDappsCowTradesHistoricalGet) | **GET** /chains/{chain_id}/dapps/cow/trades/historical | 
*TradesApi* | [**Invoke-ChainsChainIdDappsDexTradesHistoricalGet**](docs/TradesApi.md#Invoke-ChainsChainIdDappsDexTradesHistoricalGet) | **GET** /chains/{chain_id}/dapps/dex/trades/historical | 
*UniswapV2Api* | [**Invoke-ChainsChainIdDappsUniswapv2PoolsCurrentGet**](docs/UniswapV2Api.md#Invoke-ChainsChainIdDappsUniswapv2PoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools
*UniswapV2Api* | [**Invoke-ChainsChainIdDappsUniswapv2SwapsCurrentGet**](docs/UniswapV2Api.md#Invoke-ChainsChainIdDappsUniswapv2SwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps
*UniswapV2Api* | [**Invoke-ChainsChainIdDappsUniswapv2TokensCurrentGet**](docs/UniswapV2Api.md#Invoke-ChainsChainIdDappsUniswapv2TokensCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens
*UniswapV3Api* | [**Invoke-ChainsChainIdDappsUniswapv3BundleCurrentGet**](docs/UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3BundleCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles
*UniswapV3Api* | [**Invoke-ChainsChainIdDappsUniswapv3BurnsCurrentGet**](docs/UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3BurnsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns
*UniswapV3Api* | [**Invoke-ChainsChainIdDappsUniswapv3FactoryCurrentGet**](docs/UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3FactoryCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory
*UniswapV3Api* | [**Invoke-ChainsChainIdDappsUniswapv3MintsCurrentGet**](docs/UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3MintsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints
*UniswapV3Api* | [**Invoke-ChainsChainIdDappsUniswapv3PoolsCurrentGet**](docs/UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3PoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools
*UniswapV3Api* | [**Invoke-ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet**](docs/UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData
*UniswapV3Api* | [**Invoke-ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet**](docs/UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData
*UniswapV3Api* | [**Invoke-ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet**](docs/UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot
*UniswapV3Api* | [**Invoke-ChainsChainIdDappsUniswapv3PositionsCurrentGet**](docs/UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3PositionsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions
*UniswapV3Api* | [**Invoke-ChainsChainIdDappsUniswapv3SwapsCurrentGet**](docs/UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3SwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps
*UniswapV3Api* | [**Invoke-ChainsChainIdDappsUniswapv3TicksCurrentGet**](docs/UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3TicksCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks
*UniswapV3Api* | [**Invoke-ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet**](docs/UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData
*UniswapV3Api* | [**Invoke-ChainsChainIdDappsUniswapv3TokensCurrentGet**](docs/UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3TokensCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens
*UniswapV3Api* | [**Invoke-ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet**](docs/UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData
*UniswapV3Api* | [**Invoke-ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet**](docs/UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData
*UniswapV3Api* | [**Invoke-ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet**](docs/UniswapV3Api.md#Invoke-ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData


## Documentation for Models

 - [PSOpenAPITools/Model.BigInteger](docs/BigInteger.md)
 - [PSOpenAPITools/Model.BundleV3DTO](docs/BundleV3DTO.md)
 - [PSOpenAPITools/Model.BurnV3DTO](docs/BurnV3DTO.md)
 - [PSOpenAPITools/Model.ETradeAggressiveSide](docs/ETradeAggressiveSide.md)
 - [PSOpenAPITools/Model.FactoryV3DTO](docs/FactoryV3DTO.md)
 - [PSOpenAPITools/Model.MintV3DTO](docs/MintV3DTO.md)
 - [PSOpenAPITools/Model.PairDTO](docs/PairDTO.md)
 - [PSOpenAPITools/Model.PairV2DTO](docs/PairV2DTO.md)
 - [PSOpenAPITools/Model.PoolDayDataV3DTO](docs/PoolDayDataV3DTO.md)
 - [PSOpenAPITools/Model.PoolHourDataV3DTO](docs/PoolHourDataV3DTO.md)
 - [PSOpenAPITools/Model.PoolV3DTO](docs/PoolV3DTO.md)
 - [PSOpenAPITools/Model.PositionSnapshotV3DTO](docs/PositionSnapshotV3DTO.md)
 - [PSOpenAPITools/Model.PositionV3DTO](docs/PositionV3DTO.md)
 - [PSOpenAPITools/Model.SwapDTO](docs/SwapDTO.md)
 - [PSOpenAPITools/Model.SwapV2DTO](docs/SwapV2DTO.md)
 - [PSOpenAPITools/Model.SwapV3DTO](docs/SwapV3DTO.md)
 - [PSOpenAPITools/Model.TickDayDataV3DTO](docs/TickDayDataV3DTO.md)
 - [PSOpenAPITools/Model.TickV3DTO](docs/TickV3DTO.md)
 - [PSOpenAPITools/Model.TokenDTO](docs/TokenDTO.md)
 - [PSOpenAPITools/Model.TokenHourDataV3DTO](docs/TokenHourDataV3DTO.md)
 - [PSOpenAPITools/Model.TokenV2DTO](docs/TokenV2DTO.md)
 - [PSOpenAPITools/Model.TokenV3DTO](docs/TokenV3DTO.md)
 - [PSOpenAPITools/Model.TokenV3DayDataDTO](docs/TokenV3DayDataDTO.md)
 - [PSOpenAPITools/Model.UniswapDayDataV3DTO](docs/UniswapDayDataV3DTO.md)


## Documentation for Authorization

All endpoints do not require authorization.