package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class BurnV3DTO {
    
    Date entryTime
    
    Date recvTime
    
    Long blockNumber
    
    String id
    
    String transaction
    
    String pool
    
    String token0
    
    String token1
    
    String timestamp
    
    String owner
    
    String origin
    
    String amount
    
    String amount0
    
    String amount1
    
    String amountUsd
    
    String tickLower
    
    String tickUpper
    
    String logIndex
    
    Long vid
}
