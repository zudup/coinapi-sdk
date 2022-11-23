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
import { NumericsBigInteger } from './numericsBigInteger';


/**
 * Stores aggregated information for a specific token across all pairs that token is included in.
 */
export interface UniswapV3TokenDTO { 
    entry_time?: string;
    recv_time?: string;
    /**
     * Number of block in which entity was recorded.
     */
    block_number?: number;
    /**
     * 
     */
    vid?: number;
    /**
     * Token address.
     */
    id?: string | null;
    /**
     * Token symbol.
     */
    symbol?: string | null;
    /**
     * Token name.
     */
    name?: string | null;
    /**
     * Token decimals.
     */
    decimals?: number;
    total_supply?: NumericsBigInteger;
    /**
     * Volume in token units.
     */
    volume?: string | null;
    /**
     * Volume in derived USD.
     */
    volume_usd?: string | null;
    /**
     * Volume in USD even on pools with less reliable USD values.
     */
    untracked_volume_usd?: string | null;
    /**
     * Fees in USD.
     */
    fees_usd?: string | null;
    tx_count?: NumericsBigInteger;
    pool_count?: NumericsBigInteger;
    /**
     * Liquidity across all pools in token units.
     */
    total_value_locked?: string | null;
    /**
     * Liquidity across all pools in derived USD.
     */
    total_value_locked_usd?: string | null;
    /**
     * TVL derived in USD untracked.
     */
    total_value_locked_usd_untracked?: string | null;
    /**
     * Derived price in ETH.
     */
    derived_eth?: string | null;
    /**
     * Pools token is in that are white listed for USD pricing.
     */
    whitelist_pools?: Array<string> | null;
    readonly token_symbol?: string | null;
}

