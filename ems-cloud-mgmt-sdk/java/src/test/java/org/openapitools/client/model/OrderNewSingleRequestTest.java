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

import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.client.model.OrdSide;
import org.openapitools.client.model.OrdType;
import org.openapitools.client.model.TimeInForce;
import org.threeten.bp.LocalDate;
import org.junit.Assert;
import org.junit.Ignore;
import org.junit.Test;


/**
 * Model tests for OrderNewSingleRequest
 */
public class OrderNewSingleRequestTest {
    private final OrderNewSingleRequest model = new OrderNewSingleRequest();

    /**
     * Model tests for OrderNewSingleRequest
     */
    @Test
    public void testOrderNewSingleRequest() {
        // TODO: test OrderNewSingleRequest
    }

    /**
     * Test the property 'exchangeId'
     */
    @Test
    public void exchangeIdTest() {
        // TODO: test exchangeId
    }

    /**
     * Test the property 'clientOrderId'
     */
    @Test
    public void clientOrderIdTest() {
        // TODO: test clientOrderId
    }

    /**
     * Test the property 'symbolIdExchange'
     */
    @Test
    public void symbolIdExchangeTest() {
        // TODO: test symbolIdExchange
    }

    /**
     * Test the property 'symbolIdCoinapi'
     */
    @Test
    public void symbolIdCoinapiTest() {
        // TODO: test symbolIdCoinapi
    }

    /**
     * Test the property 'amountOrder'
     */
    @Test
    public void amountOrderTest() {
        // TODO: test amountOrder
    }

    /**
     * Test the property 'price'
     */
    @Test
    public void priceTest() {
        // TODO: test price
    }

    /**
     * Test the property 'side'
     */
    @Test
    public void sideTest() {
        // TODO: test side
    }

    /**
     * Test the property 'orderType'
     */
    @Test
    public void orderTypeTest() {
        // TODO: test orderType
    }

    /**
     * Test the property 'timeInForce'
     */
    @Test
    public void timeInForceTest() {
        // TODO: test timeInForce
    }

    /**
     * Test the property 'expireTime'
     */
    @Test
    public void expireTimeTest() {
        // TODO: test expireTime
    }

    /**
     * Test the property 'execInst'
     */
    @Test
    public void execInstTest() {
        // TODO: test execInst
    }

}
