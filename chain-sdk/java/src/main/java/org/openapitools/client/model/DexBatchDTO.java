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
 * Batch executed. Every batch will contain at least solution with the a set of trades that are executed in it
 */
@ApiModel(description = "Batch executed. Every batch will contain at least solution with the a set of trades that are executed in it")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-11-14T11:04:07.623639Z[Etc/UTC]")
public class DexBatchDTO {
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

  public static final String SERIALIZED_NAME_START_EPOCH = "start_epoch";
  @SerializedName(SERIALIZED_NAME_START_EPOCH)
  private String startEpoch;

  public static final String SERIALIZED_NAME_END_EPOCH = "end_epoch";
  @SerializedName(SERIALIZED_NAME_END_EPOCH)
  private String endEpoch;

  public static final String SERIALIZED_NAME_SOLUTION = "solution";
  @SerializedName(SERIALIZED_NAME_SOLUTION)
  private String solution;

  public static final String SERIALIZED_NAME_FIRST_SOLUTION_EPOCH = "first_solution_epoch";
  @SerializedName(SERIALIZED_NAME_FIRST_SOLUTION_EPOCH)
  private String firstSolutionEpoch;

  public static final String SERIALIZED_NAME_LAST_REVERT_EPOCH = "last_revert_epoch";
  @SerializedName(SERIALIZED_NAME_LAST_REVERT_EPOCH)
  private String lastRevertEpoch;

  public static final String SERIALIZED_NAME_TX_HASH = "tx_hash";
  @SerializedName(SERIALIZED_NAME_TX_HASH)
  private String txHash;

  public static final String SERIALIZED_NAME_VID = "vid";
  @SerializedName(SERIALIZED_NAME_VID)
  private Long vid;

  public DexBatchDTO() {
  }

  public DexBatchDTO entryTime(OffsetDateTime entryTime) {
    
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


  public DexBatchDTO recvTime(OffsetDateTime recvTime) {
    
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


  public DexBatchDTO blockNumber(Long blockNumber) {
    
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


  public DexBatchDTO id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * Identifier.
   * @return id
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Identifier.")

  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public DexBatchDTO startEpoch(String startEpoch) {
    
    this.startEpoch = startEpoch;
    return this;
  }

   /**
   * Start epoch.
   * @return startEpoch
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Start epoch.")

  public String getStartEpoch() {
    return startEpoch;
  }


  public void setStartEpoch(String startEpoch) {
    this.startEpoch = startEpoch;
  }


  public DexBatchDTO endEpoch(String endEpoch) {
    
    this.endEpoch = endEpoch;
    return this;
  }

   /**
   * End epoch.
   * @return endEpoch
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "End epoch.")

  public String getEndEpoch() {
    return endEpoch;
  }


  public void setEndEpoch(String endEpoch) {
    this.endEpoch = endEpoch;
  }


  public DexBatchDTO solution(String solution) {
    
    this.solution = solution;
    return this;
  }

   /**
   * Reference to solution.
   * @return solution
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Reference to solution.")

  public String getSolution() {
    return solution;
  }


  public void setSolution(String solution) {
    this.solution = solution;
  }


  public DexBatchDTO firstSolutionEpoch(String firstSolutionEpoch) {
    
    this.firstSolutionEpoch = firstSolutionEpoch;
    return this;
  }

   /**
   * First solution epoch.
   * @return firstSolutionEpoch
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "First solution epoch.")

  public String getFirstSolutionEpoch() {
    return firstSolutionEpoch;
  }


  public void setFirstSolutionEpoch(String firstSolutionEpoch) {
    this.firstSolutionEpoch = firstSolutionEpoch;
  }


  public DexBatchDTO lastRevertEpoch(String lastRevertEpoch) {
    
    this.lastRevertEpoch = lastRevertEpoch;
    return this;
  }

   /**
   * Last revert epoch.
   * @return lastRevertEpoch
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Last revert epoch.")

  public String getLastRevertEpoch() {
    return lastRevertEpoch;
  }


  public void setLastRevertEpoch(String lastRevertEpoch) {
    this.lastRevertEpoch = lastRevertEpoch;
  }


  public DexBatchDTO txHash(String txHash) {
    
    this.txHash = txHash;
    return this;
  }

   /**
   * Transaction hash.
   * @return txHash
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Transaction hash.")

  public String getTxHash() {
    return txHash;
  }


  public void setTxHash(String txHash) {
    this.txHash = txHash;
  }


  public DexBatchDTO vid(Long vid) {
    
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
    DexBatchDTO dexBatchDTO = (DexBatchDTO) o;
    return Objects.equals(this.entryTime, dexBatchDTO.entryTime) &&
        Objects.equals(this.recvTime, dexBatchDTO.recvTime) &&
        Objects.equals(this.blockNumber, dexBatchDTO.blockNumber) &&
        Objects.equals(this.id, dexBatchDTO.id) &&
        Objects.equals(this.startEpoch, dexBatchDTO.startEpoch) &&
        Objects.equals(this.endEpoch, dexBatchDTO.endEpoch) &&
        Objects.equals(this.solution, dexBatchDTO.solution) &&
        Objects.equals(this.firstSolutionEpoch, dexBatchDTO.firstSolutionEpoch) &&
        Objects.equals(this.lastRevertEpoch, dexBatchDTO.lastRevertEpoch) &&
        Objects.equals(this.txHash, dexBatchDTO.txHash) &&
        Objects.equals(this.vid, dexBatchDTO.vid);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, id, startEpoch, endEpoch, solution, firstSolutionEpoch, lastRevertEpoch, txHash, vid);
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
    sb.append("class DexBatchDTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    startEpoch: ").append(toIndentedString(startEpoch)).append("\n");
    sb.append("    endEpoch: ").append(toIndentedString(endEpoch)).append("\n");
    sb.append("    solution: ").append(toIndentedString(solution)).append("\n");
    sb.append("    firstSolutionEpoch: ").append(toIndentedString(firstSolutionEpoch)).append("\n");
    sb.append("    lastRevertEpoch: ").append(toIndentedString(lastRevertEpoch)).append("\n");
    sb.append("    txHash: ").append(toIndentedString(txHash)).append("\n");
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
    openapiFields.add("start_epoch");
    openapiFields.add("end_epoch");
    openapiFields.add("solution");
    openapiFields.add("first_solution_epoch");
    openapiFields.add("last_revert_epoch");
    openapiFields.add("tx_hash");
    openapiFields.add("vid");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to DexBatchDTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!DexBatchDTO.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in DexBatchDTO is not found in the empty JSON string", DexBatchDTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!DexBatchDTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `DexBatchDTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("start_epoch") != null && !jsonObj.get("start_epoch").isJsonNull()) && !jsonObj.get("start_epoch").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `start_epoch` to be a primitive type in the JSON string but got `%s`", jsonObj.get("start_epoch").toString()));
      }
      if ((jsonObj.get("end_epoch") != null && !jsonObj.get("end_epoch").isJsonNull()) && !jsonObj.get("end_epoch").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `end_epoch` to be a primitive type in the JSON string but got `%s`", jsonObj.get("end_epoch").toString()));
      }
      if ((jsonObj.get("solution") != null && !jsonObj.get("solution").isJsonNull()) && !jsonObj.get("solution").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `solution` to be a primitive type in the JSON string but got `%s`", jsonObj.get("solution").toString()));
      }
      if ((jsonObj.get("first_solution_epoch") != null && !jsonObj.get("first_solution_epoch").isJsonNull()) && !jsonObj.get("first_solution_epoch").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `first_solution_epoch` to be a primitive type in the JSON string but got `%s`", jsonObj.get("first_solution_epoch").toString()));
      }
      if ((jsonObj.get("last_revert_epoch") != null && !jsonObj.get("last_revert_epoch").isJsonNull()) && !jsonObj.get("last_revert_epoch").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `last_revert_epoch` to be a primitive type in the JSON string but got `%s`", jsonObj.get("last_revert_epoch").toString()));
      }
      if ((jsonObj.get("tx_hash") != null && !jsonObj.get("tx_hash").isJsonNull()) && !jsonObj.get("tx_hash").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `tx_hash` to be a primitive type in the JSON string but got `%s`", jsonObj.get("tx_hash").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!DexBatchDTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'DexBatchDTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<DexBatchDTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(DexBatchDTO.class));

       return (TypeAdapter<T>) new TypeAdapter<DexBatchDTO>() {
           @Override
           public void write(JsonWriter out, DexBatchDTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public DexBatchDTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of DexBatchDTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of DexBatchDTO
  * @throws IOException if the JSON string is invalid with respect to DexBatchDTO
  */
  public static DexBatchDTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, DexBatchDTO.class);
  }

 /**
  * Convert an instance of DexBatchDTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

