# OnChainApi.TokenHourDataV3DTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | **Date** |  | [optional] 
**recvTime** | **Date** |  | [optional] 
**blockNumber** | **Number** |  | [optional] 
**id** | **String** | token address concatendated with date | [optional] 
**periodStartUnix** | **Number** | unix timestamp for start of hour | [optional] 
**token** | **String** | pointer to token | [optional] 
**volume** | **String** | volume in token units | [optional] 
**volumeUsd** | **String** | volume in derived USD | [optional] 
**untrackedVolumeUsd** | **String** | volume in USD even on pools with less reliable USD values | [optional] 
**totalValueLocked** | **String** | liquidity across all pools in token units | [optional] 
**totalValueLockedUsd** | **String** | liquidity across all pools in derived USD | [optional] 
**priceUsd** | **String** | price at end of period in USD | [optional] 
**feesUsd** | **String** | fees in USD | [optional] 
**open** | **String** | opening price USD | [optional] 
**high** | **String** | high price USD | [optional] 
**low** | **String** | low price USD | [optional] 
**close** | **String** | close price USD | [optional] 
**vid** | **Number** |  | [optional] 


