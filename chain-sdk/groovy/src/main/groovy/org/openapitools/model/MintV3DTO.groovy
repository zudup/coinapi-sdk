package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class MintV3DTO {
    
    Date entryTime
    
    Date recvTime
    /*  */
    Long blockNumber
    /*  */
    String id
    /*  */
    String transaction
    /*  */
    String timestamp
    /*  */
    String pool
    /*  */
    String token0
    /*  */
    String token1
    /*  */
    String owner
    /*  */
    String sender
    /*  */
    String origin
    /*  */
    String amount
    /*  */
    String amount0
    /*  */
    String amount1
    /*  */
    String amountUsd
    /*  */
    String tickLower
    /*  */
    String tickUpper
    /*  */
    String logIndex
    /*  */
    Long vid
}
