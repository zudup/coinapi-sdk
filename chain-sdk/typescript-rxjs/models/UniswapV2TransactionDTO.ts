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
 * Transaction entities are created for each Ethereum transaction that contains an interaction within Uniswap contracts. Each transaction contains 3 arrays, and at least one of these arrays has a length of 1.
 * @export
 * @interface UniswapV2TransactionDTO
 */
export interface UniswapV2TransactionDTO {
    /**
     * @type {string}
     * @memberof UniswapV2TransactionDTO
     */
    entry_time?: string;
    /**
     * @type {string}
     * @memberof UniswapV2TransactionDTO
     */
    recv_time?: string;
    /**
     * Number of block in which entity was recorded.
     * @type {number}
     * @memberof UniswapV2TransactionDTO
     */
    block_number?: number;
    /**
     * Ethereum transaction hash.
     * @type {string}
     * @memberof UniswapV2TransactionDTO
     */
    id?: string | null;
    /**
     * Timestamp.
     * @type {string}
     * @memberof UniswapV2TransactionDTO
     */
    timestamp?: string | null;
    /**
     * Array of Mint events within the transaction, 0 or greater.
     * @type {Array<string>}
     * @memberof UniswapV2TransactionDTO
     */
    mints?: Array<string> | null;
    /**
     * Array of Burn events within transaction, 0 or greater.
     * @type {Array<string>}
     * @memberof UniswapV2TransactionDTO
     */
    burns?: Array<string> | null;
    /**
     * Array of Swap events within transaction, 0 or greater.
     * @type {Array<string>}
     * @memberof UniswapV2TransactionDTO
     */
    swaps?: Array<string> | null;
    /**
     * 
     * @type {number}
     * @memberof UniswapV2TransactionDTO
     */
    vid?: number;
}
