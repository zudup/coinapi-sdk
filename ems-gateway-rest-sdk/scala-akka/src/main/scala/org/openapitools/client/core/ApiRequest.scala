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
package org.openapitools.client.core

sealed trait ResponseState

object ResponseState {

  case object Success extends ResponseState

  case object Error extends ResponseState

}

case class ApiRequest[U](
  // required fields
  method: ApiMethod,
  basePath: String,
  operationPath: String,
  contentType: String,

  // optional fields
  responses: Map[Int, (Manifest[_], ResponseState)] = Map.empty,
  bodyParam: Option[Any] = None,
  formParams: Map[String, Any] = Map.empty,
  pathParams: Map[String, Any] = Map.empty,
  queryParams: Map[String, Any] = Map.empty,
  headerParams: Map[String, Any] = Map.empty,
  credentials: Seq[Credentials] = List.empty) {

  def withCredentials(cred: Credentials): ApiRequest[U] = copy[U](credentials = credentials :+ cred)

  def withApiKey(key: ApiKeyValue, keyName: String, location: ApiKeyLocation): ApiRequest[U] = withCredentials(ApiKeyCredentials(key, keyName, location))

  def withSuccessResponse[T](code: Int)(implicit m: Manifest[T]): ApiRequest[U] = copy[U](responses = responses + (code -> (m, ResponseState.Success)))

  def withErrorResponse[T](code: Int)(implicit m: Manifest[T]): ApiRequest[U] = copy[U](responses = responses + (code -> (m, ResponseState.Error)))

  def withDefaultSuccessResponse[T](implicit m: Manifest[T]): ApiRequest[U] = withSuccessResponse[T](0)

  def withDefaultErrorResponse[T](implicit m: Manifest[T]): ApiRequest[U] = withErrorResponse[T](0)

  def responseForCode(statusCode: Int): Option[(Manifest[_], ResponseState)] = responses.get(statusCode) orElse responses.get(0)

  def withoutBody(): ApiRequest[U] = copy[U](bodyParam = None)

  def withBody(body: Any): ApiRequest[U] = copy[U](bodyParam = Some(body))

  def withFormParam(name: String, value: Any): ApiRequest[U] = copy[U](formParams = formParams + (name -> value))

  def withPathParam(name: String, value: Any): ApiRequest[U] = copy[U](pathParams = pathParams + (name -> value))

  def withQueryParam(name: String, value: Any): ApiRequest[U] = copy[U](queryParams = queryParams + (name -> value))

  def withHeaderParam(name: String, value: Any): ApiRequest[U] = copy[U](headerParams = headerParams + (name -> value))
}
