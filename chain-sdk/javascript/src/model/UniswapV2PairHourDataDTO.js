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
 * The UniswapV2PairHourDataDTO model module.
 * @module model/UniswapV2PairHourDataDTO
 * @version v1
 */
class UniswapV2PairHourDataDTO {
    /**
     * Constructs a new <code>UniswapV2PairHourDataDTO</code>.
     * Tracks pair data across each hour.
     * @alias module:model/UniswapV2PairHourDataDTO
     */
    constructor() { 
        
        UniswapV2PairHourDataDTO.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>UniswapV2PairHourDataDTO</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/UniswapV2PairHourDataDTO} obj Optional instance to populate.
     * @return {module:model/UniswapV2PairHourDataDTO} The populated <code>UniswapV2PairHourDataDTO</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new UniswapV2PairHourDataDTO();

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
            if (data.hasOwnProperty('hour_start_unix')) {
                obj['hour_start_unix'] = ApiClient.convertToType(data['hour_start_unix'], 'Number');
            }
            if (data.hasOwnProperty('pair')) {
                obj['pair'] = ApiClient.convertToType(data['pair'], 'String');
            }
            if (data.hasOwnProperty('reserve_0')) {
                obj['reserve_0'] = ApiClient.convertToType(data['reserve_0'], 'String');
            }
            if (data.hasOwnProperty('reserve_1')) {
                obj['reserve_1'] = ApiClient.convertToType(data['reserve_1'], 'String');
            }
            if (data.hasOwnProperty('total_supply')) {
                obj['total_supply'] = ApiClient.convertToType(data['total_supply'], 'String');
            }
            if (data.hasOwnProperty('reserve_usd')) {
                obj['reserve_usd'] = ApiClient.convertToType(data['reserve_usd'], 'String');
            }
            if (data.hasOwnProperty('hourly_volume_token_0')) {
                obj['hourly_volume_token_0'] = ApiClient.convertToType(data['hourly_volume_token_0'], 'String');
            }
            if (data.hasOwnProperty('hourly_volume_token_1')) {
                obj['hourly_volume_token_1'] = ApiClient.convertToType(data['hourly_volume_token_1'], 'String');
            }
            if (data.hasOwnProperty('hourly_volume_usd')) {
                obj['hourly_volume_usd'] = ApiClient.convertToType(data['hourly_volume_usd'], 'String');
            }
            if (data.hasOwnProperty('hourly_txns')) {
                obj['hourly_txns'] = ApiClient.convertToType(data['hourly_txns'], 'String');
            }
            if (data.hasOwnProperty('vid')) {
                obj['vid'] = ApiClient.convertToType(data['vid'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>UniswapV2PairHourDataDTO</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>UniswapV2PairHourDataDTO</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['id'] && !(typeof data['id'] === 'string' || data['id'] instanceof String)) {
            throw new Error("Expected the field `id` to be a primitive type in the JSON string but got " + data['id']);
        }
        // ensure the json data is a string
        if (data['pair'] && !(typeof data['pair'] === 'string' || data['pair'] instanceof String)) {
            throw new Error("Expected the field `pair` to be a primitive type in the JSON string but got " + data['pair']);
        }
        // ensure the json data is a string
        if (data['reserve_0'] && !(typeof data['reserve_0'] === 'string' || data['reserve_0'] instanceof String)) {
            throw new Error("Expected the field `reserve_0` to be a primitive type in the JSON string but got " + data['reserve_0']);
        }
        // ensure the json data is a string
        if (data['reserve_1'] && !(typeof data['reserve_1'] === 'string' || data['reserve_1'] instanceof String)) {
            throw new Error("Expected the field `reserve_1` to be a primitive type in the JSON string but got " + data['reserve_1']);
        }
        // ensure the json data is a string
        if (data['total_supply'] && !(typeof data['total_supply'] === 'string' || data['total_supply'] instanceof String)) {
            throw new Error("Expected the field `total_supply` to be a primitive type in the JSON string but got " + data['total_supply']);
        }
        // ensure the json data is a string
        if (data['reserve_usd'] && !(typeof data['reserve_usd'] === 'string' || data['reserve_usd'] instanceof String)) {
            throw new Error("Expected the field `reserve_usd` to be a primitive type in the JSON string but got " + data['reserve_usd']);
        }
        // ensure the json data is a string
        if (data['hourly_volume_token_0'] && !(typeof data['hourly_volume_token_0'] === 'string' || data['hourly_volume_token_0'] instanceof String)) {
            throw new Error("Expected the field `hourly_volume_token_0` to be a primitive type in the JSON string but got " + data['hourly_volume_token_0']);
        }
        // ensure the json data is a string
        if (data['hourly_volume_token_1'] && !(typeof data['hourly_volume_token_1'] === 'string' || data['hourly_volume_token_1'] instanceof String)) {
            throw new Error("Expected the field `hourly_volume_token_1` to be a primitive type in the JSON string but got " + data['hourly_volume_token_1']);
        }
        // ensure the json data is a string
        if (data['hourly_volume_usd'] && !(typeof data['hourly_volume_usd'] === 'string' || data['hourly_volume_usd'] instanceof String)) {
            throw new Error("Expected the field `hourly_volume_usd` to be a primitive type in the JSON string but got " + data['hourly_volume_usd']);
        }
        // ensure the json data is a string
        if (data['hourly_txns'] && !(typeof data['hourly_txns'] === 'string' || data['hourly_txns'] instanceof String)) {
            throw new Error("Expected the field `hourly_txns` to be a primitive type in the JSON string but got " + data['hourly_txns']);
        }

        return true;
    }


}



/**
 * @member {Date} entry_time
 */
UniswapV2PairHourDataDTO.prototype['entry_time'] = undefined;

/**
 * @member {Date} recv_time
 */
UniswapV2PairHourDataDTO.prototype['recv_time'] = undefined;

/**
 * Number of block in which entity was recorded.
 * @member {Number} block_number
 */
UniswapV2PairHourDataDTO.prototype['block_number'] = undefined;

/**
 * 
 * @member {String} id
 */
UniswapV2PairHourDataDTO.prototype['id'] = undefined;

/**
 * Unix timestamp for start of hour.
 * @member {Number} hour_start_unix
 */
UniswapV2PairHourDataDTO.prototype['hour_start_unix'] = undefined;

/**
 * Address for pair contract.
 * @member {String} pair
 */
UniswapV2PairHourDataDTO.prototype['pair'] = undefined;

/**
 * Reserve of token0 (updated during each transaction on pair).
 * @member {String} reserve_0
 */
UniswapV2PairHourDataDTO.prototype['reserve_0'] = undefined;

/**
 * Reserve of token1 (updated during each transaction on pair).
 * @member {String} reserve_1
 */
UniswapV2PairHourDataDTO.prototype['reserve_1'] = undefined;

/**
 * Total supply of liquidity token distributed to LPs.
 * @member {String} total_supply
 */
UniswapV2PairHourDataDTO.prototype['total_supply'] = undefined;

/**
 * Reserve of token0 plus token1 stored as a derived USD amount.
 * @member {String} reserve_usd
 */
UniswapV2PairHourDataDTO.prototype['reserve_usd'] = undefined;

/**
 * Total amount of token0 swapped throughout hour.
 * @member {String} hourly_volume_token_0
 */
UniswapV2PairHourDataDTO.prototype['hourly_volume_token_0'] = undefined;

/**
 * Total amount of token1 swapped throughout hour.
 * @member {String} hourly_volume_token_1
 */
UniswapV2PairHourDataDTO.prototype['hourly_volume_token_1'] = undefined;

/**
 * Total volume within pair throughout hour.
 * @member {String} hourly_volume_usd
 */
UniswapV2PairHourDataDTO.prototype['hourly_volume_usd'] = undefined;

/**
 * Amount of transactions on pair throughout hour.
 * @member {String} hourly_txns
 */
UniswapV2PairHourDataDTO.prototype['hourly_txns'] = undefined;

/**
 * 
 * @member {Number} vid
 */
UniswapV2PairHourDataDTO.prototype['vid'] = undefined;






export default UniswapV2PairHourDataDTO;

