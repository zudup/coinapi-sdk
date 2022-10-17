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
import { BigInteger } from './bigInteger';


export interface PoolV3DTO { 
    entry_time?: string;
    recv_time?: string;
    block_number?: number;
    vid?: number;
    id?: string | null;
    created_at_timestamp?: string;
    token_0?: string | null;
    token_1?: string | null;
    fee_tier?: BigInteger;
    liquidity?: BigInteger;
    sqrt_price?: BigInteger;
    fee_growth_global_0x128?: BigInteger;
    fee_growth_global_1x128?: BigInteger;
    token_0_price?: string | null;
    token_1_price?: string | null;
    tick?: BigInteger;
    observation_index?: BigInteger;
    volume_token_0?: string | null;
    volume_token_1?: string | null;
    volume_usd?: string | null;
    untracked_volume_usd?: string | null;
    fees_usd?: string | null;
    tx_count?: BigInteger;
    collected_fees_token_0?: string | null;
    collected_fees_token_1?: string | null;
    collected_fees_usd?: string | null;
    total_value_locked_token_0?: string | null;
    total_value_locked_token_1?: string | null;
    total_value_locked_eth?: string | null;
    total_value_locked_usd?: string | null;
    total_value_locked_usd_untracked?: string | null;
    liquidity_provider_count?: string | null;
    readonly evaluated_ask?: number;
}

