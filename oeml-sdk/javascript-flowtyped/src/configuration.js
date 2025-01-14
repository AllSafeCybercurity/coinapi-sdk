// @flow
/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI-Generator
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


export type ConfigurationParameters = {
    apiKey?: string | (name: string) => string;
    username?: string;
    password?: string;
    accessToken?: string | (name: string, scopes?: string[]) => string;
    basePath?: string;
}

export class Configuration {
    /**
     * parameter for apiKey security
     * @param name security name
     * @memberof Configuration
     */
    apiKey: string | (name: string) => string;
    /**
     * parameter for basic security
     *
     * @type {string}
     * @memberof Configuration
     */
    username: string;
    /**
     * parameter for basic security
     *
     * @type {string}
     * @memberof Configuration
     */
    password: string;
    /**
     * parameter for oauth2 security
     * @param name security name
     * @param scopes oauth2 scope
     * @memberof Configuration
     */
    accessToken: string | ((name: string, scopes?: string[]) => string);
    /**
     * override base path
     *
     * @type {string}
     * @memberof Configuration
     */
    basePath: string;

    constructor(param: ConfigurationParameters = {}) {
        if (param.apiKey) {
            this.apiKey = param.apiKey;
        }
        if (param.username) {
            this.username = param.username;
        }
        if (param.password) {
            this.password = param.password;
        }
        if (param.accessToken) {
            this.accessToken = param.accessToken;
        }
        if (param.basePath) {
            this.basePath = param.basePath;
        }
    }
}
