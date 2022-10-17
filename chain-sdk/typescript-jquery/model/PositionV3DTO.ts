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

import * as models from './models';

export interface PositionV3DTO {
    entry_time?: string;

    recv_time?: string;

    block_number?: number;

    id?: string;

    owner?: string;

    pool?: string;

    token_0?: string;

    token_1?: string;

    tick_lower?: string;

    tick_upper?: string;

    liquidity?: string;

    deposited_token_0?: string;

    deposited_token_1?: string;

    withdrawn_token_0?: string;

    withdrawn_token_1?: string;

    collected_fees_token_0?: string;

    collected_fees_token_1?: string;

    transaction?: string;

    fee_growth_inside_0_last_x128?: string;

    fee_growth_inside_1_last_x128?: string;

    vid?: number;

}
