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

@ApiModel(description = "")
public class CurveGaugeLiquidityDTO {
  
  @SerializedName("entry_time")
  private Date entryTime = null;
  @SerializedName("recv_time")
  private Date recvTime = null;
  @SerializedName("block_number")
  private Long blockNumber = null;
  @SerializedName("id")
  private String id = null;
  @SerializedName("user")
  private String user = null;
  @SerializedName("gauge")
  private String gauge = null;
  @SerializedName("original_balance")
  private String originalBalance = null;
  @SerializedName("original_supply")
  private String originalSupply = null;
  @SerializedName("working_balance")
  private String workingBalance = null;
  @SerializedName("working_supply")
  private String workingSupply = null;
  @SerializedName("timestamp")
  private String timestamp = null;
  @SerializedName("block")
  private String block = null;
  @SerializedName("transaction")
  private String transaction = null;
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
   * 
   **/
  @ApiModelProperty(value = "")
  public String getUser() {
    return user;
  }
  public void setUser(String user) {
    this.user = user;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getGauge() {
    return gauge;
  }
  public void setGauge(String gauge) {
    this.gauge = gauge;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getOriginalBalance() {
    return originalBalance;
  }
  public void setOriginalBalance(String originalBalance) {
    this.originalBalance = originalBalance;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getOriginalSupply() {
    return originalSupply;
  }
  public void setOriginalSupply(String originalSupply) {
    this.originalSupply = originalSupply;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getWorkingBalance() {
    return workingBalance;
  }
  public void setWorkingBalance(String workingBalance) {
    this.workingBalance = workingBalance;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getWorkingSupply() {
    return workingSupply;
  }
  public void setWorkingSupply(String workingSupply) {
    this.workingSupply = workingSupply;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getTimestamp() {
    return timestamp;
  }
  public void setTimestamp(String timestamp) {
    this.timestamp = timestamp;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
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
  public String getTransaction() {
    return transaction;
  }
  public void setTransaction(String transaction) {
    this.transaction = transaction;
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
    CurveGaugeLiquidityDTO curveGaugeLiquidityDTO = (CurveGaugeLiquidityDTO) o;
    return (this.entryTime == null ? curveGaugeLiquidityDTO.entryTime == null : this.entryTime.equals(curveGaugeLiquidityDTO.entryTime)) &&
        (this.recvTime == null ? curveGaugeLiquidityDTO.recvTime == null : this.recvTime.equals(curveGaugeLiquidityDTO.recvTime)) &&
        (this.blockNumber == null ? curveGaugeLiquidityDTO.blockNumber == null : this.blockNumber.equals(curveGaugeLiquidityDTO.blockNumber)) &&
        (this.id == null ? curveGaugeLiquidityDTO.id == null : this.id.equals(curveGaugeLiquidityDTO.id)) &&
        (this.user == null ? curveGaugeLiquidityDTO.user == null : this.user.equals(curveGaugeLiquidityDTO.user)) &&
        (this.gauge == null ? curveGaugeLiquidityDTO.gauge == null : this.gauge.equals(curveGaugeLiquidityDTO.gauge)) &&
        (this.originalBalance == null ? curveGaugeLiquidityDTO.originalBalance == null : this.originalBalance.equals(curveGaugeLiquidityDTO.originalBalance)) &&
        (this.originalSupply == null ? curveGaugeLiquidityDTO.originalSupply == null : this.originalSupply.equals(curveGaugeLiquidityDTO.originalSupply)) &&
        (this.workingBalance == null ? curveGaugeLiquidityDTO.workingBalance == null : this.workingBalance.equals(curveGaugeLiquidityDTO.workingBalance)) &&
        (this.workingSupply == null ? curveGaugeLiquidityDTO.workingSupply == null : this.workingSupply.equals(curveGaugeLiquidityDTO.workingSupply)) &&
        (this.timestamp == null ? curveGaugeLiquidityDTO.timestamp == null : this.timestamp.equals(curveGaugeLiquidityDTO.timestamp)) &&
        (this.block == null ? curveGaugeLiquidityDTO.block == null : this.block.equals(curveGaugeLiquidityDTO.block)) &&
        (this.transaction == null ? curveGaugeLiquidityDTO.transaction == null : this.transaction.equals(curveGaugeLiquidityDTO.transaction)) &&
        (this.vid == null ? curveGaugeLiquidityDTO.vid == null : this.vid.equals(curveGaugeLiquidityDTO.vid));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.entryTime == null ? 0: this.entryTime.hashCode());
    result = 31 * result + (this.recvTime == null ? 0: this.recvTime.hashCode());
    result = 31 * result + (this.blockNumber == null ? 0: this.blockNumber.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.user == null ? 0: this.user.hashCode());
    result = 31 * result + (this.gauge == null ? 0: this.gauge.hashCode());
    result = 31 * result + (this.originalBalance == null ? 0: this.originalBalance.hashCode());
    result = 31 * result + (this.originalSupply == null ? 0: this.originalSupply.hashCode());
    result = 31 * result + (this.workingBalance == null ? 0: this.workingBalance.hashCode());
    result = 31 * result + (this.workingSupply == null ? 0: this.workingSupply.hashCode());
    result = 31 * result + (this.timestamp == null ? 0: this.timestamp.hashCode());
    result = 31 * result + (this.block == null ? 0: this.block.hashCode());
    result = 31 * result + (this.transaction == null ? 0: this.transaction.hashCode());
    result = 31 * result + (this.vid == null ? 0: this.vid.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class CurveGaugeLiquidityDTO {\n");
    
    sb.append("  entryTime: ").append(entryTime).append("\n");
    sb.append("  recvTime: ").append(recvTime).append("\n");
    sb.append("  blockNumber: ").append(blockNumber).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  user: ").append(user).append("\n");
    sb.append("  gauge: ").append(gauge).append("\n");
    sb.append("  originalBalance: ").append(originalBalance).append("\n");
    sb.append("  originalSupply: ").append(originalSupply).append("\n");
    sb.append("  workingBalance: ").append(workingBalance).append("\n");
    sb.append("  workingSupply: ").append(workingSupply).append("\n");
    sb.append("  timestamp: ").append(timestamp).append("\n");
    sb.append("  block: ").append(block).append("\n");
    sb.append("  transaction: ").append(transaction).append("\n");
    sb.append("  vid: ").append(vid).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
