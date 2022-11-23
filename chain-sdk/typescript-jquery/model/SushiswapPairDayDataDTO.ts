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

import * as models from './models';

/**
 * Tracks pair data across each day.
 */
export interface SushiswapPairDayDataDTO {
    entry_time?: string;

    recv_time?: string;

    /**
     * Number of block in which entity was recorded.
     */
    block_number?: number;

    /**
     * Identifier, format: <pair id>-<day start timestamp>.
     */
    id?: string;

    /**
     * Unix timestamp for start of day.
     */
    date?: number;

    /**
     * Reference to pair.
     */
    pair?: string;

    /**
     * Reference to token0.
     */
    token_0?: string;

    /**
     * Reference to token1.
     */
    token_1?: string;

    /**
     * Reserve of token0 (updated during each transaction on pair).
     */
    reserve_0?: string;

    /**
     * Reserve of token1 (updated during each transaction on pair).
     */
    reserve_1?: string;

    /**
     * Total supply of liquidity token distributed to LPs.
     */
    total_supply?: string;

    /**
     * Reserve of token0 plus token1 stored as a derived USD amount.
     */
    reserve_usd?: string;

    /**
     * Total amount of token0 swapped throughout day.
     */
    volume_token_0?: string;

    /**
     * Total amount of token1 swapped throughout day.
     */
    volume_token_1?: string;

    /**
     * Total volume within pair throughout day.
     */
    volume_usd?: string;

    /**
     * Amount of transactions on pair throughout day.
     */
    tx_count?: string;

    /**
     * 
     */
    vid?: number;

}
