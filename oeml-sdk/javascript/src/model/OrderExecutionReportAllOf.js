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
import OrdStatus from './OrdStatus';

/**
 * The OrderExecutionReportAllOf model module.
 * @module model/OrderExecutionReportAllOf
 * @version v1
 */
class OrderExecutionReportAllOf {
    /**
     * Constructs a new <code>OrderExecutionReportAllOf</code>.
     * The order execution report message.
     * @alias module:model/OrderExecutionReportAllOf
     * @param clientOrderIdFormatExchange {String} The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
     * @param amountOpen {Number} Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
     * @param amountFilled {Number} Total quantity filled.
     * @param status {module:model/OrdStatus} 
     */
    constructor(clientOrderIdFormatExchange, amountOpen, amountFilled, status) { 
        
        OrderExecutionReportAllOf.initialize(this, clientOrderIdFormatExchange, amountOpen, amountFilled, status);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, clientOrderIdFormatExchange, amountOpen, amountFilled, status) { 
        obj['client_order_id_format_exchange'] = clientOrderIdFormatExchange;
        obj['amount_open'] = amountOpen;
        obj['amount_filled'] = amountFilled;
        obj['status'] = status;
    }

    /**
     * Constructs a <code>OrderExecutionReportAllOf</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/OrderExecutionReportAllOf} obj Optional instance to populate.
     * @return {module:model/OrderExecutionReportAllOf} The populated <code>OrderExecutionReportAllOf</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new OrderExecutionReportAllOf();

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






export default OrderExecutionReportAllOf;

