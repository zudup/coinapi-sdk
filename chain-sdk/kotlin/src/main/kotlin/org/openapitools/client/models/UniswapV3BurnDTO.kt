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
 * Burn entities are created for every emitted Burn event on the Uniswap core contracts. The Burn entity stores key data about the event like token amounts, who burned, who received tokens, and more. This entity can be used to track liquidity removals on pairs.
 *
 * @param entryTime 
 * @param recvTime 
 * @param blockNumber Number of block in which entity was recorded.
 * @param id Transaction hash + '#' + index in mints Transaction array.
 * @param transaction Transaction burn was included in.
 * @param pool Pool position is within.
 * @param token0 Reference to token0 as stored in pool contract.
 * @param token1 Reference to token1 as stored in pool contract.
 * @param timestamp Timestamp.
 * @param owner Owner of position where liquidity was burned.
 * @param origin Transaction origin: the EOA (Externally Owned Account) that initiated the transaction.
 * @param amount Amount of liquidity burned.
 * @param amount0 Amount of token 0 burned.
 * @param amount1 Amount of token 1 burned.
 * @param amountUsd Derived amount based on available prices of tokens.
 * @param tickLower Lower tick of position.
 * @param tickUpper Upper tick of position.
 * @param logIndex Position within the transactions.
 * @param vid 
 */


data class UniswapV3BurnDTO (

    @Json(name = "entry_time")
    val entryTime: java.time.OffsetDateTime? = null,

    @Json(name = "recv_time")
    val recvTime: java.time.OffsetDateTime? = null,

    /* Number of block in which entity was recorded. */
    @Json(name = "block_number")
    val blockNumber: kotlin.Long? = null,

    /* Transaction hash + '#' + index in mints Transaction array. */
    @Json(name = "id")
    val id: kotlin.String? = null,

    /* Transaction burn was included in. */
    @Json(name = "transaction")
    val transaction: kotlin.String? = null,

    /* Pool position is within. */
    @Json(name = "pool")
    val pool: kotlin.String? = null,

    /* Reference to token0 as stored in pool contract. */
    @Json(name = "token_0")
    val token0: kotlin.String? = null,

    /* Reference to token1 as stored in pool contract. */
    @Json(name = "token_1")
    val token1: kotlin.String? = null,

    /* Timestamp. */
    @Json(name = "timestamp")
    val timestamp: kotlin.String? = null,

    /* Owner of position where liquidity was burned. */
    @Json(name = "owner")
    val owner: kotlin.String? = null,

    /* Transaction origin: the EOA (Externally Owned Account) that initiated the transaction. */
    @Json(name = "origin")
    val origin: kotlin.String? = null,

    /* Amount of liquidity burned. */
    @Json(name = "amount")
    val amount: kotlin.String? = null,

    /* Amount of token 0 burned. */
    @Json(name = "amount_0")
    val amount0: kotlin.String? = null,

    /* Amount of token 1 burned. */
    @Json(name = "amount_1")
    val amount1: kotlin.String? = null,

    /* Derived amount based on available prices of tokens. */
    @Json(name = "amount_usd")
    val amountUsd: kotlin.String? = null,

    /* Lower tick of position. */
    @Json(name = "tick_lower")
    val tickLower: kotlin.String? = null,

    /* Upper tick of position. */
    @Json(name = "tick_upper")
    val tickUpper: kotlin.String? = null,

    /* Position within the transactions. */
    @Json(name = "log_index")
    val logIndex: kotlin.String? = null,

    /*  */
    @Json(name = "vid")
    val vid: kotlin.Long? = null

)
