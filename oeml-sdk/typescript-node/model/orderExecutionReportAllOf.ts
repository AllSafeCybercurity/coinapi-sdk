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
 */

import { RequestFile } from './models';
import { Fills } from './fills';
import { OrdStatus } from './ordStatus';

/**
* The order execution report message.
*/
export class OrderExecutionReportAllOf {
    /**
    * The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
    */
    'clientOrderIdFormatExchange': string;
    /**
    * Unique identifier of the order assigned by the exchange or executing system.
    */
    'exchangeOrderId'?: string;
    /**
    * Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
    */
    'amountOpen': number;
    /**
    * Total quantity filled.
    */
    'amountFilled': number;
    /**
    * Calculated average price of all fills on this order.
    */
    'avgPx'?: number;
    'status': OrdStatus;
    /**
    * Timestamped history of order status changes.
    */
    'statusHistory'?: Array<Array<string>>;
    /**
    * Error message.
    */
    'errorMessage'?: string;
    /**
    * Relay fill information on working orders.
    */
    'fills'?: Array<Fills>;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "clientOrderIdFormatExchange",
            "baseName": "client_order_id_format_exchange",
            "type": "string"
        },
        {
            "name": "exchangeOrderId",
            "baseName": "exchange_order_id",
            "type": "string"
        },
        {
            "name": "amountOpen",
            "baseName": "amount_open",
            "type": "number"
        },
        {
            "name": "amountFilled",
            "baseName": "amount_filled",
            "type": "number"
        },
        {
            "name": "avgPx",
            "baseName": "avg_px",
            "type": "number"
        },
        {
            "name": "status",
            "baseName": "status",
            "type": "OrdStatus"
        },
        {
            "name": "statusHistory",
            "baseName": "status_history",
            "type": "Array<Array<string>>"
        },
        {
            "name": "errorMessage",
            "baseName": "error_message",
            "type": "string"
        },
        {
            "name": "fills",
            "baseName": "fills",
            "type": "Array<Fills>"
        }    ];

    static getAttributeTypeMap() {
        return OrderExecutionReportAllOf.attributeTypeMap;
    }
}

