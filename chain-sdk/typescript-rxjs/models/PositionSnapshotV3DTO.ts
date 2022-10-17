// tslint:disable
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

/**
 * @export
 * @interface PositionSnapshotV3DTO
 */
export interface PositionSnapshotV3DTO {
    /**
     * @type {string}
     * @memberof PositionSnapshotV3DTO
     */
    entry_time?: string;
    /**
     * @type {string}
     * @memberof PositionSnapshotV3DTO
     */
    recv_time?: string;
    /**
     * @type {number}
     * @memberof PositionSnapshotV3DTO
     */
    block_number?: number;
    /**
     * @type {string}
     * @memberof PositionSnapshotV3DTO
     */
    id?: string | null;
    /**
     * @type {string}
     * @memberof PositionSnapshotV3DTO
     */
    owner?: string | null;
    /**
     * @type {string}
     * @memberof PositionSnapshotV3DTO
     */
    pool?: string | null;
    /**
     * @type {string}
     * @memberof PositionSnapshotV3DTO
     */
    position?: string | null;
    /**
     * @type {string}
     * @memberof PositionSnapshotV3DTO
     */
    timestamp?: string | null;
    /**
     * @type {string}
     * @memberof PositionSnapshotV3DTO
     */
    liquidity?: string | null;
    /**
     * @type {string}
     * @memberof PositionSnapshotV3DTO
     */
    deposited_token_0?: string | null;
    /**
     * @type {string}
     * @memberof PositionSnapshotV3DTO
     */
    deposited_token_1?: string | null;
    /**
     * @type {string}
     * @memberof PositionSnapshotV3DTO
     */
    withdrawn_token_0?: string | null;
    /**
     * @type {string}
     * @memberof PositionSnapshotV3DTO
     */
    withdrawn_token_1?: string | null;
    /**
     * @type {string}
     * @memberof PositionSnapshotV3DTO
     */
    collected_fees_token_0?: string | null;
    /**
     * @type {string}
     * @memberof PositionSnapshotV3DTO
     */
    collected_fees_token_1?: string | null;
    /**
     * @type {string}
     * @memberof PositionSnapshotV3DTO
     */
    transaction?: string | null;
    /**
     * @type {string}
     * @memberof PositionSnapshotV3DTO
     */
    fee_growth_inside_0_last_x128?: string | null;
    /**
     * @type {string}
     * @memberof PositionSnapshotV3DTO
     */
    fee_growth_inside_1_last_x128?: string | null;
    /**
     * @type {number}
     * @memberof PositionSnapshotV3DTO
     */
    vid?: number;
}
