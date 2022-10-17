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
import BundleV3DTO from '../model/BundleV3DTO';
import BurnV3DTO from '../model/BurnV3DTO';
import FactoryV3DTO from '../model/FactoryV3DTO';
import MintV3DTO from '../model/MintV3DTO';
import PoolDayDataV3DTO from '../model/PoolDayDataV3DTO';
import PoolHourDataV3DTO from '../model/PoolHourDataV3DTO';
import PoolV3DTO from '../model/PoolV3DTO';
import PositionSnapshotV3DTO from '../model/PositionSnapshotV3DTO';
import PositionV3DTO from '../model/PositionV3DTO';
import SwapV3DTO from '../model/SwapV3DTO';
import TickDayDataV3DTO from '../model/TickDayDataV3DTO';
import TickV3DTO from '../model/TickV3DTO';
import TokenHourDataV3DTO from '../model/TokenHourDataV3DTO';
import TokenV3DTO from '../model/TokenV3DTO';
import TokenV3DayDataDTO from '../model/TokenV3DayDataDTO';
import UniswapDayDataV3DTO from '../model/UniswapDayDataV3DTO';

/**
* UniswapV3 service.
* @module api/UniswapV3Api
* @version v1
*/
export default class UniswapV3Api {

    /**
    * Constructs a new UniswapV3Api. 
    * @alias module:api/UniswapV3Api
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the chainsChainIdDappsUniswapv3BundleCurrentGet operation.
     * @callback module:api/UniswapV3Api~chainsChainIdDappsUniswapv3BundleCurrentGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/BundleV3DTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * GetBundles
     * @param {String} chainId Chain id
     * @param {module:api/UniswapV3Api~chainsChainIdDappsUniswapv3BundleCurrentGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/BundleV3DTO>}
     */
    chainsChainIdDappsUniswapv3BundleCurrentGet(chainId, callback) {
      let postBody = null;
      // verify the required parameter 'chainId' is set
      if (chainId === undefined || chainId === null) {
        throw new Error("Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv3BundleCurrentGet");
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
      let returnType = [BundleV3DTO];
      return this.apiClient.callApi(
        '/chains/{chain_id}/dapps/uniswapv3/bundle/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the chainsChainIdDappsUniswapv3BurnsCurrentGet operation.
     * @callback module:api/UniswapV3Api~chainsChainIdDappsUniswapv3BurnsCurrentGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/BurnV3DTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * GetBurns
     * @param {String} chainId Chain id
     * @param {Object} opts Optional parameters
     * @param {String} opts.filterPoolId Filter pool id
     * @param {module:api/UniswapV3Api~chainsChainIdDappsUniswapv3BurnsCurrentGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/BurnV3DTO>}
     */
    chainsChainIdDappsUniswapv3BurnsCurrentGet(chainId, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'chainId' is set
      if (chainId === undefined || chainId === null) {
        throw new Error("Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv3BurnsCurrentGet");
      }

      let pathParams = {
        'chain_id': chainId
      };
      let queryParams = {
        'filter_pool_id': opts['filterPoolId']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [BurnV3DTO];
      return this.apiClient.callApi(
        '/chains/{chain_id}/dapps/uniswapv3/burns/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the chainsChainIdDappsUniswapv3FactoryCurrentGet operation.
     * @callback module:api/UniswapV3Api~chainsChainIdDappsUniswapv3FactoryCurrentGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/FactoryV3DTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * GetFactory
     * @param {String} chainId Chain id
     * @param {module:api/UniswapV3Api~chainsChainIdDappsUniswapv3FactoryCurrentGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/FactoryV3DTO>}
     */
    chainsChainIdDappsUniswapv3FactoryCurrentGet(chainId, callback) {
      let postBody = null;
      // verify the required parameter 'chainId' is set
      if (chainId === undefined || chainId === null) {
        throw new Error("Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv3FactoryCurrentGet");
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
      let returnType = [FactoryV3DTO];
      return this.apiClient.callApi(
        '/chains/{chain_id}/dapps/uniswapv3/factory/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the chainsChainIdDappsUniswapv3MintsCurrentGet operation.
     * @callback module:api/UniswapV3Api~chainsChainIdDappsUniswapv3MintsCurrentGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/MintV3DTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * GetMints
     * @param {String} chainId Chain id
     * @param {Object} opts Optional parameters
     * @param {String} opts.filterPoolId Filter pool id
     * @param {module:api/UniswapV3Api~chainsChainIdDappsUniswapv3MintsCurrentGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/MintV3DTO>}
     */
    chainsChainIdDappsUniswapv3MintsCurrentGet(chainId, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'chainId' is set
      if (chainId === undefined || chainId === null) {
        throw new Error("Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv3MintsCurrentGet");
      }

      let pathParams = {
        'chain_id': chainId
      };
      let queryParams = {
        'filter_pool_id': opts['filterPoolId']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [MintV3DTO];
      return this.apiClient.callApi(
        '/chains/{chain_id}/dapps/uniswapv3/mints/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the chainsChainIdDappsUniswapv3PoolsCurrentGet operation.
     * @callback module:api/UniswapV3Api~chainsChainIdDappsUniswapv3PoolsCurrentGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/PoolV3DTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * GetPools
     * @param {String} chainId Chain id
     * @param {Object} opts Optional parameters
     * @param {String} opts.filterPoolId Filter pool id
     * @param {module:api/UniswapV3Api~chainsChainIdDappsUniswapv3PoolsCurrentGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/PoolV3DTO>}
     */
    chainsChainIdDappsUniswapv3PoolsCurrentGet(chainId, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'chainId' is set
      if (chainId === undefined || chainId === null) {
        throw new Error("Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv3PoolsCurrentGet");
      }

      let pathParams = {
        'chain_id': chainId
      };
      let queryParams = {
        'filter_pool_id': opts['filterPoolId']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [PoolV3DTO];
      return this.apiClient.callApi(
        '/chains/{chain_id}/dapps/uniswapv3/pools/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet operation.
     * @callback module:api/UniswapV3Api~chainsChainIdDappsUniswapv3PoolsDayDataCurrentGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/PoolDayDataV3DTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * GetPoolsDayData
     * @param {String} chainId Chain id
     * @param {Object} opts Optional parameters
     * @param {String} opts.filterPoolId Filter pool id
     * @param {module:api/UniswapV3Api~chainsChainIdDappsUniswapv3PoolsDayDataCurrentGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/PoolDayDataV3DTO>}
     */
    chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet(chainId, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'chainId' is set
      if (chainId === undefined || chainId === null) {
        throw new Error("Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet");
      }

      let pathParams = {
        'chain_id': chainId
      };
      let queryParams = {
        'filter_pool_id': opts['filterPoolId']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [PoolDayDataV3DTO];
      return this.apiClient.callApi(
        '/chains/{chain_id}/dapps/uniswapv3/poolsDayData/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet operation.
     * @callback module:api/UniswapV3Api~chainsChainIdDappsUniswapv3PoolsHourDataCurrentGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/PoolHourDataV3DTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * GetPoolsHourData
     * @param {String} chainId Chain id
     * @param {Object} opts Optional parameters
     * @param {String} opts.filterPoolId Filter pool id
     * @param {module:api/UniswapV3Api~chainsChainIdDappsUniswapv3PoolsHourDataCurrentGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/PoolHourDataV3DTO>}
     */
    chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet(chainId, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'chainId' is set
      if (chainId === undefined || chainId === null) {
        throw new Error("Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet");
      }

      let pathParams = {
        'chain_id': chainId
      };
      let queryParams = {
        'filter_pool_id': opts['filterPoolId']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [PoolHourDataV3DTO];
      return this.apiClient.callApi(
        '/chains/{chain_id}/dapps/uniswapv3/poolsHourData/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet operation.
     * @callback module:api/UniswapV3Api~chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/PositionSnapshotV3DTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * GetPositionSnapshot
     * @param {String} chainId Chain id
     * @param {Object} opts Optional parameters
     * @param {String} opts.filterPoolId Filter pool id
     * @param {module:api/UniswapV3Api~chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/PositionSnapshotV3DTO>}
     */
    chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet(chainId, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'chainId' is set
      if (chainId === undefined || chainId === null) {
        throw new Error("Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet");
      }

      let pathParams = {
        'chain_id': chainId
      };
      let queryParams = {
        'filter_pool_id': opts['filterPoolId']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [PositionSnapshotV3DTO];
      return this.apiClient.callApi(
        '/chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the chainsChainIdDappsUniswapv3PositionsCurrentGet operation.
     * @callback module:api/UniswapV3Api~chainsChainIdDappsUniswapv3PositionsCurrentGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/PositionV3DTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * GetPositions
     * @param {String} chainId Chain id
     * @param {Object} opts Optional parameters
     * @param {String} opts.filterPoolId Filter pool id
     * @param {module:api/UniswapV3Api~chainsChainIdDappsUniswapv3PositionsCurrentGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/PositionV3DTO>}
     */
    chainsChainIdDappsUniswapv3PositionsCurrentGet(chainId, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'chainId' is set
      if (chainId === undefined || chainId === null) {
        throw new Error("Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv3PositionsCurrentGet");
      }

      let pathParams = {
        'chain_id': chainId
      };
      let queryParams = {
        'filter_pool_id': opts['filterPoolId']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [PositionV3DTO];
      return this.apiClient.callApi(
        '/chains/{chain_id}/dapps/uniswapv3/positions/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the chainsChainIdDappsUniswapv3SwapsCurrentGet operation.
     * @callback module:api/UniswapV3Api~chainsChainIdDappsUniswapv3SwapsCurrentGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/SwapV3DTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * GetSwaps
     * @param {String} chainId Chain id
     * @param {Object} opts Optional parameters
     * @param {String} opts.filterPoolId Filter pool id
     * @param {module:api/UniswapV3Api~chainsChainIdDappsUniswapv3SwapsCurrentGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/SwapV3DTO>}
     */
    chainsChainIdDappsUniswapv3SwapsCurrentGet(chainId, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'chainId' is set
      if (chainId === undefined || chainId === null) {
        throw new Error("Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv3SwapsCurrentGet");
      }

      let pathParams = {
        'chain_id': chainId
      };
      let queryParams = {
        'filter_pool_id': opts['filterPoolId']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [SwapV3DTO];
      return this.apiClient.callApi(
        '/chains/{chain_id}/dapps/uniswapv3/swaps/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the chainsChainIdDappsUniswapv3TicksCurrentGet operation.
     * @callback module:api/UniswapV3Api~chainsChainIdDappsUniswapv3TicksCurrentGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/TickV3DTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * GetTicks
     * @param {String} chainId Chain id
     * @param {Object} opts Optional parameters
     * @param {String} opts.filterPoolId Filter pool id
     * @param {module:api/UniswapV3Api~chainsChainIdDappsUniswapv3TicksCurrentGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/TickV3DTO>}
     */
    chainsChainIdDappsUniswapv3TicksCurrentGet(chainId, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'chainId' is set
      if (chainId === undefined || chainId === null) {
        throw new Error("Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv3TicksCurrentGet");
      }

      let pathParams = {
        'chain_id': chainId
      };
      let queryParams = {
        'filter_pool_id': opts['filterPoolId']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [TickV3DTO];
      return this.apiClient.callApi(
        '/chains/{chain_id}/dapps/uniswapv3/ticks/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the chainsChainIdDappsUniswapv3TicksDayDataCurrentGet operation.
     * @callback module:api/UniswapV3Api~chainsChainIdDappsUniswapv3TicksDayDataCurrentGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/TickDayDataV3DTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * GetTicksDayData
     * @param {String} chainId Chain id
     * @param {Object} opts Optional parameters
     * @param {String} opts.filterPoolId Filter pool id
     * @param {module:api/UniswapV3Api~chainsChainIdDappsUniswapv3TicksDayDataCurrentGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/TickDayDataV3DTO>}
     */
    chainsChainIdDappsUniswapv3TicksDayDataCurrentGet(chainId, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'chainId' is set
      if (chainId === undefined || chainId === null) {
        throw new Error("Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv3TicksDayDataCurrentGet");
      }

      let pathParams = {
        'chain_id': chainId
      };
      let queryParams = {
        'filter_pool_id': opts['filterPoolId']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [TickDayDataV3DTO];
      return this.apiClient.callApi(
        '/chains/{chain_id}/dapps/uniswapv3/ticksDayData/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the chainsChainIdDappsUniswapv3TokensCurrentGet operation.
     * @callback module:api/UniswapV3Api~chainsChainIdDappsUniswapv3TokensCurrentGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/TokenV3DTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * GetTokens
     * @param {String} chainId Chain id
     * @param {Object} opts Optional parameters
     * @param {String} opts.filterTokenId 
     * @param {module:api/UniswapV3Api~chainsChainIdDappsUniswapv3TokensCurrentGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/TokenV3DTO>}
     */
    chainsChainIdDappsUniswapv3TokensCurrentGet(chainId, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'chainId' is set
      if (chainId === undefined || chainId === null) {
        throw new Error("Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv3TokensCurrentGet");
      }

      let pathParams = {
        'chain_id': chainId
      };
      let queryParams = {
        'filter_token_id': opts['filterTokenId']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [TokenV3DTO];
      return this.apiClient.callApi(
        '/chains/{chain_id}/dapps/uniswapv3/tokens/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the chainsChainIdDappsUniswapv3TokensDayDataCurrentGet operation.
     * @callback module:api/UniswapV3Api~chainsChainIdDappsUniswapv3TokensDayDataCurrentGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/TokenV3DayDataDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * GetTokensDayData
     * @param {String} chainId Chain id
     * @param {Object} opts Optional parameters
     * @param {String} opts.filterTokenId 
     * @param {module:api/UniswapV3Api~chainsChainIdDappsUniswapv3TokensDayDataCurrentGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/TokenV3DayDataDTO>}
     */
    chainsChainIdDappsUniswapv3TokensDayDataCurrentGet(chainId, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'chainId' is set
      if (chainId === undefined || chainId === null) {
        throw new Error("Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv3TokensDayDataCurrentGet");
      }

      let pathParams = {
        'chain_id': chainId
      };
      let queryParams = {
        'filter_token_id': opts['filterTokenId']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [TokenV3DayDataDTO];
      return this.apiClient.callApi(
        '/chains/{chain_id}/dapps/uniswapv3/tokensDayData/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the chainsChainIdDappsUniswapv3TokensHourDataCurrentGet operation.
     * @callback module:api/UniswapV3Api~chainsChainIdDappsUniswapv3TokensHourDataCurrentGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/TokenHourDataV3DTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * GetTokensHourData
     * @param {String} chainId Chain id
     * @param {Object} opts Optional parameters
     * @param {String} opts.filterTokenId 
     * @param {module:api/UniswapV3Api~chainsChainIdDappsUniswapv3TokensHourDataCurrentGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/TokenHourDataV3DTO>}
     */
    chainsChainIdDappsUniswapv3TokensHourDataCurrentGet(chainId, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'chainId' is set
      if (chainId === undefined || chainId === null) {
        throw new Error("Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv3TokensHourDataCurrentGet");
      }

      let pathParams = {
        'chain_id': chainId
      };
      let queryParams = {
        'filter_token_id': opts['filterTokenId']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [TokenHourDataV3DTO];
      return this.apiClient.callApi(
        '/chains/{chain_id}/dapps/uniswapv3/tokensHourData/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet operation.
     * @callback module:api/UniswapV3Api~chainsChainIdDappsUniswapv3UniswapDayDataCurrentGetCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/UniswapDayDataV3DTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * GetUniswapDayData
     * @param {String} chainId Chain id
     * @param {module:api/UniswapV3Api~chainsChainIdDappsUniswapv3UniswapDayDataCurrentGetCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/UniswapDayDataV3DTO>}
     */
    chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet(chainId, callback) {
      let postBody = null;
      // verify the required parameter 'chainId' is set
      if (chainId === undefined || chainId === null) {
        throw new Error("Missing the required parameter 'chainId' when calling chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet");
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
      let returnType = [UniswapDayDataV3DTO];
      return this.apiClient.callApi(
        '/chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}