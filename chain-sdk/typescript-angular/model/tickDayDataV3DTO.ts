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


export interface TickDayDataV3DTO { 
    entry_time?: string;
    recv_time?: string;
    block_number?: number;
    id?: string | null;
    date?: number;
    pool?: string | null;
    tick?: string | null;
    liquidity_gross?: string | null;
    liquidity_net?: string | null;
    volume_token_0?: string | null;
    volume_token_1?: string | null;
    volume_usd?: string | null;
    fees_usd?: string | null;
    fee_growth_outside_0x128?: string | null;
    fee_growth_outside_1x128?: string | null;
    vid?: number;
}
