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
import PairV2DTO from '../model/PairV2DTO';
import SwapV2DTO from '../model/SwapV2DTO';
import TokenV2DTO from '../model/TokenV2DTO';

/**
* UniswapV2 service.
* @module api/UniswapV2Api
* @version v1
*/
export default class UniswapV2Api {

    /**
    * Constructs a new UniswapV2Api. 
    * @alias module:api/UniswapV2Api
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the chainsChainIdDappsUniswapv2PoolsCurrentGet operation.
     * @callback module:api/UniswapV2Api~chainsChainIdDappsUniswapv2PoolsCurrentGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/PairV2DTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * GetPools
     * @param {String} chainId Chain id
     * @param {module:api/UniswapV2Api~chainsChainIdDappsUniswapv2PoolsCurrentGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/PairV2DTO>}
     */
    chainsChainIdDappsUniswapv2PoolsCurrentGet(chainId, callback) {
      let postBody = null;
      // verify the required parameter 'chainId' is set
      if (chainId === undefined || chainId === null) {
        throw new Error("Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv2PoolsCurrentGet");
      }

      let pathParams = {
        'chain_id': chainId
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [PairV2DTO];
      return this.apiClient.callApi(
        '/chains/{chain_id}/dapps/uniswapv2/pools/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the chainsChainIdDappsUniswapv2SwapsCurrentGet operation.
     * @callback module:api/UniswapV2Api~chainsChainIdDappsUniswapv2SwapsCurrentGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/SwapV2DTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * GetSwaps
     * @param {String} chainId Chain id
     * @param {module:api/UniswapV2Api~chainsChainIdDappsUniswapv2SwapsCurrentGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/SwapV2DTO>}
     */
    chainsChainIdDappsUniswapv2SwapsCurrentGet(chainId, callback) {
      let postBody = null;
      // verify the required parameter 'chainId' is set
      if (chainId === undefined || chainId === null) {
        throw new Error("Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv2SwapsCurrentGet");
      }

      let pathParams = {
        'chain_id': chainId
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [SwapV2DTO];
      return this.apiClient.callApi(
        '/chains/{chain_id}/dapps/uniswapv2/swaps/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the chainsChainIdDappsUniswapv2TokensCurrentGet operation.
     * @callback module:api/UniswapV2Api~chainsChainIdDappsUniswapv2TokensCurrentGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/TokenV2DTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * GetTokens
     * @param {String} chainId Chain id
     * @param {module:api/UniswapV2Api~chainsChainIdDappsUniswapv2TokensCurrentGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/TokenV2DTO>}
     */
    chainsChainIdDappsUniswapv2TokensCurrentGet(chainId, callback) {
      let postBody = null;
      // verify the required parameter 'chainId' is set
      if (chainId === undefined || chainId === null) {
        throw new Error("Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv2TokensCurrentGet");
      }

      let pathParams = {
        'chain_id': chainId
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [TokenV2DTO];
      return this.apiClient.callApi(
        '/chains/{chain_id}/dapps/uniswapv2/tokens/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}