/**
 * On Chain - REST API
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

case class TokenDayDataDTO (
  entryTime: Option[OffsetDateTime] = None,
  recvTime: Option[OffsetDateTime] = None,
  /* Number of block in which entity was recorded. */
  blockNumber: Option[Long] = None,
  /* Token address and day id (day start timestamp in unix / 86400) concatenated with a dash. */
  id: Option[String] = None,
  /* Unix timestamp for start of day. */
  date: Option[Int] = None,
  /* Reference to token entity. */
  token: Option[String] = None,
  /* Amount of token swapped across all pairs throughout day. */
  dailyVolumeToken: Option[String] = None,
  /* Amount of token swapped across all pairs throughout day stored as a derived amount of ETH. */
  dailyVolumeEth: Option[String] = None,
  /* Amount of token swapped across all pairs throughout day stored as a derived amount of USD. */
  dailyVolumeUsd: Option[String] = None,
  /* Amount of transactions with this token across all pairs. */
  dailyTxns: Option[String] = None,
  /* Token amount of token deposited across all pairs. */
  totalLiquidityToken: Option[String] = None,
  /* Token amount of token deposited across all pairs stored as amount of ETH. */
  totalLiquidityEth: Option[String] = None,
  /* Token amount of token deposited across all pairs stored as amount of USD. */
  totalLiquidityUsd: Option[String] = None,
  /* Price of token in derived USD. */
  priceUsd: Option[String] = None,
  /*  */
  vid: Option[Long] = None
) extends ApiModel

