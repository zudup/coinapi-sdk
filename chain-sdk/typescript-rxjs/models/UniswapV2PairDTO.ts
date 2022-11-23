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
    NumericsBigInteger,
} from './';

/**
 * Information about a pair. Includes references to each token within the pair, volume information, liquidity information, and more. The pair entity mirrors the pair smart contract, and also contains aggregated information about use.
 * @export
 * @interface UniswapV2PairDTO
 */
export interface UniswapV2PairDTO {
    /**
     * @type {string}
     * @memberof UniswapV2PairDTO
     */
    entry_time?: string;
    /**
     * @type {string}
     * @memberof UniswapV2PairDTO
     */
    recv_time?: string;
    /**
     * Number of block in which entity was recorded.
     * @type {number}
     * @memberof UniswapV2PairDTO
     */
    block_number?: number;
    /**
     * 
     * @type {number}
     * @memberof UniswapV2PairDTO
     */
    vid?: number;
    /**
     * Pair contract address.
     * @type {string}
     * @memberof UniswapV2PairDTO
     */
    id?: string | null;
    /**
     * Reference to token0 as stored in pair contract.
     * @type {string}
     * @memberof UniswapV2PairDTO
     */
    token_0?: string | null;
    /**
     * Reference to token1 as stored in pair contract.
     * @type {string}
     * @memberof UniswapV2PairDTO
     */
    token_1?: string | null;
    /**
     * Reserve of token0.
     * @type {string}
     * @memberof UniswapV2PairDTO
     */
    reserve_0?: string | null;
    /**
     * Reserve of token1.
     * @type {string}
     * @memberof UniswapV2PairDTO
     */
    reserve_1?: string | null;
    /**
     * Total supply of liquidity token distributed to LPs.
     * @type {string}
     * @memberof UniswapV2PairDTO
     */
    total_supply?: string | null;
    /**
     * Total liquidity in pair stored as an amount of ETH.
     * @type {string}
     * @memberof UniswapV2PairDTO
     */
    reserve_eth?: string | null;
    /**
     * Total liquidity amount in pair stored as an amount of USD.
     * @type {string}
     * @memberof UniswapV2PairDTO
     */
    reserve_usd?: string | null;
    /**
     * Total liquidity with only tracked amount.
     * @type {string}
     * @memberof UniswapV2PairDTO
     */
    tracked_reserve_eth?: string | null;
    /**
     * Token0 per token1.
     * @type {string}
     * @memberof UniswapV2PairDTO
     */
    token_0_price?: string | null;
    /**
     * Token1 per token0.
     * @type {string}
     * @memberof UniswapV2PairDTO
     */
    token_1_price?: string | null;
    /**
     * Amount of token0 swapped on this pair.
     * @type {string}
     * @memberof UniswapV2PairDTO
     */
    volume_token_0?: string | null;
    /**
     * Amount of token1 swapped on this pair.
     * @type {string}
     * @memberof UniswapV2PairDTO
     */
    volume_token_1?: string | null;
    /**
     * Total amount swapped all time in this pair stored in USD (only tracked if USD liquidity is above minimum threshold).
     * @type {string}
     * @memberof UniswapV2PairDTO
     */
    volume_usd?: string | null;
    /**
     * Total amount swapped all time in this pair stored in USD, no minimum liquidity threshold.
     * @type {string}
     * @memberof UniswapV2PairDTO
     */
    untracked_volume_usd?: string | null;
    /**
     * @type {NumericsBigInteger}
     * @memberof UniswapV2PairDTO
     */
    tx_count?: NumericsBigInteger;
    /**
     * Timestamp contract was created.
     * @type {string}
     * @memberof UniswapV2PairDTO
     */
    created_at_timestamp?: string;
    /**
     * Total number of LPs.
     * @type {string}
     * @memberof UniswapV2PairDTO
     */
    liquidity_provider_count?: string | null;
    /**
     * @type {number}
     * @memberof UniswapV2PairDTO
     */
    readonly evaluated_ask?: number;
}
