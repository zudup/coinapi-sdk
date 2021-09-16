/**
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
package org.openapitools.client.model

import org.openapitools.client.core.ApiModel

case class PositionData (
  /* Exchange symbol. */
  symbolIdExchange: Option[String] = None,
  /* CoinAPI symbol. */
  symbolIdCoinapi: Option[String] = None,
  /* Calculated average price of all fills on this position. */
  avgEntryPrice: Option[BigDecimal] = None,
  /* The current position quantity. */
  quantity: Option[BigDecimal] = None,
  side: Option[OrdSide] = None,
  /* Unrealised profit or loss (PNL) of this position. */
  unrealizedPnl: Option[BigDecimal] = None,
  /* Leverage for this position reported by the exchange. */
  leverage: Option[BigDecimal] = None,
  /* Is cross margin mode enable for this position? */
  crossMargin: Option[Boolean] = None,
  /* Liquidation price. If mark price will reach this value, the position will be liquidated. */
  liquidationPrice: Option[BigDecimal] = None,
  rawData: Option[Any] = None
) extends ApiModel


