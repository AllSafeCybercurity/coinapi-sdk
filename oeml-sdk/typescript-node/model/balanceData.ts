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

export class BalanceData {
    /**
    * Exchange currency code.
    */
    'assetIdExchange'?: string;
    /**
    * CoinAPI currency code.
    */
    'assetIdCoinapi'?: string;
    /**
    * Value of the current total currency balance on the exchange.
    */
    'balance'?: number;
    /**
    * Value of the current available currency balance on the exchange that can be used as collateral.
    */
    'available'?: number;
    /**
    * Value of the current locked currency balance by the exchange.
    */
    'locked'?: number;
    /**
    * Source of the last modification. 
    */
    'lastUpdatedBy'?: BalanceData.LastUpdatedByEnum;
    /**
    * Current exchange rate to the USD for the single unit of the currency. 
    */
    'rateUsd'?: number;
    /**
    * Value of the current total traded.
    */
    'traded'?: number;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "assetIdExchange",
            "baseName": "asset_id_exchange",
            "type": "string"
        },
        {
            "name": "assetIdCoinapi",
            "baseName": "asset_id_coinapi",
            "type": "string"
        },
        {
            "name": "balance",
            "baseName": "balance",
            "type": "number"
        },
        {
            "name": "available",
            "baseName": "available",
            "type": "number"
        },
        {
            "name": "locked",
            "baseName": "locked",
            "type": "number"
        },
        {
            "name": "lastUpdatedBy",
            "baseName": "last_updated_by",
            "type": "BalanceData.LastUpdatedByEnum"
        },
        {
            "name": "rateUsd",
            "baseName": "rate_usd",
            "type": "number"
        },
        {
            "name": "traded",
            "baseName": "traded",
            "type": "number"
        }    ];

    static getAttributeTypeMap() {
        return BalanceData.attributeTypeMap;
    }
}

export namespace BalanceData {
    export enum LastUpdatedByEnum {
        Initialization = <any> 'INITIALIZATION',
        BalanceManager = <any> 'BALANCE_MANAGER',
        Exchange = <any> 'EXCHANGE'
    }
}
