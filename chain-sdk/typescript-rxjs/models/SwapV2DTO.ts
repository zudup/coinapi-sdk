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

import type {
    BigInteger,
    ETradeAggressiveSide,
} from './';

/**
 * @export
 * @interface SwapV2DTO
 */
export interface SwapV2DTO {
    /**
     * @type {string}
     * @memberof SwapV2DTO
     */
    entry_time?: string;
    /**
     * @type {string}
     * @memberof SwapV2DTO
     */
    recv_time?: string;
    /**
     * @type {number}
     * @memberof SwapV2DTO
     */
    block_number?: number;
    /**
     * @type {number}
     * @memberof SwapV2DTO
     */
    vid?: number;
    /**
     * @type {string}
     * @memberof SwapV2DTO
     */
    id?: string | null;
    /**
     * @type {string}
     * @memberof SwapV2DTO
     */
    transaction?: string | null;
    /**
     * @type {string}
     * @memberof SwapV2DTO
     */
    timestamp?: string;
    /**
     * @type {string}
     * @memberof SwapV2DTO
     */
    pair?: string | null;
    /**
     * @type {string}
     * @memberof SwapV2DTO
     */
    sender?: string | null;
    /**
     * @type {string}
     * @memberof SwapV2DTO
     */
    from?: string | null;
    /**
     * @type {string}
     * @memberof SwapV2DTO
     */
    amount_0_in?: string | null;
    /**
     * @type {string}
     * @memberof SwapV2DTO
     */
    amount_1_in?: string | null;
    /**
     * @type {string}
     * @memberof SwapV2DTO
     */
    amount_0_out?: string | null;
    /**
     * @type {string}
     * @memberof SwapV2DTO
     */
    amount_1_out?: string | null;
    /**
     * @type {string}
     * @memberof SwapV2DTO
     */
    to?: string | null;
    /**
     * @type {BigInteger}
     * @memberof SwapV2DTO
     */
    log_index?: BigInteger;
    /**
     * @type {string}
     * @memberof SwapV2DTO
     */
    amount_usd?: string | null;
    /**
     * @type {number}
     * @memberof SwapV2DTO
     */
    readonly evaluated_price?: number;
    /**
     * @type {number}
     * @memberof SwapV2DTO
     */
    readonly evaluated_amount?: number;
    /**
     * @type {ETradeAggressiveSide}
     * @memberof SwapV2DTO
     */
    evaluated_aggressor?: ETradeAggressiveSide;
    /**
     * @type {string}
     * @memberof SwapV2DTO
     */
    readonly pool_id?: string | null;
    /**
     * @type {string}
     * @memberof SwapV2DTO
     */
    readonly transaction_id?: string | null;
}
