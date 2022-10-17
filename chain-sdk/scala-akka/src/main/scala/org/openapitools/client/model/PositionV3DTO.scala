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
package org.openapitools.client.model

import java.time.OffsetDateTime
import org.openapitools.client.core.ApiModel

case class PositionV3DTO (
  entryTime: Option[OffsetDateTime] = None,
  recvTime: Option[OffsetDateTime] = None,
  blockNumber: Option[Long] = None,
  id: Option[String] = None,
  owner: Option[String] = None,
  pool: Option[String] = None,
  token0: Option[String] = None,
  token1: Option[String] = None,
  tickLower: Option[String] = None,
  tickUpper: Option[String] = None,
  liquidity: Option[String] = None,
  depositedToken0: Option[String] = None,
  depositedToken1: Option[String] = None,
  withdrawnToken0: Option[String] = None,
  withdrawnToken1: Option[String] = None,
  collectedFeesToken0: Option[String] = None,
  collectedFeesToken1: Option[String] = None,
  transaction: Option[String] = None,
  feeGrowthInside0LastX128: Option[String] = None,
  feeGrowthInside1LastX128: Option[String] = None,
  vid: Option[Long] = None
) extends ApiModel
