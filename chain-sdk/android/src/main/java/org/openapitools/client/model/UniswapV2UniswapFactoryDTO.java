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
 * The Uniswap Factory entity is responsible for storing aggregate information across all Uniswap pairs. It can be used to view stats about total liquidity, volume, amount of pairs and more.
 **/
@ApiModel(description = "The Uniswap Factory entity is responsible for storing aggregate information across all Uniswap pairs. It can be used to view stats about total liquidity, volume, amount of pairs and more.")
public class UniswapV2UniswapFactoryDTO {
  
  @SerializedName("entry_time")
  private Date entryTime = null;
  @SerializedName("recv_time")
  private Date recvTime = null;
  @SerializedName("block_number")
  private Long blockNumber = null;
  @SerializedName("id")
  private String id = null;
  @SerializedName("pair_count")
  private Integer pairCount = null;
  @SerializedName("total_volume_usd")
  private String totalVolumeUsd = null;
  @SerializedName("total_volume_eth")
  private String totalVolumeEth = null;
  @SerializedName("untracked_volume_usd")
  private String untrackedVolumeUsd = null;
  @SerializedName("total_liquidity_usd")
  private String totalLiquidityUsd = null;
  @SerializedName("total_liquidity_eth")
  private String totalLiquidityEth = null;
  @SerializedName("tx_count")
  private String txCount = null;
  @SerializedName("vid")
  private Long vid = null;

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
   * Factory address.
   **/
  @ApiModelProperty(value = "Factory address.")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   * Amount of pairs created by the Uniswap factory.
   **/
  @ApiModelProperty(value = "Amount of pairs created by the Uniswap factory.")
  public Integer getPairCount() {
    return pairCount;
  }
  public void setPairCount(Integer pairCount) {
    this.pairCount = pairCount;
  }

  /**
   * All time USD volume across all pairs (USD is derived).
   **/
  @ApiModelProperty(value = "All time USD volume across all pairs (USD is derived).")
  public String getTotalVolumeUsd() {
    return totalVolumeUsd;
  }
  public void setTotalVolumeUsd(String totalVolumeUsd) {
    this.totalVolumeUsd = totalVolumeUsd;
  }

  /**
   * All time volume in ETH across all pairs (ETH is derived).
   **/
  @ApiModelProperty(value = "All time volume in ETH across all pairs (ETH is derived).")
  public String getTotalVolumeEth() {
    return totalVolumeEth;
  }
  public void setTotalVolumeEth(String totalVolumeEth) {
    this.totalVolumeEth = totalVolumeEth;
  }

  /**
   * Untracked volume USD.
   **/
  @ApiModelProperty(value = "Untracked volume USD.")
  public String getUntrackedVolumeUsd() {
    return untrackedVolumeUsd;
  }
  public void setUntrackedVolumeUsd(String untrackedVolumeUsd) {
    this.untrackedVolumeUsd = untrackedVolumeUsd;
  }

  /**
   * Total liquidity across all pairs stored as a derived USD amount.
   **/
  @ApiModelProperty(value = "Total liquidity across all pairs stored as a derived USD amount.")
  public String getTotalLiquidityUsd() {
    return totalLiquidityUsd;
  }
  public void setTotalLiquidityUsd(String totalLiquidityUsd) {
    this.totalLiquidityUsd = totalLiquidityUsd;
  }

  /**
   * Total liquidity across all pairs stored as a derived ETH amount.
   **/
  @ApiModelProperty(value = "Total liquidity across all pairs stored as a derived ETH amount.")
  public String getTotalLiquidityEth() {
    return totalLiquidityEth;
  }
  public void setTotalLiquidityEth(String totalLiquidityEth) {
    this.totalLiquidityEth = totalLiquidityEth;
  }

  /**
   * All time amount of transactions across all pairs.
   **/
  @ApiModelProperty(value = "All time amount of transactions across all pairs.")
  public String getTxCount() {
    return txCount;
  }
  public void setTxCount(String txCount) {
    this.txCount = txCount;
  }

  /**
   * .
   **/
  @ApiModelProperty(value = ".")
  public Long getVid() {
    return vid;
  }
  public void setVid(Long vid) {
    this.vid = vid;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UniswapV2UniswapFactoryDTO uniswapV2UniswapFactoryDTO = (UniswapV2UniswapFactoryDTO) o;
    return (this.entryTime == null ? uniswapV2UniswapFactoryDTO.entryTime == null : this.entryTime.equals(uniswapV2UniswapFactoryDTO.entryTime)) &&
        (this.recvTime == null ? uniswapV2UniswapFactoryDTO.recvTime == null : this.recvTime.equals(uniswapV2UniswapFactoryDTO.recvTime)) &&
        (this.blockNumber == null ? uniswapV2UniswapFactoryDTO.blockNumber == null : this.blockNumber.equals(uniswapV2UniswapFactoryDTO.blockNumber)) &&
        (this.id == null ? uniswapV2UniswapFactoryDTO.id == null : this.id.equals(uniswapV2UniswapFactoryDTO.id)) &&
        (this.pairCount == null ? uniswapV2UniswapFactoryDTO.pairCount == null : this.pairCount.equals(uniswapV2UniswapFactoryDTO.pairCount)) &&
        (this.totalVolumeUsd == null ? uniswapV2UniswapFactoryDTO.totalVolumeUsd == null : this.totalVolumeUsd.equals(uniswapV2UniswapFactoryDTO.totalVolumeUsd)) &&
        (this.totalVolumeEth == null ? uniswapV2UniswapFactoryDTO.totalVolumeEth == null : this.totalVolumeEth.equals(uniswapV2UniswapFactoryDTO.totalVolumeEth)) &&
        (this.untrackedVolumeUsd == null ? uniswapV2UniswapFactoryDTO.untrackedVolumeUsd == null : this.untrackedVolumeUsd.equals(uniswapV2UniswapFactoryDTO.untrackedVolumeUsd)) &&
        (this.totalLiquidityUsd == null ? uniswapV2UniswapFactoryDTO.totalLiquidityUsd == null : this.totalLiquidityUsd.equals(uniswapV2UniswapFactoryDTO.totalLiquidityUsd)) &&
        (this.totalLiquidityEth == null ? uniswapV2UniswapFactoryDTO.totalLiquidityEth == null : this.totalLiquidityEth.equals(uniswapV2UniswapFactoryDTO.totalLiquidityEth)) &&
        (this.txCount == null ? uniswapV2UniswapFactoryDTO.txCount == null : this.txCount.equals(uniswapV2UniswapFactoryDTO.txCount)) &&
        (this.vid == null ? uniswapV2UniswapFactoryDTO.vid == null : this.vid.equals(uniswapV2UniswapFactoryDTO.vid));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.entryTime == null ? 0: this.entryTime.hashCode());
    result = 31 * result + (this.recvTime == null ? 0: this.recvTime.hashCode());
    result = 31 * result + (this.blockNumber == null ? 0: this.blockNumber.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.pairCount == null ? 0: this.pairCount.hashCode());
    result = 31 * result + (this.totalVolumeUsd == null ? 0: this.totalVolumeUsd.hashCode());
    result = 31 * result + (this.totalVolumeEth == null ? 0: this.totalVolumeEth.hashCode());
    result = 31 * result + (this.untrackedVolumeUsd == null ? 0: this.untrackedVolumeUsd.hashCode());
    result = 31 * result + (this.totalLiquidityUsd == null ? 0: this.totalLiquidityUsd.hashCode());
    result = 31 * result + (this.totalLiquidityEth == null ? 0: this.totalLiquidityEth.hashCode());
    result = 31 * result + (this.txCount == null ? 0: this.txCount.hashCode());
    result = 31 * result + (this.vid == null ? 0: this.vid.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class UniswapV2UniswapFactoryDTO {\n");
    
    sb.append("  entryTime: ").append(entryTime).append("\n");
    sb.append("  recvTime: ").append(recvTime).append("\n");
    sb.append("  blockNumber: ").append(blockNumber).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  pairCount: ").append(pairCount).append("\n");
    sb.append("  totalVolumeUsd: ").append(totalVolumeUsd).append("\n");
    sb.append("  totalVolumeEth: ").append(totalVolumeEth).append("\n");
    sb.append("  untrackedVolumeUsd: ").append(untrackedVolumeUsd).append("\n");
    sb.append("  totalLiquidityUsd: ").append(totalLiquidityUsd).append("\n");
    sb.append("  totalLiquidityEth: ").append(totalLiquidityEth).append("\n");
    sb.append("  txCount: ").append(txCount).append("\n");
    sb.append("  vid: ").append(vid).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
