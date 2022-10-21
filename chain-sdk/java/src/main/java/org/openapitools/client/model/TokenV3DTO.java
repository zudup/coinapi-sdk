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
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.openapitools.client.JSON;

/**
 * TokenV3DTO
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-10-21T13:18:41.479399Z[Etc/UTC]")
public class TokenV3DTO {
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

  public static final String SERIALIZED_NAME_VOLUME = "volume";
  @SerializedName(SERIALIZED_NAME_VOLUME)
  private String volume;

  public static final String SERIALIZED_NAME_VOLUME_USD = "volume_usd";
  @SerializedName(SERIALIZED_NAME_VOLUME_USD)
  private String volumeUsd;

  public static final String SERIALIZED_NAME_UNTRACKED_VOLUME_USD = "untracked_volume_usd";
  @SerializedName(SERIALIZED_NAME_UNTRACKED_VOLUME_USD)
  private String untrackedVolumeUsd;

  public static final String SERIALIZED_NAME_FEES_USD = "fees_usd";
  @SerializedName(SERIALIZED_NAME_FEES_USD)
  private String feesUsd;

  public static final String SERIALIZED_NAME_TX_COUNT = "tx_count";
  @SerializedName(SERIALIZED_NAME_TX_COUNT)
  private BigInteger txCount;

  public static final String SERIALIZED_NAME_POOL_COUNT = "pool_count";
  @SerializedName(SERIALIZED_NAME_POOL_COUNT)
  private BigInteger poolCount;

  public static final String SERIALIZED_NAME_TOTAL_VALUE_LOCKED = "total_value_locked";
  @SerializedName(SERIALIZED_NAME_TOTAL_VALUE_LOCKED)
  private String totalValueLocked;

  public static final String SERIALIZED_NAME_TOTAL_VALUE_LOCKED_USD = "total_value_locked_usd";
  @SerializedName(SERIALIZED_NAME_TOTAL_VALUE_LOCKED_USD)
  private String totalValueLockedUsd;

  public static final String SERIALIZED_NAME_TOTAL_VALUE_LOCKED_USD_UNTRACKED = "total_value_locked_usd_untracked";
  @SerializedName(SERIALIZED_NAME_TOTAL_VALUE_LOCKED_USD_UNTRACKED)
  private String totalValueLockedUsdUntracked;

  public static final String SERIALIZED_NAME_DERIVED_ETH = "derived_eth";
  @SerializedName(SERIALIZED_NAME_DERIVED_ETH)
  private String derivedEth;

  public static final String SERIALIZED_NAME_WHITELIST_POOLS = "whitelist_pools";
  @SerializedName(SERIALIZED_NAME_WHITELIST_POOLS)
  private List<String> whitelistPools = null;

  public static final String SERIALIZED_NAME_TOKEN_SYMBOL = "token_symbol";
  @SerializedName(SERIALIZED_NAME_TOKEN_SYMBOL)
  private String tokenSymbol;

  public TokenV3DTO() {
  }

  
  public TokenV3DTO(
     String tokenSymbol
  ) {
    this();
    this.tokenSymbol = tokenSymbol;
  }

  public TokenV3DTO entryTime(OffsetDateTime entryTime) {
    
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


  public TokenV3DTO recvTime(OffsetDateTime recvTime) {
    
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


  public TokenV3DTO blockNumber(Long blockNumber) {
    
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


  public TokenV3DTO vid(Long vid) {
    
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


  public TokenV3DTO id(String id) {
    
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


  public TokenV3DTO symbol(String symbol) {
    
    this.symbol = symbol;
    return this;
  }

   /**
   * Get symbol
   * @return symbol
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getSymbol() {
    return symbol;
  }


  public void setSymbol(String symbol) {
    this.symbol = symbol;
  }


  public TokenV3DTO name(String name) {
    
    this.name = name;
    return this;
  }

   /**
   * Get name
   * @return name
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getName() {
    return name;
  }


  public void setName(String name) {
    this.name = name;
  }


  public TokenV3DTO decimals(Integer decimals) {
    
    this.decimals = decimals;
    return this;
  }

   /**
   * Get decimals
   * @return decimals
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Integer getDecimals() {
    return decimals;
  }


  public void setDecimals(Integer decimals) {
    this.decimals = decimals;
  }


  public TokenV3DTO totalSupply(BigInteger totalSupply) {
    
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


  public TokenV3DTO volume(String volume) {
    
    this.volume = volume;
    return this;
  }

   /**
   * Get volume
   * @return volume
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getVolume() {
    return volume;
  }


  public void setVolume(String volume) {
    this.volume = volume;
  }


  public TokenV3DTO volumeUsd(String volumeUsd) {
    
    this.volumeUsd = volumeUsd;
    return this;
  }

   /**
   * Get volumeUsd
   * @return volumeUsd
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getVolumeUsd() {
    return volumeUsd;
  }


  public void setVolumeUsd(String volumeUsd) {
    this.volumeUsd = volumeUsd;
  }


  public TokenV3DTO untrackedVolumeUsd(String untrackedVolumeUsd) {
    
    this.untrackedVolumeUsd = untrackedVolumeUsd;
    return this;
  }

   /**
   * Get untrackedVolumeUsd
   * @return untrackedVolumeUsd
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getUntrackedVolumeUsd() {
    return untrackedVolumeUsd;
  }


  public void setUntrackedVolumeUsd(String untrackedVolumeUsd) {
    this.untrackedVolumeUsd = untrackedVolumeUsd;
  }


  public TokenV3DTO feesUsd(String feesUsd) {
    
    this.feesUsd = feesUsd;
    return this;
  }

   /**
   * Get feesUsd
   * @return feesUsd
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getFeesUsd() {
    return feesUsd;
  }


  public void setFeesUsd(String feesUsd) {
    this.feesUsd = feesUsd;
  }


  public TokenV3DTO txCount(BigInteger txCount) {
    
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


  public TokenV3DTO poolCount(BigInteger poolCount) {
    
    this.poolCount = poolCount;
    return this;
  }

   /**
   * Get poolCount
   * @return poolCount
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public BigInteger getPoolCount() {
    return poolCount;
  }


  public void setPoolCount(BigInteger poolCount) {
    this.poolCount = poolCount;
  }


  public TokenV3DTO totalValueLocked(String totalValueLocked) {
    
    this.totalValueLocked = totalValueLocked;
    return this;
  }

   /**
   * Get totalValueLocked
   * @return totalValueLocked
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getTotalValueLocked() {
    return totalValueLocked;
  }


  public void setTotalValueLocked(String totalValueLocked) {
    this.totalValueLocked = totalValueLocked;
  }


  public TokenV3DTO totalValueLockedUsd(String totalValueLockedUsd) {
    
    this.totalValueLockedUsd = totalValueLockedUsd;
    return this;
  }

   /**
   * Get totalValueLockedUsd
   * @return totalValueLockedUsd
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getTotalValueLockedUsd() {
    return totalValueLockedUsd;
  }


  public void setTotalValueLockedUsd(String totalValueLockedUsd) {
    this.totalValueLockedUsd = totalValueLockedUsd;
  }


  public TokenV3DTO totalValueLockedUsdUntracked(String totalValueLockedUsdUntracked) {
    
    this.totalValueLockedUsdUntracked = totalValueLockedUsdUntracked;
    return this;
  }

   /**
   * Get totalValueLockedUsdUntracked
   * @return totalValueLockedUsdUntracked
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getTotalValueLockedUsdUntracked() {
    return totalValueLockedUsdUntracked;
  }


  public void setTotalValueLockedUsdUntracked(String totalValueLockedUsdUntracked) {
    this.totalValueLockedUsdUntracked = totalValueLockedUsdUntracked;
  }


  public TokenV3DTO derivedEth(String derivedEth) {
    
    this.derivedEth = derivedEth;
    return this;
  }

   /**
   * Get derivedEth
   * @return derivedEth
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getDerivedEth() {
    return derivedEth;
  }


  public void setDerivedEth(String derivedEth) {
    this.derivedEth = derivedEth;
  }


  public TokenV3DTO whitelistPools(List<String> whitelistPools) {
    
    this.whitelistPools = whitelistPools;
    return this;
  }

  public TokenV3DTO addWhitelistPoolsItem(String whitelistPoolsItem) {
    if (this.whitelistPools == null) {
      this.whitelistPools = new ArrayList<>();
    }
    this.whitelistPools.add(whitelistPoolsItem);
    return this;
  }

   /**
   * Get whitelistPools
   * @return whitelistPools
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<String> getWhitelistPools() {
    return whitelistPools;
  }


  public void setWhitelistPools(List<String> whitelistPools) {
    this.whitelistPools = whitelistPools;
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
    TokenV3DTO tokenV3DTO = (TokenV3DTO) o;
    return Objects.equals(this.entryTime, tokenV3DTO.entryTime) &&
        Objects.equals(this.recvTime, tokenV3DTO.recvTime) &&
        Objects.equals(this.blockNumber, tokenV3DTO.blockNumber) &&
        Objects.equals(this.vid, tokenV3DTO.vid) &&
        Objects.equals(this.id, tokenV3DTO.id) &&
        Objects.equals(this.symbol, tokenV3DTO.symbol) &&
        Objects.equals(this.name, tokenV3DTO.name) &&
        Objects.equals(this.decimals, tokenV3DTO.decimals) &&
        Objects.equals(this.totalSupply, tokenV3DTO.totalSupply) &&
        Objects.equals(this.volume, tokenV3DTO.volume) &&
        Objects.equals(this.volumeUsd, tokenV3DTO.volumeUsd) &&
        Objects.equals(this.untrackedVolumeUsd, tokenV3DTO.untrackedVolumeUsd) &&
        Objects.equals(this.feesUsd, tokenV3DTO.feesUsd) &&
        Objects.equals(this.txCount, tokenV3DTO.txCount) &&
        Objects.equals(this.poolCount, tokenV3DTO.poolCount) &&
        Objects.equals(this.totalValueLocked, tokenV3DTO.totalValueLocked) &&
        Objects.equals(this.totalValueLockedUsd, tokenV3DTO.totalValueLockedUsd) &&
        Objects.equals(this.totalValueLockedUsdUntracked, tokenV3DTO.totalValueLockedUsdUntracked) &&
        Objects.equals(this.derivedEth, tokenV3DTO.derivedEth) &&
        Objects.equals(this.whitelistPools, tokenV3DTO.whitelistPools) &&
        Objects.equals(this.tokenSymbol, tokenV3DTO.tokenSymbol);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, vid, id, symbol, name, decimals, totalSupply, volume, volumeUsd, untrackedVolumeUsd, feesUsd, txCount, poolCount, totalValueLocked, totalValueLockedUsd, totalValueLockedUsdUntracked, derivedEth, whitelistPools, tokenSymbol);
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
    sb.append("class TokenV3DTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    vid: ").append(toIndentedString(vid)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    symbol: ").append(toIndentedString(symbol)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    decimals: ").append(toIndentedString(decimals)).append("\n");
    sb.append("    totalSupply: ").append(toIndentedString(totalSupply)).append("\n");
    sb.append("    volume: ").append(toIndentedString(volume)).append("\n");
    sb.append("    volumeUsd: ").append(toIndentedString(volumeUsd)).append("\n");
    sb.append("    untrackedVolumeUsd: ").append(toIndentedString(untrackedVolumeUsd)).append("\n");
    sb.append("    feesUsd: ").append(toIndentedString(feesUsd)).append("\n");
    sb.append("    txCount: ").append(toIndentedString(txCount)).append("\n");
    sb.append("    poolCount: ").append(toIndentedString(poolCount)).append("\n");
    sb.append("    totalValueLocked: ").append(toIndentedString(totalValueLocked)).append("\n");
    sb.append("    totalValueLockedUsd: ").append(toIndentedString(totalValueLockedUsd)).append("\n");
    sb.append("    totalValueLockedUsdUntracked: ").append(toIndentedString(totalValueLockedUsdUntracked)).append("\n");
    sb.append("    derivedEth: ").append(toIndentedString(derivedEth)).append("\n");
    sb.append("    whitelistPools: ").append(toIndentedString(whitelistPools)).append("\n");
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
    openapiFields.add("volume");
    openapiFields.add("volume_usd");
    openapiFields.add("untracked_volume_usd");
    openapiFields.add("fees_usd");
    openapiFields.add("tx_count");
    openapiFields.add("pool_count");
    openapiFields.add("total_value_locked");
    openapiFields.add("total_value_locked_usd");
    openapiFields.add("total_value_locked_usd_untracked");
    openapiFields.add("derived_eth");
    openapiFields.add("whitelist_pools");
    openapiFields.add("token_symbol");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to TokenV3DTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (TokenV3DTO.openapiRequiredFields.isEmpty()) {
          return;
        } else { // has required fields
          throw new IllegalArgumentException(String.format("The required field(s) %s in TokenV3DTO is not found in the empty JSON string", TokenV3DTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!TokenV3DTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `TokenV3DTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
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
      if ((jsonObj.get("volume") != null && !jsonObj.get("volume").isJsonNull()) && !jsonObj.get("volume").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `volume` to be a primitive type in the JSON string but got `%s`", jsonObj.get("volume").toString()));
      }
      if ((jsonObj.get("volume_usd") != null && !jsonObj.get("volume_usd").isJsonNull()) && !jsonObj.get("volume_usd").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `volume_usd` to be a primitive type in the JSON string but got `%s`", jsonObj.get("volume_usd").toString()));
      }
      if ((jsonObj.get("untracked_volume_usd") != null && !jsonObj.get("untracked_volume_usd").isJsonNull()) && !jsonObj.get("untracked_volume_usd").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `untracked_volume_usd` to be a primitive type in the JSON string but got `%s`", jsonObj.get("untracked_volume_usd").toString()));
      }
      if ((jsonObj.get("fees_usd") != null && !jsonObj.get("fees_usd").isJsonNull()) && !jsonObj.get("fees_usd").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `fees_usd` to be a primitive type in the JSON string but got `%s`", jsonObj.get("fees_usd").toString()));
      }
      // validate the optional field `tx_count`
      if (jsonObj.get("tx_count") != null && !jsonObj.get("tx_count").isJsonNull()) {
        BigInteger.validateJsonObject(jsonObj.getAsJsonObject("tx_count"));
      }
      // validate the optional field `pool_count`
      if (jsonObj.get("pool_count") != null && !jsonObj.get("pool_count").isJsonNull()) {
        BigInteger.validateJsonObject(jsonObj.getAsJsonObject("pool_count"));
      }
      if ((jsonObj.get("total_value_locked") != null && !jsonObj.get("total_value_locked").isJsonNull()) && !jsonObj.get("total_value_locked").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `total_value_locked` to be a primitive type in the JSON string but got `%s`", jsonObj.get("total_value_locked").toString()));
      }
      if ((jsonObj.get("total_value_locked_usd") != null && !jsonObj.get("total_value_locked_usd").isJsonNull()) && !jsonObj.get("total_value_locked_usd").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `total_value_locked_usd` to be a primitive type in the JSON string but got `%s`", jsonObj.get("total_value_locked_usd").toString()));
      }
      if ((jsonObj.get("total_value_locked_usd_untracked") != null && !jsonObj.get("total_value_locked_usd_untracked").isJsonNull()) && !jsonObj.get("total_value_locked_usd_untracked").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `total_value_locked_usd_untracked` to be a primitive type in the JSON string but got `%s`", jsonObj.get("total_value_locked_usd_untracked").toString()));
      }
      if ((jsonObj.get("derived_eth") != null && !jsonObj.get("derived_eth").isJsonNull()) && !jsonObj.get("derived_eth").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `derived_eth` to be a primitive type in the JSON string but got `%s`", jsonObj.get("derived_eth").toString()));
      }
      // ensure the json data is an array
      if ((jsonObj.get("whitelist_pools") != null && !jsonObj.get("whitelist_pools").isJsonNull()) && !jsonObj.get("whitelist_pools").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `whitelist_pools` to be an array in the JSON string but got `%s`", jsonObj.get("whitelist_pools").toString()));
      }
      if ((jsonObj.get("token_symbol") != null && !jsonObj.get("token_symbol").isJsonNull()) && !jsonObj.get("token_symbol").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `token_symbol` to be a primitive type in the JSON string but got `%s`", jsonObj.get("token_symbol").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!TokenV3DTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'TokenV3DTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<TokenV3DTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(TokenV3DTO.class));

       return (TypeAdapter<T>) new TypeAdapter<TokenV3DTO>() {
           @Override
           public void write(JsonWriter out, TokenV3DTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public TokenV3DTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of TokenV3DTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of TokenV3DTO
  * @throws IOException if the JSON string is invalid with respect to TokenV3DTO
  */
  public static TokenV3DTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, TokenV3DTO.class);
  }

 /**
  * Convert an instance of TokenV3DTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

