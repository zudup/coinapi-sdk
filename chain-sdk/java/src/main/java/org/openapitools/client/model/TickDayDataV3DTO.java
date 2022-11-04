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
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.openapitools.client.JSON;

/**
 * Data accumulated and condensed into day stats for each exchange. Entity gets saved only if there is a change during the day
 */
@ApiModel(description = "Data accumulated and condensed into day stats for each exchange. Entity gets saved only if there is a change during the day")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-11-04T09:24:18.629114Z[Etc/UTC]")
public class TickDayDataV3DTO {
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

  public static final String SERIALIZED_NAME_DATE = "date";
  @SerializedName(SERIALIZED_NAME_DATE)
  private Integer date;

  public static final String SERIALIZED_NAME_POOL = "pool";
  @SerializedName(SERIALIZED_NAME_POOL)
  private String pool;

  public static final String SERIALIZED_NAME_TICK = "tick";
  @SerializedName(SERIALIZED_NAME_TICK)
  private String tick;

  public static final String SERIALIZED_NAME_LIQUIDITY_GROSS = "liquidity_gross";
  @SerializedName(SERIALIZED_NAME_LIQUIDITY_GROSS)
  private String liquidityGross;

  public static final String SERIALIZED_NAME_LIQUIDITY_NET = "liquidity_net";
  @SerializedName(SERIALIZED_NAME_LIQUIDITY_NET)
  private String liquidityNet;

  public static final String SERIALIZED_NAME_VOLUME_TOKEN0 = "volume_token_0";
  @SerializedName(SERIALIZED_NAME_VOLUME_TOKEN0)
  private String volumeToken0;

  public static final String SERIALIZED_NAME_VOLUME_TOKEN1 = "volume_token_1";
  @SerializedName(SERIALIZED_NAME_VOLUME_TOKEN1)
  private String volumeToken1;

  public static final String SERIALIZED_NAME_VOLUME_USD = "volume_usd";
  @SerializedName(SERIALIZED_NAME_VOLUME_USD)
  private String volumeUsd;

  public static final String SERIALIZED_NAME_FEES_USD = "fees_usd";
  @SerializedName(SERIALIZED_NAME_FEES_USD)
  private String feesUsd;

  public static final String SERIALIZED_NAME_FEE_GROWTH_OUTSIDE0X128 = "fee_growth_outside_0x128";
  @SerializedName(SERIALIZED_NAME_FEE_GROWTH_OUTSIDE0X128)
  private String feeGrowthOutside0x128;

  public static final String SERIALIZED_NAME_FEE_GROWTH_OUTSIDE1X128 = "fee_growth_outside_1x128";
  @SerializedName(SERIALIZED_NAME_FEE_GROWTH_OUTSIDE1X128)
  private String feeGrowthOutside1x128;

  public static final String SERIALIZED_NAME_VID = "vid";
  @SerializedName(SERIALIZED_NAME_VID)
  private Long vid;

  public TickDayDataV3DTO() {
  }

  public TickDayDataV3DTO entryTime(OffsetDateTime entryTime) {
    
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


  public TickDayDataV3DTO recvTime(OffsetDateTime recvTime) {
    
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


  public TickDayDataV3DTO blockNumber(Long blockNumber) {
    
    this.blockNumber = blockNumber;
    return this;
  }

   /**
   * Number of block in which entity was recorded.
   * @return blockNumber
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Number of block in which entity was recorded.")

  public Long getBlockNumber() {
    return blockNumber;
  }


  public void setBlockNumber(Long blockNumber) {
    this.blockNumber = blockNumber;
  }


  public TickDayDataV3DTO id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * Identifier, format: &lt;pool address&gt;-&lt;tick index&gt;-&lt;timestamp&gt;.
   * @return id
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Identifier, format: <pool address>-<tick index>-<timestamp>.")

  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public TickDayDataV3DTO date(Integer date) {
    
    this.date = date;
    return this;
  }

   /**
   * Timestamp rounded to current day by dividing by 86400.
   * @return date
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Timestamp rounded to current day by dividing by 86400.")

  public Integer getDate() {
    return date;
  }


  public void setDate(Integer date) {
    this.date = date;
  }


  public TickDayDataV3DTO pool(String pool) {
    
    this.pool = pool;
    return this;
  }

   /**
   * Pointer to pool.
   * @return pool
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Pointer to pool.")

  public String getPool() {
    return pool;
  }


  public void setPool(String pool) {
    this.pool = pool;
  }


  public TickDayDataV3DTO tick(String tick) {
    
    this.tick = tick;
    return this;
  }

   /**
   * Pointer to tick.
   * @return tick
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Pointer to tick.")

  public String getTick() {
    return tick;
  }


  public void setTick(String tick) {
    this.tick = tick;
  }


  public TickDayDataV3DTO liquidityGross(String liquidityGross) {
    
    this.liquidityGross = liquidityGross;
    return this;
  }

   /**
   * Total liquidity pool has as tick lower or upper at end of period.
   * @return liquidityGross
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Total liquidity pool has as tick lower or upper at end of period.")

  public String getLiquidityGross() {
    return liquidityGross;
  }


  public void setLiquidityGross(String liquidityGross) {
    this.liquidityGross = liquidityGross;
  }


  public TickDayDataV3DTO liquidityNet(String liquidityNet) {
    
    this.liquidityNet = liquidityNet;
    return this;
  }

   /**
   * How much liquidity changes when tick crossed at end of period.
   * @return liquidityNet
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "How much liquidity changes when tick crossed at end of period.")

  public String getLiquidityNet() {
    return liquidityNet;
  }


  public void setLiquidityNet(String liquidityNet) {
    this.liquidityNet = liquidityNet;
  }


  public TickDayDataV3DTO volumeToken0(String volumeToken0) {
    
    this.volumeToken0 = volumeToken0;
    return this;
  }

   /**
   * Hourly volume of token0 with this tick in range.
   * @return volumeToken0
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Hourly volume of token0 with this tick in range.")

  public String getVolumeToken0() {
    return volumeToken0;
  }


  public void setVolumeToken0(String volumeToken0) {
    this.volumeToken0 = volumeToken0;
  }


  public TickDayDataV3DTO volumeToken1(String volumeToken1) {
    
    this.volumeToken1 = volumeToken1;
    return this;
  }

   /**
   * Hourly volume of token1 with this tick in range.
   * @return volumeToken1
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Hourly volume of token1 with this tick in range.")

  public String getVolumeToken1() {
    return volumeToken1;
  }


  public void setVolumeToken1(String volumeToken1) {
    this.volumeToken1 = volumeToken1;
  }


  public TickDayDataV3DTO volumeUsd(String volumeUsd) {
    
    this.volumeUsd = volumeUsd;
    return this;
  }

   /**
   * Hourly volume in derived USD with this tick in range.
   * @return volumeUsd
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Hourly volume in derived USD with this tick in range.")

  public String getVolumeUsd() {
    return volumeUsd;
  }


  public void setVolumeUsd(String volumeUsd) {
    this.volumeUsd = volumeUsd;
  }


  public TickDayDataV3DTO feesUsd(String feesUsd) {
    
    this.feesUsd = feesUsd;
    return this;
  }

   /**
   * Fees in USD.
   * @return feesUsd
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Fees in USD.")

  public String getFeesUsd() {
    return feesUsd;
  }


  public void setFeesUsd(String feesUsd) {
    this.feesUsd = feesUsd;
  }


  public TickDayDataV3DTO feeGrowthOutside0x128(String feeGrowthOutside0x128) {
    
    this.feeGrowthOutside0x128 = feeGrowthOutside0x128;
    return this;
  }

   /**
   * Variable needed for fee computation.
   * @return feeGrowthOutside0x128
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Variable needed for fee computation.")

  public String getFeeGrowthOutside0x128() {
    return feeGrowthOutside0x128;
  }


  public void setFeeGrowthOutside0x128(String feeGrowthOutside0x128) {
    this.feeGrowthOutside0x128 = feeGrowthOutside0x128;
  }


  public TickDayDataV3DTO feeGrowthOutside1x128(String feeGrowthOutside1x128) {
    
    this.feeGrowthOutside1x128 = feeGrowthOutside1x128;
    return this;
  }

   /**
   * Variable needed for fee computation.
   * @return feeGrowthOutside1x128
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Variable needed for fee computation.")

  public String getFeeGrowthOutside1x128() {
    return feeGrowthOutside1x128;
  }


  public void setFeeGrowthOutside1x128(String feeGrowthOutside1x128) {
    this.feeGrowthOutside1x128 = feeGrowthOutside1x128;
  }


  public TickDayDataV3DTO vid(Long vid) {
    
    this.vid = vid;
    return this;
  }

   /**
   * 
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
    TickDayDataV3DTO tickDayDataV3DTO = (TickDayDataV3DTO) o;
    return Objects.equals(this.entryTime, tickDayDataV3DTO.entryTime) &&
        Objects.equals(this.recvTime, tickDayDataV3DTO.recvTime) &&
        Objects.equals(this.blockNumber, tickDayDataV3DTO.blockNumber) &&
        Objects.equals(this.id, tickDayDataV3DTO.id) &&
        Objects.equals(this.date, tickDayDataV3DTO.date) &&
        Objects.equals(this.pool, tickDayDataV3DTO.pool) &&
        Objects.equals(this.tick, tickDayDataV3DTO.tick) &&
        Objects.equals(this.liquidityGross, tickDayDataV3DTO.liquidityGross) &&
        Objects.equals(this.liquidityNet, tickDayDataV3DTO.liquidityNet) &&
        Objects.equals(this.volumeToken0, tickDayDataV3DTO.volumeToken0) &&
        Objects.equals(this.volumeToken1, tickDayDataV3DTO.volumeToken1) &&
        Objects.equals(this.volumeUsd, tickDayDataV3DTO.volumeUsd) &&
        Objects.equals(this.feesUsd, tickDayDataV3DTO.feesUsd) &&
        Objects.equals(this.feeGrowthOutside0x128, tickDayDataV3DTO.feeGrowthOutside0x128) &&
        Objects.equals(this.feeGrowthOutside1x128, tickDayDataV3DTO.feeGrowthOutside1x128) &&
        Objects.equals(this.vid, tickDayDataV3DTO.vid);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, id, date, pool, tick, liquidityGross, liquidityNet, volumeToken0, volumeToken1, volumeUsd, feesUsd, feeGrowthOutside0x128, feeGrowthOutside1x128, vid);
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
    sb.append("class TickDayDataV3DTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    date: ").append(toIndentedString(date)).append("\n");
    sb.append("    pool: ").append(toIndentedString(pool)).append("\n");
    sb.append("    tick: ").append(toIndentedString(tick)).append("\n");
    sb.append("    liquidityGross: ").append(toIndentedString(liquidityGross)).append("\n");
    sb.append("    liquidityNet: ").append(toIndentedString(liquidityNet)).append("\n");
    sb.append("    volumeToken0: ").append(toIndentedString(volumeToken0)).append("\n");
    sb.append("    volumeToken1: ").append(toIndentedString(volumeToken1)).append("\n");
    sb.append("    volumeUsd: ").append(toIndentedString(volumeUsd)).append("\n");
    sb.append("    feesUsd: ").append(toIndentedString(feesUsd)).append("\n");
    sb.append("    feeGrowthOutside0x128: ").append(toIndentedString(feeGrowthOutside0x128)).append("\n");
    sb.append("    feeGrowthOutside1x128: ").append(toIndentedString(feeGrowthOutside1x128)).append("\n");
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
    openapiFields.add("date");
    openapiFields.add("pool");
    openapiFields.add("tick");
    openapiFields.add("liquidity_gross");
    openapiFields.add("liquidity_net");
    openapiFields.add("volume_token_0");
    openapiFields.add("volume_token_1");
    openapiFields.add("volume_usd");
    openapiFields.add("fees_usd");
    openapiFields.add("fee_growth_outside_0x128");
    openapiFields.add("fee_growth_outside_1x128");
    openapiFields.add("vid");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to TickDayDataV3DTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!TickDayDataV3DTO.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in TickDayDataV3DTO is not found in the empty JSON string", TickDayDataV3DTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!TickDayDataV3DTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `TickDayDataV3DTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("pool") != null && !jsonObj.get("pool").isJsonNull()) && !jsonObj.get("pool").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `pool` to be a primitive type in the JSON string but got `%s`", jsonObj.get("pool").toString()));
      }
      if ((jsonObj.get("tick") != null && !jsonObj.get("tick").isJsonNull()) && !jsonObj.get("tick").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `tick` to be a primitive type in the JSON string but got `%s`", jsonObj.get("tick").toString()));
      }
      if ((jsonObj.get("liquidity_gross") != null && !jsonObj.get("liquidity_gross").isJsonNull()) && !jsonObj.get("liquidity_gross").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `liquidity_gross` to be a primitive type in the JSON string but got `%s`", jsonObj.get("liquidity_gross").toString()));
      }
      if ((jsonObj.get("liquidity_net") != null && !jsonObj.get("liquidity_net").isJsonNull()) && !jsonObj.get("liquidity_net").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `liquidity_net` to be a primitive type in the JSON string but got `%s`", jsonObj.get("liquidity_net").toString()));
      }
      if ((jsonObj.get("volume_token_0") != null && !jsonObj.get("volume_token_0").isJsonNull()) && !jsonObj.get("volume_token_0").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `volume_token_0` to be a primitive type in the JSON string but got `%s`", jsonObj.get("volume_token_0").toString()));
      }
      if ((jsonObj.get("volume_token_1") != null && !jsonObj.get("volume_token_1").isJsonNull()) && !jsonObj.get("volume_token_1").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `volume_token_1` to be a primitive type in the JSON string but got `%s`", jsonObj.get("volume_token_1").toString()));
      }
      if ((jsonObj.get("volume_usd") != null && !jsonObj.get("volume_usd").isJsonNull()) && !jsonObj.get("volume_usd").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `volume_usd` to be a primitive type in the JSON string but got `%s`", jsonObj.get("volume_usd").toString()));
      }
      if ((jsonObj.get("fees_usd") != null && !jsonObj.get("fees_usd").isJsonNull()) && !jsonObj.get("fees_usd").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `fees_usd` to be a primitive type in the JSON string but got `%s`", jsonObj.get("fees_usd").toString()));
      }
      if ((jsonObj.get("fee_growth_outside_0x128") != null && !jsonObj.get("fee_growth_outside_0x128").isJsonNull()) && !jsonObj.get("fee_growth_outside_0x128").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `fee_growth_outside_0x128` to be a primitive type in the JSON string but got `%s`", jsonObj.get("fee_growth_outside_0x128").toString()));
      }
      if ((jsonObj.get("fee_growth_outside_1x128") != null && !jsonObj.get("fee_growth_outside_1x128").isJsonNull()) && !jsonObj.get("fee_growth_outside_1x128").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `fee_growth_outside_1x128` to be a primitive type in the JSON string but got `%s`", jsonObj.get("fee_growth_outside_1x128").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!TickDayDataV3DTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'TickDayDataV3DTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<TickDayDataV3DTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(TickDayDataV3DTO.class));

       return (TypeAdapter<T>) new TypeAdapter<TickDayDataV3DTO>() {
           @Override
           public void write(JsonWriter out, TickDayDataV3DTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public TickDayDataV3DTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of TickDayDataV3DTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of TickDayDataV3DTO
  * @throws IOException if the JSON string is invalid with respect to TickDayDataV3DTO
  */
  public static TickDayDataV3DTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, TickDayDataV3DTO.class);
  }

 /**
  * Convert an instance of TickDayDataV3DTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

