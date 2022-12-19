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
 * CurveProposalVoteDTO
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-12-19T14:22:28.350004Z[Etc/UTC]")
public class CurveProposalVoteDTO {
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

  public static final String SERIALIZED_NAME_PROPOSAL = "proposal";
  @SerializedName(SERIALIZED_NAME_PROPOSAL)
  private String proposal;

  public static final String SERIALIZED_NAME_SUPPORTS = "supports";
  @SerializedName(SERIALIZED_NAME_SUPPORTS)
  private Boolean supports;

  public static final String SERIALIZED_NAME_STAKE = "stake";
  @SerializedName(SERIALIZED_NAME_STAKE)
  private String stake;

  public static final String SERIALIZED_NAME_VOTER = "voter";
  @SerializedName(SERIALIZED_NAME_VOTER)
  private String voter;

  public static final String SERIALIZED_NAME_CREATED = "created";
  @SerializedName(SERIALIZED_NAME_CREATED)
  private String created;

  public static final String SERIALIZED_NAME_CREATED_AT_BLOCK = "created_at_block";
  @SerializedName(SERIALIZED_NAME_CREATED_AT_BLOCK)
  private String createdAtBlock;

  public static final String SERIALIZED_NAME_CREATED_AT_TRANSACTION = "created_at_transaction";
  @SerializedName(SERIALIZED_NAME_CREATED_AT_TRANSACTION)
  private String createdAtTransaction;

  public static final String SERIALIZED_NAME_VID = "vid";
  @SerializedName(SERIALIZED_NAME_VID)
  private Long vid;

  public CurveProposalVoteDTO() {
  }

  public CurveProposalVoteDTO entryTime(OffsetDateTime entryTime) {
    
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


  public CurveProposalVoteDTO recvTime(OffsetDateTime recvTime) {
    
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


  public CurveProposalVoteDTO blockNumber(Long blockNumber) {
    
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


  public CurveProposalVoteDTO id(String id) {
    
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


  public CurveProposalVoteDTO proposal(String proposal) {
    
    this.proposal = proposal;
    return this;
  }

   /**
   * 
   * @return proposal
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getProposal() {
    return proposal;
  }


  public void setProposal(String proposal) {
    this.proposal = proposal;
  }


  public CurveProposalVoteDTO supports(Boolean supports) {
    
    this.supports = supports;
    return this;
  }

   /**
   * 
   * @return supports
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Boolean getSupports() {
    return supports;
  }


  public void setSupports(Boolean supports) {
    this.supports = supports;
  }


  public CurveProposalVoteDTO stake(String stake) {
    
    this.stake = stake;
    return this;
  }

   /**
   * 
   * @return stake
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getStake() {
    return stake;
  }


  public void setStake(String stake) {
    this.stake = stake;
  }


  public CurveProposalVoteDTO voter(String voter) {
    
    this.voter = voter;
    return this;
  }

   /**
   * 
   * @return voter
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getVoter() {
    return voter;
  }


  public void setVoter(String voter) {
    this.voter = voter;
  }


  public CurveProposalVoteDTO created(String created) {
    
    this.created = created;
    return this;
  }

   /**
   * 
   * @return created
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getCreated() {
    return created;
  }


  public void setCreated(String created) {
    this.created = created;
  }


  public CurveProposalVoteDTO createdAtBlock(String createdAtBlock) {
    
    this.createdAtBlock = createdAtBlock;
    return this;
  }

   /**
   * 
   * @return createdAtBlock
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getCreatedAtBlock() {
    return createdAtBlock;
  }


  public void setCreatedAtBlock(String createdAtBlock) {
    this.createdAtBlock = createdAtBlock;
  }


  public CurveProposalVoteDTO createdAtTransaction(String createdAtTransaction) {
    
    this.createdAtTransaction = createdAtTransaction;
    return this;
  }

   /**
   * 
   * @return createdAtTransaction
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getCreatedAtTransaction() {
    return createdAtTransaction;
  }


  public void setCreatedAtTransaction(String createdAtTransaction) {
    this.createdAtTransaction = createdAtTransaction;
  }


  public CurveProposalVoteDTO vid(Long vid) {
    
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
    CurveProposalVoteDTO curveProposalVoteDTO = (CurveProposalVoteDTO) o;
    return Objects.equals(this.entryTime, curveProposalVoteDTO.entryTime) &&
        Objects.equals(this.recvTime, curveProposalVoteDTO.recvTime) &&
        Objects.equals(this.blockNumber, curveProposalVoteDTO.blockNumber) &&
        Objects.equals(this.id, curveProposalVoteDTO.id) &&
        Objects.equals(this.proposal, curveProposalVoteDTO.proposal) &&
        Objects.equals(this.supports, curveProposalVoteDTO.supports) &&
        Objects.equals(this.stake, curveProposalVoteDTO.stake) &&
        Objects.equals(this.voter, curveProposalVoteDTO.voter) &&
        Objects.equals(this.created, curveProposalVoteDTO.created) &&
        Objects.equals(this.createdAtBlock, curveProposalVoteDTO.createdAtBlock) &&
        Objects.equals(this.createdAtTransaction, curveProposalVoteDTO.createdAtTransaction) &&
        Objects.equals(this.vid, curveProposalVoteDTO.vid);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(entryTime, recvTime, blockNumber, id, proposal, supports, stake, voter, created, createdAtBlock, createdAtTransaction, vid);
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
    sb.append("class CurveProposalVoteDTO {\n");
    sb.append("    entryTime: ").append(toIndentedString(entryTime)).append("\n");
    sb.append("    recvTime: ").append(toIndentedString(recvTime)).append("\n");
    sb.append("    blockNumber: ").append(toIndentedString(blockNumber)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    proposal: ").append(toIndentedString(proposal)).append("\n");
    sb.append("    supports: ").append(toIndentedString(supports)).append("\n");
    sb.append("    stake: ").append(toIndentedString(stake)).append("\n");
    sb.append("    voter: ").append(toIndentedString(voter)).append("\n");
    sb.append("    created: ").append(toIndentedString(created)).append("\n");
    sb.append("    createdAtBlock: ").append(toIndentedString(createdAtBlock)).append("\n");
    sb.append("    createdAtTransaction: ").append(toIndentedString(createdAtTransaction)).append("\n");
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
    openapiFields.add("proposal");
    openapiFields.add("supports");
    openapiFields.add("stake");
    openapiFields.add("voter");
    openapiFields.add("created");
    openapiFields.add("created_at_block");
    openapiFields.add("created_at_transaction");
    openapiFields.add("vid");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to CurveProposalVoteDTO
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!CurveProposalVoteDTO.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in CurveProposalVoteDTO is not found in the empty JSON string", CurveProposalVoteDTO.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!CurveProposalVoteDTO.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `CurveProposalVoteDTO` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("proposal") != null && !jsonObj.get("proposal").isJsonNull()) && !jsonObj.get("proposal").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `proposal` to be a primitive type in the JSON string but got `%s`", jsonObj.get("proposal").toString()));
      }
      if ((jsonObj.get("stake") != null && !jsonObj.get("stake").isJsonNull()) && !jsonObj.get("stake").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `stake` to be a primitive type in the JSON string but got `%s`", jsonObj.get("stake").toString()));
      }
      if ((jsonObj.get("voter") != null && !jsonObj.get("voter").isJsonNull()) && !jsonObj.get("voter").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `voter` to be a primitive type in the JSON string but got `%s`", jsonObj.get("voter").toString()));
      }
      if ((jsonObj.get("created") != null && !jsonObj.get("created").isJsonNull()) && !jsonObj.get("created").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `created` to be a primitive type in the JSON string but got `%s`", jsonObj.get("created").toString()));
      }
      if ((jsonObj.get("created_at_block") != null && !jsonObj.get("created_at_block").isJsonNull()) && !jsonObj.get("created_at_block").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `created_at_block` to be a primitive type in the JSON string but got `%s`", jsonObj.get("created_at_block").toString()));
      }
      if ((jsonObj.get("created_at_transaction") != null && !jsonObj.get("created_at_transaction").isJsonNull()) && !jsonObj.get("created_at_transaction").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `created_at_transaction` to be a primitive type in the JSON string but got `%s`", jsonObj.get("created_at_transaction").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!CurveProposalVoteDTO.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'CurveProposalVoteDTO' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<CurveProposalVoteDTO> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(CurveProposalVoteDTO.class));

       return (TypeAdapter<T>) new TypeAdapter<CurveProposalVoteDTO>() {
           @Override
           public void write(JsonWriter out, CurveProposalVoteDTO value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public CurveProposalVoteDTO read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of CurveProposalVoteDTO given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of CurveProposalVoteDTO
  * @throws IOException if the JSON string is invalid with respect to CurveProposalVoteDTO
  */
  public static CurveProposalVoteDTO fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, CurveProposalVoteDTO.class);
  }

 /**
  * Convert an instance of CurveProposalVoteDTO to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

