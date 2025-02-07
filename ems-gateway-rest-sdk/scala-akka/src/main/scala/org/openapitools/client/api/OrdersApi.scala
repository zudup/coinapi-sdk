/**
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
package org.openapitools.client.api

import org.openapitools.client.model.MessageError
import org.openapitools.client.model.MessageReject
import org.openapitools.client.model.OrderCancelAllRequest
import org.openapitools.client.model.OrderCancelSingleRequest
import org.openapitools.client.model.OrderExecutionReport
import org.openapitools.client.model.OrderHistory
import org.openapitools.client.model.OrderNewSingleRequest
import org.openapitools.client.model.ValidationError
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

object OrdersApi {

  def apply(baseUrl: String = "https://ems-gateway-aws-eu-central-1-dev.coinapi.io") = new OrdersApi(baseUrl)
}

class OrdersApi(baseUrl: String) {

  /**
   * This request cancels all open orders on single specified exchange.
   * 
   * Expected answers:
   *   code 200 : MessageReject (Result)
   *   code 400 : ValidationError (Input model validation errors.)
   *   code 490 : MessageReject (Exchange is unreachable.)
   * 
   * @param orderCancelAllRequest OrderCancelAllRequest object.
   */
  def v1OrdersCancelAllPost(orderCancelAllRequest: OrderCancelAllRequest): ApiRequest[MessageReject] =
    ApiRequest[MessageReject](ApiMethods.POST, baseUrl, "/v1/orders/cancel/all", "application/json")
      .withBody(orderCancelAllRequest)
      .withSuccessResponse[MessageReject](200)
      .withErrorResponse[ValidationError](400)
      .withErrorResponse[MessageReject](490)
      

  /**
   * Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.
   * 
   * Expected answers:
   *   code 200 : OrderExecutionReport (The last execution report for the order for which cancelation was requested.)
   *   code 400 : ValidationError (Input model validation errors.)
   *   code 490 : MessageReject (Exchange is unreachable.)
   * 
   * @param orderCancelSingleRequest OrderCancelSingleRequest object.
   */
  def v1OrdersCancelPost(orderCancelSingleRequest: OrderCancelSingleRequest): ApiRequest[OrderExecutionReport] =
    ApiRequest[OrderExecutionReport](ApiMethods.POST, baseUrl, "/v1/orders/cancel", "application/json")
      .withBody(orderCancelSingleRequest)
      .withSuccessResponse[OrderExecutionReport](200)
      .withErrorResponse[ValidationError](400)
      .withErrorResponse[MessageReject](490)
      

  /**
   * Get last execution reports for open orders across all or single exchange.
   * 
   * Expected answers:
   *   code 200 : Seq[OrderExecutionReport] (Collection of order execution reports.)
   *   code 490 : MessageReject (Filtered exchange is unreachable.)
   * 
   * @param exchangeId Filter the open orders to the specific exchange.
   */
  def v1OrdersGet(exchangeId: Option[String] = None): ApiRequest[Seq[OrderExecutionReport]] =
    ApiRequest[Seq[OrderExecutionReport]](ApiMethods.GET, baseUrl, "/v1/orders", "application/json")
      .withQueryParam("exchange_id", exchangeId)
      .withSuccessResponse[Seq[OrderExecutionReport]](200)
      .withErrorResponse[MessageReject](490)
      

  /**
   * Based on the date range, all changes registered in the orderbook.
   * 
   * Expected answers:
   *   code 200 : Seq[OrderHistory] (The last execution report of the requested order.)
   *   code 400 : MessageError (Orders log is not configured.)
   * 
   * @param timeStart Start date
   * @param timeEnd End date
   */
  def v1OrdersHistoryTimeStartTimeEndGet(timeStart: String, timeEnd: String): ApiRequest[Seq[OrderHistory]] =
    ApiRequest[Seq[OrderHistory]](ApiMethods.GET, baseUrl, "/v1/orders/history/{time_start}/{time_end}", "application/json")
      .withPathParam("time_start", timeStart)
      .withPathParam("time_end", timeEnd)
      .withSuccessResponse[Seq[OrderHistory]](200)
      .withErrorResponse[MessageError](400)
      

  /**
   * This request creating new order for the specific exchange.
   * 
   * Expected answers:
   *   code 200 : OrderExecutionReport (Created)
   *   code 400 : ValidationError (Input model validation errors.)
   *   code 490 : MessageReject (Exchange is unreachable.)
   *   code 504 : MessageReject (Exchange didn't responded in the defined timeout.)
   * 
   * @param orderNewSingleRequest OrderNewSingleRequest object.
   */
  def v1OrdersPost(orderNewSingleRequest: OrderNewSingleRequest): ApiRequest[OrderExecutionReport] =
    ApiRequest[OrderExecutionReport](ApiMethods.POST, baseUrl, "/v1/orders", "application/json")
      .withBody(orderNewSingleRequest)
      .withSuccessResponse[OrderExecutionReport](200)
      .withErrorResponse[ValidationError](400)
      .withErrorResponse[MessageReject](490)
      .withErrorResponse[MessageReject](504)
      

  /**
   * Get the last order execution report for the specified order. The requested order does not need to be active or opened.
   * 
   * Expected answers:
   *   code 200 : OrderExecutionReport (The last execution report of the requested order.)
   *   code 404 : MessageReject (The requested order was not found.)
   * 
   * @param clientOrderId The unique identifier of the order assigned by the client.
   */
  def v1OrdersStatusClientOrderIdGet(clientOrderId: String): ApiRequest[OrderExecutionReport] =
    ApiRequest[OrderExecutionReport](ApiMethods.GET, baseUrl, "/v1/orders/status/{client_order_id}", "application/json")
      .withPathParam("client_order_id", clientOrderId)
      .withSuccessResponse[OrderExecutionReport](200)
      .withErrorResponse[MessageReject](404)
      



}

