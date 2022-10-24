/*
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

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.time.OffsetDateTime;
import org.openapitools.jackson.nullable.JsonNullable;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.openapitools.client.JSON;

/**
 * FactoryV3DTO
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-10-24T10:30:32.571855Z[Etc/UTC]")
public class FactoryV3DTO {
  public static final String SERIALIZED_NAME_ENTRY_TIME = "entry_time";
  @SerializedName(SERIALIZED_NAME_ENTRY_TIME)
  private OffsetDateTime entryTime;

  public static final String SERIALIZED_NAME_RECV_TIME = "recv_time";
  @SerializedName(SERIALIZED_NAME_RECV_TIME)
  private OffsetDateTime recvTime;

  public static final String SERIALIZED_NAME_BLOCK_NUMBER = "block_number";
  @SerializedName(SERIALIZED_NAME_BLOCK_NUMBER)
  private Long blockNumber;

  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private String id;

  public static final String SERIALIZED_NAME_POOL_COUNT = "pool_count";
  @SerializedName(SERIALIZED_NAME_POOL_COUNT)
  private String poolCount;

  public static final String SERIALIZED_NAME_TX_COUNT = "tx_count";
  @SerializedName(SERIALIZED_NAME_TX_COUNT)
  private String txCount;

  public static final String SERIALIZED_NAME_TOTAL_VOLUME_USD = "total_volume_usd";
  @SerializedName(SERIALIZED_NAME_TOTAL_VOLUME_USD)
  private String totalVolumeUsd;

  public static final String SERIALIZED_NAME_TOTAL_VOLUME_ETH = "total_volume_eth";
  @SerializedName(SERIALIZED_NAME_TOTAL_VOLUME_ETH)
  private String totalVolumeEth;

  public static final String SERIALIZED_NAME_TOTAL_FEES_USD = "total_fees_usd";
  @SerializedName(SERIALIZED_NAME_TOTAL_FEES_USD)
  private String totalFeesUsd;

  public static final String SERIALIZED_NAME_TOTAL_FEES_ETH = "total_fees_eth";
  @SerializedName(SERIALIZED_NAME_TOTAL_FEES_ETH)
  private String totalFeesEth;

  public static final String SERIALIZED_NAME_UNTRACKED_VOLUME_USD = "untracked_volume_usd";
  @SerializedName(SERIALIZED_NAME_UNTRACKED_VOLUME_USD)
  private String untrackedVolumeUsd;

  public static final String SERIALIZED_NAME_TOTAL_VALUE_LOCKED_USD = "total_value_locked_usd";
  @SerializedName(SERIALIZED_NAME_TOTAL_VALUE_LOCKED_USD)
  private String totalValueLockedUsd;

  public static final String SERIALIZED_NAME_TOTAL_VALUE_LOCKED_ETH = "total_value_locked_eth";
  @SerializedName(SERIALIZED_NAME_TOTAL_VALUE_LOCKED_ETH)
  private String totalValueLockedEth;

  public static final String SERIALIZED_NAME_TOTAL_VALUE_LOCKED_USD_UNTRACKED = "total_value_locked_usd_untracked";
  @SerializedName(SERIALIZED_NAME_TOTAL_VALUE_LOCKED_USD_UNTRACKED)
  private String totalValueLockedUsdUntracked;

  public static final String SERIALIZED_NAME_TOTAL_VALUE_LOCKED_ETH_UNTRACKED = "total_value_locked_eth_untracked";
  @SerializedName(SERIALIZED_NAME_TOTAL_VALUE_LOCKED_ETH_UNTRACKED)
  private String totalValueLockedEthUntracked;

  public static final String SERIALIZED_NAME_OWNER = "owner";
  @SerializedName(SERIALIZED_NAME_OWNER)
  private String owner;

  public static final String SERIALIZED_NAME_VID = "vid";
  @SerializedName(SERIALIZED_NAME_VID)
  private Long vid;

  public FactoryV3DTO() {
  }

  public FactoryV3DTO entryTime(OffsetDateTime entryTime) {
    
    this.entryTime = entryTime;
    return this;
  }

   /**
   * Get entryTime
   * @return entryTime
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public OffsetDateTime getEntryTime() {
    return entryTime;
  }


  public void setEntryTime(OffsetDateTime entryTime) {
    this.entryTime = entryTime;
  }


  public FactoryV3DTO recvTime(OffsetDateTime recvTime) {
    
    this.recvTime = recvTime;
    return this;
  }

   /**
   * Get recvTime
   * @return recvTime
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public OffsetDateTime getRecvTime() {
    return recvTime;
  }


  public void setRecvTime(OffsetDateTime recvTime) {
    this.recvTime = recvTime;
  }


  public FactoryV3DTO blockNumber(Long blockNumber) {
    
    this.blockNumber = blockNumber;
    return this;
  }

   /**
   * Get blockNumber
   * @return blockNumber
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Long getBlockNumber() {
    return blockNumber;
  }


  public void setBlockNumber(Long blockNumber) {
    this.blockNumber = blockNumber;
  }


  public FactoryV3DTO id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public FactoryV3DTO poolCount(String poolCount) {
    
    this.poolCount = poolCount;
    return this;
  }

   /**
   * Get poolCount
   * @return poolCount
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getPoolCount() {
    return poolCount;
  }


  public void setPoolCount(String poolCount) {
    this.poolCount = poolCount;
  }


  public FactoryV3DTO txCount(String txCount) {
    
    this.txCount = txCount;
    return this;
  }

   /**
   * Get txCount
   * @return txCount
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getTxCount() {
    return txCount;
  }


  public void setTxCount(String txCount) {
    this.txCount = txCount;
  }


  public FactoryV3DTO totalVolumeUsd(String totalVolumeUsd) {
    
    this.totalVolumeUsd = totalVolumeUsd;
    return this;
  }

   /**
   * Get totalVolumeUsd
   * @return totalVolumeUsd
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getTotalVolumeUsd() {
    return totalVolumeUsd;
  }


  public void setTotalVolumeUsd(String totalVolumeUsd) {
    this.totalVolumeUsd = totalVolumeUsd;
  }


  public FactoryV3DTO totalVolumeEth(String totalVolumeEth) {
    
    this.totalVolumeEth = totalVolumeEth;
    return this;
  }

   /**
   * Get totalVolumeEth
   * @return totalVolumeEth
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getTotalVolumeEth() {
    return totalVolumeEth;
  }


  public void setTotalVolumeEth(String totalVolumeEth) {
    this.totalVolumeEth = totalVolumeEth;
  }


  public FactoryV3DTO totalFeesUsd(String totalFeesUsd) {
    
    this.totalFeesUsd = totalFeesUsd;
    return this;
  }

   /**
   * Get totalFeesUsd
   * @return totalFeesUsd
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getTotalFeesUsd() {
    return totalFeesUsd;
  }


  public void setTotalFeesUsd(String totalFeesUsd) {
    this.totalFeesUsd = totalFeesUsd;
  }


  public FactoryV3DTO totalFeesEth(String totalFeesEth) {
    
    this.totalFeesEth = totalFeesEth;
    return this;
  }

   /**
   * Get totalFeesEth
   * @return totalFeesEth
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getTotalFeesEth() {
    return totalFeesEth;
  }


  public void setTotalFeesEth(String totalFeesEth) {
    this.totalFeesEth = totalFeesEth;
  }


  public FactoryV3DTO untrackedVolumeUsd(String untrackedVolumeUsd) {
    
    this.untrackedVolumeUsd = untrackedVolumeUsd;
    return this;
  }

   /**
   * Get untrackedVolumeUsd
   * @return untrackedVolumeUsd
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getUntrackedVolumeUsd() {
    return untrackedVolumeUsd;
  }


  public void setUntrackedVolumeUsd(String untrackedVolumeUsd) {
    this.untrackedVolumeUsd = untrackedVolumeUsd;
  }


  public FactoryV3DTO totalValueLockedUsd(String totalValueLockedUsd) {
    
    this.totalValueLockedUsd = totalValueLockedUsd;
    return this;
  }

   /**
   * Get totalValueLockedUsd
   * @return totalValueLockedUsd
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getTotalValueLockedUsd() {
    return totalValueLockedUsd;
  }


  public void setTotalValueLockedUsd(String totalValueLockedUsd) {
    this.totalValueLockedUsd = totalValueLockedUsd;
  }


  public FactoryV3DTO totalValueLockedEth(String totalValueLockedEth) {
    
    this.totalValueLockedEth = totalValueLockedEth;
    return this;
  }

   /**
   * Get totalValueLockedEth
   * @return totalValueLockedEth
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getTotalValueLockedEth() {
    return totalValueLockedEth;
  }


  public void setTotalValueLockedEth(String totalValueLockedEth) {
    this.totalValueLockedEth = totalValueLockedEth;
  }


  public FactoryV3DTO totalValueLockedUsdUntracked(String totalValueLockedUsdUntracked) {
    
    this.totalValueLockedUsdUntracked = totalValueLockedUsdUntracked;
    return this;
  }

   /**
   * Get totalValueLockedUsdUntracked
   * @return totalValueLockedUsdUntracked
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getTotalValueLockedUsdUntracked() {
    return totalValueLockedUsdUntracked;
  }


  public void setTotalValueLockedUsdUntracked(String totalValueLockedUsdUntracked) {
    this.totalValueLockedUsdUntracked = totalValueLockedUsdUntracked;
  }


  public FactoryV3DTO totalValueLockedEthUntracked(String totalValueLockedEthUntracked) {
    
    this.totalValueLockedEthUntracked = totalValueLockedEthUntracked;
    return this;
  }

   /**
   * Get totalValueLockedEthUntracked
   * @return totalValueLockedEthUntracked
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getTotalValueLockedEthUntracked() {
    return totalValueLockedEthUntracked;
  }


  public void setTotalValueLockedEthUntracked(String totalValueLockedEthUntracked) {
    this.totalValueLockedEthUntracked = totalValueLockedEthUntracked;
  }


  public FactoryV3DTO owner(String owner) {
    
    this.owner = owner;
    return this;
  }

   /**
   * Get owner
   * @return owner
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getOwner() {
    return owner;
  }


  public void setOwner(String owner) {
    this.owner = owner;
  }


  public FactoryV3DTO vid(Long vid) {
    
    this.vid = vid;
    return this;
  }

   /**
   * Get vid
   * @return vid
  **/
  @javax.annotation.Nullable
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
    return Objects.equals(this.entryTime, factoryV3DTO.entryTime) &&
        Objects.equals(this.recvTime, factoryV3DTO.recvTime) &&
        Objects.equals(this.blockNumber, factoryV3DTO.blockNumber) &&
        Objects.equals(this.id, factoryV3DTO.id) &&
        Objects.equals(this.poolCount, factoryV3DTO.poolCount) &&
        Objects.equals(this.txCount, factoryV3DTO.txCount) &&
        Objects.equals(this.totalVolumeUsd, factoryV3DTO.totalVolumeUsd) &&
        Objects.equals(this.totalVolumeEth, factoryV3DTO.totalVolumeEth) &&
        Objects.equals(this.totalFeesUsd, factoryV3DTO.totalFeesUsd) &&
        Objects.equals(this.totalFeesEth, factoryV3DTO.totalFeesEth) &&
        Objects.equals(this.untrackedVolumeUsd, factoryV3DTO.untrackedVolumeUsd) &&
        Objects.equals(this.totalValueLockedUsd, factoryV3DTO.totalValueLockedUsd) &&
        Objects.equals(this.totalValueLockedEth, factoryV3DTO.totalValueLockedEth) &&
        Objects.equals(this.totalValueLockedUsdUntracked, factoryV3DTO.totalValueLockedUsdUntracked) &&
        Objects.equals(this.totalValueLockedEthUntracked, factoryV3DTO.totalValueLockedEthUntracked) &&
        Objects.equals(this.owner, factoryV3DTO.owner) &&
        Objects.equals(this.vid, factoryV3DTO.vid);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, id, poolCount, txCount, totalVolumeUsd, totalVolumeEth, totalFeesUsd, totalFeesEth, untrackedVolumeUsd, totalValueLockedUsd, totalValueLockedEth, totalValueLockedUsdUntracked, totalValueLockedEthUntracked, owner, vid);
  }

  private static <T> int hashCodeNullable(JsonNullable<T> a) {
    if (a == null) {
      return 1;
    }
    return a.isPresent() ? Arrays.deepHashCode(new Object[]{a.get()}) : 31;
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FactoryV3DTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    poolCount: ").append(toIndentedString(poolCount)).append("\n");
    sb.append("    txCount: ").append(toIndentedString(txCount)).append("\n");
    sb.append("    totalVolumeUsd: ").append(toIndentedString(totalVolumeUsd)).append("\n");
    sb.append("    totalVolumeEth: ").append(toIndentedString(totalVolumeEth)).append("\n");
    sb.append("    totalFeesUsd: ").append(toIndentedString(totalFeesUsd)).append("\n");
    sb.append("    totalFeesEth: ").append(toIndentedString(totalFeesEth)).append("\n");
    sb.append("    untrackedVolumeUsd: ").append(toIndentedString(untrackedVolumeUsd)).append("\n");
    sb.append("    totalValueLockedUsd: ").append(toIndentedString(totalValueLockedUsd)).append("\n");
    sb.append("    totalValueLockedEth: ").append(toIndentedString(totalValueLockedEth)).append("\n");
    sb.append("    totalValueLockedUsdUntracked: ").append(toIndentedString(totalValueLockedUsdUntracked)).append("\n");
    sb.append("    totalValueLockedEthUntracked: ").append(toIndentedString(totalValueLockedEthUntracked)).append("\n");
    sb.append("    owner: ").append(toIndentedString(owner)).append("\n");
    sb.append("    vid: ").append(toIndentedString(vid)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


  public static HashSet<String> openapiFields;
  public static HashSet<String> openapiRequiredFields;

  static {
    // a set of all properties/fields (JSON key names)
    openapiFields = new HashSet<String>();
    openapiFields.add("entry_time");
    openapiFields.add("recv_time");
    openapiFields.add("block_number");
    openapiFields.add("id");
    openapiFields.add("pool_count");
    openapiFields.add("tx_count");
    openapiFields.add("total_volume_usd");
    openapiFields.add("total_volume_eth");
    openapiFields.add("total_fees_usd");
    openapiFields.add("total_fees_eth");
    openapiFields.add("untracked_volume_usd");
    openapiFields.add("total_value_locked_usd");
    openapiFields.add("total_value_locked_eth");
    openapiFields.add("total_value_locked_usd_untracked");
    openapiFields.add("total_value_locked_eth_untracked");
    openapiFields.add("owner");
    openapiFields.add("vid");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to FactoryV3DTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (FactoryV3DTO.openapiRequiredFields.isEmpty()) {
          return;
        } else { // has required fields
          throw new IllegalArgumentException(String.format("The required field(s) %s in FactoryV3DTO is not found in the empty JSON string", FactoryV3DTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!FactoryV3DTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `FactoryV3DTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("pool_count") != null && !jsonObj.get("pool_count").isJsonNull()) && !jsonObj.get("pool_count").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `pool_count` to be a primitive type in the JSON string but got `%s`", jsonObj.get("pool_count").toString()));
      }
      if ((jsonObj.get("tx_count") != null && !jsonObj.get("tx_count").isJsonNull()) && !jsonObj.get("tx_count").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `tx_count` to be a primitive type in the JSON string but got `%s`", jsonObj.get("tx_count").toString()));
      }
      if ((jsonObj.get("total_volume_usd") != null && !jsonObj.get("total_volume_usd").isJsonNull()) && !jsonObj.get("total_volume_usd").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `total_volume_usd` to be a primitive type in the JSON string but got `%s`", jsonObj.get("total_volume_usd").toString()));
      }
      if ((jsonObj.get("total_volume_eth") != null && !jsonObj.get("total_volume_eth").isJsonNull()) && !jsonObj.get("total_volume_eth").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `total_volume_eth` to be a primitive type in the JSON string but got `%s`", jsonObj.get("total_volume_eth").toString()));
      }
      if ((jsonObj.get("total_fees_usd") != null && !jsonObj.get("total_fees_usd").isJsonNull()) && !jsonObj.get("total_fees_usd").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `total_fees_usd` to be a primitive type in the JSON string but got `%s`", jsonObj.get("total_fees_usd").toString()));
      }
      if ((jsonObj.get("total_fees_eth") != null && !jsonObj.get("total_fees_eth").isJsonNull()) && !jsonObj.get("total_fees_eth").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `total_fees_eth` to be a primitive type in the JSON string but got `%s`", jsonObj.get("total_fees_eth").toString()));
      }
      if ((jsonObj.get("untracked_volume_usd") != null && !jsonObj.get("untracked_volume_usd").isJsonNull()) && !jsonObj.get("untracked_volume_usd").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `untracked_volume_usd` to be a primitive type in the JSON string but got `%s`", jsonObj.get("untracked_volume_usd").toString()));
      }
      if ((jsonObj.get("total_value_locked_usd") != null && !jsonObj.get("total_value_locked_usd").isJsonNull()) && !jsonObj.get("total_value_locked_usd").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `total_value_locked_usd` to be a primitive type in the JSON string but got `%s`", jsonObj.get("total_value_locked_usd").toString()));
      }
      if ((jsonObj.get("total_value_locked_eth") != null && !jsonObj.get("total_value_locked_eth").isJsonNull()) && !jsonObj.get("total_value_locked_eth").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `total_value_locked_eth` to be a primitive type in the JSON string but got `%s`", jsonObj.get("total_value_locked_eth").toString()));
      }
      if ((jsonObj.get("total_value_locked_usd_untracked") != null && !jsonObj.get("total_value_locked_usd_untracked").isJsonNull()) && !jsonObj.get("total_value_locked_usd_untracked").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `total_value_locked_usd_untracked` to be a primitive type in the JSON string but got `%s`", jsonObj.get("total_value_locked_usd_untracked").toString()));
      }
      if ((jsonObj.get("total_value_locked_eth_untracked") != null && !jsonObj.get("total_value_locked_eth_untracked").isJsonNull()) && !jsonObj.get("total_value_locked_eth_untracked").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `total_value_locked_eth_untracked` to be a primitive type in the JSON string but got `%s`", jsonObj.get("total_value_locked_eth_untracked").toString()));
      }
      if ((jsonObj.get("owner") != null && !jsonObj.get("owner").isJsonNull()) && !jsonObj.get("owner").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `owner` to be a primitive type in the JSON string but got `%s`", jsonObj.get("owner").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!FactoryV3DTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'FactoryV3DTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<FactoryV3DTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(FactoryV3DTO.class));

       return (TypeAdapter<T>) new TypeAdapter<FactoryV3DTO>() {
           @Override
           public void write(JsonWriter out, FactoryV3DTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public FactoryV3DTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of FactoryV3DTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of FactoryV3DTO
  * @throws IOException if the JSON string is invalid with respect to FactoryV3DTO
  */
  public static FactoryV3DTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, FactoryV3DTO.class);
  }

 /**
  * Convert an instance of FactoryV3DTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

