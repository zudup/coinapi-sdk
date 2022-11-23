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
 * The Uniswap Factory entity is responsible for storing aggregate information across all Uniswap pairs. It can be used to view stats about total liquidity, volume, amount of pairs and more.
 */
export interface UniswapV2UniswapFactoryDTO {
    entry_time?: string;

    recv_time?: string;

    /**
     * Number of block in which entity was recorded.
     */
    block_number?: number;

    /**
     * Factory address.
     */
    id?: string;

    /**
     * Amount of pairs created by the Uniswap factory.
     */
    pair_count?: number;

    /**
     * All time USD volume across all pairs (USD is derived).
     */
    total_volume_usd?: string;

    /**
     * All time volume in ETH across all pairs (ETH is derived).
     */
    total_volume_eth?: string;

    /**
     * Untracked volume USD.
     */
    untracked_volume_usd?: string;

    /**
     * Total liquidity across all pairs stored as a derived USD amount.
     */
    total_liquidity_usd?: string;

    /**
     * Total liquidity across all pairs stored as a derived ETH amount.
     */
    total_liquidity_eth?: string;

    /**
     * All time amount of transactions across all pairs.
     */
    tx_count?: string;

    /**
     * .
     */
    vid?: number;

}
