package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class TokenDTO {
    
    Date entryTime
    
    Date recvTime
    /*  */
    Long blockNumber
    /*  */
    String id
    /*  */
    String factory
    /*  */
    String symbol
    /*  */
    String name
    /*  */
    String decimals
    /*  */
    String totalSupply
    /*  */
    String volume
    /*  */
    String volumeUsd
    /*  */
    String untrackedVolumeUsd
    /*  */
    String txCount
    /*  */
    String liquidity
    /*  */
    String derivedEth
    /*  */
    List<String> whitelistPairs = new ArrayList<>()
    /*  */
    Long vid
    
    String tokenSymbol
}
