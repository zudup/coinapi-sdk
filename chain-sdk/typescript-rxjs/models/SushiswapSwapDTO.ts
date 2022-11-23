// tslint:disable
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

import type {
    TransactionsETradeAggressiveSide,
} from './';

/**
 * Swap are created for each token swap within a pair.
 * @export
 * @interface SushiswapSwapDTO
 */
export interface SushiswapSwapDTO {
    /**
     * @type {string}
     * @memberof SushiswapSwapDTO
     */
    entry_time?: string;
    /**
     * @type {string}
     * @memberof SushiswapSwapDTO
     */
    recv_time?: string;
    /**
     * Number of block in which entity was recorded.
     * @type {number}
     * @memberof SushiswapSwapDTO
     */
    block_number?: number;
    /**
     * Transaction hash plus index in Transaction swap array.
     * @type {string}
     * @memberof SushiswapSwapDTO
     */
    id?: string | null;
    /**
     * Reference to transaction swap was included in.
     * @type {string}
     * @memberof SushiswapSwapDTO
     */
    transaction?: string | null;
    /**
     * Timestamp of swap, used for sorted lookups.
     * @type {string}
     * @memberof SushiswapSwapDTO
     */
    timestamp?: string | null;
    /**
     * Reference to pair.
     * @type {string}
     * @memberof SushiswapSwapDTO
     */
    pair?: string | null;
    /**
     * Address that initiated the swap.
     * @type {string}
     * @memberof SushiswapSwapDTO
     */
    sender?: string | null;
    /**
     * Amount of token0 sold.
     * @type {string}
     * @memberof SushiswapSwapDTO
     */
    amount_0_in?: string | null;
    /**
     * Amount of token1 sold.
     * @type {string}
     * @memberof SushiswapSwapDTO
     */
    amount_1_in?: string | null;
    /**
     * Amount of token0 received.
     * @type {string}
     * @memberof SushiswapSwapDTO
     */
    amount_0_out?: string | null;
    /**
     * Amount of token1 received.
     * @type {string}
     * @memberof SushiswapSwapDTO
     */
    amount_1_out?: string | null;
    /**
     * Recipient of output tokens.
     * @type {string}
     * @memberof SushiswapSwapDTO
     */
    to?: string | null;
    /**
     * Event index within transaction.
     * @type {string}
     * @memberof SushiswapSwapDTO
     */
    log_index?: string | null;
    /**
     * Derived amount of tokens sold in USD.
     * @type {string}
     * @memberof SushiswapSwapDTO
     */
    amount_usd?: string | null;
    /**
     * 
     * @type {number}
     * @memberof SushiswapSwapDTO
     */
    vid?: number;
    /**
     * @type {string}
     * @memberof SushiswapSwapDTO
     */
    readonly pool_id?: string | null;
    /**
     * @type {string}
     * @memberof SushiswapSwapDTO
     */
    readonly transaction_id?: string | null;
    /**
     * @type {number}
     * @memberof SushiswapSwapDTO
     */
    readonly evaluated_price?: number;
    /**
     * @type {number}
     * @memberof SushiswapSwapDTO
     */
    readonly evaluated_amount?: number;
    /**
     * @type {TransactionsETradeAggressiveSide}
     * @memberof SushiswapSwapDTO
     */
    evaluated_aggressor?: TransactionsETradeAggressiveSide;
}
