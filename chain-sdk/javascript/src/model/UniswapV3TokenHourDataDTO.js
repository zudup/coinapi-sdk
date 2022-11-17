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
 * The UniswapV3TokenHourDataDTO model module.
 * @module model/UniswapV3TokenHourDataDTO
 * @version v1
 */
class UniswapV3TokenHourDataDTO {
    /**
     * Constructs a new <code>UniswapV3TokenHourDataDTO</code>.
     * Token data aggregated across all pairs that include token.
     * @alias module:model/UniswapV3TokenHourDataDTO
     */
    constructor() { 
        
        UniswapV3TokenHourDataDTO.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>UniswapV3TokenHourDataDTO</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/UniswapV3TokenHourDataDTO} obj Optional instance to populate.
     * @return {module:model/UniswapV3TokenHourDataDTO} The populated <code>UniswapV3TokenHourDataDTO</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new UniswapV3TokenHourDataDTO();

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
            if (data.hasOwnProperty('period_start_unix')) {
                obj['period_start_unix'] = ApiClient.convertToType(data['period_start_unix'], 'Number');
            }
            if (data.hasOwnProperty('token')) {
                obj['token'] = ApiClient.convertToType(data['token'], 'String');
            }
            if (data.hasOwnProperty('volume')) {
                obj['volume'] = ApiClient.convertToType(data['volume'], 'String');
            }
            if (data.hasOwnProperty('volume_usd')) {
                obj['volume_usd'] = ApiClient.convertToType(data['volume_usd'], 'String');
            }
            if (data.hasOwnProperty('untracked_volume_usd')) {
                obj['untracked_volume_usd'] = ApiClient.convertToType(data['untracked_volume_usd'], 'String');
            }
            if (data.hasOwnProperty('total_value_locked')) {
                obj['total_value_locked'] = ApiClient.convertToType(data['total_value_locked'], 'String');
            }
            if (data.hasOwnProperty('total_value_locked_usd')) {
                obj['total_value_locked_usd'] = ApiClient.convertToType(data['total_value_locked_usd'], 'String');
            }
            if (data.hasOwnProperty('price_usd')) {
                obj['price_usd'] = ApiClient.convertToType(data['price_usd'], 'String');
            }
            if (data.hasOwnProperty('fees_usd')) {
                obj['fees_usd'] = ApiClient.convertToType(data['fees_usd'], 'String');
            }
            if (data.hasOwnProperty('open')) {
                obj['open'] = ApiClient.convertToType(data['open'], 'String');
            }
            if (data.hasOwnProperty('high')) {
                obj['high'] = ApiClient.convertToType(data['high'], 'String');
            }
            if (data.hasOwnProperty('low')) {
                obj['low'] = ApiClient.convertToType(data['low'], 'String');
            }
            if (data.hasOwnProperty('close')) {
                obj['close'] = ApiClient.convertToType(data['close'], 'String');
            }
            if (data.hasOwnProperty('vid')) {
                obj['vid'] = ApiClient.convertToType(data['vid'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>UniswapV3TokenHourDataDTO</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>UniswapV3TokenHourDataDTO</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['id'] && !(typeof data['id'] === 'string' || data['id'] instanceof String)) {
            throw new Error("Expected the field `id` to be a primitive type in the JSON string but got " + data['id']);
        }
        // ensure the json data is a string
        if (data['token'] && !(typeof data['token'] === 'string' || data['token'] instanceof String)) {
            throw new Error("Expected the field `token` to be a primitive type in the JSON string but got " + data['token']);
        }
        // ensure the json data is a string
        if (data['volume'] && !(typeof data['volume'] === 'string' || data['volume'] instanceof String)) {
            throw new Error("Expected the field `volume` to be a primitive type in the JSON string but got " + data['volume']);
        }
        // ensure the json data is a string
        if (data['volume_usd'] && !(typeof data['volume_usd'] === 'string' || data['volume_usd'] instanceof String)) {
            throw new Error("Expected the field `volume_usd` to be a primitive type in the JSON string but got " + data['volume_usd']);
        }
        // ensure the json data is a string
        if (data['untracked_volume_usd'] && !(typeof data['untracked_volume_usd'] === 'string' || data['untracked_volume_usd'] instanceof String)) {
            throw new Error("Expected the field `untracked_volume_usd` to be a primitive type in the JSON string but got " + data['untracked_volume_usd']);
        }
        // ensure the json data is a string
        if (data['total_value_locked'] && !(typeof data['total_value_locked'] === 'string' || data['total_value_locked'] instanceof String)) {
            throw new Error("Expected the field `total_value_locked` to be a primitive type in the JSON string but got " + data['total_value_locked']);
        }
        // ensure the json data is a string
        if (data['total_value_locked_usd'] && !(typeof data['total_value_locked_usd'] === 'string' || data['total_value_locked_usd'] instanceof String)) {
            throw new Error("Expected the field `total_value_locked_usd` to be a primitive type in the JSON string but got " + data['total_value_locked_usd']);
        }
        // ensure the json data is a string
        if (data['price_usd'] && !(typeof data['price_usd'] === 'string' || data['price_usd'] instanceof String)) {
            throw new Error("Expected the field `price_usd` to be a primitive type in the JSON string but got " + data['price_usd']);
        }
        // ensure the json data is a string
        if (data['fees_usd'] && !(typeof data['fees_usd'] === 'string' || data['fees_usd'] instanceof String)) {
            throw new Error("Expected the field `fees_usd` to be a primitive type in the JSON string but got " + data['fees_usd']);
        }
        // ensure the json data is a string
        if (data['open'] && !(typeof data['open'] === 'string' || data['open'] instanceof String)) {
            throw new Error("Expected the field `open` to be a primitive type in the JSON string but got " + data['open']);
        }
        // ensure the json data is a string
        if (data['high'] && !(typeof data['high'] === 'string' || data['high'] instanceof String)) {
            throw new Error("Expected the field `high` to be a primitive type in the JSON string but got " + data['high']);
        }
        // ensure the json data is a string
        if (data['low'] && !(typeof data['low'] === 'string' || data['low'] instanceof String)) {
            throw new Error("Expected the field `low` to be a primitive type in the JSON string but got " + data['low']);
        }
        // ensure the json data is a string
        if (data['close'] && !(typeof data['close'] === 'string' || data['close'] instanceof String)) {
            throw new Error("Expected the field `close` to be a primitive type in the JSON string but got " + data['close']);
        }

        return true;
    }


}



/**
 * @member {Date} entry_time
 */
UniswapV3TokenHourDataDTO.prototype['entry_time'] = undefined;

/**
 * @member {Date} recv_time
 */
UniswapV3TokenHourDataDTO.prototype['recv_time'] = undefined;

/**
 * Number of block in which entity was recorded.
 * @member {Number} block_number
 */
UniswapV3TokenHourDataDTO.prototype['block_number'] = undefined;

/**
 * Token address concatendated with date.
 * @member {String} id
 */
UniswapV3TokenHourDataDTO.prototype['id'] = undefined;

/**
 * Unix timestamp for start of hour.
 * @member {Number} period_start_unix
 */
UniswapV3TokenHourDataDTO.prototype['period_start_unix'] = undefined;

/**
 * Pointer to token.
 * @member {String} token
 */
UniswapV3TokenHourDataDTO.prototype['token'] = undefined;

/**
 * Volume in token units.
 * @member {String} volume
 */
UniswapV3TokenHourDataDTO.prototype['volume'] = undefined;

/**
 * Volume in derived USD.
 * @member {String} volume_usd
 */
UniswapV3TokenHourDataDTO.prototype['volume_usd'] = undefined;

/**
 * Volume in USD even on pools with less reliable USD values.
 * @member {String} untracked_volume_usd
 */
UniswapV3TokenHourDataDTO.prototype['untracked_volume_usd'] = undefined;

/**
 * Liquidity across all pools in token units.
 * @member {String} total_value_locked
 */
UniswapV3TokenHourDataDTO.prototype['total_value_locked'] = undefined;

/**
 * Liquidity across all pools in derived USD.
 * @member {String} total_value_locked_usd
 */
UniswapV3TokenHourDataDTO.prototype['total_value_locked_usd'] = undefined;

/**
 * Price at end of period in USD.
 * @member {String} price_usd
 */
UniswapV3TokenHourDataDTO.prototype['price_usd'] = undefined;

/**
 * Fees in USD.
 * @member {String} fees_usd
 */
UniswapV3TokenHourDataDTO.prototype['fees_usd'] = undefined;

/**
 * Opening price USD.
 * @member {String} open
 */
UniswapV3TokenHourDataDTO.prototype['open'] = undefined;

/**
 * High price USD.
 * @member {String} high
 */
UniswapV3TokenHourDataDTO.prototype['high'] = undefined;

/**
 * Low price USD.
 * @member {String} low
 */
UniswapV3TokenHourDataDTO.prototype['low'] = undefined;

/**
 * Close price USD.
 * @member {String} close
 */
UniswapV3TokenHourDataDTO.prototype['close'] = undefined;

/**
 * 
 * @member {Number} vid
 */
UniswapV3TokenHourDataDTO.prototype['vid'] = undefined;






export default UniswapV3TokenHourDataDTO;
