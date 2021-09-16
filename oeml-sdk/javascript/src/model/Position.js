/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
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
import PositionData from './PositionData';

/**
 * The Position model module.
 * @module model/Position
 * @version v1
 */
class Position {
    /**
     * Constructs a new <code>Position</code>.
     * @alias module:model/Position
     */
    constructor() { 
        
        Position.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>Position</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/Position} obj Optional instance to populate.
     * @return {module:model/Position} The populated <code>Position</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new Position();

            if (data.hasOwnProperty('exchange_id')) {
                obj['exchange_id'] = ApiClient.convertToType(data['exchange_id'], 'String');
            }
            if (data.hasOwnProperty('data')) {
                obj['data'] = ApiClient.convertToType(data['data'], [PositionData]);
            }
        }
        return obj;
    }


}

/**
 * Exchange identifier used to identify the routing destination.
 * @member {String} exchange_id
 */
Position.prototype['exchange_id'] = undefined;

/**
 * @member {Array.<module:model/PositionData>} data
 */
Position.prototype['data'] = undefined;






export default Position;

