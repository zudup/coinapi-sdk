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
 * The CurveTokenDTO model module.
 * @module model/CurveTokenDTO
 * @version v1
 */
class CurveTokenDTO {
    /**
     * Constructs a new <code>CurveTokenDTO</code>.
     * @alias module:model/CurveTokenDTO
     */
    constructor() { 
        
        CurveTokenDTO.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>CurveTokenDTO</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/CurveTokenDTO} obj Optional instance to populate.
     * @return {module:model/CurveTokenDTO} The populated <code>CurveTokenDTO</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new CurveTokenDTO();

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
            if (data.hasOwnProperty('address')) {
                obj['address'] = ApiClient.convertToType(data['address'], 'String');
            }
            if (data.hasOwnProperty('decimals')) {
                obj['decimals'] = ApiClient.convertToType(data['decimals'], 'String');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('symbol')) {
                obj['symbol'] = ApiClient.convertToType(data['symbol'], 'String');
            }
            if (data.hasOwnProperty('pools')) {
                obj['pools'] = ApiClient.convertToType(data['pools'], ['String']);
            }
            if (data.hasOwnProperty('vid')) {
                obj['vid'] = ApiClient.convertToType(data['vid'], 'Number');
            }
            if (data.hasOwnProperty('token_symbol')) {
                obj['token_symbol'] = ApiClient.convertToType(data['token_symbol'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>CurveTokenDTO</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>CurveTokenDTO</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['id'] && !(typeof data['id'] === 'string' || data['id'] instanceof String)) {
            throw new Error("Expected the field `id` to be a primitive type in the JSON string but got " + data['id']);
        }
        // ensure the json data is a string
        if (data['address'] && !(typeof data['address'] === 'string' || data['address'] instanceof String)) {
            throw new Error("Expected the field `address` to be a primitive type in the JSON string but got " + data['address']);
        }
        // ensure the json data is a string
        if (data['decimals'] && !(typeof data['decimals'] === 'string' || data['decimals'] instanceof String)) {
            throw new Error("Expected the field `decimals` to be a primitive type in the JSON string but got " + data['decimals']);
        }
        // ensure the json data is a string
        if (data['name'] && !(typeof data['name'] === 'string' || data['name'] instanceof String)) {
            throw new Error("Expected the field `name` to be a primitive type in the JSON string but got " + data['name']);
        }
        // ensure the json data is a string
        if (data['symbol'] && !(typeof data['symbol'] === 'string' || data['symbol'] instanceof String)) {
            throw new Error("Expected the field `symbol` to be a primitive type in the JSON string but got " + data['symbol']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['pools'])) {
            throw new Error("Expected the field `pools` to be an array in the JSON data but got " + data['pools']);
        }
        // ensure the json data is a string
        if (data['token_symbol'] && !(typeof data['token_symbol'] === 'string' || data['token_symbol'] instanceof String)) {
            throw new Error("Expected the field `token_symbol` to be a primitive type in the JSON string but got " + data['token_symbol']);
        }

        return true;
    }


}



/**
 * @member {Date} entry_time
 */
CurveTokenDTO.prototype['entry_time'] = undefined;

/**
 * @member {Date} recv_time
 */
CurveTokenDTO.prototype['recv_time'] = undefined;

/**
 * Number of block in which entity was recorded.
 * @member {Number} block_number
 */
CurveTokenDTO.prototype['block_number'] = undefined;

/**
 * 
 * @member {String} id
 */
CurveTokenDTO.prototype['id'] = undefined;

/**
 * 
 * @member {String} address
 */
CurveTokenDTO.prototype['address'] = undefined;

/**
 * 
 * @member {String} decimals
 */
CurveTokenDTO.prototype['decimals'] = undefined;

/**
 * 
 * @member {String} name
 */
CurveTokenDTO.prototype['name'] = undefined;

/**
 * 
 * @member {String} symbol
 */
CurveTokenDTO.prototype['symbol'] = undefined;

/**
 * 
 * @member {Array.<String>} pools
 */
CurveTokenDTO.prototype['pools'] = undefined;

/**
 * 
 * @member {Number} vid
 */
CurveTokenDTO.prototype['vid'] = undefined;

/**
 * @member {String} token_symbol
 */
CurveTokenDTO.prototype['token_symbol'] = undefined;






export default CurveTokenDTO;

