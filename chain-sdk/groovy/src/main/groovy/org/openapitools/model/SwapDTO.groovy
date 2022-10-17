package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.ETradeAggressiveSide;

@Canonical
class SwapDTO {
    
    Date entryTime
    
    Date recvTime
    
    Long blockNumber
    
    String id
    
    String transaction
    
    String timestamp
    
    String pair
    
    String sender
    
    String amount0In
    
    String amount1In
    
    String amount0Out
    
    String amount1Out
    
    String to
    
    String logIndex
    
    String amountUsd
    
    Long vid
    
    String poolId
    
    String transactionId
    
    Double evaluatedPrice
    
    Double evaluatedAmount
    
    ETradeAggressiveSide evaluatedAggressor
}
