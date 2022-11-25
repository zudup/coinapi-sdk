/*
 * EMS - REST API
 * This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a href=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Managed Cloud</td>       <td>Sandbox</td>       <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Sandbox</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  <br/><br/> If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this:  <br/><br/> `GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside> 
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
import org.openapitools.client.model.RejectReason;

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
 * MessageReject
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-11-25T12:25:34.927359Z[Etc/UTC]")
public class MessageReject {
  public static final String SERIALIZED_NAME_TYPE = "type";
  @SerializedName(SERIALIZED_NAME_TYPE)
  private String type;

  public static final String SERIALIZED_NAME_REJECT_REASON = "reject_reason";
  @SerializedName(SERIALIZED_NAME_REJECT_REASON)
  private RejectReason rejectReason;

  public static final String SERIALIZED_NAME_EXCHANGE_ID = "exchange_id";
  @SerializedName(SERIALIZED_NAME_EXCHANGE_ID)
  private String exchangeId;

  public static final String SERIALIZED_NAME_MESSAGE = "message";
  @SerializedName(SERIALIZED_NAME_MESSAGE)
  private String message;

  public static final String SERIALIZED_NAME_REJECTED_MESSAGE = "rejected_message";
  @SerializedName(SERIALIZED_NAME_REJECTED_MESSAGE)
  private String rejectedMessage;

  public MessageReject() {
  }

  public MessageReject type(String type) {
    
    this.type = type;
    return this;
  }

   /**
   * Message type, constant.
   * @return type
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "MESSAGE_REJECT", value = "Message type, constant.")

  public String getType() {
    return type;
  }


  public void setType(String type) {
    this.type = type;
  }


  public MessageReject rejectReason(RejectReason rejectReason) {
    
    this.rejectReason = rejectReason;
    return this;
  }

   /**
   * Get rejectReason
   * @return rejectReason
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public RejectReason getRejectReason() {
    return rejectReason;
  }


  public void setRejectReason(RejectReason rejectReason) {
    this.rejectReason = rejectReason;
  }


  public MessageReject exchangeId(String exchangeId) {
    
    this.exchangeId = exchangeId;
    return this;
  }

   /**
   * If the message related to exchange, then the identifier of the exchange will be provided.
   * @return exchangeId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "BINANCE", value = "If the message related to exchange, then the identifier of the exchange will be provided.")

  public String getExchangeId() {
    return exchangeId;
  }


  public void setExchangeId(String exchangeId) {
    this.exchangeId = exchangeId;
  }


  public MessageReject message(String message) {
    
    this.message = message;
    return this;
  }

   /**
   * Message text.
   * @return message
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "Order with ID: BINANCE-7d8a-4888 not found", value = "Message text.")

  public String getMessage() {
    return message;
  }


  public void setMessage(String message) {
    this.message = message;
  }


  public MessageReject rejectedMessage(String rejectedMessage) {
    
    this.rejectedMessage = rejectedMessage;
    return this;
  }

   /**
   * Value of rejected request, if available.
   * @return rejectedMessage
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "{\"client_order_id\":\"BINANCE-7d8a-4888\",\"exchange_id\":\"BINANCE\",\"type\":\"ORDER_CANCEL_SINGLE_REQUEST\"}", value = "Value of rejected request, if available.")

  public String getRejectedMessage() {
    return rejectedMessage;
  }


  public void setRejectedMessage(String rejectedMessage) {
    this.rejectedMessage = rejectedMessage;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    MessageReject messageReject = (MessageReject) o;
    return Objects.equals(this.type, messageReject.type) &&
        Objects.equals(this.rejectReason, messageReject.rejectReason) &&
        Objects.equals(this.exchangeId, messageReject.exchangeId) &&
        Objects.equals(this.message, messageReject.message) &&
        Objects.equals(this.rejectedMessage, messageReject.rejectedMessage);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, rejectReason, exchangeId, message, rejectedMessage);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class MessageReject {\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    rejectReason: ").append(toIndentedString(rejectReason)).append("\n");
    sb.append("    exchangeId: ").append(toIndentedString(exchangeId)).append("\n");
    sb.append("    message: ").append(toIndentedString(message)).append("\n");
    sb.append("    rejectedMessage: ").append(toIndentedString(rejectedMessage)).append("\n");
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
    openapiFields.add("type");
    openapiFields.add("reject_reason");
    openapiFields.add("exchange_id");
    openapiFields.add("message");
    openapiFields.add("rejected_message");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to MessageReject
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!MessageReject.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in MessageReject is not found in the empty JSON string", MessageReject.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!MessageReject.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `MessageReject` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if ((jsonObj.get("type") != null && !jsonObj.get("type").isJsonNull()) && !jsonObj.get("type").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `type` to be a primitive type in the JSON string but got `%s`", jsonObj.get("type").toString()));
      }
      if ((jsonObj.get("exchange_id") != null && !jsonObj.get("exchange_id").isJsonNull()) && !jsonObj.get("exchange_id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `exchange_id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("exchange_id").toString()));
      }
      if ((jsonObj.get("message") != null && !jsonObj.get("message").isJsonNull()) && !jsonObj.get("message").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `message` to be a primitive type in the JSON string but got `%s`", jsonObj.get("message").toString()));
      }
      if ((jsonObj.get("rejected_message") != null && !jsonObj.get("rejected_message").isJsonNull()) && !jsonObj.get("rejected_message").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `rejected_message` to be a primitive type in the JSON string but got `%s`", jsonObj.get("rejected_message").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!MessageReject.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'MessageReject' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<MessageReject> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(MessageReject.class));

       return (TypeAdapter<T>) new TypeAdapter<MessageReject>() {
           @Override
           public void write(JsonWriter out, MessageReject value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public MessageReject read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of MessageReject given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of MessageReject
  * @throws IOException if the JSON string is invalid with respect to MessageReject
  */
  public static MessageReject fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, MessageReject.class);
  }

 /**
  * Convert an instance of MessageReject to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

