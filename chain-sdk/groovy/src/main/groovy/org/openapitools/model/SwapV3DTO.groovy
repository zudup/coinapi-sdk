package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.BigInteger;
import org.openapitools.model.ETradeAggressiveSide;

@Canonical
class SwapV3DTO {
    
    Date entryTime
    
    Date recvTime
    /*  */
    Long blockNumber
    /*  */
    Long vid
    /*  */
    String id
    /*  */
    String transaction
    /*  */
    Date timestamp
    /*  */
    String pool
    /*  */
    String token0
    /*  */
    String token1
    /*  */
    String sender
    /*  */
    String recipient
    /*  */
    String origin
    /*  */
    String amount0
    /*  */
    String amount1
    /*  */
    String amountUsd
    
    BigInteger sqrtPriceX96
    
    BigInteger tick
    
    BigInteger logIndex
    
    Double evaluatedPrice
    
    Double evaluatedAmount
    
    ETradeAggressiveSide evaluatedAggressor
    
    String poolId
    
    String transactionId
}
