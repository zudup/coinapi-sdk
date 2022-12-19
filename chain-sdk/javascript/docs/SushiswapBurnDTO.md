# OnChainDappsRestApi.SushiswapBurnDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | **Date** |  | [optional] 
**recvTime** | **Date** |  | [optional] 
**blockNumber** | **Number** | Number of block in which entity was recorded. | [optional] 
**id** | **String** | Identifier, format: &lt;transaction id&gt;:&lt;transaction.burns.length&gt;. | [optional] 
**transaction** | **String** | Reference to the transaction Burn was included in. | [optional] 
**timestamp** | **String** | Timestamp of Burn, used to sort recent liquidity removals. | [optional] 
**pair** | **String** | Reference to pair. | [optional] 
**liquidity** | **String** | Amount of liquidity tokens burned. | [optional] 
**sender** | **String** | Address that initiated the liquidity removal. | [optional] 
**amount0** | **String** | Amount of token0 removed. | [optional] 
**amount1** | **String** | Amount of token1 removed. | [optional] 
**to** | **String** | Recipient of tokens. | [optional] 
**logIndex** | **String** | Index in the transaction event was emitted. | [optional] 
**amountUsd** | **String** | Derived amount based on available prices of tokens. | [optional] 
**complete** | **Boolean** |  | [optional] 
**feeTo** | **String** | Address of fee recipient (if fee is on). | [optional] 
**feeLiquidity** | **String** | Amount of tokens sent to fee recipient (if fee is on). | [optional] 
**vid** | **Number** |  | [optional] 

