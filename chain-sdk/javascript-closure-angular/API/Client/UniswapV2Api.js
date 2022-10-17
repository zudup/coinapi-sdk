/**
 * @fileoverview AUTOMATICALLY GENERATED service for API.Client.UniswapV2Api.
 * Do not edit this file by hand or your changes will be lost next time it is
 * generated.
 *
 *  This section will provide necessary information about the &#x60;OnChain API&#x60; protocol.  &lt;br/&gt;&lt;br/&gt; Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 * Version: v1
 * Generated by: org.openapitools.codegen.languages.JavascriptClosureAngularClientCodegen
 */
/**
 * @license MIT License
 * https://github.com/coinapi/coinapi-sdk/blob/master/LICENSE
 */

goog.provide('API.Client.UniswapV2Api');

goog.require('API.Client.PairV2DTO');
goog.require('API.Client.SwapV2DTO');
goog.require('API.Client.TokenV2DTO');

/**
 * @constructor
 * @param {!angular.$http} $http
 * @param {!Object} $httpParamSerializer
 * @param {!angular.$injector} $injector
 * @struct
 */
API.Client.UniswapV2Api = function($http, $httpParamSerializer, $injector) {
  /** @private {!string} */
  this.basePath_ = $injector.has('UniswapV2ApiBasePath') ?
                   /** @type {!string} */ ($injector.get('UniswapV2ApiBasePath')) :
                   'https://onchain.coinapi.io';

  /** @private {!Object<string, string>} */
  this.defaultHeaders_ = $injector.has('UniswapV2ApiDefaultHeaders') ?
                   /** @type {!Object<string, string>} */ (
                       $injector.get('UniswapV2ApiDefaultHeaders')) :
                   {};

  /** @private {!angular.$http} */
  this.http_ = $http;

  /** @package {!Object} */
  this.httpParamSerializer = $injector.get('$httpParamSerializer');
}
API.Client.UniswapV2Api.$inject = ['$http', '$httpParamSerializer', '$injector'];

/**
 * GetPools
 * 
 * @param {!string} chainId Chain id
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.PairV2DTO>>}
 */
API.Client.UniswapV2Api.prototype.chainsChainIdDappsUniswapv2PoolsCurrentGet = function(chainId, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/chains/{chain_id}/dapps/uniswapv2/pools/current'
      .replace('{' + 'chain_id' + '}', String(chainId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'chainId' is set
  if (!chainId) {
    throw new Error('Missing required parameter chainId when calling chainsChainIdDappsUniswapv2PoolsCurrentGet');
  }
  /** @type {!Object} */
  var httpRequestParams = {
    method: 'GET',
    url: path,
    json: true,
            params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}

/**
 * GetSwaps
 * 
 * @param {!string} chainId Chain id
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.SwapV2DTO>>}
 */
API.Client.UniswapV2Api.prototype.chainsChainIdDappsUniswapv2SwapsCurrentGet = function(chainId, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/chains/{chain_id}/dapps/uniswapv2/swaps/current'
      .replace('{' + 'chain_id' + '}', String(chainId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'chainId' is set
  if (!chainId) {
    throw new Error('Missing required parameter chainId when calling chainsChainIdDappsUniswapv2SwapsCurrentGet');
  }
  /** @type {!Object} */
  var httpRequestParams = {
    method: 'GET',
    url: path,
    json: true,
            params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}

/**
 * GetTokens
 * 
 * @param {!string} chainId Chain id
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.TokenV2DTO>>}
 */
API.Client.UniswapV2Api.prototype.chainsChainIdDappsUniswapv2TokensCurrentGet = function(chainId, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/chains/{chain_id}/dapps/uniswapv2/tokens/current'
      .replace('{' + 'chain_id' + '}', String(chainId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'chainId' is set
  if (!chainId) {
    throw new Error('Missing required parameter chainId when calling chainsChainIdDappsUniswapv2TokensCurrentGet');
  }
  /** @type {!Object} */
  var httpRequestParams = {
    method: 'GET',
    url: path,
    json: true,
            params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}
