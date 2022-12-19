# OnChainDappsRestApi.SushiswapLiquidityPositionSnapshotDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entryTime** | **Date** |  | [optional] 
**recvTime** | **Date** |  | [optional] 
**blockNumber** | **Number** | Number of block in which entity was recorded. | [optional] 
**id** | **String** | Identifier, format: &lt;pair address&gt;-&lt;user address&gt;-&lt;timestamp&gt; | [optional] 
**liquidityPosition** | **String** | Reference to LP identifier. | [optional] 
**timestamp** | **Number** | Creation time. | [optional] 
**block** | **Number** | Block in which snapshot has been created. | [optional] 
**user** | **String** | Reference to user. | [optional] 
**pair** | **String** | Reference to the pair liquidity is being provided on. | [optional] 
**token0PriceUsd** | **String** | Snapshot of token0 price in USD. | [optional] 
**token1PriceUsd** | **String** | Snapshot of token0 price in USD. | [optional] 
**reserve0** | **String** | Snapshot of pair token0 reserves. | [optional] 
**reserve1** | **String** | Snapshot of pair token1 reserves. | [optional] 
**reserveUsd** | **String** | Snapshot of pair reserves in USD. | [optional] 
**liquidityTokenTotalSupply** | **String** | Snapshot of pool token supply. | [optional] 
**liquidityTokenBalance** | **String** | Snapshot of users pool token balance. | [optional] 
**vid** | **Number** |  | [optional] 

