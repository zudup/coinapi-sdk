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
 * The UniswapV3TickDayDataDTO model module.
 * @module model/UniswapV3TickDayDataDTO
 * @version v1
 */
class UniswapV3TickDayDataDTO {
    /**
     * Constructs a new <code>UniswapV3TickDayDataDTO</code>.
     * Data accumulated and condensed into day stats for each exchange. Entity gets saved only if there is a change during the day
     * @alias module:model/UniswapV3TickDayDataDTO
     */
    constructor() { 
        
        UniswapV3TickDayDataDTO.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>UniswapV3TickDayDataDTO</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/UniswapV3TickDayDataDTO} obj Optional instance to populate.
     * @return {module:model/UniswapV3TickDayDataDTO} The populated <code>UniswapV3TickDayDataDTO</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new UniswapV3TickDayDataDTO();

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
            if (data.hasOwnProperty('date')) {
                obj['date'] = ApiClient.convertToType(data['date'], 'Number');
            }
            if (data.hasOwnProperty('pool')) {
                obj['pool'] = ApiClient.convertToType(data['pool'], 'String');
            }
            if (data.hasOwnProperty('tick')) {
                obj['tick'] = ApiClient.convertToType(data['tick'], 'String');
            }
            if (data.hasOwnProperty('liquidity_gross')) {
                obj['liquidity_gross'] = ApiClient.convertToType(data['liquidity_gross'], 'String');
            }
            if (data.hasOwnProperty('liquidity_net')) {
                obj['liquidity_net'] = ApiClient.convertToType(data['liquidity_net'], 'String');
            }
            if (data.hasOwnProperty('volume_token_0')) {
                obj['volume_token_0'] = ApiClient.convertToType(data['volume_token_0'], 'String');
            }
            if (data.hasOwnProperty('volume_token_1')) {
                obj['volume_token_1'] = ApiClient.convertToType(data['volume_token_1'], 'String');
            }
            if (data.hasOwnProperty('volume_usd')) {
                obj['volume_usd'] = ApiClient.convertToType(data['volume_usd'], 'String');
            }
            if (data.hasOwnProperty('fees_usd')) {
                obj['fees_usd'] = ApiClient.convertToType(data['fees_usd'], 'String');
            }
            if (data.hasOwnProperty('fee_growth_outside_0x128')) {
                obj['fee_growth_outside_0x128'] = ApiClient.convertToType(data['fee_growth_outside_0x128'], 'String');
            }
            if (data.hasOwnProperty('fee_growth_outside_1x128')) {
                obj['fee_growth_outside_1x128'] = ApiClient.convertToType(data['fee_growth_outside_1x128'], 'String');
            }
            if (data.hasOwnProperty('vid')) {
                obj['vid'] = ApiClient.convertToType(data['vid'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>UniswapV3TickDayDataDTO</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>UniswapV3TickDayDataDTO</code>.
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
        if (data['tick'] && !(typeof data['tick'] === 'string' || data['tick'] instanceof String)) {
            throw new Error("Expected the field `tick` to be a primitive type in the JSON string but got " + data['tick']);
        }
        // ensure the json data is a string
        if (data['liquidity_gross'] && !(typeof data['liquidity_gross'] === 'string' || data['liquidity_gross'] instanceof String)) {
            throw new Error("Expected the field `liquidity_gross` to be a primitive type in the JSON string but got " + data['liquidity_gross']);
        }
        // ensure the json data is a string
        if (data['liquidity_net'] && !(typeof data['liquidity_net'] === 'string' || data['liquidity_net'] instanceof String)) {
            throw new Error("Expected the field `liquidity_net` to be a primitive type in the JSON string but got " + data['liquidity_net']);
        }
        // ensure the json data is a string
        if (data['volume_token_0'] && !(typeof data['volume_token_0'] === 'string' || data['volume_token_0'] instanceof String)) {
            throw new Error("Expected the field `volume_token_0` to be a primitive type in the JSON string but got " + data['volume_token_0']);
        }
        // ensure the json data is a string
        if (data['volume_token_1'] && !(typeof data['volume_token_1'] === 'string' || data['volume_token_1'] instanceof String)) {
            throw new Error("Expected the field `volume_token_1` to be a primitive type in the JSON string but got " + data['volume_token_1']);
        }
        // ensure the json data is a string
        if (data['volume_usd'] && !(typeof data['volume_usd'] === 'string' || data['volume_usd'] instanceof String)) {
            throw new Error("Expected the field `volume_usd` to be a primitive type in the JSON string but got " + data['volume_usd']);
        }
        // ensure the json data is a string
        if (data['fees_usd'] && !(typeof data['fees_usd'] === 'string' || data['fees_usd'] instanceof String)) {
            throw new Error("Expected the field `fees_usd` to be a primitive type in the JSON string but got " + data['fees_usd']);
        }
        // ensure the json data is a string
        if (data['fee_growth_outside_0x128'] && !(typeof data['fee_growth_outside_0x128'] === 'string' || data['fee_growth_outside_0x128'] instanceof String)) {
            throw new Error("Expected the field `fee_growth_outside_0x128` to be a primitive type in the JSON string but got " + data['fee_growth_outside_0x128']);
        }
        // ensure the json data is a string
        if (data['fee_growth_outside_1x128'] && !(typeof data['fee_growth_outside_1x128'] === 'string' || data['fee_growth_outside_1x128'] instanceof String)) {
            throw new Error("Expected the field `fee_growth_outside_1x128` to be a primitive type in the JSON string but got " + data['fee_growth_outside_1x128']);
        }

        return true;
    }


}



/**
 * @member {Date} entry_time
 */
UniswapV3TickDayDataDTO.prototype['entry_time'] = undefined;

/**
 * @member {Date} recv_time
 */
UniswapV3TickDayDataDTO.prototype['recv_time'] = undefined;

/**
 * Number of block in which entity was recorded.
 * @member {Number} block_number
 */
UniswapV3TickDayDataDTO.prototype['block_number'] = undefined;

/**
 * Identifier, format: <pool address>-<tick index>-<timestamp>.
 * @member {String} id
 */
UniswapV3TickDayDataDTO.prototype['id'] = undefined;

/**
 * Timestamp rounded to current day by dividing by 86400.
 * @member {Number} date
 */
UniswapV3TickDayDataDTO.prototype['date'] = undefined;

/**
 * Pointer to pool.
 * @member {String} pool
 */
UniswapV3TickDayDataDTO.prototype['pool'] = undefined;

/**
 * Pointer to tick.
 * @member {String} tick
 */
UniswapV3TickDayDataDTO.prototype['tick'] = undefined;

/**
 * Total liquidity pool has as tick lower or upper at end of period.
 * @member {String} liquidity_gross
 */
UniswapV3TickDayDataDTO.prototype['liquidity_gross'] = undefined;

/**
 * How much liquidity changes when tick crossed at end of period.
 * @member {String} liquidity_net
 */
UniswapV3TickDayDataDTO.prototype['liquidity_net'] = undefined;

/**
 * Hourly volume of token0 with this tick in range.
 * @member {String} volume_token_0
 */
UniswapV3TickDayDataDTO.prototype['volume_token_0'] = undefined;

/**
 * Hourly volume of token1 with this tick in range.
 * @member {String} volume_token_1
 */
UniswapV3TickDayDataDTO.prototype['volume_token_1'] = undefined;

/**
 * Hourly volume in derived USD with this tick in range.
 * @member {String} volume_usd
 */
UniswapV3TickDayDataDTO.prototype['volume_usd'] = undefined;

/**
 * Fees in USD.
 * @member {String} fees_usd
 */
UniswapV3TickDayDataDTO.prototype['fees_usd'] = undefined;

/**
 * Variable needed for fee computation.
 * @member {String} fee_growth_outside_0x128
 */
UniswapV3TickDayDataDTO.prototype['fee_growth_outside_0x128'] = undefined;

/**
 * Variable needed for fee computation.
 * @member {String} fee_growth_outside_1x128
 */
UniswapV3TickDayDataDTO.prototype['fee_growth_outside_1x128'] = undefined;

/**
 * 
 * @member {Number} vid
 */
UniswapV3TickDayDataDTO.prototype['vid'] = undefined;






export default UniswapV3TickDayDataDTO;

