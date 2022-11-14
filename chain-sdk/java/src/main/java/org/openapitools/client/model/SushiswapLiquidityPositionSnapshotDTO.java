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
 * This entity is used to store data about a user&#39;s liquidity position over time. This information, along with information from the pair itself can be used to provide position sizes, token deposits, and more. It gets created and never updated.
 */
@ApiModel(description = "This entity is used to store data about a user's liquidity position over time. This information, along with information from the pair itself can be used to provide position sizes, token deposits, and more. It gets created and never updated.")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-11-14T11:04:07.623639Z[Etc/UTC]")
public class SushiswapLiquidityPositionSnapshotDTO {
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

  public static final String SERIALIZED_NAME_LIQUIDITY_POSITION = "liquidity_position";
  @SerializedName(SERIALIZED_NAME_LIQUIDITY_POSITION)
  private String liquidityPosition;

  public static final String SERIALIZED_NAME_TIMESTAMP = "timestamp";
  @SerializedName(SERIALIZED_NAME_TIMESTAMP)
  private Integer timestamp;

  public static final String SERIALIZED_NAME_BLOCK = "block";
  @SerializedName(SERIALIZED_NAME_BLOCK)
  private Integer block;

  public static final String SERIALIZED_NAME_USER = "user";
  @SerializedName(SERIALIZED_NAME_USER)
  private String user;

  public static final String SERIALIZED_NAME_PAIR = "pair";
  @SerializedName(SERIALIZED_NAME_PAIR)
  private String pair;

  public static final String SERIALIZED_NAME_TOKEN0_PRICE_USD = "token_0_price_usd";
  @SerializedName(SERIALIZED_NAME_TOKEN0_PRICE_USD)
  private String token0PriceUsd;

  public static final String SERIALIZED_NAME_TOKEN1_PRICE_USD = "token_1_price_usd";
  @SerializedName(SERIALIZED_NAME_TOKEN1_PRICE_USD)
  private String token1PriceUsd;

  public static final String SERIALIZED_NAME_RESERVE0 = "reserve_0";
  @SerializedName(SERIALIZED_NAME_RESERVE0)
  private String reserve0;

  public static final String SERIALIZED_NAME_RESERVE1 = "reserve_1";
  @SerializedName(SERIALIZED_NAME_RESERVE1)
  private String reserve1;

  public static final String SERIALIZED_NAME_RESERVE_USD = "reserve_usd";
  @SerializedName(SERIALIZED_NAME_RESERVE_USD)
  private String reserveUsd;

  public static final String SERIALIZED_NAME_LIQUIDITY_TOKEN_TOTAL_SUPPLY = "liquidity_token_total_supply";
  @SerializedName(SERIALIZED_NAME_LIQUIDITY_TOKEN_TOTAL_SUPPLY)
  private String liquidityTokenTotalSupply;

  public static final String SERIALIZED_NAME_LIQUIDITY_TOKEN_BALANCE = "liquidity_token_balance";
  @SerializedName(SERIALIZED_NAME_LIQUIDITY_TOKEN_BALANCE)
  private String liquidityTokenBalance;

  public static final String SERIALIZED_NAME_VID = "vid";
  @SerializedName(SERIALIZED_NAME_VID)
  private Long vid;

  public SushiswapLiquidityPositionSnapshotDTO() {
  }

  public SushiswapLiquidityPositionSnapshotDTO entryTime(OffsetDateTime entryTime) {
    
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


  public SushiswapLiquidityPositionSnapshotDTO recvTime(OffsetDateTime recvTime) {
    
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


  public SushiswapLiquidityPositionSnapshotDTO blockNumber(Long blockNumber) {
    
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


  public SushiswapLiquidityPositionSnapshotDTO id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * Identifier, format: &lt;pair address&gt;-&lt;user address&gt;-&lt;timestamp&gt;
   * @return id
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Identifier, format: <pair address>-<user address>-<timestamp>")

  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public SushiswapLiquidityPositionSnapshotDTO liquidityPosition(String liquidityPosition) {
    
    this.liquidityPosition = liquidityPosition;
    return this;
  }

   /**
   * Reference to LP identifier.
   * @return liquidityPosition
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Reference to LP identifier.")

  public String getLiquidityPosition() {
    return liquidityPosition;
  }


  public void setLiquidityPosition(String liquidityPosition) {
    this.liquidityPosition = liquidityPosition;
  }


  public SushiswapLiquidityPositionSnapshotDTO timestamp(Integer timestamp) {
    
    this.timestamp = timestamp;
    return this;
  }

   /**
   * Creation time.
   * @return timestamp
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Creation time.")

  public Integer getTimestamp() {
    return timestamp;
  }


  public void setTimestamp(Integer timestamp) {
    this.timestamp = timestamp;
  }


  public SushiswapLiquidityPositionSnapshotDTO block(Integer block) {
    
    this.block = block;
    return this;
  }

   /**
   * Block in which snapshot has been created.
   * @return block
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Block in which snapshot has been created.")

  public Integer getBlock() {
    return block;
  }


  public void setBlock(Integer block) {
    this.block = block;
  }


  public SushiswapLiquidityPositionSnapshotDTO user(String user) {
    
    this.user = user;
    return this;
  }

   /**
   * Reference to user.
   * @return user
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Reference to user.")

  public String getUser() {
    return user;
  }


  public void setUser(String user) {
    this.user = user;
  }


  public SushiswapLiquidityPositionSnapshotDTO pair(String pair) {
    
    this.pair = pair;
    return this;
  }

   /**
   * Reference to the pair liquidity is being provided on.
   * @return pair
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Reference to the pair liquidity is being provided on.")

  public String getPair() {
    return pair;
  }


  public void setPair(String pair) {
    this.pair = pair;
  }


  public SushiswapLiquidityPositionSnapshotDTO token0PriceUsd(String token0PriceUsd) {
    
    this.token0PriceUsd = token0PriceUsd;
    return this;
  }

   /**
   * Snapshot of token0 price in USD.
   * @return token0PriceUsd
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Snapshot of token0 price in USD.")

  public String getToken0PriceUsd() {
    return token0PriceUsd;
  }


  public void setToken0PriceUsd(String token0PriceUsd) {
    this.token0PriceUsd = token0PriceUsd;
  }


  public SushiswapLiquidityPositionSnapshotDTO token1PriceUsd(String token1PriceUsd) {
    
    this.token1PriceUsd = token1PriceUsd;
    return this;
  }

   /**
   * Snapshot of token0 price in USD.
   * @return token1PriceUsd
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Snapshot of token0 price in USD.")

  public String getToken1PriceUsd() {
    return token1PriceUsd;
  }


  public void setToken1PriceUsd(String token1PriceUsd) {
    this.token1PriceUsd = token1PriceUsd;
  }


  public SushiswapLiquidityPositionSnapshotDTO reserve0(String reserve0) {
    
    this.reserve0 = reserve0;
    return this;
  }

   /**
   * Snapshot of pair token0 reserves.
   * @return reserve0
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Snapshot of pair token0 reserves.")

  public String getReserve0() {
    return reserve0;
  }


  public void setReserve0(String reserve0) {
    this.reserve0 = reserve0;
  }


  public SushiswapLiquidityPositionSnapshotDTO reserve1(String reserve1) {
    
    this.reserve1 = reserve1;
    return this;
  }

   /**
   * Snapshot of pair token1 reserves.
   * @return reserve1
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Snapshot of pair token1 reserves.")

  public String getReserve1() {
    return reserve1;
  }


  public void setReserve1(String reserve1) {
    this.reserve1 = reserve1;
  }


  public SushiswapLiquidityPositionSnapshotDTO reserveUsd(String reserveUsd) {
    
    this.reserveUsd = reserveUsd;
    return this;
  }

   /**
   * Snapshot of pair reserves in USD.
   * @return reserveUsd
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Snapshot of pair reserves in USD.")

  public String getReserveUsd() {
    return reserveUsd;
  }


  public void setReserveUsd(String reserveUsd) {
    this.reserveUsd = reserveUsd;
  }


  public SushiswapLiquidityPositionSnapshotDTO liquidityTokenTotalSupply(String liquidityTokenTotalSupply) {
    
    this.liquidityTokenTotalSupply = liquidityTokenTotalSupply;
    return this;
  }

   /**
   * Snapshot of pool token supply.
   * @return liquidityTokenTotalSupply
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Snapshot of pool token supply.")

  public String getLiquidityTokenTotalSupply() {
    return liquidityTokenTotalSupply;
  }


  public void setLiquidityTokenTotalSupply(String liquidityTokenTotalSupply) {
    this.liquidityTokenTotalSupply = liquidityTokenTotalSupply;
  }


  public SushiswapLiquidityPositionSnapshotDTO liquidityTokenBalance(String liquidityTokenBalance) {
    
    this.liquidityTokenBalance = liquidityTokenBalance;
    return this;
  }

   /**
   * Snapshot of users pool token balance.
   * @return liquidityTokenBalance
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Snapshot of users pool token balance.")

  public String getLiquidityTokenBalance() {
    return liquidityTokenBalance;
  }


  public void setLiquidityTokenBalance(String liquidityTokenBalance) {
    this.liquidityTokenBalance = liquidityTokenBalance;
  }


  public SushiswapLiquidityPositionSnapshotDTO vid(Long vid) {
    
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
    SushiswapLiquidityPositionSnapshotDTO sushiswapLiquidityPositionSnapshotDTO = (SushiswapLiquidityPositionSnapshotDTO) o;
    return Objects.equals(this.entryTime, sushiswapLiquidityPositionSnapshotDTO.entryTime) &&
        Objects.equals(this.recvTime, sushiswapLiquidityPositionSnapshotDTO.recvTime) &&
        Objects.equals(this.blockNumber, sushiswapLiquidityPositionSnapshotDTO.blockNumber) &&
        Objects.equals(this.id, sushiswapLiquidityPositionSnapshotDTO.id) &&
        Objects.equals(this.liquidityPosition, sushiswapLiquidityPositionSnapshotDTO.liquidityPosition) &&
        Objects.equals(this.timestamp, sushiswapLiquidityPositionSnapshotDTO.timestamp) &&
        Objects.equals(this.block, sushiswapLiquidityPositionSnapshotDTO.block) &&
        Objects.equals(this.user, sushiswapLiquidityPositionSnapshotDTO.user) &&
        Objects.equals(this.pair, sushiswapLiquidityPositionSnapshotDTO.pair) &&
        Objects.equals(this.token0PriceUsd, sushiswapLiquidityPositionSnapshotDTO.token0PriceUsd) &&
        Objects.equals(this.token1PriceUsd, sushiswapLiquidityPositionSnapshotDTO.token1PriceUsd) &&
        Objects.equals(this.reserve0, sushiswapLiquidityPositionSnapshotDTO.reserve0) &&
        Objects.equals(this.reserve1, sushiswapLiquidityPositionSnapshotDTO.reserve1) &&
        Objects.equals(this.reserveUsd, sushiswapLiquidityPositionSnapshotDTO.reserveUsd) &&
        Objects.equals(this.liquidityTokenTotalSupply, sushiswapLiquidityPositionSnapshotDTO.liquidityTokenTotalSupply) &&
        Objects.equals(this.liquidityTokenBalance, sushiswapLiquidityPositionSnapshotDTO.liquidityTokenBalance) &&
        Objects.equals(this.vid, sushiswapLiquidityPositionSnapshotDTO.vid);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, id, liquidityPosition, timestamp, block, user, pair, token0PriceUsd, token1PriceUsd, reserve0, reserve1, reserveUsd, liquidityTokenTotalSupply, liquidityTokenBalance, vid);
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
    sb.append("class SushiswapLiquidityPositionSnapshotDTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    liquidityPosition: ").append(toIndentedString(liquidityPosition)).append("\n");
    sb.append("    timestamp: ").append(toIndentedString(timestamp)).append("\n");
    sb.append("    block: ").append(toIndentedString(block)).append("\n");
    sb.append("    user: ").append(toIndentedString(user)).append("\n");
    sb.append("    pair: ").append(toIndentedString(pair)).append("\n");
    sb.append("    token0PriceUsd: ").append(toIndentedString(token0PriceUsd)).append("\n");
    sb.append("    token1PriceUsd: ").append(toIndentedString(token1PriceUsd)).append("\n");
    sb.append("    reserve0: ").append(toIndentedString(reserve0)).append("\n");
    sb.append("    reserve1: ").append(toIndentedString(reserve1)).append("\n");
    sb.append("    reserveUsd: ").append(toIndentedString(reserveUsd)).append("\n");
    sb.append("    liquidityTokenTotalSupply: ").append(toIndentedString(liquidityTokenTotalSupply)).append("\n");
    sb.append("    liquidityTokenBalance: ").append(toIndentedString(liquidityTokenBalance)).append("\n");
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
    openapiFields.add("liquidity_position");
    openapiFields.add("timestamp");
    openapiFields.add("block");
    openapiFields.add("user");
    openapiFields.add("pair");
    openapiFields.add("token_0_price_usd");
    openapiFields.add("token_1_price_usd");
    openapiFields.add("reserve_0");
    openapiFields.add("reserve_1");
    openapiFields.add("reserve_usd");
    openapiFields.add("liquidity_token_total_supply");
    openapiFields.add("liquidity_token_balance");
    openapiFields.add("vid");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to SushiswapLiquidityPositionSnapshotDTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!SushiswapLiquidityPositionSnapshotDTO.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in SushiswapLiquidityPositionSnapshotDTO is not found in the empty JSON string", SushiswapLiquidityPositionSnapshotDTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!SushiswapLiquidityPositionSnapshotDTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `SushiswapLiquidityPositionSnapshotDTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("liquidity_position") != null && !jsonObj.get("liquidity_position").isJsonNull()) && !jsonObj.get("liquidity_position").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `liquidity_position` to be a primitive type in the JSON string but got `%s`", jsonObj.get("liquidity_position").toString()));
      }
      if ((jsonObj.get("user") != null && !jsonObj.get("user").isJsonNull()) && !jsonObj.get("user").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `user` to be a primitive type in the JSON string but got `%s`", jsonObj.get("user").toString()));
      }
      if ((jsonObj.get("pair") != null && !jsonObj.get("pair").isJsonNull()) && !jsonObj.get("pair").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `pair` to be a primitive type in the JSON string but got `%s`", jsonObj.get("pair").toString()));
      }
      if ((jsonObj.get("token_0_price_usd") != null && !jsonObj.get("token_0_price_usd").isJsonNull()) && !jsonObj.get("token_0_price_usd").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `token_0_price_usd` to be a primitive type in the JSON string but got `%s`", jsonObj.get("token_0_price_usd").toString()));
      }
      if ((jsonObj.get("token_1_price_usd") != null && !jsonObj.get("token_1_price_usd").isJsonNull()) && !jsonObj.get("token_1_price_usd").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `token_1_price_usd` to be a primitive type in the JSON string but got `%s`", jsonObj.get("token_1_price_usd").toString()));
      }
      if ((jsonObj.get("reserve_0") != null && !jsonObj.get("reserve_0").isJsonNull()) && !jsonObj.get("reserve_0").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `reserve_0` to be a primitive type in the JSON string but got `%s`", jsonObj.get("reserve_0").toString()));
      }
      if ((jsonObj.get("reserve_1") != null && !jsonObj.get("reserve_1").isJsonNull()) && !jsonObj.get("reserve_1").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `reserve_1` to be a primitive type in the JSON string but got `%s`", jsonObj.get("reserve_1").toString()));
      }
      if ((jsonObj.get("reserve_usd") != null && !jsonObj.get("reserve_usd").isJsonNull()) && !jsonObj.get("reserve_usd").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `reserve_usd` to be a primitive type in the JSON string but got `%s`", jsonObj.get("reserve_usd").toString()));
      }
      if ((jsonObj.get("liquidity_token_total_supply") != null && !jsonObj.get("liquidity_token_total_supply").isJsonNull()) && !jsonObj.get("liquidity_token_total_supply").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `liquidity_token_total_supply` to be a primitive type in the JSON string but got `%s`", jsonObj.get("liquidity_token_total_supply").toString()));
      }
      if ((jsonObj.get("liquidity_token_balance") != null && !jsonObj.get("liquidity_token_balance").isJsonNull()) && !jsonObj.get("liquidity_token_balance").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `liquidity_token_balance` to be a primitive type in the JSON string but got `%s`", jsonObj.get("liquidity_token_balance").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SushiswapLiquidityPositionSnapshotDTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SushiswapLiquidityPositionSnapshotDTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SushiswapLiquidityPositionSnapshotDTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SushiswapLiquidityPositionSnapshotDTO.class));

       return (TypeAdapter<T>) new TypeAdapter<SushiswapLiquidityPositionSnapshotDTO>() {
           @Override
           public void write(JsonWriter out, SushiswapLiquidityPositionSnapshotDTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public SushiswapLiquidityPositionSnapshotDTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of SushiswapLiquidityPositionSnapshotDTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of SushiswapLiquidityPositionSnapshotDTO
  * @throws IOException if the JSON string is invalid with respect to SushiswapLiquidityPositionSnapshotDTO
  */
  public static SushiswapLiquidityPositionSnapshotDTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SushiswapLiquidityPositionSnapshotDTO.class);
  }

 /**
  * Convert an instance of SushiswapLiquidityPositionSnapshotDTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

