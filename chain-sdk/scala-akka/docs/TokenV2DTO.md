

# TokenV2DTO

Stores aggregated information for a specific token across all pairs that token is included in.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | **OffsetDateTime** |  |  [optional]
**recvTime** | **OffsetDateTime** |  |  [optional]
**blockNumber** | **Long** |  |  [optional]
**vid** | **Long** |  |  [optional]
**id** | **String** | token address |  [optional]
**symbol** | **String** | token symbol |  [optional]
**name** | **String** | token name |  [optional]
**decimals** | **Int** | token decimals |  [optional]
**totalSupply** | [**BigInteger**](BigInteger.md) |  |  [optional]
**tradeVolume** | **String** | amount of token traded all time across all pairs |  [optional]
**tradeVolumeUsd** | **String** | amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold) |  [optional]
**untrackedVolumeUsd** | **String** | amount of token in USD traded all time across pairs (no minimum liquidity threshold) |  [optional]
**txCount** | [**BigInteger**](BigInteger.md) |  |  [optional]
**totalLiquidity** | **String** | total amount of token provided as liquidity across all pairs |  [optional]
**derivedEth** | **String** | ETH per token |  [optional]
**tokenSymbol** | **String** |  |  [optional] [readonly]



