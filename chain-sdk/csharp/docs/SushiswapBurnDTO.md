
# CoinAPI.EMS.REST.V1.Model.SushiswapBurnDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **DateTime** |  | [optional] 
**RecvTime** | **DateTime** |  | [optional] 
**BlockNumber** | **long** | Number of block in which entity was recorded. | [optional] 
**Id** | **string** | Identifier, format: &lt;transaction id&gt;:&lt;transaction.burns.length&gt;. | [optional] 
**Transaction** | **string** | Reference to the transaction Burn was included in. | [optional] 
**Timestamp** | **string** | Timestamp of Burn, used to sort recent liquidity removals. | [optional] 
**Pair** | **string** | Reference to pair. | [optional] 
**Liquidity** | **string** | Amount of liquidity tokens burned. | [optional] 
**Sender** | **string** | Address that initiated the liquidity removal. | [optional] 
**Amount0** | **string** | Amount of token0 removed. | [optional] 
**Amount1** | **string** | Amount of token1 removed. | [optional] 
**To** | **string** | Recipient of tokens. | [optional] 
**LogIndex** | **string** | Index in the transaction event was emitted. | [optional] 
**AmountUsd** | **string** | Derived amount based on available prices of tokens. | [optional] 
**Complete** | **bool** |  | [optional] 
**FeeTo** | **string** | Address of fee recipient (if fee is on). | [optional] 
**FeeLiquidity** | **string** | Amount of tokens sent to fee recipient (if fee is on). | [optional] 
**Vid** | **long** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to README]](../README.md)
