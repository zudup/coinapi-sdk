
# TokenV2DTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**recvTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  [optional]
**blockNumber** | **kotlin.Long** |  |  [optional]
**vid** | **kotlin.Long** |  |  [optional]
**id** | **kotlin.String** | token address |  [optional]
**symbol** | **kotlin.String** | token symbol |  [optional]
**name** | **kotlin.String** | token name |  [optional]
**decimals** | **kotlin.Int** | token decimals |  [optional]
**totalSupply** | [**BigInteger**](BigInteger.md) |  |  [optional]
**tradeVolume** | **kotlin.String** | amount of token traded all time across all pairs |  [optional]
**tradeVolumeUsd** | **kotlin.String** | amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold) |  [optional]
**untrackedVolumeUsd** | **kotlin.String** | amount of token in USD traded all time across pairs (no minimum liquidity threshold) |  [optional]
**txCount** | [**BigInteger**](BigInteger.md) |  |  [optional]
**totalLiquidity** | **kotlin.String** | total amount of token provided as liquidity across all pairs |  [optional]
**derivedEth** | **kotlin.String** | ETH per token |  [optional]
**tokenSymbol** | **kotlin.String** |  |  [optional] [readonly]



