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
 * Token data aggregated across all pairs that include token.
 **/
@ApiModel(description = "Token data aggregated across all pairs that include token.")
public class UniswapV2TokenDayDataDTO {
  
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
  @SerializedName("token")
  private String token = null;
  @SerializedName("daily_volume_token")
  private String dailyVolumeToken = null;
  @SerializedName("daily_volume_eth")
  private String dailyVolumeEth = null;
  @SerializedName("daily_volume_usd")
  private String dailyVolumeUsd = null;
  @SerializedName("daily_txns")
  private String dailyTxns = null;
  @SerializedName("total_liquidity_token")
  private String totalLiquidityToken = null;
  @SerializedName("total_liquidity_eth")
  private String totalLiquidityEth = null;
  @SerializedName("total_liquidity_usd")
  private String totalLiquidityUsd = null;
  @SerializedName("price_usd")
  private String priceUsd = null;
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
   * Token address and day id (day start timestamp in unix / 86400) concatenated with a dash.
   **/
  @ApiModelProperty(value = "Token address and day id (day start timestamp in unix / 86400) concatenated with a dash.")
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
   * Reference to token entity.
   **/
  @ApiModelProperty(value = "Reference to token entity.")
  public String getToken() {
    return token;
  }
  public void setToken(String token) {
    this.token = token;
  }

  /**
   * Amount of token swapped across all pairs throughout day.
   **/
  @ApiModelProperty(value = "Amount of token swapped across all pairs throughout day.")
  public String getDailyVolumeToken() {
    return dailyVolumeToken;
  }
  public void setDailyVolumeToken(String dailyVolumeToken) {
    this.dailyVolumeToken = dailyVolumeToken;
  }

  /**
   * Amount of token swapped across all pairs throughout day stored as a derived amount of ETH.
   **/
  @ApiModelProperty(value = "Amount of token swapped across all pairs throughout day stored as a derived amount of ETH.")
  public String getDailyVolumeEth() {
    return dailyVolumeEth;
  }
  public void setDailyVolumeEth(String dailyVolumeEth) {
    this.dailyVolumeEth = dailyVolumeEth;
  }

  /**
   * Amount of token swapped across all pairs throughout day stored as a derived amount of USD.
   **/
  @ApiModelProperty(value = "Amount of token swapped across all pairs throughout day stored as a derived amount of USD.")
  public String getDailyVolumeUsd() {
    return dailyVolumeUsd;
  }
  public void setDailyVolumeUsd(String dailyVolumeUsd) {
    this.dailyVolumeUsd = dailyVolumeUsd;
  }

  /**
   * Amount of transactions with this token across all pairs.
   **/
  @ApiModelProperty(value = "Amount of transactions with this token across all pairs.")
  public String getDailyTxns() {
    return dailyTxns;
  }
  public void setDailyTxns(String dailyTxns) {
    this.dailyTxns = dailyTxns;
  }

  /**
   * Token amount of token deposited across all pairs.
   **/
  @ApiModelProperty(value = "Token amount of token deposited across all pairs.")
  public String getTotalLiquidityToken() {
    return totalLiquidityToken;
  }
  public void setTotalLiquidityToken(String totalLiquidityToken) {
    this.totalLiquidityToken = totalLiquidityToken;
  }

  /**
   * Token amount of token deposited across all pairs stored as amount of ETH.
   **/
  @ApiModelProperty(value = "Token amount of token deposited across all pairs stored as amount of ETH.")
  public String getTotalLiquidityEth() {
    return totalLiquidityEth;
  }
  public void setTotalLiquidityEth(String totalLiquidityEth) {
    this.totalLiquidityEth = totalLiquidityEth;
  }

  /**
   * Token amount of token deposited across all pairs stored as amount of USD.
   **/
  @ApiModelProperty(value = "Token amount of token deposited across all pairs stored as amount of USD.")
  public String getTotalLiquidityUsd() {
    return totalLiquidityUsd;
  }
  public void setTotalLiquidityUsd(String totalLiquidityUsd) {
    this.totalLiquidityUsd = totalLiquidityUsd;
  }

  /**
   * Price of token in derived USD.
   **/
  @ApiModelProperty(value = "Price of token in derived USD.")
  public String getPriceUsd() {
    return priceUsd;
  }
  public void setPriceUsd(String priceUsd) {
    this.priceUsd = priceUsd;
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
    UniswapV2TokenDayDataDTO uniswapV2TokenDayDataDTO = (UniswapV2TokenDayDataDTO) o;
    return (this.entryTime == null ? uniswapV2TokenDayDataDTO.entryTime == null : this.entryTime.equals(uniswapV2TokenDayDataDTO.entryTime)) &&
        (this.recvTime == null ? uniswapV2TokenDayDataDTO.recvTime == null : this.recvTime.equals(uniswapV2TokenDayDataDTO.recvTime)) &&
        (this.blockNumber == null ? uniswapV2TokenDayDataDTO.blockNumber == null : this.blockNumber.equals(uniswapV2TokenDayDataDTO.blockNumber)) &&
        (this.id == null ? uniswapV2TokenDayDataDTO.id == null : this.id.equals(uniswapV2TokenDayDataDTO.id)) &&
        (this.date == null ? uniswapV2TokenDayDataDTO.date == null : this.date.equals(uniswapV2TokenDayDataDTO.date)) &&
        (this.token == null ? uniswapV2TokenDayDataDTO.token == null : this.token.equals(uniswapV2TokenDayDataDTO.token)) &&
        (this.dailyVolumeToken == null ? uniswapV2TokenDayDataDTO.dailyVolumeToken == null : this.dailyVolumeToken.equals(uniswapV2TokenDayDataDTO.dailyVolumeToken)) &&
        (this.dailyVolumeEth == null ? uniswapV2TokenDayDataDTO.dailyVolumeEth == null : this.dailyVolumeEth.equals(uniswapV2TokenDayDataDTO.dailyVolumeEth)) &&
        (this.dailyVolumeUsd == null ? uniswapV2TokenDayDataDTO.dailyVolumeUsd == null : this.dailyVolumeUsd.equals(uniswapV2TokenDayDataDTO.dailyVolumeUsd)) &&
        (this.dailyTxns == null ? uniswapV2TokenDayDataDTO.dailyTxns == null : this.dailyTxns.equals(uniswapV2TokenDayDataDTO.dailyTxns)) &&
        (this.totalLiquidityToken == null ? uniswapV2TokenDayDataDTO.totalLiquidityToken == null : this.totalLiquidityToken.equals(uniswapV2TokenDayDataDTO.totalLiquidityToken)) &&
        (this.totalLiquidityEth == null ? uniswapV2TokenDayDataDTO.totalLiquidityEth == null : this.totalLiquidityEth.equals(uniswapV2TokenDayDataDTO.totalLiquidityEth)) &&
        (this.totalLiquidityUsd == null ? uniswapV2TokenDayDataDTO.totalLiquidityUsd == null : this.totalLiquidityUsd.equals(uniswapV2TokenDayDataDTO.totalLiquidityUsd)) &&
        (this.priceUsd == null ? uniswapV2TokenDayDataDTO.priceUsd == null : this.priceUsd.equals(uniswapV2TokenDayDataDTO.priceUsd)) &&
        (this.vid == null ? uniswapV2TokenDayDataDTO.vid == null : this.vid.equals(uniswapV2TokenDayDataDTO.vid));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.entryTime == null ? 0: this.entryTime.hashCode());
    result = 31 * result + (this.recvTime == null ? 0: this.recvTime.hashCode());
    result = 31 * result + (this.blockNumber == null ? 0: this.blockNumber.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.date == null ? 0: this.date.hashCode());
    result = 31 * result + (this.token == null ? 0: this.token.hashCode());
    result = 31 * result + (this.dailyVolumeToken == null ? 0: this.dailyVolumeToken.hashCode());
    result = 31 * result + (this.dailyVolumeEth == null ? 0: this.dailyVolumeEth.hashCode());
    result = 31 * result + (this.dailyVolumeUsd == null ? 0: this.dailyVolumeUsd.hashCode());
    result = 31 * result + (this.dailyTxns == null ? 0: this.dailyTxns.hashCode());
    result = 31 * result + (this.totalLiquidityToken == null ? 0: this.totalLiquidityToken.hashCode());
    result = 31 * result + (this.totalLiquidityEth == null ? 0: this.totalLiquidityEth.hashCode());
    result = 31 * result + (this.totalLiquidityUsd == null ? 0: this.totalLiquidityUsd.hashCode());
    result = 31 * result + (this.priceUsd == null ? 0: this.priceUsd.hashCode());
    result = 31 * result + (this.vid == null ? 0: this.vid.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class UniswapV2TokenDayDataDTO {\n");
    
    sb.append("  entryTime: ").append(entryTime).append("\n");
    sb.append("  recvTime: ").append(recvTime).append("\n");
    sb.append("  blockNumber: ").append(blockNumber).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  date: ").append(date).append("\n");
    sb.append("  token: ").append(token).append("\n");
    sb.append("  dailyVolumeToken: ").append(dailyVolumeToken).append("\n");
    sb.append("  dailyVolumeEth: ").append(dailyVolumeEth).append("\n");
    sb.append("  dailyVolumeUsd: ").append(dailyVolumeUsd).append("\n");
    sb.append("  dailyTxns: ").append(dailyTxns).append("\n");
    sb.append("  totalLiquidityToken: ").append(totalLiquidityToken).append("\n");
    sb.append("  totalLiquidityEth: ").append(totalLiquidityEth).append("\n");
    sb.append("  totalLiquidityUsd: ").append(totalLiquidityUsd).append("\n");
    sb.append("  priceUsd: ").append(priceUsd).append("\n");
    sb.append("  vid: ").append(vid).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
