// tslint:disable
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

/**
 * Burn entities are created for every emitted Burn event on the Uniswap core contracts. The Burn entity stores key data about the event like token amounts, who burned, who received tokens, and more. This entity can be used to track liquidity removals on pairs.
 * @export
 * @interface UniswapV3BurnDTO
 */
export interface UniswapV3BurnDTO {
    /**
     * @type {string}
     * @memberof UniswapV3BurnDTO
     */
    entry_time?: string;
    /**
     * @type {string}
     * @memberof UniswapV3BurnDTO
     */
    recv_time?: string;
    /**
     * Number of block in which entity was recorded.
     * @type {number}
     * @memberof UniswapV3BurnDTO
     */
    block_number?: number;
    /**
     * Transaction hash + \'#\' + index in mints Transaction array.
     * @type {string}
     * @memberof UniswapV3BurnDTO
     */
    id?: string | null;
    /**
     * Transaction burn was included in.
     * @type {string}
     * @memberof UniswapV3BurnDTO
     */
    transaction?: string | null;
    /**
     * Pool position is within.
     * @type {string}
     * @memberof UniswapV3BurnDTO
     */
    pool?: string | null;
    /**
     * Reference to token0 as stored in pool contract.
     * @type {string}
     * @memberof UniswapV3BurnDTO
     */
    token_0?: string | null;
    /**
     * Reference to token1 as stored in pool contract.
     * @type {string}
     * @memberof UniswapV3BurnDTO
     */
    token_1?: string | null;
    /**
     * Timestamp.
     * @type {string}
     * @memberof UniswapV3BurnDTO
     */
    timestamp?: string | null;
    /**
     * Owner of position where liquidity was burned.
     * @type {string}
     * @memberof UniswapV3BurnDTO
     */
    owner?: string | null;
    /**
     * Transaction origin: the EOA (Externally Owned Account) that initiated the transaction.
     * @type {string}
     * @memberof UniswapV3BurnDTO
     */
    origin?: string | null;
    /**
     * Amount of liquidity burned.
     * @type {string}
     * @memberof UniswapV3BurnDTO
     */
    amount?: string | null;
    /**
     * Amount of token 0 burned.
     * @type {string}
     * @memberof UniswapV3BurnDTO
     */
    amount_0?: string | null;
    /**
     * Amount of token 1 burned.
     * @type {string}
     * @memberof UniswapV3BurnDTO
     */
    amount_1?: string | null;
    /**
     * Derived amount based on available prices of tokens.
     * @type {string}
     * @memberof UniswapV3BurnDTO
     */
    amount_usd?: string | null;
    /**
     * Lower tick of position.
     * @type {string}
     * @memberof UniswapV3BurnDTO
     */
    tick_lower?: string | null;
    /**
     * Upper tick of position.
     * @type {string}
     * @memberof UniswapV3BurnDTO
     */
    tick_upper?: string | null;
    /**
     * Position within the transactions.
     * @type {string}
     * @memberof UniswapV3BurnDTO
     */
    log_index?: string | null;
    /**
     * 
     * @type {number}
     * @memberof UniswapV3BurnDTO
     */
    vid?: number;
}
