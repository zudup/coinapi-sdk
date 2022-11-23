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
import { NumericsBigInteger } from './numericsBigInteger';
import { TransactionsETradeAggressiveSide } from './transactionsETradeAggressiveSide';

/**
* Swap are created for each token swap within a pair.
*/
export class UniswapV2SwapDTO {
    'entryTime'?: Date;
    'recvTime'?: Date;
    /**
    * Number of block in which entity was recorded.
    */
    'blockNumber'?: number;
    /**
    * 
    */
    'vid'?: number;
    /**
    * Transaction hash plus index in Transaction swap array.
    */
    'id'?: string | null;
    /**
    * Reference to transaction swap was included in.
    */
    'transaction'?: string | null;
    /**
    * Timestamp of swap, used for sorted lookups.
    */
    'timestamp'?: Date;
    /**
    * Reference to pair.
    */
    'pair'?: string | null;
    /**
    * Address that initiated the swap.
    */
    'sender'?: string | null;
    /**
    * The EOA (Externally Owned Account) that initiated the transaction.
    */
    'from'?: string | null;
    /**
    * Amount of token0 sold.
    */
    'amount0In'?: string | null;
    /**
    * Amount of token1 sold.
    */
    'amount1In'?: string | null;
    /**
    * Amount of token0 received.
    */
    'amount0Out'?: string | null;
    /**
    * Amount of token1 received.
    */
    'amount1Out'?: string | null;
    /**
    * Recipient of output tokens.
    */
    'to'?: string | null;
    'logIndex'?: NumericsBigInteger;
    /**
    * Derived amount of tokens sold in USD.
    */
    'amountUsd'?: string | null;
    'evaluatedPrice'?: number;
    'evaluatedAmount'?: number;
    'evaluatedAggressor'?: TransactionsETradeAggressiveSide;
    'poolId'?: string | null;
    'transactionId'?: string | null;

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
            "name": "vid",
            "baseName": "vid",
            "type": "number"
        },
        {
            "name": "id",
            "baseName": "id",
            "type": "string"
        },
        {
            "name": "transaction",
            "baseName": "transaction",
            "type": "string"
        },
        {
            "name": "timestamp",
            "baseName": "timestamp",
            "type": "Date"
        },
        {
            "name": "pair",
            "baseName": "pair",
            "type": "string"
        },
        {
            "name": "sender",
            "baseName": "sender",
            "type": "string"
        },
        {
            "name": "from",
            "baseName": "from",
            "type": "string"
        },
        {
            "name": "amount0In",
            "baseName": "amount_0_in",
            "type": "string"
        },
        {
            "name": "amount1In",
            "baseName": "amount_1_in",
            "type": "string"
        },
        {
            "name": "amount0Out",
            "baseName": "amount_0_out",
            "type": "string"
        },
        {
            "name": "amount1Out",
            "baseName": "amount_1_out",
            "type": "string"
        },
        {
            "name": "to",
            "baseName": "to",
            "type": "string"
        },
        {
            "name": "logIndex",
            "baseName": "log_index",
            "type": "NumericsBigInteger"
        },
        {
            "name": "amountUsd",
            "baseName": "amount_usd",
            "type": "string"
        },
        {
            "name": "evaluatedPrice",
            "baseName": "evaluated_price",
            "type": "number"
        },
        {
            "name": "evaluatedAmount",
            "baseName": "evaluated_amount",
            "type": "number"
        },
        {
            "name": "evaluatedAggressor",
            "baseName": "evaluated_aggressor",
            "type": "TransactionsETradeAggressiveSide"
        },
        {
            "name": "poolId",
            "baseName": "pool_id",
            "type": "string"
        },
        {
            "name": "transactionId",
            "baseName": "transaction_id",
            "type": "string"
        }    ];

    static getAttributeTypeMap() {
        return UniswapV2SwapDTO.attributeTypeMap;
    }
}

