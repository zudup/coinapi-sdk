/*
 * On Chain Dapps - REST API
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
 * CurveUnderlyingCoinDTO
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-11-25T13:04:46.815607Z[Etc/UTC]")
public class CurveUnderlyingCoinDTO {
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

  public static final String SERIALIZED_NAME_INDEX = "index";
  @SerializedName(SERIALIZED_NAME_INDEX)
  private Integer index;

  public static final String SERIALIZED_NAME_POOL = "pool";
  @SerializedName(SERIALIZED_NAME_POOL)
  private String pool;

  public static final String SERIALIZED_NAME_TOKEN = "token";
  @SerializedName(SERIALIZED_NAME_TOKEN)
  private String token;

  public static final String SERIALIZED_NAME_COIN = "coin";
  @SerializedName(SERIALIZED_NAME_COIN)
  private String coin;

  public static final String SERIALIZED_NAME_BALANCE = "balance";
  @SerializedName(SERIALIZED_NAME_BALANCE)
  private String balance;

  public static final String SERIALIZED_NAME_UPDATED = "updated";
  @SerializedName(SERIALIZED_NAME_UPDATED)
  private String updated;

  public static final String SERIALIZED_NAME_UPDATED_AT_BLOCK = "updated_at_block";
  @SerializedName(SERIALIZED_NAME_UPDATED_AT_BLOCK)
  private String updatedAtBlock;

  public static final String SERIALIZED_NAME_UPDATED_AT_TRANSACTION = "updated_at_transaction";
  @SerializedName(SERIALIZED_NAME_UPDATED_AT_TRANSACTION)
  private String updatedAtTransaction;

  public static final String SERIALIZED_NAME_VID = "vid";
  @SerializedName(SERIALIZED_NAME_VID)
  private Long vid;

  public CurveUnderlyingCoinDTO() {
  }

  public CurveUnderlyingCoinDTO entryTime(OffsetDateTime entryTime) {
    
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


  public CurveUnderlyingCoinDTO recvTime(OffsetDateTime recvTime) {
    
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


  public CurveUnderlyingCoinDTO blockNumber(Long blockNumber) {
    
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


  public CurveUnderlyingCoinDTO id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * Equals to: &lt;pool_id&gt;-&lt;coin_index&gt;.
   * @return id
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Equals to: <pool_id>-<coin_index>.")

  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public CurveUnderlyingCoinDTO index(Integer index) {
    
    this.index = index;
    return this;
  }

   /**
   * Coin index.
   * @return index
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Coin index.")

  public Integer getIndex() {
    return index;
  }


  public void setIndex(Integer index) {
    this.index = index;
  }


  public CurveUnderlyingCoinDTO pool(String pool) {
    
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


  public CurveUnderlyingCoinDTO token(String token) {
    
    this.token = token;
    return this;
  }

   /**
   * 
   * @return token
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getToken() {
    return token;
  }


  public void setToken(String token) {
    this.token = token;
  }


  public CurveUnderlyingCoinDTO coin(String coin) {
    
    this.coin = coin;
    return this;
  }

   /**
   * 
   * @return coin
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getCoin() {
    return coin;
  }


  public void setCoin(String coin) {
    this.coin = coin;
  }


  public CurveUnderlyingCoinDTO balance(String balance) {
    
    this.balance = balance;
    return this;
  }

   /**
   * 
   * @return balance
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getBalance() {
    return balance;
  }


  public void setBalance(String balance) {
    this.balance = balance;
  }


  public CurveUnderlyingCoinDTO updated(String updated) {
    
    this.updated = updated;
    return this;
  }

   /**
   * 
   * @return updated
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getUpdated() {
    return updated;
  }


  public void setUpdated(String updated) {
    this.updated = updated;
  }


  public CurveUnderlyingCoinDTO updatedAtBlock(String updatedAtBlock) {
    
    this.updatedAtBlock = updatedAtBlock;
    return this;
  }

   /**
   * 
   * @return updatedAtBlock
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getUpdatedAtBlock() {
    return updatedAtBlock;
  }


  public void setUpdatedAtBlock(String updatedAtBlock) {
    this.updatedAtBlock = updatedAtBlock;
  }


  public CurveUnderlyingCoinDTO updatedAtTransaction(String updatedAtTransaction) {
    
    this.updatedAtTransaction = updatedAtTransaction;
    return this;
  }

   /**
   * 
   * @return updatedAtTransaction
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getUpdatedAtTransaction() {
    return updatedAtTransaction;
  }


  public void setUpdatedAtTransaction(String updatedAtTransaction) {
    this.updatedAtTransaction = updatedAtTransaction;
  }


  public CurveUnderlyingCoinDTO vid(Long vid) {
    
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
    CurveUnderlyingCoinDTO curveUnderlyingCoinDTO = (CurveUnderlyingCoinDTO) o;
    return Objects.equals(this.entryTime, curveUnderlyingCoinDTO.entryTime) &&
        Objects.equals(this.recvTime, curveUnderlyingCoinDTO.recvTime) &&
        Objects.equals(this.blockNumber, curveUnderlyingCoinDTO.blockNumber) &&
        Objects.equals(this.id, curveUnderlyingCoinDTO.id) &&
        Objects.equals(this.index, curveUnderlyingCoinDTO.index) &&
        Objects.equals(this.pool, curveUnderlyingCoinDTO.pool) &&
        Objects.equals(this.token, curveUnderlyingCoinDTO.token) &&
        Objects.equals(this.coin, curveUnderlyingCoinDTO.coin) &&
        Objects.equals(this.balance, curveUnderlyingCoinDTO.balance) &&
        Objects.equals(this.updated, curveUnderlyingCoinDTO.updated) &&
        Objects.equals(this.updatedAtBlock, curveUnderlyingCoinDTO.updatedAtBlock) &&
        Objects.equals(this.updatedAtTransaction, curveUnderlyingCoinDTO.updatedAtTransaction) &&
        Objects.equals(this.vid, curveUnderlyingCoinDTO.vid);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, id, index, pool, token, coin, balance, updated, updatedAtBlock, updatedAtTransaction, vid);
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
    sb.append("class CurveUnderlyingCoinDTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    index: ").append(toIndentedString(index)).append("\n");
    sb.append("    pool: ").append(toIndentedString(pool)).append("\n");
    sb.append("    token: ").append(toIndentedString(token)).append("\n");
    sb.append("    coin: ").append(toIndentedString(coin)).append("\n");
    sb.append("    balance: ").append(toIndentedString(balance)).append("\n");
    sb.append("    updated: ").append(toIndentedString(updated)).append("\n");
    sb.append("    updatedAtBlock: ").append(toIndentedString(updatedAtBlock)).append("\n");
    sb.append("    updatedAtTransaction: ").append(toIndentedString(updatedAtTransaction)).append("\n");
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
    openapiFields.add("index");
    openapiFields.add("pool");
    openapiFields.add("token");
    openapiFields.add("coin");
    openapiFields.add("balance");
    openapiFields.add("updated");
    openapiFields.add("updated_at_block");
    openapiFields.add("updated_at_transaction");
    openapiFields.add("vid");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to CurveUnderlyingCoinDTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!CurveUnderlyingCoinDTO.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in CurveUnderlyingCoinDTO is not found in the empty JSON string", CurveUnderlyingCoinDTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!CurveUnderlyingCoinDTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `CurveUnderlyingCoinDTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("pool") != null && !jsonObj.get("pool").isJsonNull()) && !jsonObj.get("pool").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `pool` to be a primitive type in the JSON string but got `%s`", jsonObj.get("pool").toString()));
      }
      if ((jsonObj.get("token") != null && !jsonObj.get("token").isJsonNull()) && !jsonObj.get("token").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `token` to be a primitive type in the JSON string but got `%s`", jsonObj.get("token").toString()));
      }
      if ((jsonObj.get("coin") != null && !jsonObj.get("coin").isJsonNull()) && !jsonObj.get("coin").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `coin` to be a primitive type in the JSON string but got `%s`", jsonObj.get("coin").toString()));
      }
      if ((jsonObj.get("balance") != null && !jsonObj.get("balance").isJsonNull()) && !jsonObj.get("balance").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `balance` to be a primitive type in the JSON string but got `%s`", jsonObj.get("balance").toString()));
      }
      if ((jsonObj.get("updated") != null && !jsonObj.get("updated").isJsonNull()) && !jsonObj.get("updated").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `updated` to be a primitive type in the JSON string but got `%s`", jsonObj.get("updated").toString()));
      }
      if ((jsonObj.get("updated_at_block") != null && !jsonObj.get("updated_at_block").isJsonNull()) && !jsonObj.get("updated_at_block").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `updated_at_block` to be a primitive type in the JSON string but got `%s`", jsonObj.get("updated_at_block").toString()));
      }
      if ((jsonObj.get("updated_at_transaction") != null && !jsonObj.get("updated_at_transaction").isJsonNull()) && !jsonObj.get("updated_at_transaction").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `updated_at_transaction` to be a primitive type in the JSON string but got `%s`", jsonObj.get("updated_at_transaction").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!CurveUnderlyingCoinDTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'CurveUnderlyingCoinDTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<CurveUnderlyingCoinDTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(CurveUnderlyingCoinDTO.class));

       return (TypeAdapter<T>) new TypeAdapter<CurveUnderlyingCoinDTO>() {
           @Override
           public void write(JsonWriter out, CurveUnderlyingCoinDTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public CurveUnderlyingCoinDTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of CurveUnderlyingCoinDTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of CurveUnderlyingCoinDTO
  * @throws IOException if the JSON string is invalid with respect to CurveUnderlyingCoinDTO
  */
  public static CurveUnderlyingCoinDTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, CurveUnderlyingCoinDTO.class);
  }

 /**
  * Convert an instance of CurveUnderlyingCoinDTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

