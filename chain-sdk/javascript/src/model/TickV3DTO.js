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
import BigInteger from './BigInteger';

/**
 * The TickV3DTO model module.
 * @module model/TickV3DTO
 * @version v1
 */
class TickV3DTO {
    /**
     * Constructs a new <code>TickV3DTO</code>.
     * @alias module:model/TickV3DTO
     */
    constructor() { 
        
        TickV3DTO.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>TickV3DTO</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/TickV3DTO} obj Optional instance to populate.
     * @return {module:model/TickV3DTO} The populated <code>TickV3DTO</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new TickV3DTO();

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
            if (data.hasOwnProperty('pool_address')) {
                obj['pool_address'] = ApiClient.convertToType(data['pool_address'], 'String');
            }
            if (data.hasOwnProperty('tick_idx')) {
                obj['tick_idx'] = BigInteger.constructFromObject(data['tick_idx']);
            }
            if (data.hasOwnProperty('pool')) {
                obj['pool'] = ApiClient.convertToType(data['pool'], 'String');
            }
            if (data.hasOwnProperty('liquidity_gross')) {
                obj['liquidity_gross'] = BigInteger.constructFromObject(data['liquidity_gross']);
            }
            if (data.hasOwnProperty('liquidity_net')) {
                obj['liquidity_net'] = BigInteger.constructFromObject(data['liquidity_net']);
            }
            if (data.hasOwnProperty('price_0')) {
                obj['price_0'] = ApiClient.convertToType(data['price_0'], 'String');
            }
            if (data.hasOwnProperty('price_1')) {
                obj['price_1'] = ApiClient.convertToType(data['price_1'], 'String');
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
            if (data.hasOwnProperty('fees_usd')) {
                obj['fees_usd'] = ApiClient.convertToType(data['fees_usd'], 'String');
            }
            if (data.hasOwnProperty('collected_fees_token_0')) {
                obj['collected_fees_token_0'] = ApiClient.convertToType(data['collected_fees_token_0'], 'String');
            }
            if (data.hasOwnProperty('collected_fees_token_1')) {
                obj['collected_fees_token_1'] = ApiClient.convertToType(data['collected_fees_token_1'], 'String');
            }
            if (data.hasOwnProperty('collected_fees_usd')) {
                obj['collected_fees_usd'] = ApiClient.convertToType(data['collected_fees_usd'], 'String');
            }
            if (data.hasOwnProperty('created_at_timestamp')) {
                obj['created_at_timestamp'] = ApiClient.convertToType(data['created_at_timestamp'], 'Date');
            }
            if (data.hasOwnProperty('liquidity_provider_count')) {
                obj['liquidity_provider_count'] = BigInteger.constructFromObject(data['liquidity_provider_count']);
            }
            if (data.hasOwnProperty('fee_growth_outside_0x128')) {
                obj['fee_growth_outside_0x128'] = BigInteger.constructFromObject(data['fee_growth_outside_0x128']);
            }
            if (data.hasOwnProperty('fee_growth_outside_1x128')) {
                obj['fee_growth_outside_1x128'] = BigInteger.constructFromObject(data['fee_growth_outside_1x128']);
            }
        }
        return obj;
    }


}

/**
 * @member {Date} entry_time
 */
TickV3DTO.prototype['entry_time'] = undefined;

/**
 * @member {Date} recv_time
 */
TickV3DTO.prototype['recv_time'] = undefined;

/**
 * @member {Number} block_number
 */
TickV3DTO.prototype['block_number'] = undefined;

/**
 * @member {Number} vid
 */
TickV3DTO.prototype['vid'] = undefined;

/**
 * @member {String} id
 */
TickV3DTO.prototype['id'] = undefined;

/**
 * @member {String} pool_address
 */
TickV3DTO.prototype['pool_address'] = undefined;

/**
 * @member {module:model/BigInteger} tick_idx
 */
TickV3DTO.prototype['tick_idx'] = undefined;

/**
 * @member {String} pool
 */
TickV3DTO.prototype['pool'] = undefined;

/**
 * @member {module:model/BigInteger} liquidity_gross
 */
TickV3DTO.prototype['liquidity_gross'] = undefined;

/**
 * @member {module:model/BigInteger} liquidity_net
 */
TickV3DTO.prototype['liquidity_net'] = undefined;

/**
 * @member {String} price_0
 */
TickV3DTO.prototype['price_0'] = undefined;

/**
 * @member {String} price_1
 */
TickV3DTO.prototype['price_1'] = undefined;

/**
 * @member {String} volume_token_0
 */
TickV3DTO.prototype['volume_token_0'] = undefined;

/**
 * @member {String} volume_token_1
 */
TickV3DTO.prototype['volume_token_1'] = undefined;

/**
 * @member {String} volume_usd
 */
TickV3DTO.prototype['volume_usd'] = undefined;

/**
 * @member {String} untracked_volume_usd
 */
TickV3DTO.prototype['untracked_volume_usd'] = undefined;

/**
 * @member {String} fees_usd
 */
TickV3DTO.prototype['fees_usd'] = undefined;

/**
 * @member {String} collected_fees_token_0
 */
TickV3DTO.prototype['collected_fees_token_0'] = undefined;

/**
 * @member {String} collected_fees_token_1
 */
TickV3DTO.prototype['collected_fees_token_1'] = undefined;

/**
 * @member {String} collected_fees_usd
 */
TickV3DTO.prototype['collected_fees_usd'] = undefined;

/**
 * @member {Date} created_at_timestamp
 */
TickV3DTO.prototype['created_at_timestamp'] = undefined;

/**
 * @member {module:model/BigInteger} liquidity_provider_count
 */
TickV3DTO.prototype['liquidity_provider_count'] = undefined;

/**
 * @member {module:model/BigInteger} fee_growth_outside_0x128
 */
TickV3DTO.prototype['fee_growth_outside_0x128'] = undefined;

/**
 * @member {module:model/BigInteger} fee_growth_outside_1x128
 */
TickV3DTO.prototype['fee_growth_outside_1x128'] = undefined;






export default TickV3DTO;
