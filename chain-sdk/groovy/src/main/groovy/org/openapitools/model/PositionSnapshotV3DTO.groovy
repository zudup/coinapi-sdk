package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class PositionSnapshotV3DTO {
    
    Date entryTime
    
    Date recvTime
    
    Long blockNumber
    
    String id
    /* THIS IS SUPER OWNER */
    String owner
    
    String pool
    
    String position
    
    String timestamp
    
    String liquidity
    
    String depositedToken0
    
    String depositedToken1
    
    String withdrawnToken0
    
    String withdrawnToken1
    
    String collectedFeesToken0
    
    String collectedFeesToken1
    
    String transaction
    
    String feeGrowthInside0LastX128
    
    String feeGrowthInside1LastX128
    
    Long vid
}
