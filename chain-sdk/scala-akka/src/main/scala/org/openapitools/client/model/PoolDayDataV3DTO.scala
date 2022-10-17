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

case class PoolDayDataV3DTO (
  entryTime: Option[OffsetDateTime] = None,
  recvTime: Option[OffsetDateTime] = None,
  blockNumber: Option[Long] = None,
  id: Option[String] = None,
  date: Option[Int] = None,
  pool: Option[String] = None,
  liquidity: Option[String] = None,
  sqrtPrice: Option[String] = None,
  token0Price: Option[String] = None,
  token1Price: Option[String] = None,
  tick: Option[String] = None,
  feeGrowthGlobal0x128: Option[String] = None,
  feeGrowthGlobal1x128: Option[String] = None,
  tvlUsd: Option[String] = None,
  volumeToken0: Option[String] = None,
  volumeToken1: Option[String] = None,
  volumeUsd: Option[String] = None,
  feesUsd: Option[String] = None,
  txCount: Option[String] = None,
  open: Option[String] = None,
  high: Option[String] = None,
  low: Option[String] = None,
  close: Option[String] = None,
  vid: Option[Long] = None
) extends ApiModel

