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


export interface PairV2DTO { 
    entry_time?: string;
    recv_time?: string;
    block_number?: number;
    vid?: number;
    id?: string | null;
    token_0?: string | null;
    token_1?: string | null;
    reserve_0?: string | null;
    reserve_1?: string | null;
    total_supply?: string | null;
    reserve_eth?: string | null;
    reserve_usd?: string | null;
    tracked_reserve_eth?: string | null;
    token_0_price?: string | null;
    token_1_price?: string | null;
    volume_token_0?: string | null;
    volume_token_1?: string | null;
    volume_usd?: string | null;
    untracked_volume_usd?: string | null;
    tx_count?: BigInteger;
    created_at_timestamp?: string;
    liquidity_provider_count?: string | null;
    readonly evaluated_ask?: number;
}

