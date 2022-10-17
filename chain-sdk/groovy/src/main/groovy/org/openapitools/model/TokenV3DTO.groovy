package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.BigInteger;

@Canonical
class TokenV3DTO {
    
    Date entryTime
    
    Date recvTime
    
    Long blockNumber
    
    Long vid
    
    String id
    
    String symbol
    
    String name
    
    Integer decimals
    
    BigInteger totalSupply
    
    String volume
    
    String volumeUsd
    
    String untrackedVolumeUsd
    
    String feesUsd
    
    BigInteger txCount
    
    BigInteger poolCount
    
    String totalValueLocked
    
    String totalValueLockedUsd
    
    String totalValueLockedUsdUntracked
    
    String derivedEth
    
    List<String> whitelistPools = new ArrayList<>()
    
    String tokenSymbol
}
