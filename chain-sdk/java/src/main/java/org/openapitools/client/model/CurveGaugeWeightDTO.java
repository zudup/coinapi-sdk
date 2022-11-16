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
 * CurveGaugeWeightDTO
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-11-16T12:46:06.464035Z[Etc/UTC]")
public class CurveGaugeWeightDTO {
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

  public static final String SERIALIZED_NAME_GAUGE = "gauge";
  @SerializedName(SERIALIZED_NAME_GAUGE)
  private String gauge;

  public static final String SERIALIZED_NAME_TIME = "time";
  @SerializedName(SERIALIZED_NAME_TIME)
  private String time;

  public static final String SERIALIZED_NAME_WEIGHT = "weight";
  @SerializedName(SERIALIZED_NAME_WEIGHT)
  private String weight;

  public static final String SERIALIZED_NAME_VID = "vid";
  @SerializedName(SERIALIZED_NAME_VID)
  private Long vid;

  public CurveGaugeWeightDTO() {
  }

  public CurveGaugeWeightDTO entryTime(OffsetDateTime entryTime) {
    
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


  public CurveGaugeWeightDTO recvTime(OffsetDateTime recvTime) {
    
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


  public CurveGaugeWeightDTO blockNumber(Long blockNumber) {
    
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


  public CurveGaugeWeightDTO id(String id) {
    
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


  public CurveGaugeWeightDTO gauge(String gauge) {
    
    this.gauge = gauge;
    return this;
  }

   /**
   * 
   * @return gauge
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getGauge() {
    return gauge;
  }


  public void setGauge(String gauge) {
    this.gauge = gauge;
  }


  public CurveGaugeWeightDTO time(String time) {
    
    this.time = time;
    return this;
  }

   /**
   * 
   * @return time
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getTime() {
    return time;
  }


  public void setTime(String time) {
    this.time = time;
  }


  public CurveGaugeWeightDTO weight(String weight) {
    
    this.weight = weight;
    return this;
  }

   /**
   * 
   * @return weight
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getWeight() {
    return weight;
  }


  public void setWeight(String weight) {
    this.weight = weight;
  }


  public CurveGaugeWeightDTO vid(Long vid) {
    
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
    CurveGaugeWeightDTO curveGaugeWeightDTO = (CurveGaugeWeightDTO) o;
    return Objects.equals(this.entryTime, curveGaugeWeightDTO.entryTime) &&
        Objects.equals(this.recvTime, curveGaugeWeightDTO.recvTime) &&
        Objects.equals(this.blockNumber, curveGaugeWeightDTO.blockNumber) &&
        Objects.equals(this.id, curveGaugeWeightDTO.id) &&
        Objects.equals(this.gauge, curveGaugeWeightDTO.gauge) &&
        Objects.equals(this.time, curveGaugeWeightDTO.time) &&
        Objects.equals(this.weight, curveGaugeWeightDTO.weight) &&
        Objects.equals(this.vid, curveGaugeWeightDTO.vid);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, id, gauge, time, weight, vid);
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
    sb.append("class CurveGaugeWeightDTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    gauge: ").append(toIndentedString(gauge)).append("\n");
    sb.append("    time: ").append(toIndentedString(time)).append("\n");
    sb.append("    weight: ").append(toIndentedString(weight)).append("\n");
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
    openapiFields.add("gauge");
    openapiFields.add("time");
    openapiFields.add("weight");
    openapiFields.add("vid");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to CurveGaugeWeightDTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!CurveGaugeWeightDTO.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in CurveGaugeWeightDTO is not found in the empty JSON string", CurveGaugeWeightDTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!CurveGaugeWeightDTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `CurveGaugeWeightDTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("gauge") != null && !jsonObj.get("gauge").isJsonNull()) && !jsonObj.get("gauge").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `gauge` to be a primitive type in the JSON string but got `%s`", jsonObj.get("gauge").toString()));
      }
      if ((jsonObj.get("time") != null && !jsonObj.get("time").isJsonNull()) && !jsonObj.get("time").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `time` to be a primitive type in the JSON string but got `%s`", jsonObj.get("time").toString()));
      }
      if ((jsonObj.get("weight") != null && !jsonObj.get("weight").isJsonNull()) && !jsonObj.get("weight").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `weight` to be a primitive type in the JSON string but got `%s`", jsonObj.get("weight").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!CurveGaugeWeightDTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'CurveGaugeWeightDTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<CurveGaugeWeightDTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(CurveGaugeWeightDTO.class));

       return (TypeAdapter<T>) new TypeAdapter<CurveGaugeWeightDTO>() {
           @Override
           public void write(JsonWriter out, CurveGaugeWeightDTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public CurveGaugeWeightDTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of CurveGaugeWeightDTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of CurveGaugeWeightDTO
  * @throws IOException if the JSON string is invalid with respect to CurveGaugeWeightDTO
  */
  public static CurveGaugeWeightDTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, CurveGaugeWeightDTO.class);
  }

 /**
  * Convert an instance of CurveGaugeWeightDTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

