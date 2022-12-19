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
 * The NumericsBigInteger model module.
 * @module model/NumericsBigInteger
 * @version v1
 */
class NumericsBigInteger {
    /**
     * Constructs a new <code>NumericsBigInteger</code>.
     * @alias module:model/NumericsBigInteger
     */
    constructor() { 
        
        NumericsBigInteger.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>NumericsBigInteger</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/NumericsBigInteger} obj Optional instance to populate.
     * @return {module:model/NumericsBigInteger} The populated <code>NumericsBigInteger</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new NumericsBigInteger();

            if (data.hasOwnProperty('is_power_of_two')) {
                obj['is_power_of_two'] = ApiClient.convertToType(data['is_power_of_two'], 'Boolean');
            }
            if (data.hasOwnProperty('is_zero')) {
                obj['is_zero'] = ApiClient.convertToType(data['is_zero'], 'Boolean');
            }
            if (data.hasOwnProperty('is_one')) {
                obj['is_one'] = ApiClient.convertToType(data['is_one'], 'Boolean');
            }
            if (data.hasOwnProperty('is_even')) {
                obj['is_even'] = ApiClient.convertToType(data['is_even'], 'Boolean');
            }
            if (data.hasOwnProperty('sign')) {
                obj['sign'] = ApiClient.convertToType(data['sign'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>NumericsBigInteger</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>NumericsBigInteger</code>.
     */
    static validateJSON(data) {

        return true;
    }


}



/**
 * @member {Boolean} is_power_of_two
 */
NumericsBigInteger.prototype['is_power_of_two'] = undefined;

/**
 * @member {Boolean} is_zero
 */
NumericsBigInteger.prototype['is_zero'] = undefined;

/**
 * @member {Boolean} is_one
 */
NumericsBigInteger.prototype['is_one'] = undefined;

/**
 * @member {Boolean} is_even
 */
NumericsBigInteger.prototype['is_even'] = undefined;

/**
 * @member {Number} sign
 */
NumericsBigInteger.prototype['sign'] = undefined;






export default NumericsBigInteger;
