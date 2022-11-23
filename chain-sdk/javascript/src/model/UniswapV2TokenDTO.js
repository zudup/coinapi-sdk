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
import NumericsBigInteger from './NumericsBigInteger';

/**
 * The UniswapV2TokenDTO model module.
 * @module model/UniswapV2TokenDTO
 * @version v1
 */
class UniswapV2TokenDTO {
    /**
     * Constructs a new <code>UniswapV2TokenDTO</code>.
     * Stores aggregated information for a specific token across all pairs that token is included in.
     * @alias module:model/UniswapV2TokenDTO
     */
    constructor() { 
        
        UniswapV2TokenDTO.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>UniswapV2TokenDTO</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/UniswapV2TokenDTO} obj Optional instance to populate.
     * @return {module:model/UniswapV2TokenDTO} The populated <code>UniswapV2TokenDTO</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new UniswapV2TokenDTO();

            if (data.hasOwnProperty('entry_time')) {
                obj['entry_time'] = ApiClient.convertToType(data['entry_time'], 'Date');
            }
            if (data.hasOwnProperty('recv_time')) {
                obj['recv_time'] = ApiClient.convertToType(data['recv_time'], 'Date');
            }
            if (data.hasOwnProperty('block_number')) {
                obj['block_number'] = ApiClient.convertToType(data['block_number'], 'Number');
            }
            if (data.hasOwnProperty('vid')) {
                obj['vid'] = ApiClient.convertToType(data['vid'], 'Number');
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('symbol')) {
                obj['symbol'] = ApiClient.convertToType(data['symbol'], 'String');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('decimals')) {
                obj['decimals'] = ApiClient.convertToType(data['decimals'], 'Number');
            }
            if (data.hasOwnProperty('total_supply')) {
                obj['total_supply'] = NumericsBigInteger.constructFromObject(data['total_supply']);
            }
            if (data.hasOwnProperty('trade_volume')) {
                obj['trade_volume'] = ApiClient.convertToType(data['trade_volume'], 'String');
            }
            if (data.hasOwnProperty('trade_volume_usd')) {
                obj['trade_volume_usd'] = ApiClient.convertToType(data['trade_volume_usd'], 'String');
            }
            if (data.hasOwnProperty('untracked_volume_usd')) {
                obj['untracked_volume_usd'] = ApiClient.convertToType(data['untracked_volume_usd'], 'String');
            }
            if (data.hasOwnProperty('tx_count')) {
                obj['tx_count'] = NumericsBigInteger.constructFromObject(data['tx_count']);
            }
            if (data.hasOwnProperty('total_liquidity')) {
                obj['total_liquidity'] = ApiClient.convertToType(data['total_liquidity'], 'String');
            }
            if (data.hasOwnProperty('derived_eth')) {
                obj['derived_eth'] = ApiClient.convertToType(data['derived_eth'], 'String');
            }
            if (data.hasOwnProperty('token_symbol')) {
                obj['token_symbol'] = ApiClient.convertToType(data['token_symbol'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>UniswapV2TokenDTO</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>UniswapV2TokenDTO</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['id'] && !(typeof data['id'] === 'string' || data['id'] instanceof String)) {
            throw new Error("Expected the field `id` to be a primitive type in the JSON string but got " + data['id']);
        }
        // ensure the json data is a string
        if (data['symbol'] && !(typeof data['symbol'] === 'string' || data['symbol'] instanceof String)) {
            throw new Error("Expected the field `symbol` to be a primitive type in the JSON string but got " + data['symbol']);
        }
        // ensure the json data is a string
        if (data['name'] && !(typeof data['name'] === 'string' || data['name'] instanceof String)) {
            throw new Error("Expected the field `name` to be a primitive type in the JSON string but got " + data['name']);
        }
        // validate the optional field `total_supply`
        if (data['total_supply']) { // data not null
          NumericsBigInteger.validateJSON(data['total_supply']);
        }
        // ensure the json data is a string
        if (data['trade_volume'] && !(typeof data['trade_volume'] === 'string' || data['trade_volume'] instanceof String)) {
            throw new Error("Expected the field `trade_volume` to be a primitive type in the JSON string but got " + data['trade_volume']);
        }
        // ensure the json data is a string
        if (data['trade_volume_usd'] && !(typeof data['trade_volume_usd'] === 'string' || data['trade_volume_usd'] instanceof String)) {
            throw new Error("Expected the field `trade_volume_usd` to be a primitive type in the JSON string but got " + data['trade_volume_usd']);
        }
        // ensure the json data is a string
        if (data['untracked_volume_usd'] && !(typeof data['untracked_volume_usd'] === 'string' || data['untracked_volume_usd'] instanceof String)) {
            throw new Error("Expected the field `untracked_volume_usd` to be a primitive type in the JSON string but got " + data['untracked_volume_usd']);
        }
        // validate the optional field `tx_count`
        if (data['tx_count']) { // data not null
          NumericsBigInteger.validateJSON(data['tx_count']);
        }
        // ensure the json data is a string
        if (data['total_liquidity'] && !(typeof data['total_liquidity'] === 'string' || data['total_liquidity'] instanceof String)) {
            throw new Error("Expected the field `total_liquidity` to be a primitive type in the JSON string but got " + data['total_liquidity']);
        }
        // ensure the json data is a string
        if (data['derived_eth'] && !(typeof data['derived_eth'] === 'string' || data['derived_eth'] instanceof String)) {
            throw new Error("Expected the field `derived_eth` to be a primitive type in the JSON string but got " + data['derived_eth']);
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
UniswapV2TokenDTO.prototype['entry_time'] = undefined;

/**
 * @member {Date} recv_time
 */
UniswapV2TokenDTO.prototype['recv_time'] = undefined;

/**
 * Number of block in which entity was recorded.
 * @member {Number} block_number
 */
UniswapV2TokenDTO.prototype['block_number'] = undefined;

/**
 * 
 * @member {Number} vid
 */
UniswapV2TokenDTO.prototype['vid'] = undefined;

/**
 * Token address.
 * @member {String} id
 */
UniswapV2TokenDTO.prototype['id'] = undefined;

/**
 * Token symbol.
 * @member {String} symbol
 */
UniswapV2TokenDTO.prototype['symbol'] = undefined;

/**
 * Token name.
 * @member {String} name
 */
UniswapV2TokenDTO.prototype['name'] = undefined;

/**
 * Token decimals.
 * @member {Number} decimals
 */
UniswapV2TokenDTO.prototype['decimals'] = undefined;

/**
 * @member {module:model/NumericsBigInteger} total_supply
 */
UniswapV2TokenDTO.prototype['total_supply'] = undefined;

/**
 * Amount of token traded all time across all pairs.
 * @member {String} trade_volume
 */
UniswapV2TokenDTO.prototype['trade_volume'] = undefined;

/**
 * Amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold).
 * @member {String} trade_volume_usd
 */
UniswapV2TokenDTO.prototype['trade_volume_usd'] = undefined;

/**
 * Amount of token in USD traded all time across pairs (no minimum liquidity threshold).
 * @member {String} untracked_volume_usd
 */
UniswapV2TokenDTO.prototype['untracked_volume_usd'] = undefined;

/**
 * @member {module:model/NumericsBigInteger} tx_count
 */
UniswapV2TokenDTO.prototype['tx_count'] = undefined;

/**
 * Total amount of token provided as liquidity across all pairs.
 * @member {String} total_liquidity
 */
UniswapV2TokenDTO.prototype['total_liquidity'] = undefined;

/**
 * ETH per token.
 * @member {String} derived_eth
 */
UniswapV2TokenDTO.prototype['derived_eth'] = undefined;

/**
 * @member {String} token_symbol
 */
UniswapV2TokenDTO.prototype['token_symbol'] = undefined;






export default UniswapV2TokenDTO;

