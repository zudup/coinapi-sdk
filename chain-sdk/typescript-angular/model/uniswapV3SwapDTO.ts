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
import { TransactionsETradeAggressiveSide } from './transactionsETradeAggressiveSide';
import { NumericsBigInteger } from './numericsBigInteger';


/**
 * Swap are created for each token swap within a pair.
 */
export interface UniswapV3SwapDTO { 
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
     * Identifier, format: transaction hash + \"#\" + index in swaps Transaction array.
     */
    id?: string | null;
    /**
     * Pointer to transaction.
     */
    transaction?: string | null;
    /**
     * Timestamp of transaction.
     */
    timestamp?: string;
    /**
     * Pool swap occured within.
     */
    pool?: string | null;
    /**
     * Reference to token0 as stored in pair contract.
     */
    token_0?: string | null;
    /**
     * Reference to token1 as stored in pair contract.
     */
    token_1?: string | null;
    /**
     * Sender of the swap.
     */
    sender?: string | null;
    /**
     * Recipient of the swap.
     */
    recipient?: string | null;
    /**
     * Transaction origin: the EOA (Externally Owned Account) that initiated the transaction
     */
    origin?: string | null;
    /**
     * Delta of token0 swapped.
     */
    amount_0?: string | null;
    /**
     * Delta of token1 swapped.
     */
    amount_1?: string | null;
    /**
     * Derived amount of tokens sold in USD.
     */
    amount_usd?: string | null;
    sqrt_price_x96?: NumericsBigInteger;
    tick?: NumericsBigInteger;
    log_index?: NumericsBigInteger;
    readonly evaluated_price?: number;
    readonly evaluated_amount?: number;
    evaluated_aggressor?: TransactionsETradeAggressiveSide;
    readonly pool_id?: string | null;
    readonly transaction_id?: string | null;
}

