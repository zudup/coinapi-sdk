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
 * Stores information for a specific token across all pairs that token is included in.
 */
@ApiModel(description = "Stores information for a specific token across all pairs that token is included in.")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-11-14T15:02:02.459194Z[Etc/UTC]")
public class CowTokenDTO {
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

  public static final String SERIALIZED_NAME_ADDRESS = "address";
  @SerializedName(SERIALIZED_NAME_ADDRESS)
  private String address;

  public static final String SERIALIZED_NAME_FIRST_TRADE_TIMESTAMP = "first_trade_timestamp";
  @SerializedName(SERIALIZED_NAME_FIRST_TRADE_TIMESTAMP)
  private String firstTradeTimestamp;

  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_SYMBOL = "symbol";
  @SerializedName(SERIALIZED_NAME_SYMBOL)
  private String symbol;

  public static final String SERIALIZED_NAME_DECIMALS = "decimals";
  @SerializedName(SERIALIZED_NAME_DECIMALS)
  private Integer decimals;

  public static final String SERIALIZED_NAME_TOTAL_VOLUME = "total_volume";
  @SerializedName(SERIALIZED_NAME_TOTAL_VOLUME)
  private String totalVolume;

  public static final String SERIALIZED_NAME_VID = "vid";
  @SerializedName(SERIALIZED_NAME_VID)
  private Long vid;

  public static final String SERIALIZED_NAME_TOKEN_SYMBOL = "token_symbol";
  @SerializedName(SERIALIZED_NAME_TOKEN_SYMBOL)
  private String tokenSymbol;

  public CowTokenDTO() {
  }

  
  public CowTokenDTO(
     String tokenSymbol
  ) {
    this();
    this.tokenSymbol = tokenSymbol;
  }

  public CowTokenDTO entryTime(OffsetDateTime entryTime) {
    
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


  public CowTokenDTO recvTime(OffsetDateTime recvTime) {
    
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


  public CowTokenDTO blockNumber(Long blockNumber) {
    
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


  public CowTokenDTO id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * Token&#39;s address.
   * @return id
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Token's address.")

  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public CowTokenDTO address(String address) {
    
    this.address = address;
    return this;
  }

   /**
   * Token&#39;s address.
   * @return address
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Token's address.")

  public String getAddress() {
    return address;
  }


  public void setAddress(String address) {
    this.address = address;
  }


  public CowTokenDTO firstTradeTimestamp(String firstTradeTimestamp) {
    
    this.firstTradeTimestamp = firstTradeTimestamp;
    return this;
  }

   /**
   * First token trade block timestamp.
   * @return firstTradeTimestamp
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "First token trade block timestamp.")

  public String getFirstTradeTimestamp() {
    return firstTradeTimestamp;
  }


  public void setFirstTradeTimestamp(String firstTradeTimestamp) {
    this.firstTradeTimestamp = firstTradeTimestamp;
  }


  public CowTokenDTO name(String name) {
    
    this.name = name;
    return this;
  }

   /**
   * Token name fetched by ERC20 contract call.
   * @return name
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Token name fetched by ERC20 contract call.")

  public String getName() {
    return name;
  }


  public void setName(String name) {
    this.name = name;
  }


  public CowTokenDTO symbol(String symbol) {
    
    this.symbol = symbol;
    return this;
  }

   /**
   * Token symbol fetched by contract call.
   * @return symbol
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Token symbol fetched by contract call.")

  public String getSymbol() {
    return symbol;
  }


  public void setSymbol(String symbol) {
    this.symbol = symbol;
  }


  public CowTokenDTO decimals(Integer decimals) {
    
    this.decimals = decimals;
    return this;
  }

   /**
   * Token decimals fetched by contract call.
   * @return decimals
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Token decimals fetched by contract call.")

  public Integer getDecimals() {
    return decimals;
  }


  public void setDecimals(Integer decimals) {
    this.decimals = decimals;
  }


  public CowTokenDTO totalVolume(String totalVolume) {
    
    this.totalVolume = totalVolume;
    return this;
  }

   /**
   * Sum of total amount traded for this token.
   * @return totalVolume
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Sum of total amount traded for this token.")

  public String getTotalVolume() {
    return totalVolume;
  }


  public void setTotalVolume(String totalVolume) {
    this.totalVolume = totalVolume;
  }


  public CowTokenDTO vid(Long vid) {
    
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


   /**
   * Get tokenSymbol
   * @return tokenSymbol
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getTokenSymbol() {
    return tokenSymbol;
  }





  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CowTokenDTO cowTokenDTO = (CowTokenDTO) o;
    return Objects.equals(this.entryTime, cowTokenDTO.entryTime) &&
        Objects.equals(this.recvTime, cowTokenDTO.recvTime) &&
        Objects.equals(this.blockNumber, cowTokenDTO.blockNumber) &&
        Objects.equals(this.id, cowTokenDTO.id) &&
        Objects.equals(this.address, cowTokenDTO.address) &&
        Objects.equals(this.firstTradeTimestamp, cowTokenDTO.firstTradeTimestamp) &&
        Objects.equals(this.name, cowTokenDTO.name) &&
        Objects.equals(this.symbol, cowTokenDTO.symbol) &&
        Objects.equals(this.decimals, cowTokenDTO.decimals) &&
        Objects.equals(this.totalVolume, cowTokenDTO.totalVolume) &&
        Objects.equals(this.vid, cowTokenDTO.vid) &&
        Objects.equals(this.tokenSymbol, cowTokenDTO.tokenSymbol);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, id, address, firstTradeTimestamp, name, symbol, decimals, totalVolume, vid, tokenSymbol);
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
    sb.append("class CowTokenDTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    address: ").append(toIndentedString(address)).append("\n");
    sb.append("    firstTradeTimestamp: ").append(toIndentedString(firstTradeTimestamp)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    symbol: ").append(toIndentedString(symbol)).append("\n");
    sb.append("    decimals: ").append(toIndentedString(decimals)).append("\n");
    sb.append("    totalVolume: ").append(toIndentedString(totalVolume)).append("\n");
    sb.append("    vid: ").append(toIndentedString(vid)).append("\n");
    sb.append("    tokenSymbol: ").append(toIndentedString(tokenSymbol)).append("\n");
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
    openapiFields.add("address");
    openapiFields.add("first_trade_timestamp");
    openapiFields.add("name");
    openapiFields.add("symbol");
    openapiFields.add("decimals");
    openapiFields.add("total_volume");
    openapiFields.add("vid");
    openapiFields.add("token_symbol");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to CowTokenDTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!CowTokenDTO.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in CowTokenDTO is not found in the empty JSON string", CowTokenDTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!CowTokenDTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `CowTokenDTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("address") != null && !jsonObj.get("address").isJsonNull()) && !jsonObj.get("address").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `address` to be a primitive type in the JSON string but got `%s`", jsonObj.get("address").toString()));
      }
      if ((jsonObj.get("first_trade_timestamp") != null && !jsonObj.get("first_trade_timestamp").isJsonNull()) && !jsonObj.get("first_trade_timestamp").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `first_trade_timestamp` to be a primitive type in the JSON string but got `%s`", jsonObj.get("first_trade_timestamp").toString()));
      }
      if ((jsonObj.get("name") != null && !jsonObj.get("name").isJsonNull()) && !jsonObj.get("name").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `name` to be a primitive type in the JSON string but got `%s`", jsonObj.get("name").toString()));
      }
      if ((jsonObj.get("symbol") != null && !jsonObj.get("symbol").isJsonNull()) && !jsonObj.get("symbol").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `symbol` to be a primitive type in the JSON string but got `%s`", jsonObj.get("symbol").toString()));
      }
      if ((jsonObj.get("total_volume") != null && !jsonObj.get("total_volume").isJsonNull()) && !jsonObj.get("total_volume").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `total_volume` to be a primitive type in the JSON string but got `%s`", jsonObj.get("total_volume").toString()));
      }
      if ((jsonObj.get("token_symbol") != null && !jsonObj.get("token_symbol").isJsonNull()) && !jsonObj.get("token_symbol").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `token_symbol` to be a primitive type in the JSON string but got `%s`", jsonObj.get("token_symbol").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!CowTokenDTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'CowTokenDTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<CowTokenDTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(CowTokenDTO.class));

       return (TypeAdapter<T>) new TypeAdapter<CowTokenDTO>() {
           @Override
           public void write(JsonWriter out, CowTokenDTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public CowTokenDTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of CowTokenDTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of CowTokenDTO
  * @throws IOException if the JSON string is invalid with respect to CowTokenDTO
  */
  public static CowTokenDTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, CowTokenDTO.class);
  }

 /**
  * Convert an instance of CowTokenDTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

