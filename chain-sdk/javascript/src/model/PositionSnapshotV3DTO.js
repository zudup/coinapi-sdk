/**
 * OnChain API
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The PositionSnapshotV3DTO model module.
 * @module model/PositionSnapshotV3DTO
 * @version v1
 */
class PositionSnapshotV3DTO {
    /**
     * Constructs a new <code>PositionSnapshotV3DTO</code>.
     * @alias module:model/PositionSnapshotV3DTO
     */
    constructor() { 
        
        PositionSnapshotV3DTO.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>PositionSnapshotV3DTO</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/PositionSnapshotV3DTO} obj Optional instance to populate.
     * @return {module:model/PositionSnapshotV3DTO} The populated <code>PositionSnapshotV3DTO</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new PositionSnapshotV3DTO();

            if (data.hasOwnProperty('entry_time')) {
                obj['entry_time'] = ApiClient.convertToType(data['entry_time'], 'Date');
            }
            if (data.hasOwnProperty('recv_time')) {
                obj['recv_time'] = ApiClient.convertToType(data['recv_time'], 'Date');
            }
            if (data.hasOwnProperty('block_number')) {
                obj['block_number'] = ApiClient.convertToType(data['block_number'], 'Number');
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('owner')) {
                obj['owner'] = ApiClient.convertToType(data['owner'], 'String');
            }
            if (data.hasOwnProperty('pool')) {
                obj['pool'] = ApiClient.convertToType(data['pool'], 'String');
            }
            if (data.hasOwnProperty('position')) {
                obj['position'] = ApiClient.convertToType(data['position'], 'String');
            }
            if (data.hasOwnProperty('timestamp')) {
                obj['timestamp'] = ApiClient.convertToType(data['timestamp'], 'String');
            }
            if (data.hasOwnProperty('liquidity')) {
                obj['liquidity'] = ApiClient.convertToType(data['liquidity'], 'String');
            }
            if (data.hasOwnProperty('deposited_token_0')) {
                obj['deposited_token_0'] = ApiClient.convertToType(data['deposited_token_0'], 'String');
            }
            if (data.hasOwnProperty('deposited_token_1')) {
                obj['deposited_token_1'] = ApiClient.convertToType(data['deposited_token_1'], 'String');
            }
            if (data.hasOwnProperty('withdrawn_token_0')) {
                obj['withdrawn_token_0'] = ApiClient.convertToType(data['withdrawn_token_0'], 'String');
            }
            if (data.hasOwnProperty('withdrawn_token_1')) {
                obj['withdrawn_token_1'] = ApiClient.convertToType(data['withdrawn_token_1'], 'String');
            }
            if (data.hasOwnProperty('collected_fees_token_0')) {
                obj['collected_fees_token_0'] = ApiClient.convertToType(data['collected_fees_token_0'], 'String');
            }
            if (data.hasOwnProperty('collected_fees_token_1')) {
                obj['collected_fees_token_1'] = ApiClient.convertToType(data['collected_fees_token_1'], 'String');
            }
            if (data.hasOwnProperty('transaction')) {
                obj['transaction'] = ApiClient.convertToType(data['transaction'], 'String');
            }
            if (data.hasOwnProperty('fee_growth_inside_0_last_x128')) {
                obj['fee_growth_inside_0_last_x128'] = ApiClient.convertToType(data['fee_growth_inside_0_last_x128'], 'String');
            }
            if (data.hasOwnProperty('fee_growth_inside_1_last_x128')) {
                obj['fee_growth_inside_1_last_x128'] = ApiClient.convertToType(data['fee_growth_inside_1_last_x128'], 'String');
            }
            if (data.hasOwnProperty('vid')) {
                obj['vid'] = ApiClient.convertToType(data['vid'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * @member {Date} entry_time
 */
PositionSnapshotV3DTO.prototype['entry_time'] = undefined;

/**
 * @member {Date} recv_time
 */
PositionSnapshotV3DTO.prototype['recv_time'] = undefined;

/**
 * @member {Number} block_number
 */
PositionSnapshotV3DTO.prototype['block_number'] = undefined;

/**
 * @member {String} id
 */
PositionSnapshotV3DTO.prototype['id'] = undefined;

/**
 * THIS IS SUPER OWNER
 * @member {String} owner
 */
PositionSnapshotV3DTO.prototype['owner'] = undefined;

/**
 * @member {String} pool
 */
PositionSnapshotV3DTO.prototype['pool'] = undefined;

/**
 * @member {String} position
 */
PositionSnapshotV3DTO.prototype['position'] = undefined;

/**
 * @member {String} timestamp
 */
PositionSnapshotV3DTO.prototype['timestamp'] = undefined;

/**
 * @member {String} liquidity
 */
PositionSnapshotV3DTO.prototype['liquidity'] = undefined;

/**
 * @member {String} deposited_token_0
 */
PositionSnapshotV3DTO.prototype['deposited_token_0'] = undefined;

/**
 * @member {String} deposited_token_1
 */
PositionSnapshotV3DTO.prototype['deposited_token_1'] = undefined;

/**
 * @member {String} withdrawn_token_0
 */
PositionSnapshotV3DTO.prototype['withdrawn_token_0'] = undefined;

/**
 * @member {String} withdrawn_token_1
 */
PositionSnapshotV3DTO.prototype['withdrawn_token_1'] = undefined;

/**
 * @member {String} collected_fees_token_0
 */
PositionSnapshotV3DTO.prototype['collected_fees_token_0'] = undefined;

/**
 * @member {String} collected_fees_token_1
 */
PositionSnapshotV3DTO.prototype['collected_fees_token_1'] = undefined;

/**
 * @member {String} transaction
 */
PositionSnapshotV3DTO.prototype['transaction'] = undefined;

/**
 * @member {String} fee_growth_inside_0_last_x128
 */
PositionSnapshotV3DTO.prototype['fee_growth_inside_0_last_x128'] = undefined;

/**
 * @member {String} fee_growth_inside_1_last_x128
 */
PositionSnapshotV3DTO.prototype['fee_growth_inside_1_last_x128'] = undefined;

/**
 * @member {Number} vid
 */
PositionSnapshotV3DTO.prototype['vid'] = undefined;






export default PositionSnapshotV3DTO;

