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
import Fills from './Fills';
import OrdSide from './OrdSide';
import OrdStatus from './OrdStatus';
import OrdType from './OrdType';
import OrderExecutionReportAllOf from './OrderExecutionReportAllOf';
import OrderNewSingleRequest from './OrderNewSingleRequest';
import TimeInForce from './TimeInForce';

/**
 * The OrderExecutionReport model module.
 * @module model/OrderExecutionReport
 * @version v1
 */
class OrderExecutionReport {
    /**
     * Constructs a new <code>OrderExecutionReport</code>.
     * The order execution report object.
     * @alias module:model/OrderExecutionReport
     * @implements module:model/OrderNewSingleRequest
     * @implements module:model/OrderExecutionReportAllOf
     * @param exchangeId {String} Exchange identifier used to identify the routing destination.
     * @param clientOrderId {String} The unique identifier of the order assigned by the client.
     * @param amountOrder {Number} Order quantity.
     * @param price {Number} Order price.
     * @param side {module:model/OrdSide} 
     * @param orderType {module:model/OrdType} 
     * @param timeInForce {module:model/TimeInForce} 
     * @param clientOrderIdFormatExchange {String} The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
     * @param amountOpen {Number} Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
     * @param amountFilled {Number} Total quantity filled.
     * @param status {module:model/OrdStatus} 
     */
    constructor(exchangeId, clientOrderId, amountOrder, price, side, orderType, timeInForce, clientOrderIdFormatExchange, amountOpen, amountFilled, status) { 
        OrderNewSingleRequest.initialize(this, exchangeId, clientOrderId, amountOrder, price, side, orderType, timeInForce);OrderExecutionReportAllOf.initialize(this, clientOrderIdFormatExchange, amountOpen, amountFilled, status);
        OrderExecutionReport.initialize(this, exchangeId, clientOrderId, amountOrder, price, side, orderType, timeInForce, clientOrderIdFormatExchange, amountOpen, amountFilled, status);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, exchangeId, clientOrderId, amountOrder, price, side, orderType, timeInForce, clientOrderIdFormatExchange, amountOpen, amountFilled, status) { 
        obj['exchange_id'] = exchangeId;
        obj['client_order_id'] = clientOrderId;
        obj['amount_order'] = amountOrder;
        obj['price'] = price;
        obj['side'] = side;
        obj['order_type'] = orderType;
        obj['time_in_force'] = timeInForce;
        obj['client_order_id_format_exchange'] = clientOrderIdFormatExchange;
        obj['amount_open'] = amountOpen;
        obj['amount_filled'] = amountFilled;
        obj['status'] = status;
    }

    /**
     * Constructs a <code>OrderExecutionReport</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/OrderExecutionReport} obj Optional instance to populate.
     * @return {module:model/OrderExecutionReport} The populated <code>OrderExecutionReport</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new OrderExecutionReport();
            OrderNewSingleRequest.constructFromObject(data, obj);
            OrderExecutionReportAllOf.constructFromObject(data, obj);

            if (data.hasOwnProperty('exchange_id')) {
                obj['exchange_id'] = ApiClient.convertToType(data['exchange_id'], 'String');
            }
            if (data.hasOwnProperty('client_order_id')) {
                obj['client_order_id'] = ApiClient.convertToType(data['client_order_id'], 'String');
            }
            if (data.hasOwnProperty('symbol_id_exchange')) {
                obj['symbol_id_exchange'] = ApiClient.convertToType(data['symbol_id_exchange'], 'String');
            }
            if (data.hasOwnProperty('symbol_id_coinapi')) {
                obj['symbol_id_coinapi'] = ApiClient.convertToType(data['symbol_id_coinapi'], 'String');
            }
            if (data.hasOwnProperty('amount_order')) {
                obj['amount_order'] = ApiClient.convertToType(data['amount_order'], 'Number');
            }
            if (data.hasOwnProperty('price')) {
                obj['price'] = ApiClient.convertToType(data['price'], 'Number');
            }
            if (data.hasOwnProperty('side')) {
                obj['side'] = OrdSide.constructFromObject(data['side']);
            }
            if (data.hasOwnProperty('order_type')) {
                obj['order_type'] = OrdType.constructFromObject(data['order_type']);
            }
            if (data.hasOwnProperty('time_in_force')) {
                obj['time_in_force'] = TimeInForce.constructFromObject(data['time_in_force']);
            }
            if (data.hasOwnProperty('expire_time')) {
                obj['expire_time'] = ApiClient.convertToType(data['expire_time'], 'Date');
            }
            if (data.hasOwnProperty('exec_inst')) {
                obj['exec_inst'] = ApiClient.convertToType(data['exec_inst'], ['String']);
            }
            if (data.hasOwnProperty('client_order_id_format_exchange')) {
                obj['client_order_id_format_exchange'] = ApiClient.convertToType(data['client_order_id_format_exchange'], 'String');
            }
            if (data.hasOwnProperty('exchange_order_id')) {
                obj['exchange_order_id'] = ApiClient.convertToType(data['exchange_order_id'], 'String');
            }
            if (data.hasOwnProperty('amount_open')) {
                obj['amount_open'] = ApiClient.convertToType(data['amount_open'], 'Number');
            }
            if (data.hasOwnProperty('amount_filled')) {
                obj['amount_filled'] = ApiClient.convertToType(data['amount_filled'], 'Number');
            }
            if (data.hasOwnProperty('avg_px')) {
                obj['avg_px'] = ApiClient.convertToType(data['avg_px'], 'Number');
            }
            if (data.hasOwnProperty('status')) {
                obj['status'] = OrdStatus.constructFromObject(data['status']);
            }
            if (data.hasOwnProperty('status_history')) {
                obj['status_history'] = ApiClient.convertToType(data['status_history'], [['String']]);
            }
            if (data.hasOwnProperty('error_message')) {
                obj['error_message'] = ApiClient.convertToType(data['error_message'], 'String');
            }
            if (data.hasOwnProperty('fills')) {
                obj['fills'] = ApiClient.convertToType(data['fills'], [Fills]);
            }
        }
        return obj;
    }


}

/**
 * Exchange identifier used to identify the routing destination.
 * @member {String} exchange_id
 */
OrderExecutionReport.prototype['exchange_id'] = undefined;

/**
 * The unique identifier of the order assigned by the client.
 * @member {String} client_order_id
 */
OrderExecutionReport.prototype['client_order_id'] = undefined;

/**
 * Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
 * @member {String} symbol_id_exchange
 */
OrderExecutionReport.prototype['symbol_id_exchange'] = undefined;

/**
 * CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
 * @member {String} symbol_id_coinapi
 */
OrderExecutionReport.prototype['symbol_id_coinapi'] = undefined;

/**
 * Order quantity.
 * @member {Number} amount_order
 */
OrderExecutionReport.prototype['amount_order'] = undefined;

/**
 * Order price.
 * @member {Number} price
 */
OrderExecutionReport.prototype['price'] = undefined;

/**
 * @member {module:model/OrdSide} side
 */
OrderExecutionReport.prototype['side'] = undefined;

/**
 * @member {module:model/OrdType} order_type
 */
OrderExecutionReport.prototype['order_type'] = undefined;

/**
 * @member {module:model/TimeInForce} time_in_force
 */
OrderExecutionReport.prototype['time_in_force'] = undefined;

/**
 * Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
 * @member {Date} expire_time
 */
OrderExecutionReport.prototype['expire_time'] = undefined;

/**
 * Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a> 
 * @member {Array.<module:model/OrderExecutionReport.ExecInstEnum>} exec_inst
 */
OrderExecutionReport.prototype['exec_inst'] = undefined;

/**
 * The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
 * @member {String} client_order_id_format_exchange
 */
OrderExecutionReport.prototype['client_order_id_format_exchange'] = undefined;

/**
 * Unique identifier of the order assigned by the exchange or executing system.
 * @member {String} exchange_order_id
 */
OrderExecutionReport.prototype['exchange_order_id'] = undefined;

/**
 * Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
 * @member {Number} amount_open
 */
OrderExecutionReport.prototype['amount_open'] = undefined;

/**
 * Total quantity filled.
 * @member {Number} amount_filled
 */
OrderExecutionReport.prototype['amount_filled'] = undefined;

/**
 * Calculated average price of all fills on this order.
 * @member {Number} avg_px
 */
OrderExecutionReport.prototype['avg_px'] = undefined;

/**
 * @member {module:model/OrdStatus} status
 */
OrderExecutionReport.prototype['status'] = undefined;

/**
 * Timestamped history of order status changes.
 * @member {Array.<Array.<String>>} status_history
 */
OrderExecutionReport.prototype['status_history'] = undefined;

/**
 * Error message.
 * @member {String} error_message
 */
OrderExecutionReport.prototype['error_message'] = undefined;

/**
 * Relay fill information on working orders.
 * @member {Array.<module:model/Fills>} fills
 */
OrderExecutionReport.prototype['fills'] = undefined;


// Implement OrderNewSingleRequest interface:
/**
 * Exchange identifier used to identify the routing destination.
 * @member {String} exchange_id
 */
OrderNewSingleRequest.prototype['exchange_id'] = undefined;
/**
 * The unique identifier of the order assigned by the client.
 * @member {String} client_order_id
 */
OrderNewSingleRequest.prototype['client_order_id'] = undefined;
/**
 * Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
 * @member {String} symbol_id_exchange
 */
OrderNewSingleRequest.prototype['symbol_id_exchange'] = undefined;
/**
 * CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.
 * @member {String} symbol_id_coinapi
 */
OrderNewSingleRequest.prototype['symbol_id_coinapi'] = undefined;
/**
 * Order quantity.
 * @member {Number} amount_order
 */
OrderNewSingleRequest.prototype['amount_order'] = undefined;
/**
 * Order price.
 * @member {Number} price
 */
OrderNewSingleRequest.prototype['price'] = undefined;
/**
 * @member {module:model/OrdSide} side
 */
OrderNewSingleRequest.prototype['side'] = undefined;
/**
 * @member {module:model/OrdType} order_type
 */
OrderNewSingleRequest.prototype['order_type'] = undefined;
/**
 * @member {module:model/TimeInForce} time_in_force
 */
OrderNewSingleRequest.prototype['time_in_force'] = undefined;
/**
 * Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.
 * @member {Date} expire_time
 */
OrderNewSingleRequest.prototype['expire_time'] = undefined;
/**
 * Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a> 
 * @member {Array.<module:model/OrderNewSingleRequest.ExecInstEnum>} exec_inst
 */
OrderNewSingleRequest.prototype['exec_inst'] = undefined;
// Implement OrderExecutionReportAllOf interface:
/**
 * The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
 * @member {String} client_order_id_format_exchange
 */
OrderExecutionReportAllOf.prototype['client_order_id_format_exchange'] = undefined;
/**
 * Unique identifier of the order assigned by the exchange or executing system.
 * @member {String} exchange_order_id
 */
OrderExecutionReportAllOf.prototype['exchange_order_id'] = undefined;
/**
 * Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
 * @member {Number} amount_open
 */
OrderExecutionReportAllOf.prototype['amount_open'] = undefined;
/**
 * Total quantity filled.
 * @member {Number} amount_filled
 */
OrderExecutionReportAllOf.prototype['amount_filled'] = undefined;
/**
 * Calculated average price of all fills on this order.
 * @member {Number} avg_px
 */
OrderExecutionReportAllOf.prototype['avg_px'] = undefined;
/**
 * @member {module:model/OrdStatus} status
 */
OrderExecutionReportAllOf.prototype['status'] = undefined;
/**
 * Timestamped history of order status changes.
 * @member {Array.<Array.<String>>} status_history
 */
OrderExecutionReportAllOf.prototype['status_history'] = undefined;
/**
 * Error message.
 * @member {String} error_message
 */
OrderExecutionReportAllOf.prototype['error_message'] = undefined;
/**
 * Relay fill information on working orders.
 * @member {Array.<module:model/Fills>} fills
 */
OrderExecutionReportAllOf.prototype['fills'] = undefined;



/**
 * Allowed values for the <code>execInst</code> property.
 * @enum {String}
 * @readonly
 */
OrderExecutionReport['ExecInstEnum'] = {

    /**
     * value: "MAKER_OR_CANCEL"
     * @const
     */
    "MAKER_OR_CANCEL": "MAKER_OR_CANCEL",

    /**
     * value: "AUCTION_ONLY"
     * @const
     */
    "AUCTION_ONLY": "AUCTION_ONLY",

    /**
     * value: "INDICATION_OF_INTEREST"
     * @const
     */
    "INDICATION_OF_INTEREST": "INDICATION_OF_INTEREST"
};



export default OrderExecutionReport;

