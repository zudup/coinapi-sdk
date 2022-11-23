/**
 * On Chain - REST API
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


/**
 * Data accumulated and condensed into day stats for each exchange. Entity gets saved only if there is a change during the day
 */
export interface UniswapV3TickDayDataDTO { 
    entry_time?: string;
    recv_time?: string;
    /**
     * Number of block in which entity was recorded.
     */
    block_number?: number;
    /**
     * Identifier, format: <pool address>-<tick index>-<timestamp>.
     */
    id?: string | null;
    /**
     * Timestamp rounded to current day by dividing by 86400.
     */
    date?: number;
    /**
     * Pointer to pool.
     */
    pool?: string | null;
    /**
     * Pointer to tick.
     */
    tick?: string | null;
    /**
     * Total liquidity pool has as tick lower or upper at end of period.
     */
    liquidity_gross?: string | null;
    /**
     * How much liquidity changes when tick crossed at end of period.
     */
    liquidity_net?: string | null;
    /**
     * Hourly volume of token0 with this tick in range.
     */
    volume_token_0?: string | null;
    /**
     * Hourly volume of token1 with this tick in range.
     */
    volume_token_1?: string | null;
    /**
     * Hourly volume in derived USD with this tick in range.
     */
    volume_usd?: string | null;
    /**
     * Fees in USD.
     */
    fees_usd?: string | null;
    /**
     * Variable needed for fee computation.
     */
    fee_growth_outside_0x128?: string | null;
    /**
     * Variable needed for fee computation.
     */
    fee_growth_outside_1x128?: string | null;
    /**
     * 
     */
    vid?: number;
}

