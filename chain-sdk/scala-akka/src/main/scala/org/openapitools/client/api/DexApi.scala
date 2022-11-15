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

import org.openapitools.client.model.BatchDTO
import org.openapitools.client.model.DepositDTO
import java.time.OffsetDateTime
import org.openapitools.client.model.OrderDTO
import org.openapitools.client.model.PriceDTO
import org.openapitools.client.model.SolutionDTO
import org.openapitools.client.model.StatsDTO
import org.openapitools.client.model.TokenDTO
import org.openapitools.client.model.TradeDTO
import org.openapitools.client.model.UserDTO
import org.openapitools.client.model.WithdrawDTO
import org.openapitools.client.model.WithdrawRequestDTO
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

object DexApi {

  def apply(baseUrl: String = "https://onchain.coinapi.io") = new DexApi(baseUrl)
}

class DexApi(baseUrl: String) {

  /**
   * Gets BatchDTOs.
   * 
   * Expected answers:
   *   code 200 : Seq[BatchDTO] (successful operation)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param poolId 
   */
  def dexGetBatchDTOsHistorical(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, poolId: Option[String] = None): ApiRequest[Seq[BatchDTO]] =
    ApiRequest[Seq[BatchDTO]](ApiMethods.GET, baseUrl, "/dapps/dex/BatchDTOs/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("poolId", poolId)
      .withSuccessResponse[Seq[BatchDTO]](200)
      

  /**
   * Gets batches.
   * 
   * Expected answers:
   *   code 200 : Seq[BatchDTO] (successful operation)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   */
  def dexGetBatchesHistorical(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None): ApiRequest[Seq[BatchDTO]] =
    ApiRequest[Seq[BatchDTO]](ApiMethods.GET, baseUrl, "/dapps/dex/batches/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withSuccessResponse[Seq[BatchDTO]](200)
      

  /**
   * Gets DepositDTOs.
   * 
   * Expected answers:
   *   code 200 : Seq[DepositDTO] (successful operation)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param poolId 
   */
  def dexGetDepositDTOsHistorical(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, poolId: Option[String] = None): ApiRequest[Seq[DepositDTO]] =
    ApiRequest[Seq[DepositDTO]](ApiMethods.GET, baseUrl, "/dapps/dex/DepositDTOs/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("poolId", poolId)
      .withSuccessResponse[Seq[DepositDTO]](200)
      

  /**
   * Gets deposits.
   * 
   * Expected answers:
   *   code 200 : Seq[DepositDTO] (successful operation)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param tokenId 
   */
  def dexGetDepositsHistorical(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, tokenId: Option[String] = None): ApiRequest[Seq[DepositDTO]] =
    ApiRequest[Seq[DepositDTO]](ApiMethods.GET, baseUrl, "/dapps/dex/deposits/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("tokenId", tokenId)
      .withSuccessResponse[Seq[DepositDTO]](200)
      

  /**
   * Gets OrderDTOs.
   * 
   * Expected answers:
   *   code 200 : Seq[OrderDTO] (successful operation)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param poolId 
   */
  def dexGetOrderDTOsHistorical(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, poolId: Option[String] = None): ApiRequest[Seq[OrderDTO]] =
    ApiRequest[Seq[OrderDTO]](ApiMethods.GET, baseUrl, "/dapps/dex/OrderDTOs/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("poolId", poolId)
      .withSuccessResponse[Seq[OrderDTO]](200)
      

  /**
   * Gets orders.
   * 
   * Expected answers:
   *   code 200 : Seq[OrderDTO] (successful operation)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param tokenId 
   */
  def dexGetOrdersHistorical(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, tokenId: Option[String] = None): ApiRequest[Seq[OrderDTO]] =
    ApiRequest[Seq[OrderDTO]](ApiMethods.GET, baseUrl, "/dapps/dex/orders/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("tokenId", tokenId)
      .withSuccessResponse[Seq[OrderDTO]](200)
      

  /**
   * Gets PriceDTOs.
   * 
   * Expected answers:
   *   code 200 : Seq[PriceDTO] (successful operation)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param poolId 
   */
  def dexGetPriceDTOsHistorical(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, poolId: Option[String] = None): ApiRequest[Seq[PriceDTO]] =
    ApiRequest[Seq[PriceDTO]](ApiMethods.GET, baseUrl, "/dapps/dex/PriceDTOs/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("poolId", poolId)
      .withSuccessResponse[Seq[PriceDTO]](200)
      

  /**
   * Gets prices.
   * 
   * Expected answers:
   *   code 200 : Seq[PriceDTO] (successful operation)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param tokenId 
   */
  def dexGetPricesHistorical(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, tokenId: Option[String] = None): ApiRequest[Seq[PriceDTO]] =
    ApiRequest[Seq[PriceDTO]](ApiMethods.GET, baseUrl, "/dapps/dex/prices/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("tokenId", tokenId)
      .withSuccessResponse[Seq[PriceDTO]](200)
      

  /**
   * Gets SolutionDTOs.
   * 
   * Expected answers:
   *   code 200 : Seq[SolutionDTO] (successful operation)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param poolId 
   */
  def dexGetSolutionDTOsHistorical(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, poolId: Option[String] = None): ApiRequest[Seq[SolutionDTO]] =
    ApiRequest[Seq[SolutionDTO]](ApiMethods.GET, baseUrl, "/dapps/dex/SolutionDTOs/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("poolId", poolId)
      .withSuccessResponse[Seq[SolutionDTO]](200)
      

  /**
   * Gets solutions.
   * 
   * Expected answers:
   *   code 200 : Seq[SolutionDTO] (successful operation)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param tokenId 
   */
  def dexGetSolutionsHistorical(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, tokenId: Option[String] = None): ApiRequest[Seq[SolutionDTO]] =
    ApiRequest[Seq[SolutionDTO]](ApiMethods.GET, baseUrl, "/dapps/dex/solutions/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("tokenId", tokenId)
      .withSuccessResponse[Seq[SolutionDTO]](200)
      

  /**
   * Gets StatsDTOs.
   * 
   * Expected answers:
   *   code 200 : Seq[StatsDTO] (successful operation)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param poolId 
   */
  def dexGetStatsDTOsHistorical(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, poolId: Option[String] = None): ApiRequest[Seq[StatsDTO]] =
    ApiRequest[Seq[StatsDTO]](ApiMethods.GET, baseUrl, "/dapps/dex/StatsDTOs/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("poolId", poolId)
      .withSuccessResponse[Seq[StatsDTO]](200)
      

  /**
   * Gets stats.
   * 
   * Expected answers:
   *   code 200 : Seq[StatsDTO] (successful operation)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   */
  def dexGetStatsHistorical(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None): ApiRequest[Seq[StatsDTO]] =
    ApiRequest[Seq[StatsDTO]](ApiMethods.GET, baseUrl, "/dapps/dex/stats/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withSuccessResponse[Seq[StatsDTO]](200)
      

  /**
   * Gets TokenDTOs.
   * 
   * Expected answers:
   *   code 200 : Seq[TokenDTO] (successful operation)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param poolId 
   */
  def dexGetTokenDTOsHistorical(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, poolId: Option[String] = None): ApiRequest[Seq[TokenDTO]] =
    ApiRequest[Seq[TokenDTO]](ApiMethods.GET, baseUrl, "/dapps/dex/TokenDTOs/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("poolId", poolId)
      .withSuccessResponse[Seq[TokenDTO]](200)
      

  /**
   * Gets tokens.
   * 
   * Expected answers:
   *   code 200 : Seq[TokenDTO] (successful operation)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param tokenId 
   */
  def dexGetTokensHistorical(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, tokenId: Option[String] = None): ApiRequest[Seq[TokenDTO]] =
    ApiRequest[Seq[TokenDTO]](ApiMethods.GET, baseUrl, "/dapps/dex/tokens/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("tokenId", tokenId)
      .withSuccessResponse[Seq[TokenDTO]](200)
      

  /**
   * Gets TradeDTOs.
   * 
   * Expected answers:
   *   code 200 : Seq[TradeDTO] (successful operation)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param poolId 
   */
  def dexGetTradeDTOsHistorical(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, poolId: Option[String] = None): ApiRequest[Seq[TradeDTO]] =
    ApiRequest[Seq[TradeDTO]](ApiMethods.GET, baseUrl, "/dapps/dex/TradeDTOs/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("poolId", poolId)
      .withSuccessResponse[Seq[TradeDTO]](200)
      

  /**
   * Gets trades.
   * 
   * Expected answers:
   *   code 200 : Seq[TradeDTO] (successful operation)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   */
  def dexGetTradesHistorical(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None): ApiRequest[Seq[TradeDTO]] =
    ApiRequest[Seq[TradeDTO]](ApiMethods.GET, baseUrl, "/dapps/dex/trades/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withSuccessResponse[Seq[TradeDTO]](200)
      

  /**
   * Gets UserDTOs.
   * 
   * Expected answers:
   *   code 200 : Seq[UserDTO] (successful operation)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param poolId 
   */
  def dexGetUserDTOsHistorical(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, poolId: Option[String] = None): ApiRequest[Seq[UserDTO]] =
    ApiRequest[Seq[UserDTO]](ApiMethods.GET, baseUrl, "/dapps/dex/UserDTOs/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("poolId", poolId)
      .withSuccessResponse[Seq[UserDTO]](200)
      

  /**
   * Gets users.
   * 
   * Expected answers:
   *   code 200 : Seq[UserDTO] (successful operation)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   */
  def dexGetUsersHistorical(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None): ApiRequest[Seq[UserDTO]] =
    ApiRequest[Seq[UserDTO]](ApiMethods.GET, baseUrl, "/dapps/dex/users/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withSuccessResponse[Seq[UserDTO]](200)
      

  /**
   * Gets WithdrawDTOs.
   * 
   * Expected answers:
   *   code 200 : Seq[WithdrawDTO] (successful operation)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param poolId 
   */
  def dexGetWithdrawDTOsHistorical(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, poolId: Option[String] = None): ApiRequest[Seq[WithdrawDTO]] =
    ApiRequest[Seq[WithdrawDTO]](ApiMethods.GET, baseUrl, "/dapps/dex/WithdrawDTOs/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("poolId", poolId)
      .withSuccessResponse[Seq[WithdrawDTO]](200)
      

  /**
   * Gets WithdrawRequestDTOs.
   * 
   * Expected answers:
   *   code 200 : Seq[WithdrawRequestDTO] (successful operation)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param poolId 
   */
  def dexGetWithdrawRequestDTOsHistorical(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, poolId: Option[String] = None): ApiRequest[Seq[WithdrawRequestDTO]] =
    ApiRequest[Seq[WithdrawRequestDTO]](ApiMethods.GET, baseUrl, "/dapps/dex/WithdrawRequestDTOs/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("poolId", poolId)
      .withSuccessResponse[Seq[WithdrawRequestDTO]](200)
      

  /**
   * Gets withdraws.
   * 
   * Expected answers:
   *   code 200 : Seq[WithdrawDTO] (successful operation)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param tokenId 
   */
  def dexGetWithdrawsHistorical(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, tokenId: Option[String] = None): ApiRequest[Seq[WithdrawDTO]] =
    ApiRequest[Seq[WithdrawDTO]](ApiMethods.GET, baseUrl, "/dapps/dex/withdraws/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("tokenId", tokenId)
      .withSuccessResponse[Seq[WithdrawDTO]](200)
      

  /**
   * Gets withdraws requests.
   * 
   * Expected answers:
   *   code 200 : Seq[WithdrawRequestDTO] (successful operation)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param tokenId 
   */
  def dexGetWithdrawsRequestsHistorical(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, tokenId: Option[String] = None): ApiRequest[Seq[WithdrawRequestDTO]] =
    ApiRequest[Seq[WithdrawRequestDTO]](ApiMethods.GET, baseUrl, "/dapps/dex/withdrawsRequests/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("tokenId", tokenId)
      .withSuccessResponse[Seq[WithdrawRequestDTO]](200)
      



}

