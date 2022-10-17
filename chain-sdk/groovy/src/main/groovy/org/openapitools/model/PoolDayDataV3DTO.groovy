package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class PoolDayDataV3DTO {
    
    Date entryTime
    
    Date recvTime
    
    Long blockNumber
    
    String id
    
    Integer date
    
    String pool
    
    String liquidity
    
    String sqrtPrice
    
    String token0Price
    
    String token1Price
    
    String tick
    
    String feeGrowthGlobal0x128
    
    String feeGrowthGlobal1x128
    
    String tvlUsd
    
    String volumeToken0
    
    String volumeToken1
    
    String volumeUsd
    
    String feesUsd
    
    String txCount
    
    String open
    
    String high
    
    String low
    
    String close
    
    Long vid
}
