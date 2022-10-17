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

import { RequestFile } from './models';

export class PositionSnapshotV3DTO {
    'entryTime'?: Date;
    'recvTime'?: Date;
    'blockNumber'?: number;
    'id'?: string | null;
    'owner'?: string | null;
    'pool'?: string | null;
    'position'?: string | null;
    'timestamp'?: string | null;
    'liquidity'?: string | null;
    'depositedToken0'?: string | null;
    'depositedToken1'?: string | null;
    'withdrawnToken0'?: string | null;
    'withdrawnToken1'?: string | null;
    'collectedFeesToken0'?: string | null;
    'collectedFeesToken1'?: string | null;
    'transaction'?: string | null;
    'feeGrowthInside0LastX128'?: string | null;
    'feeGrowthInside1LastX128'?: string | null;
    'vid'?: number;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "entryTime",
            "baseName": "entry_time",
            "type": "Date"
        },
        {
            "name": "recvTime",
            "baseName": "recv_time",
            "type": "Date"
        },
        {
            "name": "blockNumber",
            "baseName": "block_number",
            "type": "number"
        },
        {
            "name": "id",
            "baseName": "id",
            "type": "string"
        },
        {
            "name": "owner",
            "baseName": "owner",
            "type": "string"
        },
        {
            "name": "pool",
            "baseName": "pool",
            "type": "string"
        },
        {
            "name": "position",
            "baseName": "position",
            "type": "string"
        },
        {
            "name": "timestamp",
            "baseName": "timestamp",
            "type": "string"
        },
        {
            "name": "liquidity",
            "baseName": "liquidity",
            "type": "string"
        },
        {
            "name": "depositedToken0",
            "baseName": "deposited_token_0",
            "type": "string"
        },
        {
            "name": "depositedToken1",
            "baseName": "deposited_token_1",
            "type": "string"
        },
        {
            "name": "withdrawnToken0",
            "baseName": "withdrawn_token_0",
            "type": "string"
        },
        {
            "name": "withdrawnToken1",
            "baseName": "withdrawn_token_1",
            "type": "string"
        },
        {
            "name": "collectedFeesToken0",
            "baseName": "collected_fees_token_0",
            "type": "string"
        },
        {
            "name": "collectedFeesToken1",
            "baseName": "collected_fees_token_1",
            "type": "string"
        },
        {
            "name": "transaction",
            "baseName": "transaction",
            "type": "string"
        },
        {
            "name": "feeGrowthInside0LastX128",
            "baseName": "fee_growth_inside_0_last_x128",
            "type": "string"
        },
        {
            "name": "feeGrowthInside1LastX128",
            "baseName": "fee_growth_inside_1_last_x128",
            "type": "string"
        },
        {
            "name": "vid",
            "baseName": "vid",
            "type": "number"
        }    ];

    static getAttributeTypeMap() {
        return PositionSnapshotV3DTO.attributeTypeMap;
    }
}

