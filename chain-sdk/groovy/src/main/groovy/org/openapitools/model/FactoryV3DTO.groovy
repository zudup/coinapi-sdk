package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class FactoryV3DTO {
    
    Date entryTime
    
    Date recvTime
    
    Long blockNumber
    
    String id
    
    String poolCount
    
    String txCount
    
    String totalVolumeUsd
    
    String totalVolumeEth
    
    String totalFeesUsd
    
    String totalFeesEth
    
    String untrackedVolumeUsd
    
    String totalValueLockedUsd
    
    String totalValueLockedEth
    
    String totalValueLockedUsdUntracked
    
    String totalValueLockedEthUntracked
    
    String owner
    
    Long vid
}
