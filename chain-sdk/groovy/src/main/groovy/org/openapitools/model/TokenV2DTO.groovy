package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.BigInteger;

@Canonical
class TokenV2DTO {
    
    Date entryTime
    
    Date recvTime
    
    Long blockNumber
    
    Long vid
    
    String id
    
    String symbol
    
    String name
    
    Integer decimals
    
    BigInteger totalSupply
    
    String tradeVolume
    
    String tradeVolumeUsd
    
    String untrackedVolumeUsd
    
    BigInteger txCount
    
    String totalLiquidity
    
    String derivedEth
    
    String tokenSymbol
}
