/**
 * On Chain - REST API
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import java.util.Date;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * Information about a pair. Includes references to each token within the pair, volume information, liquidity information, and more. The pair entity mirrors the pair smart contract, and also contains aggregated information about use.
 **/
@ApiModel(description = "Information about a pair. Includes references to each token within the pair, volume information, liquidity information, and more. The pair entity mirrors the pair smart contract, and also contains aggregated information about use.")
public class SushiswapPairDTO {
  
  @SerializedName("entry_time")
  private Date entryTime = null;
  @SerializedName("recv_time")
  private Date recvTime = null;
  @SerializedName("block_number")
  private Long blockNumber = null;
  @SerializedName("id")
  private String id = null;
  @SerializedName("factory")
  private String factory = null;
  @SerializedName("name")
  private String name = null;
  @SerializedName("token_0")
  private String token0 = null;
  @SerializedName("token_1")
  private String token1 = null;
  @SerializedName("reserve_0")
  private String reserve0 = null;
  @SerializedName("reserve_1")
  private String reserve1 = null;
  @SerializedName("total_supply")
  private String totalSupply = null;
  @SerializedName("reserve_eth")
  private String reserveEth = null;
  @SerializedName("reserve_usd")
  private String reserveUsd = null;
  @SerializedName("tracked_reserve_eth")
  private String trackedReserveEth = null;
  @SerializedName("token_0_price")
  private String token0Price = null;
  @SerializedName("token_1_price")
  private String token1Price = null;
  @SerializedName("volume_token_0")
  private String volumeToken0 = null;
  @SerializedName("volume_token_1")
  private String volumeToken1 = null;
  @SerializedName("volume_usd")
  private String volumeUsd = null;
  @SerializedName("untracked_volume_usd")
  private String untrackedVolumeUsd = null;
  @SerializedName("tx_count")
  private String txCount = null;
  @SerializedName("liquidity_provider_count")
  private String liquidityProviderCount = null;
  @SerializedName("timestamp")
  private String timestamp = null;
  @SerializedName("block")
  private String block = null;
  @SerializedName("vid")
  private Long vid = null;
  @SerializedName("evaluated_ask")
  private Double evaluatedAsk = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public Date getEntryTime() {
    return entryTime;
  }
  public void setEntryTime(Date entryTime) {
    this.entryTime = entryTime;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Date getRecvTime() {
    return recvTime;
  }
  public void setRecvTime(Date recvTime) {
    this.recvTime = recvTime;
  }

  /**
   * Number of block in which entity was recorded.
   **/
  @ApiModelProperty(value = "Number of block in which entity was recorded.")
  public Long getBlockNumber() {
    return blockNumber;
  }
  public void setBlockNumber(Long blockNumber) {
    this.blockNumber = blockNumber;
  }

  /**
   * Pair contract address.
   **/
  @ApiModelProperty(value = "Pair contract address.")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   * Factory contract address.
   **/
  @ApiModelProperty(value = "Factory contract address.")
  public String getFactory() {
    return factory;
  }
  public void setFactory(String factory) {
    this.factory = factory;
  }

  /**
   * Friendly name, format: <token0 name>-<token1 name>
   **/
  @ApiModelProperty(value = "Friendly name, format: <token0 name>-<token1 name>")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   * Reference to token0 as stored in pair contract.
   **/
  @ApiModelProperty(value = "Reference to token0 as stored in pair contract.")
  public String getToken0() {
    return token0;
  }
  public void setToken0(String token0) {
    this.token0 = token0;
  }

  /**
   * Reference to token0 as stored in pair contract.
   **/
  @ApiModelProperty(value = "Reference to token0 as stored in pair contract.")
  public String getToken1() {
    return token1;
  }
  public void setToken1(String token1) {
    this.token1 = token1;
  }

  /**
   * Reserve of token0.
   **/
  @ApiModelProperty(value = "Reserve of token0.")
  public String getReserve0() {
    return reserve0;
  }
  public void setReserve0(String reserve0) {
    this.reserve0 = reserve0;
  }

  /**
   * Reserve of token1.
   **/
  @ApiModelProperty(value = "Reserve of token1.")
  public String getReserve1() {
    return reserve1;
  }
  public void setReserve1(String reserve1) {
    this.reserve1 = reserve1;
  }

  /**
   * Total supply of liquidity token distributed to LPs.
   **/
  @ApiModelProperty(value = "Total supply of liquidity token distributed to LPs.")
  public String getTotalSupply() {
    return totalSupply;
  }
  public void setTotalSupply(String totalSupply) {
    this.totalSupply = totalSupply;
  }

  /**
   * Total liquidity in pair stored as an amount of ETH.
   **/
  @ApiModelProperty(value = "Total liquidity in pair stored as an amount of ETH.")
  public String getReserveEth() {
    return reserveEth;
  }
  public void setReserveEth(String reserveEth) {
    this.reserveEth = reserveEth;
  }

  /**
   * Total liquidity amount in pair stored as an amount of USD.
   **/
  @ApiModelProperty(value = "Total liquidity amount in pair stored as an amount of USD.")
  public String getReserveUsd() {
    return reserveUsd;
  }
  public void setReserveUsd(String reserveUsd) {
    this.reserveUsd = reserveUsd;
  }

  /**
   * Total liquidity with only tracked amount.
   **/
  @ApiModelProperty(value = "Total liquidity with only tracked amount.")
  public String getTrackedReserveEth() {
    return trackedReserveEth;
  }
  public void setTrackedReserveEth(String trackedReserveEth) {
    this.trackedReserveEth = trackedReserveEth;
  }

  /**
   * Token0 per token1.
   **/
  @ApiModelProperty(value = "Token0 per token1.")
  public String getToken0Price() {
    return token0Price;
  }
  public void setToken0Price(String token0Price) {
    this.token0Price = token0Price;
  }

  /**
   * Token1 per token0.
   **/
  @ApiModelProperty(value = "Token1 per token0.")
  public String getToken1Price() {
    return token1Price;
  }
  public void setToken1Price(String token1Price) {
    this.token1Price = token1Price;
  }

  /**
   * Amount of token0 swapped on this pair.
   **/
  @ApiModelProperty(value = "Amount of token0 swapped on this pair.")
  public String getVolumeToken0() {
    return volumeToken0;
  }
  public void setVolumeToken0(String volumeToken0) {
    this.volumeToken0 = volumeToken0;
  }

  /**
   * Amount of token1 swapped on this pair.
   **/
  @ApiModelProperty(value = "Amount of token1 swapped on this pair.")
  public String getVolumeToken1() {
    return volumeToken1;
  }
  public void setVolumeToken1(String volumeToken1) {
    this.volumeToken1 = volumeToken1;
  }

  /**
   * Total amount swapped all time in this pair stored in USD (only tracked if USD liquidity is above minimum threshold).
   **/
  @ApiModelProperty(value = "Total amount swapped all time in this pair stored in USD (only tracked if USD liquidity is above minimum threshold).")
  public String getVolumeUsd() {
    return volumeUsd;
  }
  public void setVolumeUsd(String volumeUsd) {
    this.volumeUsd = volumeUsd;
  }

  /**
   * Total amount swapped all time in this pair stored in USD, no minimum liquidity threshold.
   **/
  @ApiModelProperty(value = "Total amount swapped all time in this pair stored in USD, no minimum liquidity threshold.")
  public String getUntrackedVolumeUsd() {
    return untrackedVolumeUsd;
  }
  public void setUntrackedVolumeUsd(String untrackedVolumeUsd) {
    this.untrackedVolumeUsd = untrackedVolumeUsd;
  }

  /**
   * All time amount of transactions on this pair.
   **/
  @ApiModelProperty(value = "All time amount of transactions on this pair.")
  public String getTxCount() {
    return txCount;
  }
  public void setTxCount(String txCount) {
    this.txCount = txCount;
  }

  /**
   * Total number of LPs.
   **/
  @ApiModelProperty(value = "Total number of LPs.")
  public String getLiquidityProviderCount() {
    return liquidityProviderCount;
  }
  public void setLiquidityProviderCount(String liquidityProviderCount) {
    this.liquidityProviderCount = liquidityProviderCount;
  }

  /**
   * Timestamp.
   **/
  @ApiModelProperty(value = "Timestamp.")
  public String getTimestamp() {
    return timestamp;
  }
  public void setTimestamp(String timestamp) {
    this.timestamp = timestamp;
  }

  /**
   * Block number in which pair information was created in.
   **/
  @ApiModelProperty(value = "Block number in which pair information was created in.")
  public String getBlock() {
    return block;
  }
  public void setBlock(String block) {
    this.block = block;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public Long getVid() {
    return vid;
  }
  public void setVid(Long vid) {
    this.vid = vid;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Double getEvaluatedAsk() {
    return evaluatedAsk;
  }
  public void setEvaluatedAsk(Double evaluatedAsk) {
    this.evaluatedAsk = evaluatedAsk;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SushiswapPairDTO sushiswapPairDTO = (SushiswapPairDTO) o;
    return (this.entryTime == null ? sushiswapPairDTO.entryTime == null : this.entryTime.equals(sushiswapPairDTO.entryTime)) &&
        (this.recvTime == null ? sushiswapPairDTO.recvTime == null : this.recvTime.equals(sushiswapPairDTO.recvTime)) &&
        (this.blockNumber == null ? sushiswapPairDTO.blockNumber == null : this.blockNumber.equals(sushiswapPairDTO.blockNumber)) &&
        (this.id == null ? sushiswapPairDTO.id == null : this.id.equals(sushiswapPairDTO.id)) &&
        (this.factory == null ? sushiswapPairDTO.factory == null : this.factory.equals(sushiswapPairDTO.factory)) &&
        (this.name == null ? sushiswapPairDTO.name == null : this.name.equals(sushiswapPairDTO.name)) &&
        (this.token0 == null ? sushiswapPairDTO.token0 == null : this.token0.equals(sushiswapPairDTO.token0)) &&
        (this.token1 == null ? sushiswapPairDTO.token1 == null : this.token1.equals(sushiswapPairDTO.token1)) &&
        (this.reserve0 == null ? sushiswapPairDTO.reserve0 == null : this.reserve0.equals(sushiswapPairDTO.reserve0)) &&
        (this.reserve1 == null ? sushiswapPairDTO.reserve1 == null : this.reserve1.equals(sushiswapPairDTO.reserve1)) &&
        (this.totalSupply == null ? sushiswapPairDTO.totalSupply == null : this.totalSupply.equals(sushiswapPairDTO.totalSupply)) &&
        (this.reserveEth == null ? sushiswapPairDTO.reserveEth == null : this.reserveEth.equals(sushiswapPairDTO.reserveEth)) &&
        (this.reserveUsd == null ? sushiswapPairDTO.reserveUsd == null : this.reserveUsd.equals(sushiswapPairDTO.reserveUsd)) &&
        (this.trackedReserveEth == null ? sushiswapPairDTO.trackedReserveEth == null : this.trackedReserveEth.equals(sushiswapPairDTO.trackedReserveEth)) &&
        (this.token0Price == null ? sushiswapPairDTO.token0Price == null : this.token0Price.equals(sushiswapPairDTO.token0Price)) &&
        (this.token1Price == null ? sushiswapPairDTO.token1Price == null : this.token1Price.equals(sushiswapPairDTO.token1Price)) &&
        (this.volumeToken0 == null ? sushiswapPairDTO.volumeToken0 == null : this.volumeToken0.equals(sushiswapPairDTO.volumeToken0)) &&
        (this.volumeToken1 == null ? sushiswapPairDTO.volumeToken1 == null : this.volumeToken1.equals(sushiswapPairDTO.volumeToken1)) &&
        (this.volumeUsd == null ? sushiswapPairDTO.volumeUsd == null : this.volumeUsd.equals(sushiswapPairDTO.volumeUsd)) &&
        (this.untrackedVolumeUsd == null ? sushiswapPairDTO.untrackedVolumeUsd == null : this.untrackedVolumeUsd.equals(sushiswapPairDTO.untrackedVolumeUsd)) &&
        (this.txCount == null ? sushiswapPairDTO.txCount == null : this.txCount.equals(sushiswapPairDTO.txCount)) &&
        (this.liquidityProviderCount == null ? sushiswapPairDTO.liquidityProviderCount == null : this.liquidityProviderCount.equals(sushiswapPairDTO.liquidityProviderCount)) &&
        (this.timestamp == null ? sushiswapPairDTO.timestamp == null : this.timestamp.equals(sushiswapPairDTO.timestamp)) &&
        (this.block == null ? sushiswapPairDTO.block == null : this.block.equals(sushiswapPairDTO.block)) &&
        (this.vid == null ? sushiswapPairDTO.vid == null : this.vid.equals(sushiswapPairDTO.vid)) &&
        (this.evaluatedAsk == null ? sushiswapPairDTO.evaluatedAsk == null : this.evaluatedAsk.equals(sushiswapPairDTO.evaluatedAsk));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.entryTime == null ? 0: this.entryTime.hashCode());
    result = 31 * result + (this.recvTime == null ? 0: this.recvTime.hashCode());
    result = 31 * result + (this.blockNumber == null ? 0: this.blockNumber.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.factory == null ? 0: this.factory.hashCode());
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.token0 == null ? 0: this.token0.hashCode());
    result = 31 * result + (this.token1 == null ? 0: this.token1.hashCode());
    result = 31 * result + (this.reserve0 == null ? 0: this.reserve0.hashCode());
    result = 31 * result + (this.reserve1 == null ? 0: this.reserve1.hashCode());
    result = 31 * result + (this.totalSupply == null ? 0: this.totalSupply.hashCode());
    result = 31 * result + (this.reserveEth == null ? 0: this.reserveEth.hashCode());
    result = 31 * result + (this.reserveUsd == null ? 0: this.reserveUsd.hashCode());
    result = 31 * result + (this.trackedReserveEth == null ? 0: this.trackedReserveEth.hashCode());
    result = 31 * result + (this.token0Price == null ? 0: this.token0Price.hashCode());
    result = 31 * result + (this.token1Price == null ? 0: this.token1Price.hashCode());
    result = 31 * result + (this.volumeToken0 == null ? 0: this.volumeToken0.hashCode());
    result = 31 * result + (this.volumeToken1 == null ? 0: this.volumeToken1.hashCode());
    result = 31 * result + (this.volumeUsd == null ? 0: this.volumeUsd.hashCode());
    result = 31 * result + (this.untrackedVolumeUsd == null ? 0: this.untrackedVolumeUsd.hashCode());
    result = 31 * result + (this.txCount == null ? 0: this.txCount.hashCode());
    result = 31 * result + (this.liquidityProviderCount == null ? 0: this.liquidityProviderCount.hashCode());
    result = 31 * result + (this.timestamp == null ? 0: this.timestamp.hashCode());
    result = 31 * result + (this.block == null ? 0: this.block.hashCode());
    result = 31 * result + (this.vid == null ? 0: this.vid.hashCode());
    result = 31 * result + (this.evaluatedAsk == null ? 0: this.evaluatedAsk.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SushiswapPairDTO {\n");
    
    sb.append("  entryTime: ").append(entryTime).append("\n");
    sb.append("  recvTime: ").append(recvTime).append("\n");
    sb.append("  blockNumber: ").append(blockNumber).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  factory: ").append(factory).append("\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("  token0: ").append(token0).append("\n");
    sb.append("  token1: ").append(token1).append("\n");
    sb.append("  reserve0: ").append(reserve0).append("\n");
    sb.append("  reserve1: ").append(reserve1).append("\n");
    sb.append("  totalSupply: ").append(totalSupply).append("\n");
    sb.append("  reserveEth: ").append(reserveEth).append("\n");
    sb.append("  reserveUsd: ").append(reserveUsd).append("\n");
    sb.append("  trackedReserveEth: ").append(trackedReserveEth).append("\n");
    sb.append("  token0Price: ").append(token0Price).append("\n");
    sb.append("  token1Price: ").append(token1Price).append("\n");
    sb.append("  volumeToken0: ").append(volumeToken0).append("\n");
    sb.append("  volumeToken1: ").append(volumeToken1).append("\n");
    sb.append("  volumeUsd: ").append(volumeUsd).append("\n");
    sb.append("  untrackedVolumeUsd: ").append(untrackedVolumeUsd).append("\n");
    sb.append("  txCount: ").append(txCount).append("\n");
    sb.append("  liquidityProviderCount: ").append(liquidityProviderCount).append("\n");
    sb.append("  timestamp: ").append(timestamp).append("\n");
    sb.append("  block: ").append(block).append("\n");
    sb.append("  vid: ").append(vid).append("\n");
    sb.append("  evaluatedAsk: ").append(evaluatedAsk).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
