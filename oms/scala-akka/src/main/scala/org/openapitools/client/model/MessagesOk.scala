/**
 * OMS - REST API ...@
 * OMS Project
 *
 * The version of the OpenAPI document: v1
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
package org.openapitools.client.model

import org.openapitools.client.core.ApiModel

case class MessagesOk (
  /* Type of message */
  `type`: Option[String] = None,
  /* Exchange name */
  exchangeId: Option[String] = None,
  /* Message */
  message: Option[String] = None
) extends ApiModel

