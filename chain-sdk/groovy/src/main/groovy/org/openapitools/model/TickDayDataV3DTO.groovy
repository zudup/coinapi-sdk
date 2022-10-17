package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class TickDayDataV3DTO {
    
    Date entryTime
    
    Date recvTime
    
    Long blockNumber
    
    String id
    
    Integer date
    
    String pool
    
    String tick
    
    String liquidityGross
    
    String liquidityNet
    
    String volumeToken0
    
    String volumeToken1
    
    String volumeUsd
    
    String feesUsd
    
    String feeGrowthOutside0x128
    
    String feeGrowthOutside1x128
    
    Long vid
}
