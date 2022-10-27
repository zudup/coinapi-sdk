/**
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
package org.openapitools.client.api

import java.time.OffsetDateTime
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

object DexApi {

  def apply(baseUrl: String = "https://onchain.coinapi.io") = new DexApi(baseUrl)
}

class DexApi(baseUrl: String) {

  /**
   * Expected answers:
   *   code 200 :  (Success)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   */
  def dappsDexBatchHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/dex/batch/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withSuccessResponse[Unit](200)
      

  /**
   * Expected answers:
   *   code 200 :  (Success)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param tokenId 
   */
  def dappsDexOrdersHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, tokenId: Option[String] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/dex/orders/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("tokenId", tokenId)
      .withSuccessResponse[Unit](200)
      

  /**
   * Expected answers:
   *   code 200 :  (Success)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   */
  def dappsDexPoiHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/dex/poi/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withSuccessResponse[Unit](200)
      

  /**
   * Expected answers:
   *   code 200 :  (Success)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param tokenId 
   */
  def dappsDexPricesHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, tokenId: Option[String] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/dex/prices/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("tokenId", tokenId)
      .withSuccessResponse[Unit](200)
      

  /**
   * Expected answers:
   *   code 200 :  (Success)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param tokenId 
   */
  def dappsDexSolutionHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, tokenId: Option[String] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/dex/solution/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("tokenId", tokenId)
      .withSuccessResponse[Unit](200)
      

  /**
   * Expected answers:
   *   code 200 :  (Success)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   */
  def dappsDexStatsHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/dex/stats/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withSuccessResponse[Unit](200)
      

  /**
   * Expected answers:
   *   code 200 :  (Success)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param tokenId 
   */
  def dappsDexTokensHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, tokenId: Option[String] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/dex/tokens/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("tokenId", tokenId)
      .withSuccessResponse[Unit](200)
      

  /**
   * Expected answers:
   *   code 200 :  (Success)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   */
  def dappsDexTradesHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/dex/trades/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withSuccessResponse[Unit](200)
      

  /**
   * Expected answers:
   *   code 200 :  (Success)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   */
  def dappsDexUsersHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/dex/users/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withSuccessResponse[Unit](200)
      

  /**
   * Expected answers:
   *   code 200 :  (Success)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param tokenId 
   */
  def dappsDexWithdrawHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, tokenId: Option[String] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/dex/withdraw/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("tokenId", tokenId)
      .withSuccessResponse[Unit](200)
      

  /**
   * Expected answers:
   *   code 200 :  (Success)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param tokenId 
   */
  def dappsDexWithdrawRequestHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, tokenId: Option[String] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/dex/withdrawRequest/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("tokenId", tokenId)
      .withSuccessResponse[Unit](200)
      



}
