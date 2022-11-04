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
import org.openapitools.client.model.BigInteger;
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
 * Stores aggregated information for a specific token across all pairs that token is included in.
 */
@ApiModel(description = "Stores aggregated information for a specific token across all pairs that token is included in.")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-11-04T10:06:55.222634Z[Etc/UTC]")
public class TokenV2DTO {
  public static final String SERIALIZED_NAME_ENTRY_TIME = "entry_time";
  @SerializedName(SERIALIZED_NAME_ENTRY_TIME)
  private OffsetDateTime entryTime;

  public static final String SERIALIZED_NAME_RECV_TIME = "recv_time";
  @SerializedName(SERIALIZED_NAME_RECV_TIME)
  private OffsetDateTime recvTime;

  public static final String SERIALIZED_NAME_BLOCK_NUMBER = "block_number";
  @SerializedName(SERIALIZED_NAME_BLOCK_NUMBER)
  private Long blockNumber;

  public static final String SERIALIZED_NAME_VID = "vid";
  @SerializedName(SERIALIZED_NAME_VID)
  private Long vid;

  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private String id;

  public static final String SERIALIZED_NAME_SYMBOL = "symbol";
  @SerializedName(SERIALIZED_NAME_SYMBOL)
  private String symbol;

  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_DECIMALS = "decimals";
  @SerializedName(SERIALIZED_NAME_DECIMALS)
  private Integer decimals;

  public static final String SERIALIZED_NAME_TOTAL_SUPPLY = "total_supply";
  @SerializedName(SERIALIZED_NAME_TOTAL_SUPPLY)
  private BigInteger totalSupply;

  public static final String SERIALIZED_NAME_TRADE_VOLUME = "trade_volume";
  @SerializedName(SERIALIZED_NAME_TRADE_VOLUME)
  private String tradeVolume;

  public static final String SERIALIZED_NAME_TRADE_VOLUME_USD = "trade_volume_usd";
  @SerializedName(SERIALIZED_NAME_TRADE_VOLUME_USD)
  private String tradeVolumeUsd;

  public static final String SERIALIZED_NAME_UNTRACKED_VOLUME_USD = "untracked_volume_usd";
  @SerializedName(SERIALIZED_NAME_UNTRACKED_VOLUME_USD)
  private String untrackedVolumeUsd;

  public static final String SERIALIZED_NAME_TX_COUNT = "tx_count";
  @SerializedName(SERIALIZED_NAME_TX_COUNT)
  private BigInteger txCount;

  public static final String SERIALIZED_NAME_TOTAL_LIQUIDITY = "total_liquidity";
  @SerializedName(SERIALIZED_NAME_TOTAL_LIQUIDITY)
  private String totalLiquidity;

  public static final String SERIALIZED_NAME_DERIVED_ETH = "derived_eth";
  @SerializedName(SERIALIZED_NAME_DERIVED_ETH)
  private String derivedEth;

  public static final String SERIALIZED_NAME_TOKEN_SYMBOL = "token_symbol";
  @SerializedName(SERIALIZED_NAME_TOKEN_SYMBOL)
  private String tokenSymbol;

  public TokenV2DTO() {
  }

  
  public TokenV2DTO(
     String tokenSymbol
  ) {
    this();
    this.tokenSymbol = tokenSymbol;
  }

  public TokenV2DTO entryTime(OffsetDateTime entryTime) {
    
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


  public TokenV2DTO recvTime(OffsetDateTime recvTime) {
    
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


  public TokenV2DTO blockNumber(Long blockNumber) {
    
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


  public TokenV2DTO vid(Long vid) {
    
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


  public TokenV2DTO id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * Token address.
   * @return id
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Token address.")

  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public TokenV2DTO symbol(String symbol) {
    
    this.symbol = symbol;
    return this;
  }

   /**
   * Token symbol.
   * @return symbol
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Token symbol.")

  public String getSymbol() {
    return symbol;
  }


  public void setSymbol(String symbol) {
    this.symbol = symbol;
  }


  public TokenV2DTO name(String name) {
    
    this.name = name;
    return this;
  }

   /**
   * Token name.
   * @return name
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Token name.")

  public String getName() {
    return name;
  }


  public void setName(String name) {
    this.name = name;
  }


  public TokenV2DTO decimals(Integer decimals) {
    
    this.decimals = decimals;
    return this;
  }

   /**
   * Token decimals.
   * @return decimals
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Token decimals.")

  public Integer getDecimals() {
    return decimals;
  }


  public void setDecimals(Integer decimals) {
    this.decimals = decimals;
  }


  public TokenV2DTO totalSupply(BigInteger totalSupply) {
    
    this.totalSupply = totalSupply;
    return this;
  }

   /**
   * Get totalSupply
   * @return totalSupply
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public BigInteger getTotalSupply() {
    return totalSupply;
  }


  public void setTotalSupply(BigInteger totalSupply) {
    this.totalSupply = totalSupply;
  }


  public TokenV2DTO tradeVolume(String tradeVolume) {
    
    this.tradeVolume = tradeVolume;
    return this;
  }

   /**
   * Amount of token traded all time across all pairs.
   * @return tradeVolume
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Amount of token traded all time across all pairs.")

  public String getTradeVolume() {
    return tradeVolume;
  }


  public void setTradeVolume(String tradeVolume) {
    this.tradeVolume = tradeVolume;
  }


  public TokenV2DTO tradeVolumeUsd(String tradeVolumeUsd) {
    
    this.tradeVolumeUsd = tradeVolumeUsd;
    return this;
  }

   /**
   * Amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold).
   * @return tradeVolumeUsd
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold).")

  public String getTradeVolumeUsd() {
    return tradeVolumeUsd;
  }


  public void setTradeVolumeUsd(String tradeVolumeUsd) {
    this.tradeVolumeUsd = tradeVolumeUsd;
  }


  public TokenV2DTO untrackedVolumeUsd(String untrackedVolumeUsd) {
    
    this.untrackedVolumeUsd = untrackedVolumeUsd;
    return this;
  }

   /**
   * Amount of token in USD traded all time across pairs (no minimum liquidity threshold).
   * @return untrackedVolumeUsd
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Amount of token in USD traded all time across pairs (no minimum liquidity threshold).")

  public String getUntrackedVolumeUsd() {
    return untrackedVolumeUsd;
  }


  public void setUntrackedVolumeUsd(String untrackedVolumeUsd) {
    this.untrackedVolumeUsd = untrackedVolumeUsd;
  }


  public TokenV2DTO txCount(BigInteger txCount) {
    
    this.txCount = txCount;
    return this;
  }

   /**
   * Get txCount
   * @return txCount
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public BigInteger getTxCount() {
    return txCount;
  }


  public void setTxCount(BigInteger txCount) {
    this.txCount = txCount;
  }


  public TokenV2DTO totalLiquidity(String totalLiquidity) {
    
    this.totalLiquidity = totalLiquidity;
    return this;
  }

   /**
   * Total amount of token provided as liquidity across all pairs.
   * @return totalLiquidity
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Total amount of token provided as liquidity across all pairs.")

  public String getTotalLiquidity() {
    return totalLiquidity;
  }


  public void setTotalLiquidity(String totalLiquidity) {
    this.totalLiquidity = totalLiquidity;
  }


  public TokenV2DTO derivedEth(String derivedEth) {
    
    this.derivedEth = derivedEth;
    return this;
  }

   /**
   * ETH per token.
   * @return derivedEth
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "ETH per token.")

  public String getDerivedEth() {
    return derivedEth;
  }


  public void setDerivedEth(String derivedEth) {
    this.derivedEth = derivedEth;
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
    TokenV2DTO tokenV2DTO = (TokenV2DTO) o;
    return Objects.equals(this.entryTime, tokenV2DTO.entryTime) &&
        Objects.equals(this.recvTime, tokenV2DTO.recvTime) &&
        Objects.equals(this.blockNumber, tokenV2DTO.blockNumber) &&
        Objects.equals(this.vid, tokenV2DTO.vid) &&
        Objects.equals(this.id, tokenV2DTO.id) &&
        Objects.equals(this.symbol, tokenV2DTO.symbol) &&
        Objects.equals(this.name, tokenV2DTO.name) &&
        Objects.equals(this.decimals, tokenV2DTO.decimals) &&
        Objects.equals(this.totalSupply, tokenV2DTO.totalSupply) &&
        Objects.equals(this.tradeVolume, tokenV2DTO.tradeVolume) &&
        Objects.equals(this.tradeVolumeUsd, tokenV2DTO.tradeVolumeUsd) &&
        Objects.equals(this.untrackedVolumeUsd, tokenV2DTO.untrackedVolumeUsd) &&
        Objects.equals(this.txCount, tokenV2DTO.txCount) &&
        Objects.equals(this.totalLiquidity, tokenV2DTO.totalLiquidity) &&
        Objects.equals(this.derivedEth, tokenV2DTO.derivedEth) &&
        Objects.equals(this.tokenSymbol, tokenV2DTO.tokenSymbol);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, vid, id, symbol, name, decimals, totalSupply, tradeVolume, tradeVolumeUsd, untrackedVolumeUsd, txCount, totalLiquidity, derivedEth, tokenSymbol);
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
    sb.append("class TokenV2DTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    vid: ").append(toIndentedString(vid)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    symbol: ").append(toIndentedString(symbol)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    decimals: ").append(toIndentedString(decimals)).append("\n");
    sb.append("    totalSupply: ").append(toIndentedString(totalSupply)).append("\n");
    sb.append("    tradeVolume: ").append(toIndentedString(tradeVolume)).append("\n");
    sb.append("    tradeVolumeUsd: ").append(toIndentedString(tradeVolumeUsd)).append("\n");
    sb.append("    untrackedVolumeUsd: ").append(toIndentedString(untrackedVolumeUsd)).append("\n");
    sb.append("    txCount: ").append(toIndentedString(txCount)).append("\n");
    sb.append("    totalLiquidity: ").append(toIndentedString(totalLiquidity)).append("\n");
    sb.append("    derivedEth: ").append(toIndentedString(derivedEth)).append("\n");
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
    openapiFields.add("vid");
    openapiFields.add("id");
    openapiFields.add("symbol");
    openapiFields.add("name");
    openapiFields.add("decimals");
    openapiFields.add("total_supply");
    openapiFields.add("trade_volume");
    openapiFields.add("trade_volume_usd");
    openapiFields.add("untracked_volume_usd");
    openapiFields.add("tx_count");
    openapiFields.add("total_liquidity");
    openapiFields.add("derived_eth");
    openapiFields.add("token_symbol");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to TokenV2DTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!TokenV2DTO.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in TokenV2DTO is not found in the empty JSON string", TokenV2DTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!TokenV2DTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `TokenV2DTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("symbol") != null && !jsonObj.get("symbol").isJsonNull()) && !jsonObj.get("symbol").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `symbol` to be a primitive type in the JSON string but got `%s`", jsonObj.get("symbol").toString()));
      }
      if ((jsonObj.get("name") != null && !jsonObj.get("name").isJsonNull()) && !jsonObj.get("name").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `name` to be a primitive type in the JSON string but got `%s`", jsonObj.get("name").toString()));
      }
      // validate the optional field `total_supply`
      if (jsonObj.get("total_supply") != null && !jsonObj.get("total_supply").isJsonNull()) {
        BigInteger.validateJsonObject(jsonObj.getAsJsonObject("total_supply"));
      }
      if ((jsonObj.get("trade_volume") != null && !jsonObj.get("trade_volume").isJsonNull()) && !jsonObj.get("trade_volume").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `trade_volume` to be a primitive type in the JSON string but got `%s`", jsonObj.get("trade_volume").toString()));
      }
      if ((jsonObj.get("trade_volume_usd") != null && !jsonObj.get("trade_volume_usd").isJsonNull()) && !jsonObj.get("trade_volume_usd").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `trade_volume_usd` to be a primitive type in the JSON string but got `%s`", jsonObj.get("trade_volume_usd").toString()));
      }
      if ((jsonObj.get("untracked_volume_usd") != null && !jsonObj.get("untracked_volume_usd").isJsonNull()) && !jsonObj.get("untracked_volume_usd").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `untracked_volume_usd` to be a primitive type in the JSON string but got `%s`", jsonObj.get("untracked_volume_usd").toString()));
      }
      // validate the optional field `tx_count`
      if (jsonObj.get("tx_count") != null && !jsonObj.get("tx_count").isJsonNull()) {
        BigInteger.validateJsonObject(jsonObj.getAsJsonObject("tx_count"));
      }
      if ((jsonObj.get("total_liquidity") != null && !jsonObj.get("total_liquidity").isJsonNull()) && !jsonObj.get("total_liquidity").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `total_liquidity` to be a primitive type in the JSON string but got `%s`", jsonObj.get("total_liquidity").toString()));
      }
      if ((jsonObj.get("derived_eth") != null && !jsonObj.get("derived_eth").isJsonNull()) && !jsonObj.get("derived_eth").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `derived_eth` to be a primitive type in the JSON string but got `%s`", jsonObj.get("derived_eth").toString()));
      }
      if ((jsonObj.get("token_symbol") != null && !jsonObj.get("token_symbol").isJsonNull()) && !jsonObj.get("token_symbol").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `token_symbol` to be a primitive type in the JSON string but got `%s`", jsonObj.get("token_symbol").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!TokenV2DTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'TokenV2DTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<TokenV2DTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(TokenV2DTO.class));

       return (TypeAdapter<T>) new TypeAdapter<TokenV2DTO>() {
           @Override
           public void write(JsonWriter out, TokenV2DTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public TokenV2DTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of TokenV2DTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of TokenV2DTO
  * @throws IOException if the JSON string is invalid with respect to TokenV2DTO
  */
  public static TokenV2DTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, TokenV2DTO.class);
  }

 /**
  * Convert an instance of TokenV2DTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

