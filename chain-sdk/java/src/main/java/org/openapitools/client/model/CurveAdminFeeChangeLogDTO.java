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
 * CurveAdminFeeChangeLogDTO
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-11-15T11:41:42.035975Z[Etc/UTC]")
public class CurveAdminFeeChangeLogDTO {
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

  public static final String SERIALIZED_NAME_POOL = "pool";
  @SerializedName(SERIALIZED_NAME_POOL)
  private String pool;

  public static final String SERIALIZED_NAME_VALUE = "value";
  @SerializedName(SERIALIZED_NAME_VALUE)
  private String value;

  public static final String SERIALIZED_NAME_BLOCK = "block";
  @SerializedName(SERIALIZED_NAME_BLOCK)
  private String block;

  public static final String SERIALIZED_NAME_TIMESTAMP = "timestamp";
  @SerializedName(SERIALIZED_NAME_TIMESTAMP)
  private String timestamp;

  public static final String SERIALIZED_NAME_TRANSACTION = "transaction";
  @SerializedName(SERIALIZED_NAME_TRANSACTION)
  private String transaction;

  public static final String SERIALIZED_NAME_VID = "vid";
  @SerializedName(SERIALIZED_NAME_VID)
  private Long vid;

  public CurveAdminFeeChangeLogDTO() {
  }

  public CurveAdminFeeChangeLogDTO entryTime(OffsetDateTime entryTime) {
    
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


  public CurveAdminFeeChangeLogDTO recvTime(OffsetDateTime recvTime) {
    
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


  public CurveAdminFeeChangeLogDTO blockNumber(Long blockNumber) {
    
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


  public CurveAdminFeeChangeLogDTO id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * 
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


  public CurveAdminFeeChangeLogDTO pool(String pool) {
    
    this.pool = pool;
    return this;
  }

   /**
   * 
   * @return pool
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getPool() {
    return pool;
  }


  public void setPool(String pool) {
    this.pool = pool;
  }


  public CurveAdminFeeChangeLogDTO value(String value) {
    
    this.value = value;
    return this;
  }

   /**
   * 
   * @return value
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getValue() {
    return value;
  }


  public void setValue(String value) {
    this.value = value;
  }


  public CurveAdminFeeChangeLogDTO block(String block) {
    
    this.block = block;
    return this;
  }

   /**
   * 
   * @return block
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getBlock() {
    return block;
  }


  public void setBlock(String block) {
    this.block = block;
  }


  public CurveAdminFeeChangeLogDTO timestamp(String timestamp) {
    
    this.timestamp = timestamp;
    return this;
  }

   /**
   * 
   * @return timestamp
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getTimestamp() {
    return timestamp;
  }


  public void setTimestamp(String timestamp) {
    this.timestamp = timestamp;
  }


  public CurveAdminFeeChangeLogDTO transaction(String transaction) {
    
    this.transaction = transaction;
    return this;
  }

   /**
   * 
   * @return transaction
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getTransaction() {
    return transaction;
  }


  public void setTransaction(String transaction) {
    this.transaction = transaction;
  }


  public CurveAdminFeeChangeLogDTO vid(Long vid) {
    
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
    CurveAdminFeeChangeLogDTO curveAdminFeeChangeLogDTO = (CurveAdminFeeChangeLogDTO) o;
    return Objects.equals(this.entryTime, curveAdminFeeChangeLogDTO.entryTime) &&
        Objects.equals(this.recvTime, curveAdminFeeChangeLogDTO.recvTime) &&
        Objects.equals(this.blockNumber, curveAdminFeeChangeLogDTO.blockNumber) &&
        Objects.equals(this.id, curveAdminFeeChangeLogDTO.id) &&
        Objects.equals(this.pool, curveAdminFeeChangeLogDTO.pool) &&
        Objects.equals(this.value, curveAdminFeeChangeLogDTO.value) &&
        Objects.equals(this.block, curveAdminFeeChangeLogDTO.block) &&
        Objects.equals(this.timestamp, curveAdminFeeChangeLogDTO.timestamp) &&
        Objects.equals(this.transaction, curveAdminFeeChangeLogDTO.transaction) &&
        Objects.equals(this.vid, curveAdminFeeChangeLogDTO.vid);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, id, pool, value, block, timestamp, transaction, vid);
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
    sb.append("class CurveAdminFeeChangeLogDTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    pool: ").append(toIndentedString(pool)).append("\n");
    sb.append("    value: ").append(toIndentedString(value)).append("\n");
    sb.append("    block: ").append(toIndentedString(block)).append("\n");
    sb.append("    timestamp: ").append(toIndentedString(timestamp)).append("\n");
    sb.append("    transaction: ").append(toIndentedString(transaction)).append("\n");
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
    openapiFields.add("pool");
    openapiFields.add("value");
    openapiFields.add("block");
    openapiFields.add("timestamp");
    openapiFields.add("transaction");
    openapiFields.add("vid");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to CurveAdminFeeChangeLogDTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!CurveAdminFeeChangeLogDTO.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in CurveAdminFeeChangeLogDTO is not found in the empty JSON string", CurveAdminFeeChangeLogDTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!CurveAdminFeeChangeLogDTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `CurveAdminFeeChangeLogDTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("pool") != null && !jsonObj.get("pool").isJsonNull()) && !jsonObj.get("pool").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `pool` to be a primitive type in the JSON string but got `%s`", jsonObj.get("pool").toString()));
      }
      if ((jsonObj.get("value") != null && !jsonObj.get("value").isJsonNull()) && !jsonObj.get("value").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `value` to be a primitive type in the JSON string but got `%s`", jsonObj.get("value").toString()));
      }
      if ((jsonObj.get("block") != null && !jsonObj.get("block").isJsonNull()) && !jsonObj.get("block").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `block` to be a primitive type in the JSON string but got `%s`", jsonObj.get("block").toString()));
      }
      if ((jsonObj.get("timestamp") != null && !jsonObj.get("timestamp").isJsonNull()) && !jsonObj.get("timestamp").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `timestamp` to be a primitive type in the JSON string but got `%s`", jsonObj.get("timestamp").toString()));
      }
      if ((jsonObj.get("transaction") != null && !jsonObj.get("transaction").isJsonNull()) && !jsonObj.get("transaction").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `transaction` to be a primitive type in the JSON string but got `%s`", jsonObj.get("transaction").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!CurveAdminFeeChangeLogDTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'CurveAdminFeeChangeLogDTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<CurveAdminFeeChangeLogDTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(CurveAdminFeeChangeLogDTO.class));

       return (TypeAdapter<T>) new TypeAdapter<CurveAdminFeeChangeLogDTO>() {
           @Override
           public void write(JsonWriter out, CurveAdminFeeChangeLogDTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public CurveAdminFeeChangeLogDTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of CurveAdminFeeChangeLogDTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of CurveAdminFeeChangeLogDTO
  * @throws IOException if the JSON string is invalid with respect to CurveAdminFeeChangeLogDTO
  */
  public static CurveAdminFeeChangeLogDTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, CurveAdminFeeChangeLogDTO.class);
  }

 /**
  * Convert an instance of CurveAdminFeeChangeLogDTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

