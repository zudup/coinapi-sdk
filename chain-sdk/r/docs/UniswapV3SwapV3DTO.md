# openapi::UniswapV3SwapV3DTO

Swap are created for each token swap within a pair.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **character** |  | [optional] 
**recv_time** | **character** |  | [optional] 
**block_number** | **integer** | Number of block in which entity was recorded. | [optional] 
**vid** | **integer** |  | [optional] 
**id** | **character** | Identifier, format: transaction hash + \&quot;#\&quot; + index in swaps Transaction array. | [optional] 
**transaction** | **character** | Pointer to transaction. | [optional] 
**timestamp** | **character** | Timestamp of transaction. | [optional] 
**pool** | **character** | Pool swap occured within. | [optional] 
**token_0** | **character** | Reference to token0 as stored in pair contract. | [optional] 
**token_1** | **character** | Reference to token1 as stored in pair contract. | [optional] 
**sender** | **character** | Sender of the swap. | [optional] 
**recipient** | **character** | Recipient of the swap. | [optional] 
**origin** | **character** | Transaction origin: the EOA (Externally Owned Account) that initiated the transaction | [optional] 
**amount_0** | **character** | Delta of token0 swapped. | [optional] 
**amount_1** | **character** | Delta of token1 swapped. | [optional] 
**amount_usd** | **character** | Derived amount of tokens sold in USD. | [optional] 
**sqrt_price_x96** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**tick** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**log_index** | [**NumericsBigInteger**](NumericsBigInteger.md) |  | [optional] 
**evaluated_price** | **numeric** |  | [optional] [readonly] 
**evaluated_amount** | **numeric** |  | [optional] [readonly] 
**evaluated_aggressor** | [**TransactionsETradeAggressiveSide**](TransactionsETradeAggressiveSide.md) |  | [optional] 
**pool_id** | **character** |  | [optional] [readonly] 
**transaction_id** | **character** |  | [optional] [readonly] 


