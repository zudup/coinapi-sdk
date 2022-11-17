/**
 * OnChain API
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
 * Hourly stats tracker for pool.
 **/
@ApiModel(description = "Hourly stats tracker for pool.")
public class UniswapV3PoolHourDataDTO {
  
  @SerializedName("entry_time")
  private Date entryTime = null;
  @SerializedName("recv_time")
  private Date recvTime = null;
  @SerializedName("block_number")
  private Long blockNumber = null;
  @SerializedName("id")
  private String id = null;
  @SerializedName("period_start_unix")
  private Integer periodStartUnix = null;
  @SerializedName("pool")
  private String pool = null;
  @SerializedName("liquidity")
  private String liquidity = null;
  @SerializedName("sqrt_price")
  private String sqrtPrice = null;
  @SerializedName("token_0_price")
  private String token0Price = null;
  @SerializedName("token_1_price")
  private String token1Price = null;
  @SerializedName("tick")
  private String tick = null;
  @SerializedName("fee_growth_global_0x128")
  private String feeGrowthGlobal0x128 = null;
  @SerializedName("fee_growth_global_1x128")
  private String feeGrowthGlobal1x128 = null;
  @SerializedName("tvl_usd")
  private String tvlUsd = null;
  @SerializedName("volume_token_0")
  private String volumeToken0 = null;
  @SerializedName("volume_token_1")
  private String volumeToken1 = null;
  @SerializedName("volume_usd")
  private String volumeUsd = null;
  @SerializedName("fees_usd")
  private String feesUsd = null;
  @SerializedName("tx_count")
  private String txCount = null;
  @SerializedName("open")
  private String open = null;
  @SerializedName("high")
  private String high = null;
  @SerializedName("low")
  private String low = null;
  @SerializedName("close")
  private String close = null;
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
   * Identifier, format: <pool address>-<day id>
   **/
  @ApiModelProperty(value = "Identifier, format: <pool address>-<day id>")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   * Unix timestamp for start of hour.
   **/
  @ApiModelProperty(value = "Unix timestamp for start of hour.")
  public Integer getPeriodStartUnix() {
    return periodStartUnix;
  }
  public void setPeriodStartUnix(Integer periodStartUnix) {
    this.periodStartUnix = periodStartUnix;
  }

  /**
   * Pointer to pool.
   **/
  @ApiModelProperty(value = "Pointer to pool.")
  public String getPool() {
    return pool;
  }
  public void setPool(String pool) {
    this.pool = pool;
  }

  /**
   * In range liquidity at end of period.
   **/
  @ApiModelProperty(value = "In range liquidity at end of period.")
  public String getLiquidity() {
    return liquidity;
  }
  public void setLiquidity(String liquidity) {
    this.liquidity = liquidity;
  }

  /**
   * Current price tracker at end of period.
   **/
  @ApiModelProperty(value = "Current price tracker at end of period.")
  public String getSqrtPrice() {
    return sqrtPrice;
  }
  public void setSqrtPrice(String sqrtPrice) {
    this.sqrtPrice = sqrtPrice;
  }

  /**
   * Price of token0 - derived from sqrtPrice.
   **/
  @ApiModelProperty(value = "Price of token0 - derived from sqrtPrice.")
  public String getToken0Price() {
    return token0Price;
  }
  public void setToken0Price(String token0Price) {
    this.token0Price = token0Price;
  }

  /**
   * Price of token1 - derived from sqrtPrice.
   **/
  @ApiModelProperty(value = "Price of token1 - derived from sqrtPrice.")
  public String getToken1Price() {
    return token1Price;
  }
  public void setToken1Price(String token1Price) {
    this.token1Price = token1Price;
  }

  /**
   * Current tick at end of period.
   **/
  @ApiModelProperty(value = "Current tick at end of period.")
  public String getTick() {
    return tick;
  }
  public void setTick(String tick) {
    this.tick = tick;
  }

  /**
   * Tracker for global fee growth.
   **/
  @ApiModelProperty(value = "Tracker for global fee growth.")
  public String getFeeGrowthGlobal0x128() {
    return feeGrowthGlobal0x128;
  }
  public void setFeeGrowthGlobal0x128(String feeGrowthGlobal0x128) {
    this.feeGrowthGlobal0x128 = feeGrowthGlobal0x128;
  }

  /**
   * Tracker for global fee growth.
   **/
  @ApiModelProperty(value = "Tracker for global fee growth.")
  public String getFeeGrowthGlobal1x128() {
    return feeGrowthGlobal1x128;
  }
  public void setFeeGrowthGlobal1x128(String feeGrowthGlobal1x128) {
    this.feeGrowthGlobal1x128 = feeGrowthGlobal1x128;
  }

  /**
   * Total value locked derived in USD at end of period.
   **/
  @ApiModelProperty(value = "Total value locked derived in USD at end of period.")
  public String getTvlUsd() {
    return tvlUsd;
  }
  public void setTvlUsd(String tvlUsd) {
    this.tvlUsd = tvlUsd;
  }

  /**
   * Volume in token0.
   **/
  @ApiModelProperty(value = "Volume in token0.")
  public String getVolumeToken0() {
    return volumeToken0;
  }
  public void setVolumeToken0(String volumeToken0) {
    this.volumeToken0 = volumeToken0;
  }

  /**
   * Volume in token1.
   **/
  @ApiModelProperty(value = "Volume in token1.")
  public String getVolumeToken1() {
    return volumeToken1;
  }
  public void setVolumeToken1(String volumeToken1) {
    this.volumeToken1 = volumeToken1;
  }

  /**
   * Volume in USD.
   **/
  @ApiModelProperty(value = "Volume in USD.")
  public String getVolumeUsd() {
    return volumeUsd;
  }
  public void setVolumeUsd(String volumeUsd) {
    this.volumeUsd = volumeUsd;
  }

  /**
   * Fees in USD.
   **/
  @ApiModelProperty(value = "Fees in USD.")
  public String getFeesUsd() {
    return feesUsd;
  }
  public void setFeesUsd(String feesUsd) {
    this.feesUsd = feesUsd;
  }

  /**
   * Number of transactions during period.
   **/
  @ApiModelProperty(value = "Number of transactions during period.")
  public String getTxCount() {
    return txCount;
  }
  public void setTxCount(String txCount) {
    this.txCount = txCount;
  }

  /**
   * Opening price of token0.
   **/
  @ApiModelProperty(value = "Opening price of token0.")
  public String getOpen() {
    return open;
  }
  public void setOpen(String open) {
    this.open = open;
  }

  /**
   * High price of token0.
   **/
  @ApiModelProperty(value = "High price of token0.")
  public String getHigh() {
    return high;
  }
  public void setHigh(String high) {
    this.high = high;
  }

  /**
   * Low price of token0.
   **/
  @ApiModelProperty(value = "Low price of token0.")
  public String getLow() {
    return low;
  }
  public void setLow(String low) {
    this.low = low;
  }

  /**
   * Close price of token0.
   **/
  @ApiModelProperty(value = "Close price of token0.")
  public String getClose() {
    return close;
  }
  public void setClose(String close) {
    this.close = close;
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
    UniswapV3PoolHourDataDTO uniswapV3PoolHourDataDTO = (UniswapV3PoolHourDataDTO) o;
    return (this.entryTime == null ? uniswapV3PoolHourDataDTO.entryTime == null : this.entryTime.equals(uniswapV3PoolHourDataDTO.entryTime)) &&
        (this.recvTime == null ? uniswapV3PoolHourDataDTO.recvTime == null : this.recvTime.equals(uniswapV3PoolHourDataDTO.recvTime)) &&
        (this.blockNumber == null ? uniswapV3PoolHourDataDTO.blockNumber == null : this.blockNumber.equals(uniswapV3PoolHourDataDTO.blockNumber)) &&
        (this.id == null ? uniswapV3PoolHourDataDTO.id == null : this.id.equals(uniswapV3PoolHourDataDTO.id)) &&
        (this.periodStartUnix == null ? uniswapV3PoolHourDataDTO.periodStartUnix == null : this.periodStartUnix.equals(uniswapV3PoolHourDataDTO.periodStartUnix)) &&
        (this.pool == null ? uniswapV3PoolHourDataDTO.pool == null : this.pool.equals(uniswapV3PoolHourDataDTO.pool)) &&
        (this.liquidity == null ? uniswapV3PoolHourDataDTO.liquidity == null : this.liquidity.equals(uniswapV3PoolHourDataDTO.liquidity)) &&
        (this.sqrtPrice == null ? uniswapV3PoolHourDataDTO.sqrtPrice == null : this.sqrtPrice.equals(uniswapV3PoolHourDataDTO.sqrtPrice)) &&
        (this.token0Price == null ? uniswapV3PoolHourDataDTO.token0Price == null : this.token0Price.equals(uniswapV3PoolHourDataDTO.token0Price)) &&
        (this.token1Price == null ? uniswapV3PoolHourDataDTO.token1Price == null : this.token1Price.equals(uniswapV3PoolHourDataDTO.token1Price)) &&
        (this.tick == null ? uniswapV3PoolHourDataDTO.tick == null : this.tick.equals(uniswapV3PoolHourDataDTO.tick)) &&
        (this.feeGrowthGlobal0x128 == null ? uniswapV3PoolHourDataDTO.feeGrowthGlobal0x128 == null : this.feeGrowthGlobal0x128.equals(uniswapV3PoolHourDataDTO.feeGrowthGlobal0x128)) &&
        (this.feeGrowthGlobal1x128 == null ? uniswapV3PoolHourDataDTO.feeGrowthGlobal1x128 == null : this.feeGrowthGlobal1x128.equals(uniswapV3PoolHourDataDTO.feeGrowthGlobal1x128)) &&
        (this.tvlUsd == null ? uniswapV3PoolHourDataDTO.tvlUsd == null : this.tvlUsd.equals(uniswapV3PoolHourDataDTO.tvlUsd)) &&
        (this.volumeToken0 == null ? uniswapV3PoolHourDataDTO.volumeToken0 == null : this.volumeToken0.equals(uniswapV3PoolHourDataDTO.volumeToken0)) &&
        (this.volumeToken1 == null ? uniswapV3PoolHourDataDTO.volumeToken1 == null : this.volumeToken1.equals(uniswapV3PoolHourDataDTO.volumeToken1)) &&
        (this.volumeUsd == null ? uniswapV3PoolHourDataDTO.volumeUsd == null : this.volumeUsd.equals(uniswapV3PoolHourDataDTO.volumeUsd)) &&
        (this.feesUsd == null ? uniswapV3PoolHourDataDTO.feesUsd == null : this.feesUsd.equals(uniswapV3PoolHourDataDTO.feesUsd)) &&
        (this.txCount == null ? uniswapV3PoolHourDataDTO.txCount == null : this.txCount.equals(uniswapV3PoolHourDataDTO.txCount)) &&
        (this.open == null ? uniswapV3PoolHourDataDTO.open == null : this.open.equals(uniswapV3PoolHourDataDTO.open)) &&
        (this.high == null ? uniswapV3PoolHourDataDTO.high == null : this.high.equals(uniswapV3PoolHourDataDTO.high)) &&
        (this.low == null ? uniswapV3PoolHourDataDTO.low == null : this.low.equals(uniswapV3PoolHourDataDTO.low)) &&
        (this.close == null ? uniswapV3PoolHourDataDTO.close == null : this.close.equals(uniswapV3PoolHourDataDTO.close)) &&
        (this.vid == null ? uniswapV3PoolHourDataDTO.vid == null : this.vid.equals(uniswapV3PoolHourDataDTO.vid));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.entryTime == null ? 0: this.entryTime.hashCode());
    result = 31 * result + (this.recvTime == null ? 0: this.recvTime.hashCode());
    result = 31 * result + (this.blockNumber == null ? 0: this.blockNumber.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.periodStartUnix == null ? 0: this.periodStartUnix.hashCode());
    result = 31 * result + (this.pool == null ? 0: this.pool.hashCode());
    result = 31 * result + (this.liquidity == null ? 0: this.liquidity.hashCode());
    result = 31 * result + (this.sqrtPrice == null ? 0: this.sqrtPrice.hashCode());
    result = 31 * result + (this.token0Price == null ? 0: this.token0Price.hashCode());
    result = 31 * result + (this.token1Price == null ? 0: this.token1Price.hashCode());
    result = 31 * result + (this.tick == null ? 0: this.tick.hashCode());
    result = 31 * result + (this.feeGrowthGlobal0x128 == null ? 0: this.feeGrowthGlobal0x128.hashCode());
    result = 31 * result + (this.feeGrowthGlobal1x128 == null ? 0: this.feeGrowthGlobal1x128.hashCode());
    result = 31 * result + (this.tvlUsd == null ? 0: this.tvlUsd.hashCode());
    result = 31 * result + (this.volumeToken0 == null ? 0: this.volumeToken0.hashCode());
    result = 31 * result + (this.volumeToken1 == null ? 0: this.volumeToken1.hashCode());
    result = 31 * result + (this.volumeUsd == null ? 0: this.volumeUsd.hashCode());
    result = 31 * result + (this.feesUsd == null ? 0: this.feesUsd.hashCode());
    result = 31 * result + (this.txCount == null ? 0: this.txCount.hashCode());
    result = 31 * result + (this.open == null ? 0: this.open.hashCode());
    result = 31 * result + (this.high == null ? 0: this.high.hashCode());
    result = 31 * result + (this.low == null ? 0: this.low.hashCode());
    result = 31 * result + (this.close == null ? 0: this.close.hashCode());
    result = 31 * result + (this.vid == null ? 0: this.vid.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class UniswapV3PoolHourDataDTO {\n");
    
    sb.append("  entryTime: ").append(entryTime).append("\n");
    sb.append("  recvTime: ").append(recvTime).append("\n");
    sb.append("  blockNumber: ").append(blockNumber).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  periodStartUnix: ").append(periodStartUnix).append("\n");
    sb.append("  pool: ").append(pool).append("\n");
    sb.append("  liquidity: ").append(liquidity).append("\n");
    sb.append("  sqrtPrice: ").append(sqrtPrice).append("\n");
    sb.append("  token0Price: ").append(token0Price).append("\n");
    sb.append("  token1Price: ").append(token1Price).append("\n");
    sb.append("  tick: ").append(tick).append("\n");
    sb.append("  feeGrowthGlobal0x128: ").append(feeGrowthGlobal0x128).append("\n");
    sb.append("  feeGrowthGlobal1x128: ").append(feeGrowthGlobal1x128).append("\n");
    sb.append("  tvlUsd: ").append(tvlUsd).append("\n");
    sb.append("  volumeToken0: ").append(volumeToken0).append("\n");
    sb.append("  volumeToken1: ").append(volumeToken1).append("\n");
    sb.append("  volumeUsd: ").append(volumeUsd).append("\n");
    sb.append("  feesUsd: ").append(feesUsd).append("\n");
    sb.append("  txCount: ").append(txCount).append("\n");
    sb.append("  open: ").append(open).append("\n");
    sb.append("  high: ").append(high).append("\n");
    sb.append("  low: ").append(low).append("\n");
    sb.append("  close: ").append(close).append("\n");
    sb.append("  vid: ").append(vid).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}