/**
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 *
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package org.openapitools.client.models


import com.squareup.moshi.Json

/**
 * 
 *
 * @param assetIdExchange Exchange currency code.
 * @param assetIdCoinapi CoinAPI currency code.
 * @param balance Value of the current total currency balance on the exchange.
 * @param available Value of the current available currency balance on the exchange that can be used as collateral.
 * @param locked Value of the current locked currency balance by the exchange.
 * @param lastUpdatedBy Source of the last modification. 
 * @param rateUsd Current exchange rate to the USD for the single unit of the currency. 
 * @param traded Value of the current total traded.
 */


data class BalanceDataInner (

    /* Exchange currency code. */
    @Json(name = "asset_id_exchange")
    val assetIdExchange: kotlin.String? = null,

    /* CoinAPI currency code. */
    @Json(name = "asset_id_coinapi")
    val assetIdCoinapi: kotlin.String? = null,

    /* Value of the current total currency balance on the exchange. */
    @Json(name = "balance")
    val balance: kotlin.Double? = null,

    /* Value of the current available currency balance on the exchange that can be used as collateral. */
    @Json(name = "available")
    val available: kotlin.Double? = null,

    /* Value of the current locked currency balance by the exchange. */
    @Json(name = "locked")
    val locked: kotlin.Double? = null,

    /* Source of the last modification.  */
    @Json(name = "last_updated_by")
    val lastUpdatedBy: BalanceDataInner.LastUpdatedBy? = null,

    /* Current exchange rate to the USD for the single unit of the currency.  */
    @Json(name = "rate_usd")
    val rateUsd: kotlin.Double? = null,

    /* Value of the current total traded. */
    @Json(name = "traded")
    val traded: kotlin.Double? = null

) {

    /**
     * Source of the last modification. 
     *
     * Values: iNITIALIZATION,bALANCEMANAGER,eXCHANGE
     */
    enum class LastUpdatedBy(val value: kotlin.String) {
        @Json(name = "INITIALIZATION") iNITIALIZATION("INITIALIZATION"),
        @Json(name = "BALANCE_MANAGER") bALANCEMANAGER("BALANCE_MANAGER"),
        @Json(name = "EXCHANGE") eXCHANGE("EXCHANGE");
    }
}

