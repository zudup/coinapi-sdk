// tslint:disable
/**
 * OnChain API
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
 * @export
 * @interface PoolDayDataV3DTO
 */
export interface PoolDayDataV3DTO {
    /**
     * @type {string}
     * @memberof PoolDayDataV3DTO
     */
    entry_time?: string;
    /**
     * @type {string}
     * @memberof PoolDayDataV3DTO
     */
    recv_time?: string;
    /**
     * @type {number}
     * @memberof PoolDayDataV3DTO
     */
    block_number?: number;
    /**
     * @type {string}
     * @memberof PoolDayDataV3DTO
     */
    id?: string | null;
    /**
     * @type {number}
     * @memberof PoolDayDataV3DTO
     */
    date?: number;
    /**
     * @type {string}
     * @memberof PoolDayDataV3DTO
     */
    pool?: string | null;
    /**
     * @type {string}
     * @memberof PoolDayDataV3DTO
     */
    liquidity?: string | null;
    /**
     * @type {string}
     * @memberof PoolDayDataV3DTO
     */
    sqrt_price?: string | null;
    /**
     * @type {string}
     * @memberof PoolDayDataV3DTO
     */
    token_0_price?: string | null;
    /**
     * @type {string}
     * @memberof PoolDayDataV3DTO
     */
    token_1_price?: string | null;
    /**
     * @type {string}
     * @memberof PoolDayDataV3DTO
     */
    tick?: string | null;
    /**
     * @type {string}
     * @memberof PoolDayDataV3DTO
     */
    fee_growth_global_0x128?: string | null;
    /**
     * @type {string}
     * @memberof PoolDayDataV3DTO
     */
    fee_growth_global_1x128?: string | null;
    /**
     * @type {string}
     * @memberof PoolDayDataV3DTO
     */
    tvl_usd?: string | null;
    /**
     * @type {string}
     * @memberof PoolDayDataV3DTO
     */
    volume_token_0?: string | null;
    /**
     * @type {string}
     * @memberof PoolDayDataV3DTO
     */
    volume_token_1?: string | null;
    /**
     * @type {string}
     * @memberof PoolDayDataV3DTO
     */
    volume_usd?: string | null;
    /**
     * @type {string}
     * @memberof PoolDayDataV3DTO
     */
    fees_usd?: string | null;
    /**
     * @type {string}
     * @memberof PoolDayDataV3DTO
     */
    tx_count?: string | null;
    /**
     * @type {string}
     * @memberof PoolDayDataV3DTO
     */
    open?: string | null;
    /**
     * @type {string}
     * @memberof PoolDayDataV3DTO
     */
    high?: string | null;
    /**
     * @type {string}
     * @memberof PoolDayDataV3DTO
     */
    low?: string | null;
    /**
     * @type {string}
     * @memberof PoolDayDataV3DTO
     */
    close?: string | null;
    /**
     * @type {number}
     * @memberof PoolDayDataV3DTO
     */
    vid?: number;
}
