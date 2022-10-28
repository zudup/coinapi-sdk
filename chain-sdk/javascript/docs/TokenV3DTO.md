# OnChainApi.TokenV3DTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | **Date** |  | [optional] 
**recvTime** | **Date** |  | [optional] 
**blockNumber** | **Number** |  | [optional] 
**vid** | **Number** |  | [optional] 
**id** | **String** | token address | [optional] 
**symbol** | **String** | token symbol | [optional] 
**name** | **String** | token name | [optional] 
**decimals** | **Number** | token decimals | [optional] 
**totalSupply** | [**BigInteger**](BigInteger.md) |  | [optional] 
**volume** | **String** | volume in token units | [optional] 
**volumeUsd** | **String** | volume in derived USD | [optional] 
**untrackedVolumeUsd** | **String** | volume in USD even on pools with less reliable USD values | [optional] 
**feesUsd** | **String** | fees in USD | [optional] 
**txCount** | [**BigInteger**](BigInteger.md) |  | [optional] 
**poolCount** | [**BigInteger**](BigInteger.md) |  | [optional] 
**totalValueLocked** | **String** | liquidity across all pools in token units | [optional] 
**totalValueLockedUsd** | **String** | liquidity across all pools in derived USD | [optional] 
**totalValueLockedUsdUntracked** | **String** | TVL derived in USD untracked | [optional] 
**derivedEth** | **String** | derived price in ETH | [optional] 
**whitelistPools** | **[String]** | pools token is in that are white listed for USD pricing | [optional] 
**tokenSymbol** | **String** |  | [optional] [readonly] 


