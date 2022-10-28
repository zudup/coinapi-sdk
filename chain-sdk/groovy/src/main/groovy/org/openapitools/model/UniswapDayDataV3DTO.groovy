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
    /* timestamp rounded to current day by dividing by 86400 */
    String id
    /* timestamp rounded to current day by dividing by 86400 */
    Integer date
    /* total volume across all pairs on this day, stored as a derived amount of ETH */
    String volumeEth
    /* total volume across all pairs on this day, stored as a derived amount of USD */
    String volumeUsd
    /* total daily volume in Uniswap derived in terms of USD untracked */
    String volumeUsdUntracked
    /* fees in USD */
    String feesUsd
    
    BigInteger txCount
    /* tvl in terms of USD */
    String tvlUsd
}
