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
public class CurveContractDTO {
  
  @SerializedName("entry_time")
  private Date entryTime = null;
  @SerializedName("recv_time")
  private Date recvTime = null;
  @SerializedName("block_number")
  private Long blockNumber = null;
  @SerializedName("id")
  private String id = null;
  @SerializedName("description")
  private String description = null;
  @SerializedName("added")
  private String added = null;
  @SerializedName("added_at_block")
  private String addedAtBlock = null;
  @SerializedName("added_at_transaction")
  private String addedAtTransaction = null;
  @SerializedName("modified")
  private String modified = null;
  @SerializedName("modified_at_block")
  private String modifiedAtBlock = null;
  @SerializedName("modified_at_transaction")
  private String modifiedAtTransaction = null;
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
   * Human-readable description.
   **/
  @ApiModelProperty(value = "Human-readable description.")
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getAdded() {
    return added;
  }
  public void setAdded(String added) {
    this.added = added;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getAddedAtBlock() {
    return addedAtBlock;
  }
  public void setAddedAtBlock(String addedAtBlock) {
    this.addedAtBlock = addedAtBlock;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getAddedAtTransaction() {
    return addedAtTransaction;
  }
  public void setAddedAtTransaction(String addedAtTransaction) {
    this.addedAtTransaction = addedAtTransaction;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getModified() {
    return modified;
  }
  public void setModified(String modified) {
    this.modified = modified;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getModifiedAtBlock() {
    return modifiedAtBlock;
  }
  public void setModifiedAtBlock(String modifiedAtBlock) {
    this.modifiedAtBlock = modifiedAtBlock;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getModifiedAtTransaction() {
    return modifiedAtTransaction;
  }
  public void setModifiedAtTransaction(String modifiedAtTransaction) {
    this.modifiedAtTransaction = modifiedAtTransaction;
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
    CurveContractDTO curveContractDTO = (CurveContractDTO) o;
    return (this.entryTime == null ? curveContractDTO.entryTime == null : this.entryTime.equals(curveContractDTO.entryTime)) &&
        (this.recvTime == null ? curveContractDTO.recvTime == null : this.recvTime.equals(curveContractDTO.recvTime)) &&
        (this.blockNumber == null ? curveContractDTO.blockNumber == null : this.blockNumber.equals(curveContractDTO.blockNumber)) &&
        (this.id == null ? curveContractDTO.id == null : this.id.equals(curveContractDTO.id)) &&
        (this.description == null ? curveContractDTO.description == null : this.description.equals(curveContractDTO.description)) &&
        (this.added == null ? curveContractDTO.added == null : this.added.equals(curveContractDTO.added)) &&
        (this.addedAtBlock == null ? curveContractDTO.addedAtBlock == null : this.addedAtBlock.equals(curveContractDTO.addedAtBlock)) &&
        (this.addedAtTransaction == null ? curveContractDTO.addedAtTransaction == null : this.addedAtTransaction.equals(curveContractDTO.addedAtTransaction)) &&
        (this.modified == null ? curveContractDTO.modified == null : this.modified.equals(curveContractDTO.modified)) &&
        (this.modifiedAtBlock == null ? curveContractDTO.modifiedAtBlock == null : this.modifiedAtBlock.equals(curveContractDTO.modifiedAtBlock)) &&
        (this.modifiedAtTransaction == null ? curveContractDTO.modifiedAtTransaction == null : this.modifiedAtTransaction.equals(curveContractDTO.modifiedAtTransaction)) &&
        (this.vid == null ? curveContractDTO.vid == null : this.vid.equals(curveContractDTO.vid));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.entryTime == null ? 0: this.entryTime.hashCode());
    result = 31 * result + (this.recvTime == null ? 0: this.recvTime.hashCode());
    result = 31 * result + (this.blockNumber == null ? 0: this.blockNumber.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.description == null ? 0: this.description.hashCode());
    result = 31 * result + (this.added == null ? 0: this.added.hashCode());
    result = 31 * result + (this.addedAtBlock == null ? 0: this.addedAtBlock.hashCode());
    result = 31 * result + (this.addedAtTransaction == null ? 0: this.addedAtTransaction.hashCode());
    result = 31 * result + (this.modified == null ? 0: this.modified.hashCode());
    result = 31 * result + (this.modifiedAtBlock == null ? 0: this.modifiedAtBlock.hashCode());
    result = 31 * result + (this.modifiedAtTransaction == null ? 0: this.modifiedAtTransaction.hashCode());
    result = 31 * result + (this.vid == null ? 0: this.vid.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class CurveContractDTO {\n");
    
    sb.append("  entryTime: ").append(entryTime).append("\n");
    sb.append("  recvTime: ").append(recvTime).append("\n");
    sb.append("  blockNumber: ").append(blockNumber).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  description: ").append(description).append("\n");
    sb.append("  added: ").append(added).append("\n");
    sb.append("  addedAtBlock: ").append(addedAtBlock).append("\n");
    sb.append("  addedAtTransaction: ").append(addedAtTransaction).append("\n");
    sb.append("  modified: ").append(modified).append("\n");
    sb.append("  modifiedAtBlock: ").append(modifiedAtBlock).append("\n");
    sb.append("  modifiedAtTransaction: ").append(modifiedAtTransaction).append("\n");
    sb.append("  vid: ").append(vid).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
