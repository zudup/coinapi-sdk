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

import java.util.*;
import java.util.Date;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class DexSolutionDTO {
  
  @SerializedName("entry_time")
  private Date entryTime = null;
  @SerializedName("recv_time")
  private Date recvTime = null;
  @SerializedName("block_number")
  private Long blockNumber = null;
  @SerializedName("id")
  private String id = null;
  @SerializedName("batch")
  private String batch = null;
  @SerializedName("solver")
  private String solver = null;
  @SerializedName("fee_reward")
  private String feeReward = null;
  @SerializedName("objective_value")
  private String objectiveValue = null;
  @SerializedName("utility")
  private String utility = null;
  @SerializedName("trades")
  private List<String> trades = null;
  @SerializedName("create_epoch")
  private String createEpoch = null;
  @SerializedName("revert_epoch")
  private String revertEpoch = null;
  @SerializedName("tx_hash")
  private String txHash = null;
  @SerializedName("tx_log_index")
  private String txLogIndex = null;
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
  public String getBatch() {
    return batch;
  }
  public void setBatch(String batch) {
    this.batch = batch;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getSolver() {
    return solver;
  }
  public void setSolver(String solver) {
    this.solver = solver;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getFeeReward() {
    return feeReward;
  }
  public void setFeeReward(String feeReward) {
    this.feeReward = feeReward;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getObjectiveValue() {
    return objectiveValue;
  }
  public void setObjectiveValue(String objectiveValue) {
    this.objectiveValue = objectiveValue;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getUtility() {
    return utility;
  }
  public void setUtility(String utility) {
    this.utility = utility;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public List<String> getTrades() {
    return trades;
  }
  public void setTrades(List<String> trades) {
    this.trades = trades;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getCreateEpoch() {
    return createEpoch;
  }
  public void setCreateEpoch(String createEpoch) {
    this.createEpoch = createEpoch;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getRevertEpoch() {
    return revertEpoch;
  }
  public void setRevertEpoch(String revertEpoch) {
    this.revertEpoch = revertEpoch;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getTxHash() {
    return txHash;
  }
  public void setTxHash(String txHash) {
    this.txHash = txHash;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getTxLogIndex() {
    return txLogIndex;
  }
  public void setTxLogIndex(String txLogIndex) {
    this.txLogIndex = txLogIndex;
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
    DexSolutionDTO dexSolutionDTO = (DexSolutionDTO) o;
    return (this.entryTime == null ? dexSolutionDTO.entryTime == null : this.entryTime.equals(dexSolutionDTO.entryTime)) &&
        (this.recvTime == null ? dexSolutionDTO.recvTime == null : this.recvTime.equals(dexSolutionDTO.recvTime)) &&
        (this.blockNumber == null ? dexSolutionDTO.blockNumber == null : this.blockNumber.equals(dexSolutionDTO.blockNumber)) &&
        (this.id == null ? dexSolutionDTO.id == null : this.id.equals(dexSolutionDTO.id)) &&
        (this.batch == null ? dexSolutionDTO.batch == null : this.batch.equals(dexSolutionDTO.batch)) &&
        (this.solver == null ? dexSolutionDTO.solver == null : this.solver.equals(dexSolutionDTO.solver)) &&
        (this.feeReward == null ? dexSolutionDTO.feeReward == null : this.feeReward.equals(dexSolutionDTO.feeReward)) &&
        (this.objectiveValue == null ? dexSolutionDTO.objectiveValue == null : this.objectiveValue.equals(dexSolutionDTO.objectiveValue)) &&
        (this.utility == null ? dexSolutionDTO.utility == null : this.utility.equals(dexSolutionDTO.utility)) &&
        (this.trades == null ? dexSolutionDTO.trades == null : this.trades.equals(dexSolutionDTO.trades)) &&
        (this.createEpoch == null ? dexSolutionDTO.createEpoch == null : this.createEpoch.equals(dexSolutionDTO.createEpoch)) &&
        (this.revertEpoch == null ? dexSolutionDTO.revertEpoch == null : this.revertEpoch.equals(dexSolutionDTO.revertEpoch)) &&
        (this.txHash == null ? dexSolutionDTO.txHash == null : this.txHash.equals(dexSolutionDTO.txHash)) &&
        (this.txLogIndex == null ? dexSolutionDTO.txLogIndex == null : this.txLogIndex.equals(dexSolutionDTO.txLogIndex)) &&
        (this.vid == null ? dexSolutionDTO.vid == null : this.vid.equals(dexSolutionDTO.vid));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.entryTime == null ? 0: this.entryTime.hashCode());
    result = 31 * result + (this.recvTime == null ? 0: this.recvTime.hashCode());
    result = 31 * result + (this.blockNumber == null ? 0: this.blockNumber.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.batch == null ? 0: this.batch.hashCode());
    result = 31 * result + (this.solver == null ? 0: this.solver.hashCode());
    result = 31 * result + (this.feeReward == null ? 0: this.feeReward.hashCode());
    result = 31 * result + (this.objectiveValue == null ? 0: this.objectiveValue.hashCode());
    result = 31 * result + (this.utility == null ? 0: this.utility.hashCode());
    result = 31 * result + (this.trades == null ? 0: this.trades.hashCode());
    result = 31 * result + (this.createEpoch == null ? 0: this.createEpoch.hashCode());
    result = 31 * result + (this.revertEpoch == null ? 0: this.revertEpoch.hashCode());
    result = 31 * result + (this.txHash == null ? 0: this.txHash.hashCode());
    result = 31 * result + (this.txLogIndex == null ? 0: this.txLogIndex.hashCode());
    result = 31 * result + (this.vid == null ? 0: this.vid.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class DexSolutionDTO {\n");
    
    sb.append("  entryTime: ").append(entryTime).append("\n");
    sb.append("  recvTime: ").append(recvTime).append("\n");
    sb.append("  blockNumber: ").append(blockNumber).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  batch: ").append(batch).append("\n");
    sb.append("  solver: ").append(solver).append("\n");
    sb.append("  feeReward: ").append(feeReward).append("\n");
    sb.append("  objectiveValue: ").append(objectiveValue).append("\n");
    sb.append("  utility: ").append(utility).append("\n");
    sb.append("  trades: ").append(trades).append("\n");
    sb.append("  createEpoch: ").append(createEpoch).append("\n");
    sb.append("  revertEpoch: ").append(revertEpoch).append("\n");
    sb.append("  txHash: ").append(txHash).append("\n");
    sb.append("  txLogIndex: ").append(txLogIndex).append("\n");
    sb.append("  vid: ").append(vid).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
