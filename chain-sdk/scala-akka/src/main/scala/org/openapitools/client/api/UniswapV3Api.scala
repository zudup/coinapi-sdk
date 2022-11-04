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

import org.openapitools.client.model.BundleV3DTO
import org.openapitools.client.model.BurnV3DTO
import org.openapitools.client.model.FactoryV3DTO
import org.openapitools.client.model.MintV3DTO
import java.time.OffsetDateTime
import org.openapitools.client.model.PoolDayDataV3DTO
import org.openapitools.client.model.PoolHourDataV3DTO
import org.openapitools.client.model.PoolV3DTO
import org.openapitools.client.model.PositionSnapshotV3DTO
import org.openapitools.client.model.PositionV3DTO
import org.openapitools.client.model.SwapV3DTO
import org.openapitools.client.model.TickDayDataV3DTO
import org.openapitools.client.model.TickV3DTO
import org.openapitools.client.model.TokenHourDataV3DTO
import org.openapitools.client.model.TokenV3DTO
import org.openapitools.client.model.TokenV3DayDataDTO
import org.openapitools.client.model.UniswapDayDataV3DTO
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

object UniswapV3Api {

  def apply(baseUrl: String = "https://onchain.coinapi.io") = new UniswapV3Api(baseUrl)
}

class UniswapV3Api(baseUrl: String) {

  /**
   * Expected answers:
   *   code 200 : Seq[BundleV3DTO] (successful operation)
   */
  def dappsUniswapv3BundleCurrentGet(): ApiRequest[Seq[BundleV3DTO]] =
    ApiRequest[Seq[BundleV3DTO]](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/bundle/current", "application/json")
      .withSuccessResponse[Seq[BundleV3DTO]](200)
      

  /**
   * Expected answers:
   *   code 200 :  (Success)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   */
  def dappsUniswapv3BundlesHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/bundles/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withSuccessResponse[Unit](200)
      

  /**
   * Expected answers:
   *   code 200 : Seq[BurnV3DTO] (successful operation)
   * 
   * @param filterPoolId Filter pool id
   */
  def dappsUniswapv3BurnsCurrentGet(filterPoolId: Option[String] = None): ApiRequest[Seq[BurnV3DTO]] =
    ApiRequest[Seq[BurnV3DTO]](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/burns/current", "application/json")
      .withQueryParam("filter_pool_id", filterPoolId)
      .withSuccessResponse[Seq[BurnV3DTO]](200)
      

  /**
   * Expected answers:
   *   code 200 :  (Success)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param poolId 
   */
  def dappsUniswapv3BurnsHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, poolId: Option[String] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/burns/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("poolId", poolId)
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
  def dappsUniswapv3DayDataHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/dayData/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withSuccessResponse[Unit](200)
      

  /**
   * Expected answers:
   *   code 200 : Seq[FactoryV3DTO] (successful operation)
   * 
   * @param chainId 
   */
  def dappsUniswapv3FactoryCurrentGet(chainId: String): ApiRequest[Seq[FactoryV3DTO]] =
    ApiRequest[Seq[FactoryV3DTO]](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/factory/current", "application/json")
      .withPathParam("chain_id", chainId)
      .withSuccessResponse[Seq[FactoryV3DTO]](200)
      

  /**
   * Expected answers:
   *   code 200 :  (Success)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   */
  def dappsUniswapv3FactoryHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/factory/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withSuccessResponse[Unit](200)
      

  /**
   * Expected answers:
   *   code 200 : Seq[MintV3DTO] (successful operation)
   * 
   * @param filterPoolId Filter pool id
   */
  def dappsUniswapv3MintsCurrentGet(filterPoolId: Option[String] = None): ApiRequest[Seq[MintV3DTO]] =
    ApiRequest[Seq[MintV3DTO]](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/mints/current", "application/json")
      .withQueryParam("filter_pool_id", filterPoolId)
      .withSuccessResponse[Seq[MintV3DTO]](200)
      

  /**
   * Expected answers:
   *   code 200 :  (Success)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param poolId 
   */
  def dappsUniswapv3MintsHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, poolId: Option[String] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/mints/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("poolId", poolId)
      .withSuccessResponse[Unit](200)
      

  /**
   * Expected answers:
   *   code 200 :  (Success)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param poolId 
   */
  def dappsUniswapv3PoolDayDataHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, poolId: Option[String] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/poolDayData/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("poolId", poolId)
      .withSuccessResponse[Unit](200)
      

  /**
   * Expected answers:
   *   code 200 :  (Success)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param poolId 
   */
  def dappsUniswapv3PoolHourDataHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, poolId: Option[String] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/poolHourData/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("poolId", poolId)
      .withSuccessResponse[Unit](200)
      

  /**
   * Expected answers:
   *   code 200 : Seq[PoolV3DTO] (successful operation)
   * 
   * @param filterPoolId Filter pool id
   */
  def dappsUniswapv3PoolsCurrentGet(filterPoolId: Option[String] = None): ApiRequest[Seq[PoolV3DTO]] =
    ApiRequest[Seq[PoolV3DTO]](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/pools/current", "application/json")
      .withQueryParam("filter_pool_id", filterPoolId)
      .withSuccessResponse[Seq[PoolV3DTO]](200)
      

  /**
   * Expected answers:
   *   code 200 : Seq[PoolDayDataV3DTO] (successful operation)
   * 
   * @param filterPoolId Filter pool id
   */
  def dappsUniswapv3PoolsDayDataCurrentGet(filterPoolId: Option[String] = None): ApiRequest[Seq[PoolDayDataV3DTO]] =
    ApiRequest[Seq[PoolDayDataV3DTO]](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/poolsDayData/current", "application/json")
      .withQueryParam("filter_pool_id", filterPoolId)
      .withSuccessResponse[Seq[PoolDayDataV3DTO]](200)
      

  /**
   * Expected answers:
   *   code 200 :  (Success)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param poolId 
   */
  def dappsUniswapv3PoolsHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, poolId: Option[String] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/pools/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("poolId", poolId)
      .withSuccessResponse[Unit](200)
      

  /**
   * Expected answers:
   *   code 200 : Seq[PoolHourDataV3DTO] (successful operation)
   * 
   * @param filterPoolId Filter pool id
   */
  def dappsUniswapv3PoolsHourDataCurrentGet(filterPoolId: Option[String] = None): ApiRequest[Seq[PoolHourDataV3DTO]] =
    ApiRequest[Seq[PoolHourDataV3DTO]](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/poolsHourData/current", "application/json")
      .withQueryParam("filter_pool_id", filterPoolId)
      .withSuccessResponse[Seq[PoolHourDataV3DTO]](200)
      

  /**
   * Expected answers:
   *   code 200 :  (Success)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param poolId 
   */
  def dappsUniswapv3PositionSnapshotHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, poolId: Option[String] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/positionSnapshot/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("poolId", poolId)
      .withSuccessResponse[Unit](200)
      

  /**
   * Expected answers:
   *   code 200 : Seq[PositionSnapshotV3DTO] (successful operation)
   * 
   * @param filterPoolId Filter pool id
   */
  def dappsUniswapv3PositionSnapshotsCurrentGet(filterPoolId: Option[String] = None): ApiRequest[Seq[PositionSnapshotV3DTO]] =
    ApiRequest[Seq[PositionSnapshotV3DTO]](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/positionSnapshots/current", "application/json")
      .withQueryParam("filter_pool_id", filterPoolId)
      .withSuccessResponse[Seq[PositionSnapshotV3DTO]](200)
      

  /**
   * Expected answers:
   *   code 200 : Seq[PositionV3DTO] (successful operation)
   * 
   * @param filterPoolId Filter pool id
   */
  def dappsUniswapv3PositionsCurrentGet(filterPoolId: Option[String] = None): ApiRequest[Seq[PositionV3DTO]] =
    ApiRequest[Seq[PositionV3DTO]](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/positions/current", "application/json")
      .withQueryParam("filter_pool_id", filterPoolId)
      .withSuccessResponse[Seq[PositionV3DTO]](200)
      

  /**
   * Expected answers:
   *   code 200 :  (Success)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param poolId 
   */
  def dappsUniswapv3PositionsHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, poolId: Option[String] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/positions/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("poolId", poolId)
      .withSuccessResponse[Unit](200)
      

  /**
   * Expected answers:
   *   code 200 : Seq[SwapV3DTO] (successful operation)
   * 
   * @param filterPoolId Filter pool id
   */
  def dappsUniswapv3SwapsCurrentGet(filterPoolId: Option[String] = None): ApiRequest[Seq[SwapV3DTO]] =
    ApiRequest[Seq[SwapV3DTO]](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/swaps/current", "application/json")
      .withQueryParam("filter_pool_id", filterPoolId)
      .withSuccessResponse[Seq[SwapV3DTO]](200)
      

  /**
   * Expected answers:
   *   code 200 :  (Success)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param poolId 
   */
  def dappsUniswapv3SwapsHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, poolId: Option[String] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/swaps/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("poolId", poolId)
      .withSuccessResponse[Unit](200)
      

  /**
   * Expected answers:
   *   code 200 :  (Success)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param poolId 
   */
  def dappsUniswapv3TickDayDataHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, poolId: Option[String] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/tickDayData/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("poolId", poolId)
      .withSuccessResponse[Unit](200)
      

  /**
   * Expected answers:
   *   code 200 : Seq[TickV3DTO] (successful operation)
   * 
   * @param filterPoolId Filter pool id
   */
  def dappsUniswapv3TicksCurrentGet(filterPoolId: Option[String] = None): ApiRequest[Seq[TickV3DTO]] =
    ApiRequest[Seq[TickV3DTO]](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/ticks/current", "application/json")
      .withQueryParam("filter_pool_id", filterPoolId)
      .withSuccessResponse[Seq[TickV3DTO]](200)
      

  /**
   * Expected answers:
   *   code 200 : Seq[TickDayDataV3DTO] (successful operation)
   * 
   * @param filterPoolId Filter pool id
   */
  def dappsUniswapv3TicksDayDataCurrentGet(filterPoolId: Option[String] = None): ApiRequest[Seq[TickDayDataV3DTO]] =
    ApiRequest[Seq[TickDayDataV3DTO]](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/ticksDayData/current", "application/json")
      .withQueryParam("filter_pool_id", filterPoolId)
      .withSuccessResponse[Seq[TickDayDataV3DTO]](200)
      

  /**
   * Expected answers:
   *   code 200 :  (Success)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   * @param poolId 
   */
  def dappsUniswapv3TicksHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, poolId: Option[String] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/ticks/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("poolId", poolId)
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
  def dappsUniswapv3TokenDayDataHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, tokenId: Option[String] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/tokenDayData/historical", "application/json")
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
  def dappsUniswapv3TokenHourDataHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, tokenId: Option[String] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/tokenHourData/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("tokenId", tokenId)
      .withSuccessResponse[Unit](200)
      

  /**
   * Expected answers:
   *   code 200 : Seq[TokenV3DTO] (successful operation)
   * 
   * @param filterTokenId 
   */
  def dappsUniswapv3TokensCurrentGet(filterTokenId: Option[String] = None): ApiRequest[Seq[TokenV3DTO]] =
    ApiRequest[Seq[TokenV3DTO]](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/tokens/current", "application/json")
      .withQueryParam("filter_token_id", filterTokenId)
      .withSuccessResponse[Seq[TokenV3DTO]](200)
      

  /**
   * Expected answers:
   *   code 200 : Seq[TokenV3DayDataDTO] (successful operation)
   * 
   * @param filterTokenId 
   */
  def dappsUniswapv3TokensDayDataCurrentGet(filterTokenId: Option[String] = None): ApiRequest[Seq[TokenV3DayDataDTO]] =
    ApiRequest[Seq[TokenV3DayDataDTO]](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/tokensDayData/current", "application/json")
      .withQueryParam("filter_token_id", filterTokenId)
      .withSuccessResponse[Seq[TokenV3DayDataDTO]](200)
      

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
  def dappsUniswapv3TokensHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None, tokenId: Option[String] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/tokens/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withQueryParam("tokenId", tokenId)
      .withSuccessResponse[Unit](200)
      

  /**
   * Expected answers:
   *   code 200 : Seq[TokenHourDataV3DTO] (successful operation)
   * 
   * @param filterTokenId 
   */
  def dappsUniswapv3TokensHourDataCurrentGet(filterTokenId: Option[String] = None): ApiRequest[Seq[TokenHourDataV3DTO]] =
    ApiRequest[Seq[TokenHourDataV3DTO]](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/tokensHourData/current", "application/json")
      .withQueryParam("filter_token_id", filterTokenId)
      .withSuccessResponse[Seq[TokenHourDataV3DTO]](200)
      

  /**
   * Expected answers:
   *   code 200 :  (Success)
   * 
   * @param startBlock 
   * @param endBlock 
   * @param startDate 
   * @param endDate 
   */
  def dappsUniswapv3TransactionsHistoricalGet(startBlock: Option[Long] = None, endBlock: Option[Long] = None, startDate: Option[OffsetDateTime] = None, endDate: Option[OffsetDateTime] = None): ApiRequest[Unit] =
    ApiRequest[Unit](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/transactions/historical", "application/json")
      .withQueryParam("startBlock", startBlock)
      .withQueryParam("endBlock", endBlock)
      .withQueryParam("startDate", startDate)
      .withQueryParam("endDate", endDate)
      .withSuccessResponse[Unit](200)
      

  /**
   * Expected answers:
   *   code 200 : Seq[UniswapDayDataV3DTO] (successful operation)
   */
  def dappsUniswapv3UniswapDayDataCurrentGet(): ApiRequest[Seq[UniswapDayDataV3DTO]] =
    ApiRequest[Seq[UniswapDayDataV3DTO]](ApiMethods.GET, baseUrl, "/dapps/uniswapv3/uniswapDayData/current", "application/json")
      .withSuccessResponse[Seq[UniswapDayDataV3DTO]](200)
      



}

