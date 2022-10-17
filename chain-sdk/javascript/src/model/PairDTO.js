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
 * The PairDTO model module.
 * @module model/PairDTO
 * @version v1
 */
class PairDTO {
    /**
     * Constructs a new <code>PairDTO</code>.
     * @alias module:model/PairDTO
     */
    constructor() { 
        
        PairDTO.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>PairDTO</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/PairDTO} obj Optional instance to populate.
     * @return {module:model/PairDTO} The populated <code>PairDTO</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new PairDTO();

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
            if (data.hasOwnProperty('factory')) {
                obj['factory'] = ApiClient.convertToType(data['factory'], 'String');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('token_0')) {
                obj['token_0'] = ApiClient.convertToType(data['token_0'], 'String');
            }
            if (data.hasOwnProperty('token_1')) {
                obj['token_1'] = ApiClient.convertToType(data['token_1'], 'String');
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
            if (data.hasOwnProperty('reserve_eth')) {
                obj['reserve_eth'] = ApiClient.convertToType(data['reserve_eth'], 'String');
            }
            if (data.hasOwnProperty('reserve_usd')) {
                obj['reserve_usd'] = ApiClient.convertToType(data['reserve_usd'], 'String');
            }
            if (data.hasOwnProperty('tracked_reserve_eth')) {
                obj['tracked_reserve_eth'] = ApiClient.convertToType(data['tracked_reserve_eth'], 'String');
            }
            if (data.hasOwnProperty('token_0_price')) {
                obj['token_0_price'] = ApiClient.convertToType(data['token_0_price'], 'String');
            }
            if (data.hasOwnProperty('token_1_price')) {
                obj['token_1_price'] = ApiClient.convertToType(data['token_1_price'], 'String');
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
            if (data.hasOwnProperty('untracked_volume_usd')) {
                obj['untracked_volume_usd'] = ApiClient.convertToType(data['untracked_volume_usd'], 'String');
            }
            if (data.hasOwnProperty('tx_count')) {
                obj['tx_count'] = ApiClient.convertToType(data['tx_count'], 'String');
            }
            if (data.hasOwnProperty('liquidity_provider_count')) {
                obj['liquidity_provider_count'] = ApiClient.convertToType(data['liquidity_provider_count'], 'String');
            }
            if (data.hasOwnProperty('timestamp')) {
                obj['timestamp'] = ApiClient.convertToType(data['timestamp'], 'String');
            }
            if (data.hasOwnProperty('block')) {
                obj['block'] = ApiClient.convertToType(data['block'], 'String');
            }
            if (data.hasOwnProperty('vid')) {
                obj['vid'] = ApiClient.convertToType(data['vid'], 'Number');
            }
            if (data.hasOwnProperty('evaluated_ask')) {
                obj['evaluated_ask'] = ApiClient.convertToType(data['evaluated_ask'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * @member {Date} entry_time
 */
PairDTO.prototype['entry_time'] = undefined;

/**
 * @member {Date} recv_time
 */
PairDTO.prototype['recv_time'] = undefined;

/**
 * @member {Number} block_number
 */
PairDTO.prototype['block_number'] = undefined;

/**
 * @member {String} id
 */
PairDTO.prototype['id'] = undefined;

/**
 * @member {String} factory
 */
PairDTO.prototype['factory'] = undefined;

/**
 * @member {String} name
 */
PairDTO.prototype['name'] = undefined;

/**
 * @member {String} token_0
 */
PairDTO.prototype['token_0'] = undefined;

/**
 * @member {String} token_1
 */
PairDTO.prototype['token_1'] = undefined;

/**
 * @member {String} reserve_0
 */
PairDTO.prototype['reserve_0'] = undefined;

/**
 * @member {String} reserve_1
 */
PairDTO.prototype['reserve_1'] = undefined;

/**
 * @member {String} total_supply
 */
PairDTO.prototype['total_supply'] = undefined;

/**
 * @member {String} reserve_eth
 */
PairDTO.prototype['reserve_eth'] = undefined;

/**
 * @member {String} reserve_usd
 */
PairDTO.prototype['reserve_usd'] = undefined;

/**
 * @member {String} tracked_reserve_eth
 */
PairDTO.prototype['tracked_reserve_eth'] = undefined;

/**
 * @member {String} token_0_price
 */
PairDTO.prototype['token_0_price'] = undefined;

/**
 * @member {String} token_1_price
 */
PairDTO.prototype['token_1_price'] = undefined;

/**
 * @member {String} volume_token_0
 */
PairDTO.prototype['volume_token_0'] = undefined;

/**
 * @member {String} volume_token_1
 */
PairDTO.prototype['volume_token_1'] = undefined;

/**
 * @member {String} volume_usd
 */
PairDTO.prototype['volume_usd'] = undefined;

/**
 * @member {String} untracked_volume_usd
 */
PairDTO.prototype['untracked_volume_usd'] = undefined;

/**
 * @member {String} tx_count
 */
PairDTO.prototype['tx_count'] = undefined;

/**
 * @member {String} liquidity_provider_count
 */
PairDTO.prototype['liquidity_provider_count'] = undefined;

/**
 * @member {String} timestamp
 */
PairDTO.prototype['timestamp'] = undefined;

/**
 * @member {String} block
 */
PairDTO.prototype['block'] = undefined;

/**
 * @member {Number} vid
 */
PairDTO.prototype['vid'] = undefined;

/**
 * @member {Number} evaluated_ask
 */
PairDTO.prototype['evaluated_ask'] = undefined;






export default PairDTO;

