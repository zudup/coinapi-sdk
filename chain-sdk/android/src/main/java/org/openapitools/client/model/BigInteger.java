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

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class BigInteger {
  
  @SerializedName("is_power_of_two")
  private Boolean isPowerOfTwo = null;
  @SerializedName("is_zero")
  private Boolean isZero = null;
  @SerializedName("is_one")
  private Boolean isOne = null;
  @SerializedName("is_even")
  private Boolean isEven = null;
  @SerializedName("sign")
  private Integer sign = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public Boolean getIsPowerOfTwo() {
    return isPowerOfTwo;
  }
  public void setIsPowerOfTwo(Boolean isPowerOfTwo) {
    this.isPowerOfTwo = isPowerOfTwo;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Boolean getIsZero() {
    return isZero;
  }
  public void setIsZero(Boolean isZero) {
    this.isZero = isZero;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Boolean getIsOne() {
    return isOne;
  }
  public void setIsOne(Boolean isOne) {
    this.isOne = isOne;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Boolean getIsEven() {
    return isEven;
  }
  public void setIsEven(Boolean isEven) {
    this.isEven = isEven;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getSign() {
    return sign;
  }
  public void setSign(Integer sign) {
    this.sign = sign;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    BigInteger bigInteger = (BigInteger) o;
    return (this.isPowerOfTwo == null ? bigInteger.isPowerOfTwo == null : this.isPowerOfTwo.equals(bigInteger.isPowerOfTwo)) &&
        (this.isZero == null ? bigInteger.isZero == null : this.isZero.equals(bigInteger.isZero)) &&
        (this.isOne == null ? bigInteger.isOne == null : this.isOne.equals(bigInteger.isOne)) &&
        (this.isEven == null ? bigInteger.isEven == null : this.isEven.equals(bigInteger.isEven)) &&
        (this.sign == null ? bigInteger.sign == null : this.sign.equals(bigInteger.sign));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.isPowerOfTwo == null ? 0: this.isPowerOfTwo.hashCode());
    result = 31 * result + (this.isZero == null ? 0: this.isZero.hashCode());
    result = 31 * result + (this.isOne == null ? 0: this.isOne.hashCode());
    result = 31 * result + (this.isEven == null ? 0: this.isEven.hashCode());
    result = 31 * result + (this.sign == null ? 0: this.sign.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class BigInteger {\n");
    
    sb.append("  isPowerOfTwo: ").append(isPowerOfTwo).append("\n");
    sb.append("  isZero: ").append(isZero).append("\n");
    sb.append("  isOne: ").append(isOne).append("\n");
    sb.append("  isEven: ").append(isEven).append("\n");
    sb.append("  sign: ").append(sign).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}