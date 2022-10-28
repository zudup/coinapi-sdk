package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class PositionV3DTO {
    
    Date entryTime
    
    Date recvTime
    /*  */
    Long blockNumber
    /*  */
    String id
    /*  */
    String owner
    /*  */
    String pool
    /*  */
    String token0
    /*  */
    String token1
    /*  */
    String tickLower
    /*  */
    String tickUpper
    /*  */
    String liquidity
    /*  */
    String depositedToken0
    /*  */
    String depositedToken1
    /*  */
    String withdrawnToken0
    /*  */
    String withdrawnToken1
    /*  */
    String collectedFeesToken0
    /*  */
    String collectedFeesToken1
    /*  */
    String transaction
    /*  */
    String feeGrowthInside0LastX128
    /*  */
    String feeGrowthInside1LastX128
    /*  */
    Long vid
}
