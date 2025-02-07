/**
 * EMS - REST API
 * This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a href=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Managed Cloud</td>       <td>Sandbox</td>       <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Sandbox</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  <br/><br/> If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this:  <br/><br/> `GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside> 
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
 * The OrderHistory model module.
 * @module model/OrderHistory
 * @version v1
 */
class OrderHistory {
    /**
     * Constructs a new <code>OrderHistory</code>.
     * @alias module:model/OrderHistory
     */
    constructor() { 
        
        OrderHistory.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>OrderHistory</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/OrderHistory} obj Optional instance to populate.
     * @return {module:model/OrderHistory} The populated <code>OrderHistory</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new OrderHistory();

            if (data.hasOwnProperty('apikey')) {
                obj['apikey'] = ApiClient.convertToType(data['apikey'], 'String');
            }
            if (data.hasOwnProperty('exchangeId')) {
                obj['exchangeId'] = ApiClient.convertToType(data['exchangeId'], 'String');
            }
            if (data.hasOwnProperty('clientOrderId')) {
                obj['clientOrderId'] = ApiClient.convertToType(data['clientOrderId'], 'String');
            }
            if (data.hasOwnProperty('symbolIdExchange')) {
                obj['symbolIdExchange'] = ApiClient.convertToType(data['symbolIdExchange'], 'String');
            }
            if (data.hasOwnProperty('symbolIdCoinapi')) {
                obj['symbolIdCoinapi'] = ApiClient.convertToType(data['symbolIdCoinapi'], 'String');
            }
            if (data.hasOwnProperty('amountOrder')) {
                obj['amountOrder'] = ApiClient.convertToType(data['amountOrder'], 'Number');
            }
            if (data.hasOwnProperty('price')) {
                obj['price'] = ApiClient.convertToType(data['price'], 'Number');
            }
            if (data.hasOwnProperty('side')) {
                obj['side'] = ApiClient.convertToType(data['side'], 'Number');
            }
            if (data.hasOwnProperty('orderType')) {
                obj['orderType'] = ApiClient.convertToType(data['orderType'], 'String');
            }
            if (data.hasOwnProperty('timeInForce')) {
                obj['timeInForce'] = ApiClient.convertToType(data['timeInForce'], 'String');
            }
            if (data.hasOwnProperty('expireTime')) {
                obj['expireTime'] = ApiClient.convertToType(data['expireTime'], 'Date');
            }
            if (data.hasOwnProperty('execInst')) {
                obj['execInst'] = ApiClient.convertToType(data['execInst'], ['String']);
            }
            if (data.hasOwnProperty('clientOrderIdFormatExchange')) {
                obj['clientOrderIdFormatExchange'] = ApiClient.convertToType(data['clientOrderIdFormatExchange'], 'String');
            }
            if (data.hasOwnProperty('exchangeOrderId')) {
                obj['exchangeOrderId'] = ApiClient.convertToType(data['exchangeOrderId'], 'String');
            }
            if (data.hasOwnProperty('amountOpen')) {
                obj['amountOpen'] = ApiClient.convertToType(data['amountOpen'], 'Number');
            }
            if (data.hasOwnProperty('amountFilled')) {
                obj['amountFilled'] = ApiClient.convertToType(data['amountFilled'], 'Number');
            }
            if (data.hasOwnProperty('avgPx')) {
                obj['avgPx'] = ApiClient.convertToType(data['avgPx'], 'Number');
            }
            if (data.hasOwnProperty('status')) {
                obj['status'] = ApiClient.convertToType(data['status'], 'String');
            }
            if (data.hasOwnProperty('statusHistoryStatus')) {
                obj['statusHistoryStatus'] = ApiClient.convertToType(data['statusHistoryStatus'], ['String']);
            }
            if (data.hasOwnProperty('statusHistoryTime')) {
                obj['statusHistoryTime'] = ApiClient.convertToType(data['statusHistoryTime'], ['Date']);
            }
            if (data.hasOwnProperty('errorMessageResult')) {
                obj['errorMessageResult'] = ApiClient.convertToType(data['errorMessageResult'], 'String');
            }
            if (data.hasOwnProperty('errorMessageReason')) {
                obj['errorMessageReason'] = ApiClient.convertToType(data['errorMessageReason'], 'String');
            }
            if (data.hasOwnProperty('errorMessageMessage')) {
                obj['errorMessageMessage'] = ApiClient.convertToType(data['errorMessageMessage'], 'String');
            }
            if (data.hasOwnProperty('fillsTime')) {
                obj['fillsTime'] = ApiClient.convertToType(data['fillsTime'], ['Date']);
            }
            if (data.hasOwnProperty('fillsPrice')) {
                obj['fillsPrice'] = ApiClient.convertToType(data['fillsPrice'], ['Number']);
            }
            if (data.hasOwnProperty('fillsAmount')) {
                obj['fillsAmount'] = ApiClient.convertToType(data['fillsAmount'], ['Number']);
            }
            if (data.hasOwnProperty('createdTime')) {
                obj['createdTime'] = ApiClient.convertToType(data['createdTime'], 'Date');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>OrderHistory</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>OrderHistory</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['apikey'] && !(typeof data['apikey'] === 'string' || data['apikey'] instanceof String)) {
            throw new Error("Expected the field `apikey` to be a primitive type in the JSON string but got " + data['apikey']);
        }
        // ensure the json data is a string
        if (data['exchangeId'] && !(typeof data['exchangeId'] === 'string' || data['exchangeId'] instanceof String)) {
            throw new Error("Expected the field `exchangeId` to be a primitive type in the JSON string but got " + data['exchangeId']);
        }
        // ensure the json data is a string
        if (data['clientOrderId'] && !(typeof data['clientOrderId'] === 'string' || data['clientOrderId'] instanceof String)) {
            throw new Error("Expected the field `clientOrderId` to be a primitive type in the JSON string but got " + data['clientOrderId']);
        }
        // ensure the json data is a string
        if (data['symbolIdExchange'] && !(typeof data['symbolIdExchange'] === 'string' || data['symbolIdExchange'] instanceof String)) {
            throw new Error("Expected the field `symbolIdExchange` to be a primitive type in the JSON string but got " + data['symbolIdExchange']);
        }
        // ensure the json data is a string
        if (data['symbolIdCoinapi'] && !(typeof data['symbolIdCoinapi'] === 'string' || data['symbolIdCoinapi'] instanceof String)) {
            throw new Error("Expected the field `symbolIdCoinapi` to be a primitive type in the JSON string but got " + data['symbolIdCoinapi']);
        }
        // ensure the json data is a string
        if (data['orderType'] && !(typeof data['orderType'] === 'string' || data['orderType'] instanceof String)) {
            throw new Error("Expected the field `orderType` to be a primitive type in the JSON string but got " + data['orderType']);
        }
        // ensure the json data is a string
        if (data['timeInForce'] && !(typeof data['timeInForce'] === 'string' || data['timeInForce'] instanceof String)) {
            throw new Error("Expected the field `timeInForce` to be a primitive type in the JSON string but got " + data['timeInForce']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['execInst'])) {
            throw new Error("Expected the field `execInst` to be an array in the JSON data but got " + data['execInst']);
        }
        // ensure the json data is a string
        if (data['clientOrderIdFormatExchange'] && !(typeof data['clientOrderIdFormatExchange'] === 'string' || data['clientOrderIdFormatExchange'] instanceof String)) {
            throw new Error("Expected the field `clientOrderIdFormatExchange` to be a primitive type in the JSON string but got " + data['clientOrderIdFormatExchange']);
        }
        // ensure the json data is a string
        if (data['exchangeOrderId'] && !(typeof data['exchangeOrderId'] === 'string' || data['exchangeOrderId'] instanceof String)) {
            throw new Error("Expected the field `exchangeOrderId` to be a primitive type in the JSON string but got " + data['exchangeOrderId']);
        }
        // ensure the json data is a string
        if (data['status'] && !(typeof data['status'] === 'string' || data['status'] instanceof String)) {
            throw new Error("Expected the field `status` to be a primitive type in the JSON string but got " + data['status']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['statusHistoryStatus'])) {
            throw new Error("Expected the field `statusHistoryStatus` to be an array in the JSON data but got " + data['statusHistoryStatus']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['statusHistoryTime'])) {
            throw new Error("Expected the field `statusHistoryTime` to be an array in the JSON data but got " + data['statusHistoryTime']);
        }
        // ensure the json data is a string
        if (data['errorMessageResult'] && !(typeof data['errorMessageResult'] === 'string' || data['errorMessageResult'] instanceof String)) {
            throw new Error("Expected the field `errorMessageResult` to be a primitive type in the JSON string but got " + data['errorMessageResult']);
        }
        // ensure the json data is a string
        if (data['errorMessageReason'] && !(typeof data['errorMessageReason'] === 'string' || data['errorMessageReason'] instanceof String)) {
            throw new Error("Expected the field `errorMessageReason` to be a primitive type in the JSON string but got " + data['errorMessageReason']);
        }
        // ensure the json data is a string
        if (data['errorMessageMessage'] && !(typeof data['errorMessageMessage'] === 'string' || data['errorMessageMessage'] instanceof String)) {
            throw new Error("Expected the field `errorMessageMessage` to be a primitive type in the JSON string but got " + data['errorMessageMessage']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['fillsTime'])) {
            throw new Error("Expected the field `fillsTime` to be an array in the JSON data but got " + data['fillsTime']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['fillsPrice'])) {
            throw new Error("Expected the field `fillsPrice` to be an array in the JSON data but got " + data['fillsPrice']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['fillsAmount'])) {
            throw new Error("Expected the field `fillsAmount` to be an array in the JSON data but got " + data['fillsAmount']);
        }

        return true;
    }


}



/**
 * Apikey
 * @member {String} apikey
 */
OrderHistory.prototype['apikey'] = undefined;

/**
 * Exchange id
 * @member {String} exchangeId
 */
OrderHistory.prototype['exchangeId'] = undefined;

/**
 * Client order id
 * @member {String} clientOrderId
 */
OrderHistory.prototype['clientOrderId'] = undefined;

/**
 * Symbol id exchange
 * @member {String} symbolIdExchange
 */
OrderHistory.prototype['symbolIdExchange'] = undefined;

/**
 * Symbol id in coinapi
 * @member {String} symbolIdCoinapi
 */
OrderHistory.prototype['symbolIdCoinapi'] = undefined;

/**
 * Amount
 * @member {Number} amountOrder
 */
OrderHistory.prototype['amountOrder'] = undefined;

/**
 * Price
 * @member {Number} price
 */
OrderHistory.prototype['price'] = undefined;

/**
 * 1-buy, 2-sell
 * @member {Number} side
 */
OrderHistory.prototype['side'] = undefined;

/**
 * Order type
 * @member {String} orderType
 */
OrderHistory.prototype['orderType'] = undefined;

/**
 * Time in force
 * @member {String} timeInForce
 */
OrderHistory.prototype['timeInForce'] = undefined;

/**
 * Expire time
 * @member {Date} expireTime
 */
OrderHistory.prototype['expireTime'] = undefined;

/**
 * Exec inst
 * @member {Array.<String>} execInst
 */
OrderHistory.prototype['execInst'] = undefined;

/**
 * Client order id format
 * @member {String} clientOrderIdFormatExchange
 */
OrderHistory.prototype['clientOrderIdFormatExchange'] = undefined;

/**
 * Exchange order id
 * @member {String} exchangeOrderId
 */
OrderHistory.prototype['exchangeOrderId'] = undefined;

/**
 * Amount open
 * @member {Number} amountOpen
 */
OrderHistory.prototype['amountOpen'] = undefined;

/**
 * Amount filled
 * @member {Number} amountFilled
 */
OrderHistory.prototype['amountFilled'] = undefined;

/**
 * Average price
 * @member {Number} avgPx
 */
OrderHistory.prototype['avgPx'] = undefined;

/**
 * Status
 * @member {String} status
 */
OrderHistory.prototype['status'] = undefined;

/**
 * History status
 * @member {Array.<String>} statusHistoryStatus
 */
OrderHistory.prototype['statusHistoryStatus'] = undefined;

/**
 * History status time
 * @member {Array.<Date>} statusHistoryTime
 */
OrderHistory.prototype['statusHistoryTime'] = undefined;

/**
 * Error message
 * @member {String} errorMessageResult
 */
OrderHistory.prototype['errorMessageResult'] = undefined;

/**
 * Error message reason
 * @member {String} errorMessageReason
 */
OrderHistory.prototype['errorMessageReason'] = undefined;

/**
 * Error message
 * @member {String} errorMessageMessage
 */
OrderHistory.prototype['errorMessageMessage'] = undefined;

/**
 * Fills time
 * @member {Array.<Date>} fillsTime
 */
OrderHistory.prototype['fillsTime'] = undefined;

/**
 * Fills price
 * @member {Array.<Number>} fillsPrice
 */
OrderHistory.prototype['fillsPrice'] = undefined;

/**
 * Fills amount
 * @member {Array.<Number>} fillsAmount
 */
OrderHistory.prototype['fillsAmount'] = undefined;

/**
 * Created time
 * @member {Date} createdTime
 */
OrderHistory.prototype['createdTime'] = undefined;






export default OrderHistory;

