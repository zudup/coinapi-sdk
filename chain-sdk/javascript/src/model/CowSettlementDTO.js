/**
 * On Chain - REST API
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
 * The CowSettlementDTO model module.
 * @module model/CowSettlementDTO
 * @version v1
 */
class CowSettlementDTO {
    /**
     * Constructs a new <code>CowSettlementDTO</code>.
     * A settlement comprises a list of traded tokens with their corresponding price in the batch.
     * @alias module:model/CowSettlementDTO
     */
    constructor() { 
        
        CowSettlementDTO.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>CowSettlementDTO</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/CowSettlementDTO} obj Optional instance to populate.
     * @return {module:model/CowSettlementDTO} The populated <code>CowSettlementDTO</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new CowSettlementDTO();

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
            if (data.hasOwnProperty('solver')) {
                obj['solver'] = ApiClient.convertToType(data['solver'], 'String');
            }
            if (data.hasOwnProperty('tx_hash')) {
                obj['tx_hash'] = ApiClient.convertToType(data['tx_hash'], 'String');
            }
            if (data.hasOwnProperty('first_trade_timestamp')) {
                obj['first_trade_timestamp'] = ApiClient.convertToType(data['first_trade_timestamp'], 'String');
            }
            if (data.hasOwnProperty('vid')) {
                obj['vid'] = ApiClient.convertToType(data['vid'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>CowSettlementDTO</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>CowSettlementDTO</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['id'] && !(typeof data['id'] === 'string' || data['id'] instanceof String)) {
            throw new Error("Expected the field `id` to be a primitive type in the JSON string but got " + data['id']);
        }
        // ensure the json data is a string
        if (data['solver'] && !(typeof data['solver'] === 'string' || data['solver'] instanceof String)) {
            throw new Error("Expected the field `solver` to be a primitive type in the JSON string but got " + data['solver']);
        }
        // ensure the json data is a string
        if (data['tx_hash'] && !(typeof data['tx_hash'] === 'string' || data['tx_hash'] instanceof String)) {
            throw new Error("Expected the field `tx_hash` to be a primitive type in the JSON string but got " + data['tx_hash']);
        }
        // ensure the json data is a string
        if (data['first_trade_timestamp'] && !(typeof data['first_trade_timestamp'] === 'string' || data['first_trade_timestamp'] instanceof String)) {
            throw new Error("Expected the field `first_trade_timestamp` to be a primitive type in the JSON string but got " + data['first_trade_timestamp']);
        }

        return true;
    }


}



/**
 * @member {Date} entry_time
 */
CowSettlementDTO.prototype['entry_time'] = undefined;

/**
 * @member {Date} recv_time
 */
CowSettlementDTO.prototype['recv_time'] = undefined;

/**
 * Number of block in which entity was recorded.
 * @member {Number} block_number
 */
CowSettlementDTO.prototype['block_number'] = undefined;

/**
 * Transaction hash.
 * @member {String} id
 */
CowSettlementDTO.prototype['id'] = undefined;

/**
 * Solver's address.
 * @member {String} solver
 */
CowSettlementDTO.prototype['solver'] = undefined;

/**
 * Transaction hash.
 * @member {String} tx_hash
 */
CowSettlementDTO.prototype['tx_hash'] = undefined;

/**
 * First trade timestamp.
 * @member {String} first_trade_timestamp
 */
CowSettlementDTO.prototype['first_trade_timestamp'] = undefined;

/**
 * 
 * @member {Number} vid
 */
CowSettlementDTO.prototype['vid'] = undefined;






export default CowSettlementDTO;

