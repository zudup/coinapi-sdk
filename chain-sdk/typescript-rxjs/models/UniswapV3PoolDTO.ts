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
 * Information about a pool. Includes references to each token within the pool, volume information, liquidity information, and more. The pool entity mirrors the pool smart contract, and also contains aggregated information about use.
 * @export
 * @interface UniswapV3PoolDTO
 */
export interface UniswapV3PoolDTO {
    /**
     * @type {string}
     * @memberof UniswapV3PoolDTO
     */
    entry_time?: string;
    /**
     * @type {string}
     * @memberof UniswapV3PoolDTO
     */
    recv_time?: string;
    /**
     * Number of block in which entity was recorded.
     * @type {number}
     * @memberof UniswapV3PoolDTO
     */
    block_number?: number;
    /**
     * 
     * @type {number}
     * @memberof UniswapV3PoolDTO
     */
    vid?: number;
    /**
     * Pool address.
     * @type {string}
     * @memberof UniswapV3PoolDTO
     */
    id?: string | null;
    /**
     * Creation time.
     * @type {string}
     * @memberof UniswapV3PoolDTO
     */
    created_at_timestamp?: string;
    /**
     * Reference to token0 as stored in pool contract.
     * @type {string}
     * @memberof UniswapV3PoolDTO
     */
    token_0?: string | null;
    /**
     * Reference to token1 as stored in pool contract.
     * @type {string}
     * @memberof UniswapV3PoolDTO
     */
    token_1?: string | null;
    /**
     * @type {NumericsBigInteger}
     * @memberof UniswapV3PoolDTO
     */
    fee_tier?: NumericsBigInteger;
    /**
     * @type {NumericsBigInteger}
     * @memberof UniswapV3PoolDTO
     */
    liquidity?: NumericsBigInteger;
    /**
     * @type {NumericsBigInteger}
     * @memberof UniswapV3PoolDTO
     */
    sqrt_price?: NumericsBigInteger;
    /**
     * @type {NumericsBigInteger}
     * @memberof UniswapV3PoolDTO
     */
    fee_growth_global_0x128?: NumericsBigInteger;
    /**
     * @type {NumericsBigInteger}
     * @memberof UniswapV3PoolDTO
     */
    fee_growth_global_1x128?: NumericsBigInteger;
    /**
     * Token0 per token1.
     * @type {string}
     * @memberof UniswapV3PoolDTO
     */
    token_0_price?: string | null;
    /**
     * Token1 per token0.
     * @type {string}
     * @memberof UniswapV3PoolDTO
     */
    token_1_price?: string | null;
    /**
     * @type {NumericsBigInteger}
     * @memberof UniswapV3PoolDTO
     */
    tick?: NumericsBigInteger;
    /**
     * @type {NumericsBigInteger}
     * @memberof UniswapV3PoolDTO
     */
    observation_index?: NumericsBigInteger;
    /**
     * All time token0 swapped.
     * @type {string}
     * @memberof UniswapV3PoolDTO
     */
    volume_token_0?: string | null;
    /**
     * All time token1 swapped.
     * @type {string}
     * @memberof UniswapV3PoolDTO
     */
    volume_token_1?: string | null;
    /**
     * All time USD swapped.
     * @type {string}
     * @memberof UniswapV3PoolDTO
     */
    volume_usd?: string | null;
    /**
     * All time USD swapped, unfiltered for unreliable USD pools.
     * @type {string}
     * @memberof UniswapV3PoolDTO
     */
    untracked_volume_usd?: string | null;
    /**
     * Fees in USD.
     * @type {string}
     * @memberof UniswapV3PoolDTO
     */
    fees_usd?: string | null;
    /**
     * @type {NumericsBigInteger}
     * @memberof UniswapV3PoolDTO
     */
    tx_count?: NumericsBigInteger;
    /**
     * All time fees collected token0.
     * @type {string}
     * @memberof UniswapV3PoolDTO
     */
    collected_fees_token_0?: string | null;
    /**
     * All time fees collected token1.
     * @type {string}
     * @memberof UniswapV3PoolDTO
     */
    collected_fees_token_1?: string | null;
    /**
     * All time fees collected derived USD.
     * @type {string}
     * @memberof UniswapV3PoolDTO
     */
    collected_fees_usd?: string | null;
    /**
     * Total token 0 across all ticks.
     * @type {string}
     * @memberof UniswapV3PoolDTO
     */
    total_value_locked_token_0?: string | null;
    /**
     * 
     * @type {string}
     * @memberof UniswapV3PoolDTO
     */
    total_value_locked_token_1?: string | null;
    /**
     * Total token 1 across all ticks.
     * @type {string}
     * @memberof UniswapV3PoolDTO
     */
    total_value_locked_eth?: string | null;
    /**
     * Total value locked USD.
     * @type {string}
     * @memberof UniswapV3PoolDTO
     */
    total_value_locked_usd?: string | null;
    /**
     * Total value locked derived ETH.
     * @type {string}
     * @memberof UniswapV3PoolDTO
     */
    total_value_locked_usd_untracked?: string | null;
    /**
     * Liquidity providers count, used to detect new exchanges.
     * @type {string}
     * @memberof UniswapV3PoolDTO
     */
    liquidity_provider_count?: string | null;
    /**
     * @type {number}
     * @memberof UniswapV3PoolDTO
     */
    readonly evaluated_ask?: number;
}
