package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class PairDTO {
    
    Date entryTime
    
    Date recvTime
    /*  */
    Long blockNumber
    /*  */
    String id
    /*  */
    String factory
    /*  */
    String name
    /*  */
    String token0
    /*  */
    String token1
    /*  */
    String reserve0
    /*  */
    String reserve1
    /*  */
    String totalSupply
    /*  */
    String reserveEth
    /*  */
    String reserveUsd
    /*  */
    String trackedReserveEth
    /*  */
    String token0Price
    /*  */
    String token1Price
    /*  */
    String volumeToken0
    /*  */
    String volumeToken1
    /*  */
    String volumeUsd
    /*  */
    String untrackedVolumeUsd
    /*  */
    String txCount
    /*  */
    String liquidityProviderCount
    /*  */
    String timestamp
    /*  */
    String block
    /*  */
    Long vid
    
    Double evaluatedAsk
}
