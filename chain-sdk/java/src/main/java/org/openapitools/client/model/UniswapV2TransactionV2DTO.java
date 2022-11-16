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
import java.util.ArrayList;
import java.util.List;
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
 * Transaction entities are created for each Ethereum transaction that contains an interaction within Uniswap contracts. Each transaction contains 3 arrays, and at least one of these arrays has a length of 1.
 */
@ApiModel(description = "Transaction entities are created for each Ethereum transaction that contains an interaction within Uniswap contracts. Each transaction contains 3 arrays, and at least one of these arrays has a length of 1.")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-11-16T12:46:06.464035Z[Etc/UTC]")
public class UniswapV2TransactionV2DTO {
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

  public static final String SERIALIZED_NAME_TIMESTAMP = "timestamp";
  @SerializedName(SERIALIZED_NAME_TIMESTAMP)
  private String timestamp;

  public static final String SERIALIZED_NAME_MINTS = "mints";
  @SerializedName(SERIALIZED_NAME_MINTS)
  private List<String> mints = null;

  public static final String SERIALIZED_NAME_BURNS = "burns";
  @SerializedName(SERIALIZED_NAME_BURNS)
  private List<String> burns = null;

  public static final String SERIALIZED_NAME_SWAPS = "swaps";
  @SerializedName(SERIALIZED_NAME_SWAPS)
  private List<String> swaps = null;

  public static final String SERIALIZED_NAME_VID = "vid";
  @SerializedName(SERIALIZED_NAME_VID)
  private Long vid;

  public UniswapV2TransactionV2DTO() {
  }

  public UniswapV2TransactionV2DTO entryTime(OffsetDateTime entryTime) {
    
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


  public UniswapV2TransactionV2DTO recvTime(OffsetDateTime recvTime) {
    
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


  public UniswapV2TransactionV2DTO blockNumber(Long blockNumber) {
    
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


  public UniswapV2TransactionV2DTO id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * Ethereum transaction hash.
   * @return id
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Ethereum transaction hash.")

  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public UniswapV2TransactionV2DTO timestamp(String timestamp) {
    
    this.timestamp = timestamp;
    return this;
  }

   /**
   * Timestamp.
   * @return timestamp
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Timestamp.")

  public String getTimestamp() {
    return timestamp;
  }


  public void setTimestamp(String timestamp) {
    this.timestamp = timestamp;
  }


  public UniswapV2TransactionV2DTO mints(List<String> mints) {
    
    this.mints = mints;
    return this;
  }

  public UniswapV2TransactionV2DTO addMintsItem(String mintsItem) {
    if (this.mints == null) {
      this.mints = new ArrayList<>();
    }
    this.mints.add(mintsItem);
    return this;
  }

   /**
   * Array of Mint events within the transaction, 0 or greater.
   * @return mints
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Array of Mint events within the transaction, 0 or greater.")

  public List<String> getMints() {
    return mints;
  }


  public void setMints(List<String> mints) {
    this.mints = mints;
  }


  public UniswapV2TransactionV2DTO burns(List<String> burns) {
    
    this.burns = burns;
    return this;
  }

  public UniswapV2TransactionV2DTO addBurnsItem(String burnsItem) {
    if (this.burns == null) {
      this.burns = new ArrayList<>();
    }
    this.burns.add(burnsItem);
    return this;
  }

   /**
   * Array of Burn events within transaction, 0 or greater.
   * @return burns
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Array of Burn events within transaction, 0 or greater.")

  public List<String> getBurns() {
    return burns;
  }


  public void setBurns(List<String> burns) {
    this.burns = burns;
  }


  public UniswapV2TransactionV2DTO swaps(List<String> swaps) {
    
    this.swaps = swaps;
    return this;
  }

  public UniswapV2TransactionV2DTO addSwapsItem(String swapsItem) {
    if (this.swaps == null) {
      this.swaps = new ArrayList<>();
    }
    this.swaps.add(swapsItem);
    return this;
  }

   /**
   * Array of Swap events within transaction, 0 or greater.
   * @return swaps
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Array of Swap events within transaction, 0 or greater.")

  public List<String> getSwaps() {
    return swaps;
  }


  public void setSwaps(List<String> swaps) {
    this.swaps = swaps;
  }


  public UniswapV2TransactionV2DTO vid(Long vid) {
    
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
    UniswapV2TransactionV2DTO uniswapV2TransactionV2DTO = (UniswapV2TransactionV2DTO) o;
    return Objects.equals(this.entryTime, uniswapV2TransactionV2DTO.entryTime) &&
        Objects.equals(this.recvTime, uniswapV2TransactionV2DTO.recvTime) &&
        Objects.equals(this.blockNumber, uniswapV2TransactionV2DTO.blockNumber) &&
        Objects.equals(this.id, uniswapV2TransactionV2DTO.id) &&
        Objects.equals(this.timestamp, uniswapV2TransactionV2DTO.timestamp) &&
        Objects.equals(this.mints, uniswapV2TransactionV2DTO.mints) &&
        Objects.equals(this.burns, uniswapV2TransactionV2DTO.burns) &&
        Objects.equals(this.swaps, uniswapV2TransactionV2DTO.swaps) &&
        Objects.equals(this.vid, uniswapV2TransactionV2DTO.vid);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, id, timestamp, mints, burns, swaps, vid);
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
    sb.append("class UniswapV2TransactionV2DTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    timestamp: ").append(toIndentedString(timestamp)).append("\n");
    sb.append("    mints: ").append(toIndentedString(mints)).append("\n");
    sb.append("    burns: ").append(toIndentedString(burns)).append("\n");
    sb.append("    swaps: ").append(toIndentedString(swaps)).append("\n");
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
    openapiFields.add("timestamp");
    openapiFields.add("mints");
    openapiFields.add("burns");
    openapiFields.add("swaps");
    openapiFields.add("vid");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to UniswapV2TransactionV2DTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!UniswapV2TransactionV2DTO.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in UniswapV2TransactionV2DTO is not found in the empty JSON string", UniswapV2TransactionV2DTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!UniswapV2TransactionV2DTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `UniswapV2TransactionV2DTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("timestamp") != null && !jsonObj.get("timestamp").isJsonNull()) && !jsonObj.get("timestamp").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `timestamp` to be a primitive type in the JSON string but got `%s`", jsonObj.get("timestamp").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("mints") != null && !jsonObj.get("mints").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `mints` to be an array in the JSON string but got `%s`", jsonObj.get("mints").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("burns") != null && !jsonObj.get("burns").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `burns` to be an array in the JSON string but got `%s`", jsonObj.get("burns").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("swaps") != null && !jsonObj.get("swaps").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `swaps` to be an array in the JSON string but got `%s`", jsonObj.get("swaps").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!UniswapV2TransactionV2DTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'UniswapV2TransactionV2DTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<UniswapV2TransactionV2DTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(UniswapV2TransactionV2DTO.class));

       return (TypeAdapter<T>) new TypeAdapter<UniswapV2TransactionV2DTO>() {
           @Override
           public void write(JsonWriter out, UniswapV2TransactionV2DTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public UniswapV2TransactionV2DTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of UniswapV2TransactionV2DTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of UniswapV2TransactionV2DTO
  * @throws IOException if the JSON string is invalid with respect to UniswapV2TransactionV2DTO
  */
  public static UniswapV2TransactionV2DTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, UniswapV2TransactionV2DTO.class);
  }

 /**
  * Convert an instance of UniswapV2TransactionV2DTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

