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


import ApiClient from "../ApiClient";

/**
* Stats service.
* @module api/StatsApi
* @version v1
*/
export default class StatsApi {

    /**
    * Constructs a new StatsApi. 
    * @alias module:api/StatsApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the chainsChainIdDappsDexStatsHistoricalGet operation.
     * @callback module:api/StatsApi~chainsChainIdDappsDexStatsHistoricalGetCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * @param {String} chainId 
     * @param {Object} opts Optional parameters
     * @param {Number} opts.startBlock 
     * @param {Number} opts.endBlock 
     * @param {Date} opts.startDate 
     * @param {Date} opts.endDate 
     * @param {module:api/StatsApi~chainsChainIdDappsDexStatsHistoricalGetCallback} callback The callback function, accepting three arguments: error, data, response
     */
    chainsChainIdDappsDexStatsHistoricalGet(chainId, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'chainId' is set
      if (chainId === undefined || chainId === null) {
        throw new Error("Missing the required parameter 'chainId' when calling chainsChainIdDappsDexStatsHistoricalGet");
      }

      let pathParams = {
        'chain_id': chainId
      };
      let queryParams = {
        'startBlock': opts['startBlock'],
        'endBlock': opts['endBlock'],
        'startDate': opts['startDate'],
        'endDate': opts['endDate']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = [];
      let returnType = null;
      return this.apiClient.callApi(
        '/chains/{chain_id}/dapps/dex/stats/historical', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
