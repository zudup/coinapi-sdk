// @flow
/**
 * On Chain - REST API
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
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
