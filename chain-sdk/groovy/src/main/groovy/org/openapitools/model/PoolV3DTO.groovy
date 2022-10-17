package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.BigInteger;

@Canonical
class PoolV3DTO {
    
    Date entryTime
    
    Date recvTime
    
    Long blockNumber
    
    Long vid
    
    String id
    
    Date createdAtTimestamp
    
    String token0
    
    String token1
    
    BigInteger feeTier
    
    BigInteger liquidity
    
    BigInteger sqrtPrice
    
    BigInteger feeGrowthGlobal0x128
    
    BigInteger feeGrowthGlobal1x128
    
    String token0Price
    
    String token1Price
    
    BigInteger tick
    
    BigInteger observationIndex
    
    String volumeToken0
    
    String volumeToken1
    
    String volumeUsd
    
    String untrackedVolumeUsd
    
    String feesUsd
    
    BigInteger txCount
    
    String collectedFeesToken0
    
    String collectedFeesToken1
    
    String collectedFeesUsd
    
    String totalValueLockedToken0
    
    String totalValueLockedToken1
    
    String totalValueLockedEth
    
    String totalValueLockedUsd
    
    String totalValueLockedUsdUntracked
    
    String liquidityProviderCount
    
    Double evaluatedAsk
}
