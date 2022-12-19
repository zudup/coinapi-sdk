/**
 * On Chain Dapps - REST API
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
 * The CurveUnderlyingCoinDTO model module.
 * @module model/CurveUnderlyingCoinDTO
 * @version v1
 */
class CurveUnderlyingCoinDTO {
    /**
     * Constructs a new <code>CurveUnderlyingCoinDTO</code>.
     * @alias module:model/CurveUnderlyingCoinDTO
     */
    constructor() { 
        
        CurveUnderlyingCoinDTO.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>CurveUnderlyingCoinDTO</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/CurveUnderlyingCoinDTO} obj Optional instance to populate.
     * @return {module:model/CurveUnderlyingCoinDTO} The populated <code>CurveUnderlyingCoinDTO</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new CurveUnderlyingCoinDTO();

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
            if (data.hasOwnProperty('index')) {
                obj['index'] = ApiClient.convertToType(data['index'], 'Number');
            }
            if (data.hasOwnProperty('pool')) {
                obj['pool'] = ApiClient.convertToType(data['pool'], 'String');
            }
            if (data.hasOwnProperty('token')) {
                obj['token'] = ApiClient.convertToType(data['token'], 'String');
            }
            if (data.hasOwnProperty('coin')) {
                obj['coin'] = ApiClient.convertToType(data['coin'], 'String');
            }
            if (data.hasOwnProperty('balance')) {
                obj['balance'] = ApiClient.convertToType(data['balance'], 'String');
            }
            if (data.hasOwnProperty('updated')) {
                obj['updated'] = ApiClient.convertToType(data['updated'], 'String');
            }
            if (data.hasOwnProperty('updated_at_block')) {
                obj['updated_at_block'] = ApiClient.convertToType(data['updated_at_block'], 'String');
            }
            if (data.hasOwnProperty('updated_at_transaction')) {
                obj['updated_at_transaction'] = ApiClient.convertToType(data['updated_at_transaction'], 'String');
            }
            if (data.hasOwnProperty('vid')) {
                obj['vid'] = ApiClient.convertToType(data['vid'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>CurveUnderlyingCoinDTO</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>CurveUnderlyingCoinDTO</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['id'] && !(typeof data['id'] === 'string' || data['id'] instanceof String)) {
            throw new Error("Expected the field `id` to be a primitive type in the JSON string but got " + data['id']);
        }
        // ensure the json data is a string
        if (data['pool'] && !(typeof data['pool'] === 'string' || data['pool'] instanceof String)) {
            throw new Error("Expected the field `pool` to be a primitive type in the JSON string but got " + data['pool']);
        }
        // ensure the json data is a string
        if (data['token'] && !(typeof data['token'] === 'string' || data['token'] instanceof String)) {
            throw new Error("Expected the field `token` to be a primitive type in the JSON string but got " + data['token']);
        }
        // ensure the json data is a string
        if (data['coin'] && !(typeof data['coin'] === 'string' || data['coin'] instanceof String)) {
            throw new Error("Expected the field `coin` to be a primitive type in the JSON string but got " + data['coin']);
        }
        // ensure the json data is a string
        if (data['balance'] && !(typeof data['balance'] === 'string' || data['balance'] instanceof String)) {
            throw new Error("Expected the field `balance` to be a primitive type in the JSON string but got " + data['balance']);
        }
        // ensure the json data is a string
        if (data['updated'] && !(typeof data['updated'] === 'string' || data['updated'] instanceof String)) {
            throw new Error("Expected the field `updated` to be a primitive type in the JSON string but got " + data['updated']);
        }
        // ensure the json data is a string
        if (data['updated_at_block'] && !(typeof data['updated_at_block'] === 'string' || data['updated_at_block'] instanceof String)) {
            throw new Error("Expected the field `updated_at_block` to be a primitive type in the JSON string but got " + data['updated_at_block']);
        }
        // ensure the json data is a string
        if (data['updated_at_transaction'] && !(typeof data['updated_at_transaction'] === 'string' || data['updated_at_transaction'] instanceof String)) {
            throw new Error("Expected the field `updated_at_transaction` to be a primitive type in the JSON string but got " + data['updated_at_transaction']);
        }

        return true;
    }


}



/**
 * @member {Date} entry_time
 */
CurveUnderlyingCoinDTO.prototype['entry_time'] = undefined;

/**
 * @member {Date} recv_time
 */
CurveUnderlyingCoinDTO.prototype['recv_time'] = undefined;

/**
 * Number of block in which entity was recorded.
 * @member {Number} block_number
 */
CurveUnderlyingCoinDTO.prototype['block_number'] = undefined;

/**
 * Equals to: <pool_id>-<coin_index>.
 * @member {String} id
 */
CurveUnderlyingCoinDTO.prototype['id'] = undefined;

/**
 * Coin index.
 * @member {Number} index
 */
CurveUnderlyingCoinDTO.prototype['index'] = undefined;

/**
 * 
 * @member {String} pool
 */
CurveUnderlyingCoinDTO.prototype['pool'] = undefined;

/**
 * 
 * @member {String} token
 */
CurveUnderlyingCoinDTO.prototype['token'] = undefined;

/**
 * 
 * @member {String} coin
 */
CurveUnderlyingCoinDTO.prototype['coin'] = undefined;

/**
 * 
 * @member {String} balance
 */
CurveUnderlyingCoinDTO.prototype['balance'] = undefined;

/**
 * 
 * @member {String} updated
 */
CurveUnderlyingCoinDTO.prototype['updated'] = undefined;

/**
 * 
 * @member {String} updated_at_block
 */
CurveUnderlyingCoinDTO.prototype['updated_at_block'] = undefined;

/**
 * 
 * @member {String} updated_at_transaction
 */
CurveUnderlyingCoinDTO.prototype['updated_at_transaction'] = undefined;

/**
 * 
 * @member {Number} vid
 */
CurveUnderlyingCoinDTO.prototype['vid'] = undefined;






export default CurveUnderlyingCoinDTO;
