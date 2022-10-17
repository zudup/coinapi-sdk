package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.BigInteger;

@Canonical
class PairV2DTO {
    
    Date entryTime
    
    Date recvTime
    
    Long blockNumber
    
    Long vid
    
    String id
    
    String token0
    
    String token1
    
    String reserve0
    
    String reserve1
    
    String totalSupply
    
    String reserveEth
    
    String reserveUsd
    
    String trackedReserveEth
    
    String token0Price
    
    String token1Price
    
    String volumeToken0
    
    String volumeToken1
    
    String volumeUsd
    
    String untrackedVolumeUsd
    
    BigInteger txCount
    
    Date createdAtTimestamp
    
    String liquidityProviderCount
    
    Double evaluatedAsk
}
