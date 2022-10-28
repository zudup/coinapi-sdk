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
    /*  */
    Long blockNumber
    /*  */
    Long vid
    /* token address */
    String id
    /* token symbol */
    String symbol
    /* token name */
    String name
    /* token decimals */
    Integer decimals
    
    BigInteger totalSupply
    /* amount of token traded all time across all pairs */
    String tradeVolume
    /* amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold) */
    String tradeVolumeUsd
    /* amount of token in USD traded all time across pairs (no minimum liquidity threshold) */
    String untrackedVolumeUsd
    
    BigInteger txCount
    /* total amount of token provided as liquidity across all pairs */
    String totalLiquidity
    /* ETH per token */
    String derivedEth
    
    String tokenSymbol
}
