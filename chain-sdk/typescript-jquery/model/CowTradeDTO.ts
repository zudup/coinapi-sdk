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
 * Trade entity.
 */
export interface CowTradeDTO {
    entry_time?: string;

    recv_time?: string;

    /**
     * Number of block in which entity was recorded.
     */
    block_number?: number;

    /**
     * Identifier, format: <order id>|<transaction hash>|<event index>.
     */
    id?: string;

    /**
     * Block\'s timestamp.
     */
    timestamp?: string;

    /**
     * Transaction\'s gas price.
     */
    gas_price?: string;

    /**
     * Transaction\'s gas limit.
     */
    gas_limit?: string;

    /**
     * Trade\'s fee amount.
     */
    fee_amount?: string;

    /**
     * Trade event transaction hash.
     */
    tx_hash?: string;

    /**
     * Reference to settlement.
     */
    settlement?: string;

    /**
     * Buy amount.
     */
    buy_amount?: string;

    /**
     * Sell amount.
     */
    sell_amount?: string;

    /**
     * Address of token that is sold.
     */
    sell_token?: string;

    /**
     * Address of token that is bought.
     */
    buy_token?: string;

    /**
     * Reference to order.
     */
    order?: string;

    /**
     * 
     */
    vid?: number;

    pool_id?: string;

    transaction_id?: string;

    evaluated_price?: number;

    evaluated_amount?: number;

    evaluated_aggressor?: models.TransactionsETradeAggressiveSide;

}
