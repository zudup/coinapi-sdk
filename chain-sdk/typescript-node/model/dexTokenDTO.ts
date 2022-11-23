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

import { RequestFile } from './models';

/**
* Registered token.
*/
export class DexTokenDTO {
    'entryTime'?: Date;
    'recvTime'?: Date;
    /**
    * Number of block in which entity was recorded.
    */
    'blockNumber'?: number;
    /**
    * 
    */
    'id'?: string | null;
    /**
    * 
    */
    'address'?: string | null;
    /**
    * 
    */
    'fromBatchId'?: string | null;
    /**
    * 
    */
    'symbol'?: string | null;
    /**
    * 
    */
    'decimals'?: string | null;
    /**
    * 
    */
    'name'?: string | null;
    /**
    * Cumulative sell volume.
    */
    'sellVolume'?: string | null;
    /**
    * 
    */
    'createEpoch'?: string | null;
    /**
    * 
    */
    'txHash'?: string | null;
    /**
    * 
    */
    'vid'?: number;
    'tokenSymbol'?: string | null;

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
            "name": "address",
            "baseName": "address",
            "type": "string"
        },
        {
            "name": "fromBatchId",
            "baseName": "from_batch_id",
            "type": "string"
        },
        {
            "name": "symbol",
            "baseName": "symbol",
            "type": "string"
        },
        {
            "name": "decimals",
            "baseName": "decimals",
            "type": "string"
        },
        {
            "name": "name",
            "baseName": "name",
            "type": "string"
        },
        {
            "name": "sellVolume",
            "baseName": "sell_volume",
            "type": "string"
        },
        {
            "name": "createEpoch",
            "baseName": "create_epoch",
            "type": "string"
        },
        {
            "name": "txHash",
            "baseName": "tx_hash",
            "type": "string"
        },
        {
            "name": "vid",
            "baseName": "vid",
            "type": "number"
        },
        {
            "name": "tokenSymbol",
            "baseName": "token_symbol",
            "type": "string"
        }    ];

    static getAttributeTypeMap() {
        return DexTokenDTO.attributeTypeMap;
    }
}

