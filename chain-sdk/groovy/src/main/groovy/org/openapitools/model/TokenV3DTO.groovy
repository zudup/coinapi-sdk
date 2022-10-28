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
    /*  */
    Long blockNumber
    /*  */
    Long vid
    /* Token address. */
    String id
    /* Token symbol. */
    String symbol
    /* Token name. */
    String name
    /* Token decimals. */
    Integer decimals
    
    BigInteger totalSupply
    /* Volume in token units. */
    String volume
    /* Volume in derived USD. */
    String volumeUsd
    /* Volume in USD even on pools with less reliable USD values. */
    String untrackedVolumeUsd
    /* Fees in USD. */
    String feesUsd
    
    BigInteger txCount
    
    BigInteger poolCount
    /* Liquidity across all pools in token units. */
    String totalValueLocked
    /* Liquidity across all pools in derived USD. */
    String totalValueLockedUsd
    /* TVL derived in USD untracked. */
    String totalValueLockedUsdUntracked
    /* Derived price in ETH. */
    String derivedEth
    /* Pools token is in that are white listed for USD pricing. */
    List<String> whitelistPools = new ArrayList<>()
    
    String tokenSymbol
}
