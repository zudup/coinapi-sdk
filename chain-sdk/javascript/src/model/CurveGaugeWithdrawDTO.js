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
 * The CurveGaugeWithdrawDTO model module.
 * @module model/CurveGaugeWithdrawDTO
 * @version v1
 */
class CurveGaugeWithdrawDTO {
    /**
     * Constructs a new <code>CurveGaugeWithdrawDTO</code>.
     * @alias module:model/CurveGaugeWithdrawDTO
     */
    constructor() { 
        
        CurveGaugeWithdrawDTO.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>CurveGaugeWithdrawDTO</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/CurveGaugeWithdrawDTO} obj Optional instance to populate.
     * @return {module:model/CurveGaugeWithdrawDTO} The populated <code>CurveGaugeWithdrawDTO</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new CurveGaugeWithdrawDTO();

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
            if (data.hasOwnProperty('gauge')) {
                obj['gauge'] = ApiClient.convertToType(data['gauge'], 'String');
            }
            if (data.hasOwnProperty('provider')) {
                obj['provider'] = ApiClient.convertToType(data['provider'], 'String');
            }
            if (data.hasOwnProperty('value')) {
                obj['value'] = ApiClient.convertToType(data['value'], 'String');
            }
            if (data.hasOwnProperty('vid')) {
                obj['vid'] = ApiClient.convertToType(data['vid'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>CurveGaugeWithdrawDTO</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>CurveGaugeWithdrawDTO</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['id'] && !(typeof data['id'] === 'string' || data['id'] instanceof String)) {
            throw new Error("Expected the field `id` to be a primitive type in the JSON string but got " + data['id']);
        }
        // ensure the json data is a string
        if (data['gauge'] && !(typeof data['gauge'] === 'string' || data['gauge'] instanceof String)) {
            throw new Error("Expected the field `gauge` to be a primitive type in the JSON string but got " + data['gauge']);
        }
        // ensure the json data is a string
        if (data['provider'] && !(typeof data['provider'] === 'string' || data['provider'] instanceof String)) {
            throw new Error("Expected the field `provider` to be a primitive type in the JSON string but got " + data['provider']);
        }
        // ensure the json data is a string
        if (data['value'] && !(typeof data['value'] === 'string' || data['value'] instanceof String)) {
            throw new Error("Expected the field `value` to be a primitive type in the JSON string but got " + data['value']);
        }

        return true;
    }


}



/**
 * @member {Date} entry_time
 */
CurveGaugeWithdrawDTO.prototype['entry_time'] = undefined;

/**
 * @member {Date} recv_time
 */
CurveGaugeWithdrawDTO.prototype['recv_time'] = undefined;

/**
 * Number of block in which entity was recorded.
 * @member {Number} block_number
 */
CurveGaugeWithdrawDTO.prototype['block_number'] = undefined;

/**
 * 
 * @member {String} id
 */
CurveGaugeWithdrawDTO.prototype['id'] = undefined;

/**
 * 
 * @member {String} gauge
 */
CurveGaugeWithdrawDTO.prototype['gauge'] = undefined;

/**
 * 
 * @member {String} provider
 */
CurveGaugeWithdrawDTO.prototype['provider'] = undefined;

/**
 * 
 * @member {String} value
 */
CurveGaugeWithdrawDTO.prototype['value'] = undefined;

/**
 * 
 * @member {Number} vid
 */
CurveGaugeWithdrawDTO.prototype['vid'] = undefined;






export default CurveGaugeWithdrawDTO;

