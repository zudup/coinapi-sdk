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

@ApiModel(description = "")
public class FactoryV3DTO {
  
  @SerializedName("entry_time")
  private Date entryTime = null;
  @SerializedName("recv_time")
  private Date recvTime = null;
  @SerializedName("block_number")
  private Long blockNumber = null;
  @SerializedName("id")
  private String id = null;
  @SerializedName("pool_count")
  private String poolCount = null;
  @SerializedName("tx_count")
  private String txCount = null;
  @SerializedName("total_volume_usd")
  private String totalVolumeUsd = null;
  @SerializedName("total_volume_eth")
  private String totalVolumeEth = null;
  @SerializedName("total_fees_usd")
  private String totalFeesUsd = null;
  @SerializedName("total_fees_eth")
  private String totalFeesEth = null;
  @SerializedName("untracked_volume_usd")
  private String untrackedVolumeUsd = null;
  @SerializedName("total_value_locked_usd")
  private String totalValueLockedUsd = null;
  @SerializedName("total_value_locked_eth")
  private String totalValueLockedEth = null;
  @SerializedName("total_value_locked_usd_untracked")
  private String totalValueLockedUsdUntracked = null;
  @SerializedName("total_value_locked_eth_untracked")
  private String totalValueLockedEthUntracked = null;
  @SerializedName("owner")
  private String owner = null;
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
   **/
  @ApiModelProperty(value = "")
  public Long getBlockNumber() {
    return blockNumber;
  }
  public void setBlockNumber(Long blockNumber) {
    this.blockNumber = blockNumber;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getPoolCount() {
    return poolCount;
  }
  public void setPoolCount(String poolCount) {
    this.poolCount = poolCount;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getTxCount() {
    return txCount;
  }
  public void setTxCount(String txCount) {
    this.txCount = txCount;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getTotalVolumeUsd() {
    return totalVolumeUsd;
  }
  public void setTotalVolumeUsd(String totalVolumeUsd) {
    this.totalVolumeUsd = totalVolumeUsd;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getTotalVolumeEth() {
    return totalVolumeEth;
  }
  public void setTotalVolumeEth(String totalVolumeEth) {
    this.totalVolumeEth = totalVolumeEth;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getTotalFeesUsd() {
    return totalFeesUsd;
  }
  public void setTotalFeesUsd(String totalFeesUsd) {
    this.totalFeesUsd = totalFeesUsd;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getTotalFeesEth() {
    return totalFeesEth;
  }
  public void setTotalFeesEth(String totalFeesEth) {
    this.totalFeesEth = totalFeesEth;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getUntrackedVolumeUsd() {
    return untrackedVolumeUsd;
  }
  public void setUntrackedVolumeUsd(String untrackedVolumeUsd) {
    this.untrackedVolumeUsd = untrackedVolumeUsd;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getTotalValueLockedUsd() {
    return totalValueLockedUsd;
  }
  public void setTotalValueLockedUsd(String totalValueLockedUsd) {
    this.totalValueLockedUsd = totalValueLockedUsd;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getTotalValueLockedEth() {
    return totalValueLockedEth;
  }
  public void setTotalValueLockedEth(String totalValueLockedEth) {
    this.totalValueLockedEth = totalValueLockedEth;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getTotalValueLockedUsdUntracked() {
    return totalValueLockedUsdUntracked;
  }
  public void setTotalValueLockedUsdUntracked(String totalValueLockedUsdUntracked) {
    this.totalValueLockedUsdUntracked = totalValueLockedUsdUntracked;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getTotalValueLockedEthUntracked() {
    return totalValueLockedEthUntracked;
  }
  public void setTotalValueLockedEthUntracked(String totalValueLockedEthUntracked) {
    this.totalValueLockedEthUntracked = totalValueLockedEthUntracked;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getOwner() {
    return owner;
  }
  public void setOwner(String owner) {
    this.owner = owner;
  }

  /**
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
    FactoryV3DTO factoryV3DTO = (FactoryV3DTO) o;
    return (this.entryTime == null ? factoryV3DTO.entryTime == null : this.entryTime.equals(factoryV3DTO.entryTime)) &&
        (this.recvTime == null ? factoryV3DTO.recvTime == null : this.recvTime.equals(factoryV3DTO.recvTime)) &&
        (this.blockNumber == null ? factoryV3DTO.blockNumber == null : this.blockNumber.equals(factoryV3DTO.blockNumber)) &&
        (this.id == null ? factoryV3DTO.id == null : this.id.equals(factoryV3DTO.id)) &&
        (this.poolCount == null ? factoryV3DTO.poolCount == null : this.poolCount.equals(factoryV3DTO.poolCount)) &&
        (this.txCount == null ? factoryV3DTO.txCount == null : this.txCount.equals(factoryV3DTO.txCount)) &&
        (this.totalVolumeUsd == null ? factoryV3DTO.totalVolumeUsd == null : this.totalVolumeUsd.equals(factoryV3DTO.totalVolumeUsd)) &&
        (this.totalVolumeEth == null ? factoryV3DTO.totalVolumeEth == null : this.totalVolumeEth.equals(factoryV3DTO.totalVolumeEth)) &&
        (this.totalFeesUsd == null ? factoryV3DTO.totalFeesUsd == null : this.totalFeesUsd.equals(factoryV3DTO.totalFeesUsd)) &&
        (this.totalFeesEth == null ? factoryV3DTO.totalFeesEth == null : this.totalFeesEth.equals(factoryV3DTO.totalFeesEth)) &&
        (this.untrackedVolumeUsd == null ? factoryV3DTO.untrackedVolumeUsd == null : this.untrackedVolumeUsd.equals(factoryV3DTO.untrackedVolumeUsd)) &&
        (this.totalValueLockedUsd == null ? factoryV3DTO.totalValueLockedUsd == null : this.totalValueLockedUsd.equals(factoryV3DTO.totalValueLockedUsd)) &&
        (this.totalValueLockedEth == null ? factoryV3DTO.totalValueLockedEth == null : this.totalValueLockedEth.equals(factoryV3DTO.totalValueLockedEth)) &&
        (this.totalValueLockedUsdUntracked == null ? factoryV3DTO.totalValueLockedUsdUntracked == null : this.totalValueLockedUsdUntracked.equals(factoryV3DTO.totalValueLockedUsdUntracked)) &&
        (this.totalValueLockedEthUntracked == null ? factoryV3DTO.totalValueLockedEthUntracked == null : this.totalValueLockedEthUntracked.equals(factoryV3DTO.totalValueLockedEthUntracked)) &&
        (this.owner == null ? factoryV3DTO.owner == null : this.owner.equals(factoryV3DTO.owner)) &&
        (this.vid == null ? factoryV3DTO.vid == null : this.vid.equals(factoryV3DTO.vid));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.entryTime == null ? 0: this.entryTime.hashCode());
    result = 31 * result + (this.recvTime == null ? 0: this.recvTime.hashCode());
    result = 31 * result + (this.blockNumber == null ? 0: this.blockNumber.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.poolCount == null ? 0: this.poolCount.hashCode());
    result = 31 * result + (this.txCount == null ? 0: this.txCount.hashCode());
    result = 31 * result + (this.totalVolumeUsd == null ? 0: this.totalVolumeUsd.hashCode());
    result = 31 * result + (this.totalVolumeEth == null ? 0: this.totalVolumeEth.hashCode());
    result = 31 * result + (this.totalFeesUsd == null ? 0: this.totalFeesUsd.hashCode());
    result = 31 * result + (this.totalFeesEth == null ? 0: this.totalFeesEth.hashCode());
    result = 31 * result + (this.untrackedVolumeUsd == null ? 0: this.untrackedVolumeUsd.hashCode());
    result = 31 * result + (this.totalValueLockedUsd == null ? 0: this.totalValueLockedUsd.hashCode());
    result = 31 * result + (this.totalValueLockedEth == null ? 0: this.totalValueLockedEth.hashCode());
    result = 31 * result + (this.totalValueLockedUsdUntracked == null ? 0: this.totalValueLockedUsdUntracked.hashCode());
    result = 31 * result + (this.totalValueLockedEthUntracked == null ? 0: this.totalValueLockedEthUntracked.hashCode());
    result = 31 * result + (this.owner == null ? 0: this.owner.hashCode());
    result = 31 * result + (this.vid == null ? 0: this.vid.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class FactoryV3DTO {\n");
    
    sb.append("  entryTime: ").append(entryTime).append("\n");
    sb.append("  recvTime: ").append(recvTime).append("\n");
    sb.append("  blockNumber: ").append(blockNumber).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  poolCount: ").append(poolCount).append("\n");
    sb.append("  txCount: ").append(txCount).append("\n");
    sb.append("  totalVolumeUsd: ").append(totalVolumeUsd).append("\n");
    sb.append("  totalVolumeEth: ").append(totalVolumeEth).append("\n");
    sb.append("  totalFeesUsd: ").append(totalFeesUsd).append("\n");
    sb.append("  totalFeesEth: ").append(totalFeesEth).append("\n");
    sb.append("  untrackedVolumeUsd: ").append(untrackedVolumeUsd).append("\n");
    sb.append("  totalValueLockedUsd: ").append(totalValueLockedUsd).append("\n");
    sb.append("  totalValueLockedEth: ").append(totalValueLockedEth).append("\n");
    sb.append("  totalValueLockedUsdUntracked: ").append(totalValueLockedUsdUntracked).append("\n");
    sb.append("  totalValueLockedEthUntracked: ").append(totalValueLockedEthUntracked).append("\n");
    sb.append("  owner: ").append(owner).append("\n");
    sb.append("  vid: ").append(vid).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}