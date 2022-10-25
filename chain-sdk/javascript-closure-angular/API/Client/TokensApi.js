/**
 * @fileoverview AUTOMATICALLY GENERATED service for API.Client.TokensApi.
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

goog.provide('API.Client.TokensApi');


/**
 * @constructor
 * @param {!angular.$http} $http
 * @param {!Object} $httpParamSerializer
 * @param {!angular.$injector} $injector
 * @struct
 */
API.Client.TokensApi = function($http, $httpParamSerializer, $injector) {
  /** @private {!string} */
  this.basePath_ = $injector.has('TokensApiBasePath') ?
                   /** @type {!string} */ ($injector.get('TokensApiBasePath')) :
                   'https://onchain.coinapi.io';

  /** @private {!Object<string, string>} */
  this.defaultHeaders_ = $injector.has('TokensApiDefaultHeaders') ?
                   /** @type {!Object<string, string>} */ (
                       $injector.get('TokensApiDefaultHeaders')) :
                   {};

  /** @private {!angular.$http} */
  this.http_ = $http;

  /** @package {!Object} */
  this.httpParamSerializer = $injector.get('$httpParamSerializer');
}
API.Client.TokensApi.$inject = ['$http', '$httpParamSerializer', '$injector'];

/**
 * 
 * 
 * @param {!string} chainId 
 * @param {!number=} opt_startBlock 
 * @param {!number=} opt_endBlock 
 * @param {!Date=} opt_startDate 
 * @param {!Date=} opt_endDate 
 * @param {!string=} opt_tokenId 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise}
 */
API.Client.TokensApi.prototype.chainsChainIdDappsCowTokensHistoricalGet = function(chainId, opt_startBlock, opt_endBlock, opt_startDate, opt_endDate, opt_tokenId, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/chains/{chain_id}/dapps/cow/tokens/historical'
      .replace('{' + 'chain_id' + '}', String(chainId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'chainId' is set
  if (!chainId) {
    throw new Error('Missing required parameter chainId when calling chainsChainIdDappsCowTokensHistoricalGet');
  }
  if (opt_startBlock !== undefined) {
    queryParameters['startBlock'] = opt_startBlock;
  }

  if (opt_endBlock !== undefined) {
    queryParameters['endBlock'] = opt_endBlock;
  }

  if (opt_startDate !== undefined) {
    queryParameters['startDate'] = opt_startDate;
  }

  if (opt_endDate !== undefined) {
    queryParameters['endDate'] = opt_endDate;
  }

  if (opt_tokenId !== undefined) {
    queryParameters['tokenId'] = opt_tokenId;
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
 * 
 * 
 * @param {!string} chainId 
 * @param {!number=} opt_startBlock 
 * @param {!number=} opt_endBlock 
 * @param {!Date=} opt_startDate 
 * @param {!Date=} opt_endDate 
 * @param {!string=} opt_tokenId 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise}
 */
API.Client.TokensApi.prototype.chainsChainIdDappsCurveTokensHistoricalGet = function(chainId, opt_startBlock, opt_endBlock, opt_startDate, opt_endDate, opt_tokenId, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/chains/{chain_id}/dapps/curve/tokens/historical'
      .replace('{' + 'chain_id' + '}', String(chainId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'chainId' is set
  if (!chainId) {
    throw new Error('Missing required parameter chainId when calling chainsChainIdDappsCurveTokensHistoricalGet');
  }
  if (opt_startBlock !== undefined) {
    queryParameters['startBlock'] = opt_startBlock;
  }

  if (opt_endBlock !== undefined) {
    queryParameters['endBlock'] = opt_endBlock;
  }

  if (opt_startDate !== undefined) {
    queryParameters['startDate'] = opt_startDate;
  }

  if (opt_endDate !== undefined) {
    queryParameters['endDate'] = opt_endDate;
  }

  if (opt_tokenId !== undefined) {
    queryParameters['tokenId'] = opt_tokenId;
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
 * 
 * 
 * @param {!string} chainId 
 * @param {!number=} opt_startBlock 
 * @param {!number=} opt_endBlock 
 * @param {!Date=} opt_startDate 
 * @param {!Date=} opt_endDate 
 * @param {!string=} opt_tokenId 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise}
 */
API.Client.TokensApi.prototype.chainsChainIdDappsSushiswapTokensHistoricalGet = function(chainId, opt_startBlock, opt_endBlock, opt_startDate, opt_endDate, opt_tokenId, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/chains/{chain_id}/dapps/sushiswap/tokens/historical'
      .replace('{' + 'chain_id' + '}', String(chainId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'chainId' is set
  if (!chainId) {
    throw new Error('Missing required parameter chainId when calling chainsChainIdDappsSushiswapTokensHistoricalGet');
  }
  if (opt_startBlock !== undefined) {
    queryParameters['startBlock'] = opt_startBlock;
  }

  if (opt_endBlock !== undefined) {
    queryParameters['endBlock'] = opt_endBlock;
  }

  if (opt_startDate !== undefined) {
    queryParameters['startDate'] = opt_startDate;
  }

  if (opt_endDate !== undefined) {
    queryParameters['endDate'] = opt_endDate;
  }

  if (opt_tokenId !== undefined) {
    queryParameters['tokenId'] = opt_tokenId;
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
 * 
 * 
 * @param {!string} chainId 
 * @param {!number=} opt_startBlock 
 * @param {!number=} opt_endBlock 
 * @param {!Date=} opt_startDate 
 * @param {!Date=} opt_endDate 
 * @param {!string=} opt_tokenId 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise}
 */
API.Client.TokensApi.prototype.chainsChainIdDappsUniswapv2TokensHistoricalGet = function(chainId, opt_startBlock, opt_endBlock, opt_startDate, opt_endDate, opt_tokenId, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/chains/{chain_id}/dapps/uniswapv2/tokens/historical'
      .replace('{' + 'chain_id' + '}', String(chainId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'chainId' is set
  if (!chainId) {
    throw new Error('Missing required parameter chainId when calling chainsChainIdDappsUniswapv2TokensHistoricalGet');
  }
  if (opt_startBlock !== undefined) {
    queryParameters['startBlock'] = opt_startBlock;
  }

  if (opt_endBlock !== undefined) {
    queryParameters['endBlock'] = opt_endBlock;
  }

  if (opt_startDate !== undefined) {
    queryParameters['startDate'] = opt_startDate;
  }

  if (opt_endDate !== undefined) {
    queryParameters['endDate'] = opt_endDate;
  }

  if (opt_tokenId !== undefined) {
    queryParameters['tokenId'] = opt_tokenId;
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
 * 
 * 
 * @param {!string} chainId 
 * @param {!number=} opt_startBlock 
 * @param {!number=} opt_endBlock 
 * @param {!Date=} opt_startDate 
 * @param {!Date=} opt_endDate 
 * @param {!string=} opt_tokenId 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise}
 */
API.Client.TokensApi.prototype.chainsChainIdDappsUniswapv3TokensHistoricalGet = function(chainId, opt_startBlock, opt_endBlock, opt_startDate, opt_endDate, opt_tokenId, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/chains/{chain_id}/dapps/uniswapv3/tokens/historical'
      .replace('{' + 'chain_id' + '}', String(chainId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'chainId' is set
  if (!chainId) {
    throw new Error('Missing required parameter chainId when calling chainsChainIdDappsUniswapv3TokensHistoricalGet');
  }
  if (opt_startBlock !== undefined) {
    queryParameters['startBlock'] = opt_startBlock;
  }

  if (opt_endBlock !== undefined) {
    queryParameters['endBlock'] = opt_endBlock;
  }

  if (opt_startDate !== undefined) {
    queryParameters['startDate'] = opt_startDate;
  }

  if (opt_endDate !== undefined) {
    queryParameters['endDate'] = opt_endDate;
  }

  if (opt_tokenId !== undefined) {
    queryParameters['tokenId'] = opt_tokenId;
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
