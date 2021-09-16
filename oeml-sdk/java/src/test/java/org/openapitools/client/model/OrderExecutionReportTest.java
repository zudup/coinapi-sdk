/*
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
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
import org.openapitools.client.model.Fills;
import org.openapitools.client.model.OrdSide;
import org.openapitools.client.model.OrdStatus;
import org.openapitools.client.model.OrdType;
import org.openapitools.client.model.OrderExecutionReportAllOf;
import org.openapitools.client.model.OrderNewSingleRequest;
import org.openapitools.client.model.TimeInForce;
import org.threeten.bp.LocalDate;
import org.junit.Assert;
import org.junit.Ignore;
import org.junit.Test;


/**
 * Model tests for OrderExecutionReport
 */
public class OrderExecutionReportTest {
    private final OrderExecutionReport model = new OrderExecutionReport();

    /**
     * Model tests for OrderExecutionReport
     */
    @Test
    public void testOrderExecutionReport() {
        // TODO: test OrderExecutionReport
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

    /**
     * Test the property 'clientOrderIdFormatExchange'
     */
    @Test
    public void clientOrderIdFormatExchangeTest() {
        // TODO: test clientOrderIdFormatExchange
    }

    /**
     * Test the property 'exchangeOrderId'
     */
    @Test
    public void exchangeOrderIdTest() {
        // TODO: test exchangeOrderId
    }

    /**
     * Test the property 'amountOpen'
     */
    @Test
    public void amountOpenTest() {
        // TODO: test amountOpen
    }

    /**
     * Test the property 'amountFilled'
     */
    @Test
    public void amountFilledTest() {
        // TODO: test amountFilled
    }

    /**
     * Test the property 'avgPx'
     */
    @Test
    public void avgPxTest() {
        // TODO: test avgPx
    }

    /**
     * Test the property 'status'
     */
    @Test
    public void statusTest() {
        // TODO: test status
    }

    /**
     * Test the property 'statusHistory'
     */
    @Test
    public void statusHistoryTest() {
        // TODO: test statusHistory
    }

    /**
     * Test the property 'errorMessage'
     */
    @Test
    public void errorMessageTest() {
        // TODO: test errorMessage
    }

    /**
     * Test the property 'fills'
     */
    @Test
    public void fillsTest() {
        // TODO: test fills
    }

}
