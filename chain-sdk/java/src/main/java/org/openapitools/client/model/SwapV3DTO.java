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
import org.openapitools.client.model.ETradeAggressiveSide;
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
 * SwapV3DTO
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-10-28T11:30:11.674826Z[Etc/UTC]")
public class SwapV3DTO {
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

  public static final String SERIALIZED_NAME_TRANSACTION = "transaction";
  @SerializedName(SERIALIZED_NAME_TRANSACTION)
  private String transaction;

  public static final String SERIALIZED_NAME_TIMESTAMP = "timestamp";
  @SerializedName(SERIALIZED_NAME_TIMESTAMP)
  private OffsetDateTime timestamp;

  public static final String SERIALIZED_NAME_POOL = "pool";
  @SerializedName(SERIALIZED_NAME_POOL)
  private String pool;

  public static final String SERIALIZED_NAME_TOKEN0 = "token_0";
  @SerializedName(SERIALIZED_NAME_TOKEN0)
  private String token0;

  public static final String SERIALIZED_NAME_TOKEN1 = "token_1";
  @SerializedName(SERIALIZED_NAME_TOKEN1)
  private String token1;

  public static final String SERIALIZED_NAME_SENDER = "sender";
  @SerializedName(SERIALIZED_NAME_SENDER)
  private String sender;

  public static final String SERIALIZED_NAME_RECIPIENT = "recipient";
  @SerializedName(SERIALIZED_NAME_RECIPIENT)
  private String recipient;

  public static final String SERIALIZED_NAME_ORIGIN = "origin";
  @SerializedName(SERIALIZED_NAME_ORIGIN)
  private String origin;

  public static final String SERIALIZED_NAME_AMOUNT0 = "amount_0";
  @SerializedName(SERIALIZED_NAME_AMOUNT0)
  private String amount0;

  public static final String SERIALIZED_NAME_AMOUNT1 = "amount_1";
  @SerializedName(SERIALIZED_NAME_AMOUNT1)
  private String amount1;

  public static final String SERIALIZED_NAME_AMOUNT_USD = "amount_usd";
  @SerializedName(SERIALIZED_NAME_AMOUNT_USD)
  private String amountUsd;

  public static final String SERIALIZED_NAME_SQRT_PRICE_X96 = "sqrt_price_x96";
  @SerializedName(SERIALIZED_NAME_SQRT_PRICE_X96)
  private BigInteger sqrtPriceX96;

  public static final String SERIALIZED_NAME_TICK = "tick";
  @SerializedName(SERIALIZED_NAME_TICK)
  private BigInteger tick;

  public static final String SERIALIZED_NAME_LOG_INDEX = "log_index";
  @SerializedName(SERIALIZED_NAME_LOG_INDEX)
  private BigInteger logIndex;

  public static final String SERIALIZED_NAME_EVALUATED_PRICE = "evaluated_price";
  @SerializedName(SERIALIZED_NAME_EVALUATED_PRICE)
  private Double evaluatedPrice;

  public static final String SERIALIZED_NAME_EVALUATED_AMOUNT = "evaluated_amount";
  @SerializedName(SERIALIZED_NAME_EVALUATED_AMOUNT)
  private Double evaluatedAmount;

  public static final String SERIALIZED_NAME_EVALUATED_AGGRESSOR = "evaluated_aggressor";
  @SerializedName(SERIALIZED_NAME_EVALUATED_AGGRESSOR)
  private ETradeAggressiveSide evaluatedAggressor;

  public static final String SERIALIZED_NAME_POOL_ID = "pool_id";
  @SerializedName(SERIALIZED_NAME_POOL_ID)
  private String poolId;

  public static final String SERIALIZED_NAME_TRANSACTION_ID = "transaction_id";
  @SerializedName(SERIALIZED_NAME_TRANSACTION_ID)
  private String transactionId;

  public SwapV3DTO() {
  }

  
  public SwapV3DTO(
     Double evaluatedPrice, 
     Double evaluatedAmount, 
     String poolId, 
     String transactionId
  ) {
    this();
    this.evaluatedPrice = evaluatedPrice;
    this.evaluatedAmount = evaluatedAmount;
    this.poolId = poolId;
    this.transactionId = transactionId;
  }

  public SwapV3DTO entryTime(OffsetDateTime entryTime) {
    
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


  public SwapV3DTO recvTime(OffsetDateTime recvTime) {
    
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


  public SwapV3DTO blockNumber(Long blockNumber) {
    
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


  public SwapV3DTO vid(Long vid) {
    
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


  public SwapV3DTO id(String id) {
    
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


  public SwapV3DTO transaction(String transaction) {
    
    this.transaction = transaction;
    return this;
  }

   /**
   * Get transaction
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


  public SwapV3DTO timestamp(OffsetDateTime timestamp) {
    
    this.timestamp = timestamp;
    return this;
  }

   /**
   * Get timestamp
   * @return timestamp
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public OffsetDateTime getTimestamp() {
    return timestamp;
  }


  public void setTimestamp(OffsetDateTime timestamp) {
    this.timestamp = timestamp;
  }


  public SwapV3DTO pool(String pool) {
    
    this.pool = pool;
    return this;
  }

   /**
   * Get pool
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


  public SwapV3DTO token0(String token0) {
    
    this.token0 = token0;
    return this;
  }

   /**
   * Get token0
   * @return token0
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getToken0() {
    return token0;
  }


  public void setToken0(String token0) {
    this.token0 = token0;
  }


  public SwapV3DTO token1(String token1) {
    
    this.token1 = token1;
    return this;
  }

   /**
   * Get token1
   * @return token1
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getToken1() {
    return token1;
  }


  public void setToken1(String token1) {
    this.token1 = token1;
  }


  public SwapV3DTO sender(String sender) {
    
    this.sender = sender;
    return this;
  }

   /**
   * Get sender
   * @return sender
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getSender() {
    return sender;
  }


  public void setSender(String sender) {
    this.sender = sender;
  }


  public SwapV3DTO recipient(String recipient) {
    
    this.recipient = recipient;
    return this;
  }

   /**
   * Get recipient
   * @return recipient
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getRecipient() {
    return recipient;
  }


  public void setRecipient(String recipient) {
    this.recipient = recipient;
  }


  public SwapV3DTO origin(String origin) {
    
    this.origin = origin;
    return this;
  }

   /**
   * Get origin
   * @return origin
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getOrigin() {
    return origin;
  }


  public void setOrigin(String origin) {
    this.origin = origin;
  }


  public SwapV3DTO amount0(String amount0) {
    
    this.amount0 = amount0;
    return this;
  }

   /**
   * Get amount0
   * @return amount0
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getAmount0() {
    return amount0;
  }


  public void setAmount0(String amount0) {
    this.amount0 = amount0;
  }


  public SwapV3DTO amount1(String amount1) {
    
    this.amount1 = amount1;
    return this;
  }

   /**
   * Get amount1
   * @return amount1
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getAmount1() {
    return amount1;
  }


  public void setAmount1(String amount1) {
    this.amount1 = amount1;
  }


  public SwapV3DTO amountUsd(String amountUsd) {
    
    this.amountUsd = amountUsd;
    return this;
  }

   /**
   * Get amountUsd
   * @return amountUsd
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getAmountUsd() {
    return amountUsd;
  }


  public void setAmountUsd(String amountUsd) {
    this.amountUsd = amountUsd;
  }


  public SwapV3DTO sqrtPriceX96(BigInteger sqrtPriceX96) {
    
    this.sqrtPriceX96 = sqrtPriceX96;
    return this;
  }

   /**
   * Get sqrtPriceX96
   * @return sqrtPriceX96
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public BigInteger getSqrtPriceX96() {
    return sqrtPriceX96;
  }


  public void setSqrtPriceX96(BigInteger sqrtPriceX96) {
    this.sqrtPriceX96 = sqrtPriceX96;
  }


  public SwapV3DTO tick(BigInteger tick) {
    
    this.tick = tick;
    return this;
  }

   /**
   * Get tick
   * @return tick
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public BigInteger getTick() {
    return tick;
  }


  public void setTick(BigInteger tick) {
    this.tick = tick;
  }


  public SwapV3DTO logIndex(BigInteger logIndex) {
    
    this.logIndex = logIndex;
    return this;
  }

   /**
   * Get logIndex
   * @return logIndex
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public BigInteger getLogIndex() {
    return logIndex;
  }


  public void setLogIndex(BigInteger logIndex) {
    this.logIndex = logIndex;
  }


   /**
   * Get evaluatedPrice
   * @return evaluatedPrice
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Double getEvaluatedPrice() {
    return evaluatedPrice;
  }




   /**
   * Get evaluatedAmount
   * @return evaluatedAmount
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Double getEvaluatedAmount() {
    return evaluatedAmount;
  }




  public SwapV3DTO evaluatedAggressor(ETradeAggressiveSide evaluatedAggressor) {
    
    this.evaluatedAggressor = evaluatedAggressor;
    return this;
  }

   /**
   * Get evaluatedAggressor
   * @return evaluatedAggressor
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public ETradeAggressiveSide getEvaluatedAggressor() {
    return evaluatedAggressor;
  }


  public void setEvaluatedAggressor(ETradeAggressiveSide evaluatedAggressor) {
    this.evaluatedAggressor = evaluatedAggressor;
  }


   /**
   * Get poolId
   * @return poolId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getPoolId() {
    return poolId;
  }




   /**
   * Get transactionId
   * @return transactionId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getTransactionId() {
    return transactionId;
  }





  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SwapV3DTO swapV3DTO = (SwapV3DTO) o;
    return Objects.equals(this.entryTime, swapV3DTO.entryTime) &&
        Objects.equals(this.recvTime, swapV3DTO.recvTime) &&
        Objects.equals(this.blockNumber, swapV3DTO.blockNumber) &&
        Objects.equals(this.vid, swapV3DTO.vid) &&
        Objects.equals(this.id, swapV3DTO.id) &&
        Objects.equals(this.transaction, swapV3DTO.transaction) &&
        Objects.equals(this.timestamp, swapV3DTO.timestamp) &&
        Objects.equals(this.pool, swapV3DTO.pool) &&
        Objects.equals(this.token0, swapV3DTO.token0) &&
        Objects.equals(this.token1, swapV3DTO.token1) &&
        Objects.equals(this.sender, swapV3DTO.sender) &&
        Objects.equals(this.recipient, swapV3DTO.recipient) &&
        Objects.equals(this.origin, swapV3DTO.origin) &&
        Objects.equals(this.amount0, swapV3DTO.amount0) &&
        Objects.equals(this.amount1, swapV3DTO.amount1) &&
        Objects.equals(this.amountUsd, swapV3DTO.amountUsd) &&
        Objects.equals(this.sqrtPriceX96, swapV3DTO.sqrtPriceX96) &&
        Objects.equals(this.tick, swapV3DTO.tick) &&
        Objects.equals(this.logIndex, swapV3DTO.logIndex) &&
        Objects.equals(this.evaluatedPrice, swapV3DTO.evaluatedPrice) &&
        Objects.equals(this.evaluatedAmount, swapV3DTO.evaluatedAmount) &&
        Objects.equals(this.evaluatedAggressor, swapV3DTO.evaluatedAggressor) &&
        Objects.equals(this.poolId, swapV3DTO.poolId) &&
        Objects.equals(this.transactionId, swapV3DTO.transactionId);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, vid, id, transaction, timestamp, pool, token0, token1, sender, recipient, origin, amount0, amount1, amountUsd, sqrtPriceX96, tick, logIndex, evaluatedPrice, evaluatedAmount, evaluatedAggressor, poolId, transactionId);
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
    sb.append("class SwapV3DTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    vid: ").append(toIndentedString(vid)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    transaction: ").append(toIndentedString(transaction)).append("\n");
    sb.append("    timestamp: ").append(toIndentedString(timestamp)).append("\n");
    sb.append("    pool: ").append(toIndentedString(pool)).append("\n");
    sb.append("    token0: ").append(toIndentedString(token0)).append("\n");
    sb.append("    token1: ").append(toIndentedString(token1)).append("\n");
    sb.append("    sender: ").append(toIndentedString(sender)).append("\n");
    sb.append("    recipient: ").append(toIndentedString(recipient)).append("\n");
    sb.append("    origin: ").append(toIndentedString(origin)).append("\n");
    sb.append("    amount0: ").append(toIndentedString(amount0)).append("\n");
    sb.append("    amount1: ").append(toIndentedString(amount1)).append("\n");
    sb.append("    amountUsd: ").append(toIndentedString(amountUsd)).append("\n");
    sb.append("    sqrtPriceX96: ").append(toIndentedString(sqrtPriceX96)).append("\n");
    sb.append("    tick: ").append(toIndentedString(tick)).append("\n");
    sb.append("    logIndex: ").append(toIndentedString(logIndex)).append("\n");
    sb.append("    evaluatedPrice: ").append(toIndentedString(evaluatedPrice)).append("\n");
    sb.append("    evaluatedAmount: ").append(toIndentedString(evaluatedAmount)).append("\n");
    sb.append("    evaluatedAggressor: ").append(toIndentedString(evaluatedAggressor)).append("\n");
    sb.append("    poolId: ").append(toIndentedString(poolId)).append("\n");
    sb.append("    transactionId: ").append(toIndentedString(transactionId)).append("\n");
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
    openapiFields.add("transaction");
    openapiFields.add("timestamp");
    openapiFields.add("pool");
    openapiFields.add("token_0");
    openapiFields.add("token_1");
    openapiFields.add("sender");
    openapiFields.add("recipient");
    openapiFields.add("origin");
    openapiFields.add("amount_0");
    openapiFields.add("amount_1");
    openapiFields.add("amount_usd");
    openapiFields.add("sqrt_price_x96");
    openapiFields.add("tick");
    openapiFields.add("log_index");
    openapiFields.add("evaluated_price");
    openapiFields.add("evaluated_amount");
    openapiFields.add("evaluated_aggressor");
    openapiFields.add("pool_id");
    openapiFields.add("transaction_id");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to SwapV3DTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (SwapV3DTO.openapiRequiredFields.isEmpty()) {
          return;
        } else { // has required fields
          throw new IllegalArgumentException(String.format("The required field(s) %s in SwapV3DTO is not found in the empty JSON string", SwapV3DTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!SwapV3DTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `SwapV3DTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("transaction") != null && !jsonObj.get("transaction").isJsonNull()) && !jsonObj.get("transaction").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `transaction` to be a primitive type in the JSON string but got `%s`", jsonObj.get("transaction").toString()));
      }
      if ((jsonObj.get("pool") != null && !jsonObj.get("pool").isJsonNull()) && !jsonObj.get("pool").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `pool` to be a primitive type in the JSON string but got `%s`", jsonObj.get("pool").toString()));
      }
      if ((jsonObj.get("token_0") != null && !jsonObj.get("token_0").isJsonNull()) && !jsonObj.get("token_0").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `token_0` to be a primitive type in the JSON string but got `%s`", jsonObj.get("token_0").toString()));
      }
      if ((jsonObj.get("token_1") != null && !jsonObj.get("token_1").isJsonNull()) && !jsonObj.get("token_1").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `token_1` to be a primitive type in the JSON string but got `%s`", jsonObj.get("token_1").toString()));
      }
      if ((jsonObj.get("sender") != null && !jsonObj.get("sender").isJsonNull()) && !jsonObj.get("sender").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `sender` to be a primitive type in the JSON string but got `%s`", jsonObj.get("sender").toString()));
      }
      if ((jsonObj.get("recipient") != null && !jsonObj.get("recipient").isJsonNull()) && !jsonObj.get("recipient").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `recipient` to be a primitive type in the JSON string but got `%s`", jsonObj.get("recipient").toString()));
      }
      if ((jsonObj.get("origin") != null && !jsonObj.get("origin").isJsonNull()) && !jsonObj.get("origin").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `origin` to be a primitive type in the JSON string but got `%s`", jsonObj.get("origin").toString()));
      }
      if ((jsonObj.get("amount_0") != null && !jsonObj.get("amount_0").isJsonNull()) && !jsonObj.get("amount_0").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `amount_0` to be a primitive type in the JSON string but got `%s`", jsonObj.get("amount_0").toString()));
      }
      if ((jsonObj.get("amount_1") != null && !jsonObj.get("amount_1").isJsonNull()) && !jsonObj.get("amount_1").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `amount_1` to be a primitive type in the JSON string but got `%s`", jsonObj.get("amount_1").toString()));
      }
      if ((jsonObj.get("amount_usd") != null && !jsonObj.get("amount_usd").isJsonNull()) && !jsonObj.get("amount_usd").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `amount_usd` to be a primitive type in the JSON string but got `%s`", jsonObj.get("amount_usd").toString()));
      }
      // validate the optional field `sqrt_price_x96`
      if (jsonObj.get("sqrt_price_x96") != null && !jsonObj.get("sqrt_price_x96").isJsonNull()) {
        BigInteger.validateJsonObject(jsonObj.getAsJsonObject("sqrt_price_x96"));
      }
      // validate the optional field `tick`
      if (jsonObj.get("tick") != null && !jsonObj.get("tick").isJsonNull()) {
        BigInteger.validateJsonObject(jsonObj.getAsJsonObject("tick"));
      }
      // validate the optional field `log_index`
      if (jsonObj.get("log_index") != null && !jsonObj.get("log_index").isJsonNull()) {
        BigInteger.validateJsonObject(jsonObj.getAsJsonObject("log_index"));
      }
      if ((jsonObj.get("pool_id") != null && !jsonObj.get("pool_id").isJsonNull()) && !jsonObj.get("pool_id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `pool_id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("pool_id").toString()));
      }
      if ((jsonObj.get("transaction_id") != null && !jsonObj.get("transaction_id").isJsonNull()) && !jsonObj.get("transaction_id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `transaction_id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("transaction_id").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SwapV3DTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SwapV3DTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SwapV3DTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SwapV3DTO.class));

       return (TypeAdapter<T>) new TypeAdapter<SwapV3DTO>() {
           @Override
           public void write(JsonWriter out, SwapV3DTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public SwapV3DTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of SwapV3DTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of SwapV3DTO
  * @throws IOException if the JSON string is invalid with respect to SwapV3DTO
  */
  public static SwapV3DTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SwapV3DTO.class);
  }

 /**
  * Convert an instance of SwapV3DTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

