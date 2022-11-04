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

import org.openapitools.client.models.NumericsBigInteger

import com.squareup.moshi.Json

/**
 * Ticks are the boundaries between discrete areas in price space.
 *
 * @param entryTime 
 * @param recvTime 
 * @param blockNumber Number of block in which entity was recorded.
 * @param vid 
 * @param id Identifier, format: <pool address>#<tick index>
 * @param poolAddress Pool address.
 * @param tickIdx 
 * @param pool Pool address.
 * @param liquidityGross 
 * @param liquidityNet 
 * @param price0 Calculated price of token0 of tick within this pool - constant.
 * @param price1 Calculated price of token1 of tick within this pool - constant.
 * @param volumeToken0 Lifetime volume of token0 with this tick in range.
 * @param volumeToken1 Lifetime volume of token1 with this tick in range.
 * @param volumeUsd Lifetime volume in derived USD with this tick in range.
 * @param untrackedVolumeUsd Lifetime volume in untracked USD with this tick in range.
 * @param feesUsd Fees in USD.
 * @param collectedFeesToken0 All time collected fees in token0.
 * @param collectedFeesToken1 All time collected fees in token1.
 * @param collectedFeesUsd All time collected fees in USD.
 * @param createdAtTimestamp Created time.
 * @param liquidityProviderCount 
 * @param feeGrowthOutside0x128 
 * @param feeGrowthOutside1x128 
 */


data class UniswapV3TickV3DTO (

    @Json(name = "entry_time")
    val entryTime: java.time.OffsetDateTime? = null,

    @Json(name = "recv_time")
    val recvTime: java.time.OffsetDateTime? = null,

    /* Number of block in which entity was recorded. */
    @Json(name = "block_number")
    val blockNumber: kotlin.Long? = null,

    /*  */
    @Json(name = "vid")
    val vid: kotlin.Long? = null,

    /* Identifier, format: <pool address>#<tick index> */
    @Json(name = "id")
    val id: kotlin.String? = null,

    /* Pool address. */
    @Json(name = "pool_address")
    val poolAddress: kotlin.String? = null,

    @Json(name = "tick_idx")
    val tickIdx: NumericsBigInteger? = null,

    /* Pool address. */
    @Json(name = "pool")
    val pool: kotlin.String? = null,

    @Json(name = "liquidity_gross")
    val liquidityGross: NumericsBigInteger? = null,

    @Json(name = "liquidity_net")
    val liquidityNet: NumericsBigInteger? = null,

    /* Calculated price of token0 of tick within this pool - constant. */
    @Json(name = "price_0")
    val price0: kotlin.String? = null,

    /* Calculated price of token1 of tick within this pool - constant. */
    @Json(name = "price_1")
    val price1: kotlin.String? = null,

    /* Lifetime volume of token0 with this tick in range. */
    @Json(name = "volume_token_0")
    val volumeToken0: kotlin.String? = null,

    /* Lifetime volume of token1 with this tick in range. */
    @Json(name = "volume_token_1")
    val volumeToken1: kotlin.String? = null,

    /* Lifetime volume in derived USD with this tick in range. */
    @Json(name = "volume_usd")
    val volumeUsd: kotlin.String? = null,

    /* Lifetime volume in untracked USD with this tick in range. */
    @Json(name = "untracked_volume_usd")
    val untrackedVolumeUsd: kotlin.String? = null,

    /* Fees in USD. */
    @Json(name = "fees_usd")
    val feesUsd: kotlin.String? = null,

    /* All time collected fees in token0. */
    @Json(name = "collected_fees_token_0")
    val collectedFeesToken0: kotlin.String? = null,

    /* All time collected fees in token1. */
    @Json(name = "collected_fees_token_1")
    val collectedFeesToken1: kotlin.String? = null,

    /* All time collected fees in USD. */
    @Json(name = "collected_fees_usd")
    val collectedFeesUsd: kotlin.String? = null,

    /* Created time. */
    @Json(name = "created_at_timestamp")
    val createdAtTimestamp: java.time.OffsetDateTime? = null,

    @Json(name = "liquidity_provider_count")
    val liquidityProviderCount: NumericsBigInteger? = null,

    @Json(name = "fee_growth_outside_0x128")
    val feeGrowthOutside0x128: NumericsBigInteger? = null,

    @Json(name = "fee_growth_outside_1x128")
    val feeGrowthOutside1x128: NumericsBigInteger? = null

)
