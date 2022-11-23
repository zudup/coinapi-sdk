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
public class CurveGaugeWeightDTO {
  
  @SerializedName("entry_time")
  private Date entryTime = null;
  @SerializedName("recv_time")
  private Date recvTime = null;
  @SerializedName("block_number")
  private Long blockNumber = null;
  @SerializedName("id")
  private String id = null;
  @SerializedName("gauge")
  private String gauge = null;
  @SerializedName("time")
  private String time = null;
  @SerializedName("weight")
  private String weight = null;
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
  public String getTime() {
    return time;
  }
  public void setTime(String time) {
    this.time = time;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getWeight() {
    return weight;
  }
  public void setWeight(String weight) {
    this.weight = weight;
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
    CurveGaugeWeightDTO curveGaugeWeightDTO = (CurveGaugeWeightDTO) o;
    return (this.entryTime == null ? curveGaugeWeightDTO.entryTime == null : this.entryTime.equals(curveGaugeWeightDTO.entryTime)) &&
        (this.recvTime == null ? curveGaugeWeightDTO.recvTime == null : this.recvTime.equals(curveGaugeWeightDTO.recvTime)) &&
        (this.blockNumber == null ? curveGaugeWeightDTO.blockNumber == null : this.blockNumber.equals(curveGaugeWeightDTO.blockNumber)) &&
        (this.id == null ? curveGaugeWeightDTO.id == null : this.id.equals(curveGaugeWeightDTO.id)) &&
        (this.gauge == null ? curveGaugeWeightDTO.gauge == null : this.gauge.equals(curveGaugeWeightDTO.gauge)) &&
        (this.time == null ? curveGaugeWeightDTO.time == null : this.time.equals(curveGaugeWeightDTO.time)) &&
        (this.weight == null ? curveGaugeWeightDTO.weight == null : this.weight.equals(curveGaugeWeightDTO.weight)) &&
        (this.vid == null ? curveGaugeWeightDTO.vid == null : this.vid.equals(curveGaugeWeightDTO.vid));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.entryTime == null ? 0: this.entryTime.hashCode());
    result = 31 * result + (this.recvTime == null ? 0: this.recvTime.hashCode());
    result = 31 * result + (this.blockNumber == null ? 0: this.blockNumber.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.gauge == null ? 0: this.gauge.hashCode());
    result = 31 * result + (this.time == null ? 0: this.time.hashCode());
    result = 31 * result + (this.weight == null ? 0: this.weight.hashCode());
    result = 31 * result + (this.vid == null ? 0: this.vid.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class CurveGaugeWeightDTO {\n");
    
    sb.append("  entryTime: ").append(entryTime).append("\n");
    sb.append("  recvTime: ").append(recvTime).append("\n");
    sb.append("  blockNumber: ").append(blockNumber).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  gauge: ").append(gauge).append("\n");
    sb.append("  time: ").append(time).append("\n");
    sb.append("  weight: ").append(weight).append("\n");
    sb.append("  vid: ").append(vid).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
