package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.BigInteger;
import org.openapitools.model.ETradeAggressiveSide;

@Canonical
class SwapV2DTO {
    
    Date entryTime
    
    Date recvTime
    
    Long blockNumber
    
    Long vid
    
    String id
    
    String transaction
    
    Date timestamp
    
    String pair
    
    String sender
    
    String from
    
    String amount0In
    
    String amount1In
    
    String amount0Out
    
    String amount1Out
    
    String to
    
    BigInteger logIndex
    
    String amountUsd
    
    Double evaluatedPrice
    
    Double evaluatedAmount
    
    ETradeAggressiveSide evaluatedAggressor
    
    String poolId
    
    String transactionId
}
