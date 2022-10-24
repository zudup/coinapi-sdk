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
* Poi service.
* @module api/PoiApi
* @version v1
*/
export default class PoiApi {

    /**
    * Constructs a new PoiApi. 
    * @alias module:api/PoiApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the chainsChainIdDappsCowPoiHistoricalGet operation.
     * @callback module:api/PoiApi~chainsChainIdDappsCowPoiHistoricalGetCallback
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
     * @param {module:api/PoiApi~chainsChainIdDappsCowPoiHistoricalGetCallback} callback The callback function, accepting three arguments: error, data, response
     */
    chainsChainIdDappsCowPoiHistoricalGet(chainId, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'chainId' is set
      if (chainId === undefined || chainId === null) {
        throw new Error("Missing the required parameter 'chainId' when calling chainsChainIdDappsCowPoiHistoricalGet");
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
        '/chains/{chain_id}/dapps/cow/poi/historical', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the chainsChainIdDappsSushiswapPoiHistoricalGet operation.
     * @callback module:api/PoiApi~chainsChainIdDappsSushiswapPoiHistoricalGetCallback
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
     * @param {module:api/PoiApi~chainsChainIdDappsSushiswapPoiHistoricalGetCallback} callback The callback function, accepting three arguments: error, data, response
     */
    chainsChainIdDappsSushiswapPoiHistoricalGet(chainId, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'chainId' is set
      if (chainId === undefined || chainId === null) {
        throw new Error("Missing the required parameter 'chainId' when calling chainsChainIdDappsSushiswapPoiHistoricalGet");
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
        '/chains/{chain_id}/dapps/sushiswap/poi/historical', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the chainsChainIdDappsUniswapv2PoiHistoricalGet operation.
     * @callback module:api/PoiApi~chainsChainIdDappsUniswapv2PoiHistoricalGetCallback
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
     * @param {module:api/PoiApi~chainsChainIdDappsUniswapv2PoiHistoricalGetCallback} callback The callback function, accepting three arguments: error, data, response
     */
    chainsChainIdDappsUniswapv2PoiHistoricalGet(chainId, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'chainId' is set
      if (chainId === undefined || chainId === null) {
        throw new Error("Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv2PoiHistoricalGet");
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
        '/chains/{chain_id}/dapps/uniswapv2/poi/historical', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the chainsChainIdDappsUniswapv3PoiHistoricalGet operation.
     * @callback module:api/PoiApi~chainsChainIdDappsUniswapv3PoiHistoricalGetCallback
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
     * @param {module:api/PoiApi~chainsChainIdDappsUniswapv3PoiHistoricalGetCallback} callback The callback function, accepting three arguments: error, data, response
     */
    chainsChainIdDappsUniswapv3PoiHistoricalGet(chainId, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'chainId' is set
      if (chainId === undefined || chainId === null) {
        throw new Error("Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv3PoiHistoricalGet");
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
        '/chains/{chain_id}/dapps/uniswapv3/poi/historical', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
