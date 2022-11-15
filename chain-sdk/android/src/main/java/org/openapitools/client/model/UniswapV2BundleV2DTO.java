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
 * The Bundle is used as a global store of derived ETH price in USD. Because there is no guaranteed common base token across pairs, a global reference of USD price is useful for deriving other USD values. The Bundle entity stores an updated weighted average of ETH&lt;-&gt;Stablecoin pair prices. This provides a strong estimate for the USD price of ETH.
 **/
@ApiModel(description = "The Bundle is used as a global store of derived ETH price in USD. Because there is no guaranteed common base token across pairs, a global reference of USD price is useful for deriving other USD values. The Bundle entity stores an updated weighted average of ETH<->Stablecoin pair prices. This provides a strong estimate for the USD price of ETH.")
public class UniswapV2BundleV2DTO {
  
  @SerializedName("entry_time")
  private Date entryTime = null;
  @SerializedName("recv_time")
  private Date recvTime = null;
  @SerializedName("block_number")
  private Long blockNumber = null;
  @SerializedName("id")
  private String id = null;
  @SerializedName("eth_price")
  private String ethPrice = null;
  @SerializedName("vid")
  private Long vid = null;
  @SerializedName("block_range")
  private String blockRange = null;

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
   * Constant 1.
   **/
  @ApiModelProperty(value = "Constant 1.")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   * Derived price of ETH in USD based on stablecoin pairs.
   **/
  @ApiModelProperty(value = "Derived price of ETH in USD based on stablecoin pairs.")
  public String getEthPrice() {
    return ethPrice;
  }
  public void setEthPrice(String ethPrice) {
    this.ethPrice = ethPrice;
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
   * 
   **/
  @ApiModelProperty(value = "")
  public String getBlockRange() {
    return blockRange;
  }
  public void setBlockRange(String blockRange) {
    this.blockRange = blockRange;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UniswapV2BundleV2DTO uniswapV2BundleV2DTO = (UniswapV2BundleV2DTO) o;
    return (this.entryTime == null ? uniswapV2BundleV2DTO.entryTime == null : this.entryTime.equals(uniswapV2BundleV2DTO.entryTime)) &&
        (this.recvTime == null ? uniswapV2BundleV2DTO.recvTime == null : this.recvTime.equals(uniswapV2BundleV2DTO.recvTime)) &&
        (this.blockNumber == null ? uniswapV2BundleV2DTO.blockNumber == null : this.blockNumber.equals(uniswapV2BundleV2DTO.blockNumber)) &&
        (this.id == null ? uniswapV2BundleV2DTO.id == null : this.id.equals(uniswapV2BundleV2DTO.id)) &&
        (this.ethPrice == null ? uniswapV2BundleV2DTO.ethPrice == null : this.ethPrice.equals(uniswapV2BundleV2DTO.ethPrice)) &&
        (this.vid == null ? uniswapV2BundleV2DTO.vid == null : this.vid.equals(uniswapV2BundleV2DTO.vid)) &&
        (this.blockRange == null ? uniswapV2BundleV2DTO.blockRange == null : this.blockRange.equals(uniswapV2BundleV2DTO.blockRange));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.entryTime == null ? 0: this.entryTime.hashCode());
    result = 31 * result + (this.recvTime == null ? 0: this.recvTime.hashCode());
    result = 31 * result + (this.blockNumber == null ? 0: this.blockNumber.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.ethPrice == null ? 0: this.ethPrice.hashCode());
    result = 31 * result + (this.vid == null ? 0: this.vid.hashCode());
    result = 31 * result + (this.blockRange == null ? 0: this.blockRange.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class UniswapV2BundleV2DTO {\n");
    
    sb.append("  entryTime: ").append(entryTime).append("\n");
    sb.append("  recvTime: ").append(recvTime).append("\n");
    sb.append("  blockNumber: ").append(blockNumber).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  ethPrice: ").append(ethPrice).append("\n");
    sb.append("  vid: ").append(vid).append("\n");
    sb.append("  blockRange: ").append(blockRange).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}