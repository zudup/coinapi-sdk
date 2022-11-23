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
 * Tracks pair data across each day.
 **/
@ApiModel(description = "Tracks pair data across each day.")
public class UniswapV2PairDayDataDTO {
  
  @SerializedName("entry_time")
  private Date entryTime = null;
  @SerializedName("recv_time")
  private Date recvTime = null;
  @SerializedName("block_number")
  private Long blockNumber = null;
  @SerializedName("id")
  private String id = null;
  @SerializedName("date")
  private Integer date = null;
  @SerializedName("pair_address")
  private String pairAddress = null;
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
  @SerializedName("reserve_usd")
  private String reserveUsd = null;
  @SerializedName("daily_volume_token_0")
  private String dailyVolumeToken0 = null;
  @SerializedName("daily_volume_token_1")
  private String dailyVolumeToken1 = null;
  @SerializedName("daily_volume_usd")
  private String dailyVolumeUsd = null;
  @SerializedName("daily_txns")
  private String dailyTxns = null;
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
   * 
   **/
  @ApiModelProperty(value = "")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   * Unix timestamp for start of day.
   **/
  @ApiModelProperty(value = "Unix timestamp for start of day.")
  public Integer getDate() {
    return date;
  }
  public void setDate(Integer date) {
    this.date = date;
  }

  /**
   * Address for pair contract.
   **/
  @ApiModelProperty(value = "Address for pair contract.")
  public String getPairAddress() {
    return pairAddress;
  }
  public void setPairAddress(String pairAddress) {
    this.pairAddress = pairAddress;
  }

  /**
   * Reference to token0.
   **/
  @ApiModelProperty(value = "Reference to token0.")
  public String getToken0() {
    return token0;
  }
  public void setToken0(String token0) {
    this.token0 = token0;
  }

  /**
   * Reference to token1.
   **/
  @ApiModelProperty(value = "Reference to token1.")
  public String getToken1() {
    return token1;
  }
  public void setToken1(String token1) {
    this.token1 = token1;
  }

  /**
   * Reserve of token0 (updated during each transaction on pair).
   **/
  @ApiModelProperty(value = "Reserve of token0 (updated during each transaction on pair).")
  public String getReserve0() {
    return reserve0;
  }
  public void setReserve0(String reserve0) {
    this.reserve0 = reserve0;
  }

  /**
   * Reserve of token1 (updated during each transaction on pair).
   **/
  @ApiModelProperty(value = "Reserve of token1 (updated during each transaction on pair).")
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
   * Reserve of token0 plus token1 stored as a derived USD amount.
   **/
  @ApiModelProperty(value = "Reserve of token0 plus token1 stored as a derived USD amount.")
  public String getReserveUsd() {
    return reserveUsd;
  }
  public void setReserveUsd(String reserveUsd) {
    this.reserveUsd = reserveUsd;
  }

  /**
   * Total amount of token0 swapped throughout day.
   **/
  @ApiModelProperty(value = "Total amount of token0 swapped throughout day.")
  public String getDailyVolumeToken0() {
    return dailyVolumeToken0;
  }
  public void setDailyVolumeToken0(String dailyVolumeToken0) {
    this.dailyVolumeToken0 = dailyVolumeToken0;
  }

  /**
   * Total amount of token1 swapped throughout day.
   **/
  @ApiModelProperty(value = "Total amount of token1 swapped throughout day.")
  public String getDailyVolumeToken1() {
    return dailyVolumeToken1;
  }
  public void setDailyVolumeToken1(String dailyVolumeToken1) {
    this.dailyVolumeToken1 = dailyVolumeToken1;
  }

  /**
   * Total volume within pair throughout day.
   **/
  @ApiModelProperty(value = "Total volume within pair throughout day.")
  public String getDailyVolumeUsd() {
    return dailyVolumeUsd;
  }
  public void setDailyVolumeUsd(String dailyVolumeUsd) {
    this.dailyVolumeUsd = dailyVolumeUsd;
  }

  /**
   * Amount of transactions on pair throughout day.
   **/
  @ApiModelProperty(value = "Amount of transactions on pair throughout day.")
  public String getDailyTxns() {
    return dailyTxns;
  }
  public void setDailyTxns(String dailyTxns) {
    this.dailyTxns = dailyTxns;
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


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UniswapV2PairDayDataDTO uniswapV2PairDayDataDTO = (UniswapV2PairDayDataDTO) o;
    return (this.entryTime == null ? uniswapV2PairDayDataDTO.entryTime == null : this.entryTime.equals(uniswapV2PairDayDataDTO.entryTime)) &&
        (this.recvTime == null ? uniswapV2PairDayDataDTO.recvTime == null : this.recvTime.equals(uniswapV2PairDayDataDTO.recvTime)) &&
        (this.blockNumber == null ? uniswapV2PairDayDataDTO.blockNumber == null : this.blockNumber.equals(uniswapV2PairDayDataDTO.blockNumber)) &&
        (this.id == null ? uniswapV2PairDayDataDTO.id == null : this.id.equals(uniswapV2PairDayDataDTO.id)) &&
        (this.date == null ? uniswapV2PairDayDataDTO.date == null : this.date.equals(uniswapV2PairDayDataDTO.date)) &&
        (this.pairAddress == null ? uniswapV2PairDayDataDTO.pairAddress == null : this.pairAddress.equals(uniswapV2PairDayDataDTO.pairAddress)) &&
        (this.token0 == null ? uniswapV2PairDayDataDTO.token0 == null : this.token0.equals(uniswapV2PairDayDataDTO.token0)) &&
        (this.token1 == null ? uniswapV2PairDayDataDTO.token1 == null : this.token1.equals(uniswapV2PairDayDataDTO.token1)) &&
        (this.reserve0 == null ? uniswapV2PairDayDataDTO.reserve0 == null : this.reserve0.equals(uniswapV2PairDayDataDTO.reserve0)) &&
        (this.reserve1 == null ? uniswapV2PairDayDataDTO.reserve1 == null : this.reserve1.equals(uniswapV2PairDayDataDTO.reserve1)) &&
        (this.totalSupply == null ? uniswapV2PairDayDataDTO.totalSupply == null : this.totalSupply.equals(uniswapV2PairDayDataDTO.totalSupply)) &&
        (this.reserveUsd == null ? uniswapV2PairDayDataDTO.reserveUsd == null : this.reserveUsd.equals(uniswapV2PairDayDataDTO.reserveUsd)) &&
        (this.dailyVolumeToken0 == null ? uniswapV2PairDayDataDTO.dailyVolumeToken0 == null : this.dailyVolumeToken0.equals(uniswapV2PairDayDataDTO.dailyVolumeToken0)) &&
        (this.dailyVolumeToken1 == null ? uniswapV2PairDayDataDTO.dailyVolumeToken1 == null : this.dailyVolumeToken1.equals(uniswapV2PairDayDataDTO.dailyVolumeToken1)) &&
        (this.dailyVolumeUsd == null ? uniswapV2PairDayDataDTO.dailyVolumeUsd == null : this.dailyVolumeUsd.equals(uniswapV2PairDayDataDTO.dailyVolumeUsd)) &&
        (this.dailyTxns == null ? uniswapV2PairDayDataDTO.dailyTxns == null : this.dailyTxns.equals(uniswapV2PairDayDataDTO.dailyTxns)) &&
        (this.vid == null ? uniswapV2PairDayDataDTO.vid == null : this.vid.equals(uniswapV2PairDayDataDTO.vid));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.entryTime == null ? 0: this.entryTime.hashCode());
    result = 31 * result + (this.recvTime == null ? 0: this.recvTime.hashCode());
    result = 31 * result + (this.blockNumber == null ? 0: this.blockNumber.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.date == null ? 0: this.date.hashCode());
    result = 31 * result + (this.pairAddress == null ? 0: this.pairAddress.hashCode());
    result = 31 * result + (this.token0 == null ? 0: this.token0.hashCode());
    result = 31 * result + (this.token1 == null ? 0: this.token1.hashCode());
    result = 31 * result + (this.reserve0 == null ? 0: this.reserve0.hashCode());
    result = 31 * result + (this.reserve1 == null ? 0: this.reserve1.hashCode());
    result = 31 * result + (this.totalSupply == null ? 0: this.totalSupply.hashCode());
    result = 31 * result + (this.reserveUsd == null ? 0: this.reserveUsd.hashCode());
    result = 31 * result + (this.dailyVolumeToken0 == null ? 0: this.dailyVolumeToken0.hashCode());
    result = 31 * result + (this.dailyVolumeToken1 == null ? 0: this.dailyVolumeToken1.hashCode());
    result = 31 * result + (this.dailyVolumeUsd == null ? 0: this.dailyVolumeUsd.hashCode());
    result = 31 * result + (this.dailyTxns == null ? 0: this.dailyTxns.hashCode());
    result = 31 * result + (this.vid == null ? 0: this.vid.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class UniswapV2PairDayDataDTO {\n");
    
    sb.append("  entryTime: ").append(entryTime).append("\n");
    sb.append("  recvTime: ").append(recvTime).append("\n");
    sb.append("  blockNumber: ").append(blockNumber).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  date: ").append(date).append("\n");
    sb.append("  pairAddress: ").append(pairAddress).append("\n");
    sb.append("  token0: ").append(token0).append("\n");
    sb.append("  token1: ").append(token1).append("\n");
    sb.append("  reserve0: ").append(reserve0).append("\n");
    sb.append("  reserve1: ").append(reserve1).append("\n");
    sb.append("  totalSupply: ").append(totalSupply).append("\n");
    sb.append("  reserveUsd: ").append(reserveUsd).append("\n");
    sb.append("  dailyVolumeToken0: ").append(dailyVolumeToken0).append("\n");
    sb.append("  dailyVolumeToken1: ").append(dailyVolumeToken1).append("\n");
    sb.append("  dailyVolumeUsd: ").append(dailyVolumeUsd).append("\n");
    sb.append("  dailyTxns: ").append(dailyTxns).append("\n");
    sb.append("  vid: ").append(vid).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
