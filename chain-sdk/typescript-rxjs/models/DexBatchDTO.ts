// tslint:disable
/**
 * On Chain Dapps - REST API
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
 * Batch executed. Every batch will contain at least solution with the a set of trades that are executed in it
 * @export
 * @interface DexBatchDTO
 */
export interface DexBatchDTO {
    /**
     * @type {string}
     * @memberof DexBatchDTO
     */
    entry_time?: string;
    /**
     * @type {string}
     * @memberof DexBatchDTO
     */
    recv_time?: string;
    /**
     * Number of block in which entity was recorded.
     * @type {number}
     * @memberof DexBatchDTO
     */
    block_number?: number;
    /**
     * Identifier.
     * @type {string}
     * @memberof DexBatchDTO
     */
    id?: string | null;
    /**
     * Start epoch.
     * @type {string}
     * @memberof DexBatchDTO
     */
    start_epoch?: string | null;
    /**
     * End epoch.
     * @type {string}
     * @memberof DexBatchDTO
     */
    end_epoch?: string | null;
    /**
     * Reference to solution.
     * @type {string}
     * @memberof DexBatchDTO
     */
    solution?: string | null;
    /**
     * First solution epoch.
     * @type {string}
     * @memberof DexBatchDTO
     */
    first_solution_epoch?: string | null;
    /**
     * Last revert epoch.
     * @type {string}
     * @memberof DexBatchDTO
     */
    last_revert_epoch?: string | null;
    /**
     * Transaction hash.
     * @type {string}
     * @memberof DexBatchDTO
     */
    tx_hash?: string | null;
    /**
     * 
     * @type {number}
     * @memberof DexBatchDTO
     */
    vid?: number;
}