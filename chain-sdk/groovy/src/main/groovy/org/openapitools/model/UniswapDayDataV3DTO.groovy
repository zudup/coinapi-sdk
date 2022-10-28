package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.BigInteger;

@Canonical
class UniswapDayDataV3DTO {
    
    Date entryTime
    
    Date recvTime
    /*  */
    Long blockNumber
    /*  */
    Long vid
    /*  */
    String id
    /*  */
    Integer date
    /*  */
    String volumeEth
    /*  */
    String volumeUsd
    /*  */
    String volumeUsdUntracked
    /*  */
    String feesUsd
    
    BigInteger txCount
    /*  */
    String tvlUsd
}
