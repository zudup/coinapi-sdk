package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.BigInteger;

@Canonical
class TickV3DTO {
    
    Date entryTime
    
    Date recvTime
    /*  */
    Long blockNumber
    /*  */
    Long vid
    /*  */
    String id
    /*  */
    String poolAddress
    
    BigInteger tickIdx
    /*  */
    String pool
    
    BigInteger liquidityGross
    
    BigInteger liquidityNet
    /*  */
    String price0
    /*  */
    String price1
    /*  */
    String volumeToken0
    /*  */
    String volumeToken1
    /*  */
    String volumeUsd
    /*  */
    String untrackedVolumeUsd
    /*  */
    String feesUsd
    /*  */
    String collectedFeesToken0
    /*  */
    String collectedFeesToken1
    /*  */
    String collectedFeesUsd
    /*  */
    Date createdAtTimestamp
    
    BigInteger liquidityProviderCount
    
    BigInteger feeGrowthOutside0x128
    
    BigInteger feeGrowthOutside1x128
}
