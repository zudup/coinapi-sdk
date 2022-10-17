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

export class PoolHourDataV3DTO {
    'entryTime'?: Date;
    'recvTime'?: Date;
    'blockNumber'?: number;
    'id'?: string | null;
    'periodStartUnix'?: number;
    'pool'?: string | null;
    'liquidity'?: string | null;
    'sqrtPrice'?: string | null;
    'token0Price'?: string | null;
    'token1Price'?: string | null;
    'tick'?: string | null;
    'feeGrowthGlobal0x128'?: string | null;
    'feeGrowthGlobal1x128'?: string | null;
    'tvlUsd'?: string | null;
    'volumeToken0'?: string | null;
    'volumeToken1'?: string | null;
    'volumeUsd'?: string | null;
    'feesUsd'?: string | null;
    'txCount'?: string | null;
    'open'?: string | null;
    'high'?: string | null;
    'low'?: string | null;
    'close'?: string | null;
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
            "name": "periodStartUnix",
            "baseName": "period_start_unix",
            "type": "number"
        },
        {
            "name": "pool",
            "baseName": "pool",
            "type": "string"
        },
        {
            "name": "liquidity",
            "baseName": "liquidity",
            "type": "string"
        },
        {
            "name": "sqrtPrice",
            "baseName": "sqrt_price",
            "type": "string"
        },
        {
            "name": "token0Price",
            "baseName": "token_0_price",
            "type": "string"
        },
        {
            "name": "token1Price",
            "baseName": "token_1_price",
            "type": "string"
        },
        {
            "name": "tick",
            "baseName": "tick",
            "type": "string"
        },
        {
            "name": "feeGrowthGlobal0x128",
            "baseName": "fee_growth_global_0x128",
            "type": "string"
        },
        {
            "name": "feeGrowthGlobal1x128",
            "baseName": "fee_growth_global_1x128",
            "type": "string"
        },
        {
            "name": "tvlUsd",
            "baseName": "tvl_usd",
            "type": "string"
        },
        {
            "name": "volumeToken0",
            "baseName": "volume_token_0",
            "type": "string"
        },
        {
            "name": "volumeToken1",
            "baseName": "volume_token_1",
            "type": "string"
        },
        {
            "name": "volumeUsd",
            "baseName": "volume_usd",
            "type": "string"
        },
        {
            "name": "feesUsd",
            "baseName": "fees_usd",
            "type": "string"
        },
        {
            "name": "txCount",
            "baseName": "tx_count",
            "type": "string"
        },
        {
            "name": "open",
            "baseName": "open",
            "type": "string"
        },
        {
            "name": "high",
            "baseName": "high",
            "type": "string"
        },
        {
            "name": "low",
            "baseName": "low",
            "type": "string"
        },
        {
            "name": "close",
            "baseName": "close",
            "type": "string"
        },
        {
            "name": "vid",
            "baseName": "vid",
            "type": "number"
        }    ];

    static getAttributeTypeMap() {
        return PoolHourDataV3DTO.attributeTypeMap;
    }
}

