/*
 * OnChain API
 *
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Threading;
using RestSharp;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace CoinAPI.EMS.REST.V1.Api
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IUniswapV2Api : IApiAccessor
    {
        #region Synchronous Operations
        /// <summary>
        /// GetPools
        /// </summary>
        /// <remarks>
        /// 
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <returns>List<PairV2DTO></returns>
        List<PairV2DTO> ChainsChainIdDappsUniswapv2PoolsCurrentGet (string chainId);

        /// <summary>
        /// GetPools
        /// </summary>
        /// <remarks>
        /// 
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <returns>ApiResponse of List<PairV2DTO></returns>
        ApiResponse<List<PairV2DTO>> ChainsChainIdDappsUniswapv2PoolsCurrentGetWithHttpInfo (string chainId);
        /// <summary>
        /// GetSwaps
        /// </summary>
        /// <remarks>
        /// 
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <returns>List<SwapV2DTO></returns>
        List<SwapV2DTO> ChainsChainIdDappsUniswapv2SwapsCurrentGet (string chainId);

        /// <summary>
        /// GetSwaps
        /// </summary>
        /// <remarks>
        /// 
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <returns>ApiResponse of List<SwapV2DTO></returns>
        ApiResponse<List<SwapV2DTO>> ChainsChainIdDappsUniswapv2SwapsCurrentGetWithHttpInfo (string chainId);
        /// <summary>
        /// GetTokens
        /// </summary>
        /// <remarks>
        /// 
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <returns>List<TokenV2DTO></returns>
        List<TokenV2DTO> ChainsChainIdDappsUniswapv2TokensCurrentGet (string chainId);

        /// <summary>
        /// GetTokens
        /// </summary>
        /// <remarks>
        /// 
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <returns>ApiResponse of List<TokenV2DTO></returns>
        ApiResponse<List<TokenV2DTO>> ChainsChainIdDappsUniswapv2TokensCurrentGetWithHttpInfo (string chainId);
        #endregion Synchronous Operations
        #region Asynchronous Operations
        /// <summary>
        /// GetPools
        /// </summary>
        /// <remarks>
        /// 
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of List<PairV2DTO></returns>
        System.Threading.Tasks.Task<List<PairV2DTO>> ChainsChainIdDappsUniswapv2PoolsCurrentGetAsync (string chainId, CancellationToken cancellationToken = default(CancellationToken));

        /// <summary>
        /// GetPools
        /// </summary>
        /// <remarks>
        /// 
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of ApiResponse (List&lt;PairV2DTO&gt;)</returns>
        System.Threading.Tasks.Task<ApiResponse<List<PairV2DTO>>> ChainsChainIdDappsUniswapv2PoolsCurrentGetWithHttpInfoAsync (string chainId, CancellationToken cancellationToken = default(CancellationToken));
        /// <summary>
        /// GetSwaps
        /// </summary>
        /// <remarks>
        /// 
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of List<SwapV2DTO></returns>
        System.Threading.Tasks.Task<List<SwapV2DTO>> ChainsChainIdDappsUniswapv2SwapsCurrentGetAsync (string chainId, CancellationToken cancellationToken = default(CancellationToken));

        /// <summary>
        /// GetSwaps
        /// </summary>
        /// <remarks>
        /// 
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of ApiResponse (List&lt;SwapV2DTO&gt;)</returns>
        System.Threading.Tasks.Task<ApiResponse<List<SwapV2DTO>>> ChainsChainIdDappsUniswapv2SwapsCurrentGetWithHttpInfoAsync (string chainId, CancellationToken cancellationToken = default(CancellationToken));
        /// <summary>
        /// GetTokens
        /// </summary>
        /// <remarks>
        /// 
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of List<TokenV2DTO></returns>
        System.Threading.Tasks.Task<List<TokenV2DTO>> ChainsChainIdDappsUniswapv2TokensCurrentGetAsync (string chainId, CancellationToken cancellationToken = default(CancellationToken));

        /// <summary>
        /// GetTokens
        /// </summary>
        /// <remarks>
        /// 
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of ApiResponse (List&lt;TokenV2DTO&gt;)</returns>
        System.Threading.Tasks.Task<ApiResponse<List<TokenV2DTO>>> ChainsChainIdDappsUniswapv2TokensCurrentGetWithHttpInfoAsync (string chainId, CancellationToken cancellationToken = default(CancellationToken));
        #endregion Asynchronous Operations
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public partial class UniswapV2Api : IUniswapV2Api
    {
        private CoinAPI.EMS.REST.V1.Client.ExceptionFactory _exceptionFactory = (name, response) => null;

        /// <summary>
        /// Initializes a new instance of the <see cref="UniswapV2Api"/> class.
        /// </summary>
        /// <returns></returns>
        public UniswapV2Api(String basePath)
        {
            this.Configuration = new CoinAPI.EMS.REST.V1.Client.Configuration { BasePath = basePath };

            ExceptionFactory = CoinAPI.EMS.REST.V1.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="UniswapV2Api"/> class
        /// </summary>
        /// <returns></returns>
        public UniswapV2Api()
        {
            this.Configuration = CoinAPI.EMS.REST.V1.Client.Configuration.Default;

            ExceptionFactory = CoinAPI.EMS.REST.V1.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="UniswapV2Api"/> class
        /// using Configuration object
        /// </summary>
        /// <param name="configuration">An instance of Configuration</param>
        /// <returns></returns>
        public UniswapV2Api(CoinAPI.EMS.REST.V1.Client.Configuration configuration = null)
        {
            if (configuration == null) // use the default one in Configuration
                this.Configuration = CoinAPI.EMS.REST.V1.Client.Configuration.Default;
            else
                this.Configuration = configuration;

            ExceptionFactory = CoinAPI.EMS.REST.V1.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <value>The base path</value>
        public String GetBasePath()
        {
            return this.Configuration.ApiClient.RestClient.BaseUrl.ToString();
        }

        /// <summary>
        /// Sets the base path of the API client.
        /// </summary>
        /// <value>The base path</value>
        [Obsolete("SetBasePath is deprecated, please do 'Configuration.ApiClient = new ApiClient(\"http://new-path\")' instead.")]
        public void SetBasePath(String basePath)
        {
            // do nothing
        }

        /// <summary>
        /// Gets or sets the configuration object
        /// </summary>
        /// <value>An instance of the Configuration</value>
        public CoinAPI.EMS.REST.V1.Client.Configuration Configuration {get; set;}

        /// <summary>
        /// Provides a factory method hook for the creation of exceptions.
        /// </summary>
        public CoinAPI.EMS.REST.V1.Client.ExceptionFactory ExceptionFactory
        {
            get
            {
                if (_exceptionFactory != null && _exceptionFactory.GetInvocationList().Length > 1)
                {
                    throw new InvalidOperationException("Multicast delegate for ExceptionFactory is unsupported.");
                }
                return _exceptionFactory;
            }
            set { _exceptionFactory = value; }
        }

        /// <summary>
        /// Gets the default header.
        /// </summary>
        /// <returns>Dictionary of HTTP header</returns>
        [Obsolete("DefaultHeader is deprecated, please use Configuration.DefaultHeader instead.")]
        public IDictionary<String, String> DefaultHeader()
        {
            return new ReadOnlyDictionary<string, string>(this.Configuration.DefaultHeader);
        }

        /// <summary>
        /// Add default header.
        /// </summary>
        /// <param name="key">Header field name.</param>
        /// <param name="value">Header field value.</param>
        /// <returns></returns>
        [Obsolete("AddDefaultHeader is deprecated, please use Configuration.AddDefaultHeader instead.")]
        public void AddDefaultHeader(string key, string value)
        {
            this.Configuration.AddDefaultHeader(key, value);
        }

        /// <summary>
        /// GetPools 
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <returns>List<PairV2DTO></returns>
        public List<PairV2DTO> ChainsChainIdDappsUniswapv2PoolsCurrentGet (string chainId)
        {
             ApiResponse<List<PairV2DTO>> localVarResponse = ChainsChainIdDappsUniswapv2PoolsCurrentGetWithHttpInfo(chainId);
             return localVarResponse.Data;
        }

        /// <summary>
        /// GetPools 
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <returns>ApiResponse of List<PairV2DTO></returns>
        public ApiResponse<List<PairV2DTO>> ChainsChainIdDappsUniswapv2PoolsCurrentGetWithHttpInfo (string chainId)
        {
            // verify the required parameter 'chainId' is set
            if (chainId == null)
                throw new ApiException(400, "Missing required parameter 'chainId' when calling UniswapV2Api->ChainsChainIdDappsUniswapv2PoolsCurrentGet");

            var localVarPath = "/chains/{chain_id}/dapps/uniswapv2/pools/current";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new List<KeyValuePair<String, String>>();
            var localVarHeaderParams = new Dictionary<String, String>(this.Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
            };
            String localVarHttpContentType = this.Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
                "text/plain",
                "application/json",
                "text/json"
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            if (chainId != null) localVarPathParams.Add("chain_id", this.Configuration.ApiClient.ParameterToString(chainId)); // path parameter


            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) this.Configuration.ApiClient.CallApi(localVarPath,
                Method.GET, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("ChainsChainIdDappsUniswapv2PoolsCurrentGet", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<List<PairV2DTO>>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (List<PairV2DTO>) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(List<PairV2DTO>)));
        }

        /// <summary>
        /// GetPools 
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of List<PairV2DTO></returns>
        public async System.Threading.Tasks.Task<List<PairV2DTO>> ChainsChainIdDappsUniswapv2PoolsCurrentGetAsync (string chainId, CancellationToken cancellationToken = default(CancellationToken))
        {
             ApiResponse<List<PairV2DTO>> localVarResponse = await ChainsChainIdDappsUniswapv2PoolsCurrentGetWithHttpInfoAsync(chainId, cancellationToken);
             return localVarResponse.Data;

        }

        /// <summary>
        /// GetPools 
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of ApiResponse (List&lt;PairV2DTO&gt;)</returns>
        public async System.Threading.Tasks.Task<ApiResponse<List<PairV2DTO>>> ChainsChainIdDappsUniswapv2PoolsCurrentGetWithHttpInfoAsync (string chainId, CancellationToken cancellationToken = default(CancellationToken))
        {
            // verify the required parameter 'chainId' is set
            if (chainId == null)
                throw new ApiException(400, "Missing required parameter 'chainId' when calling UniswapV2Api->ChainsChainIdDappsUniswapv2PoolsCurrentGet");

            var localVarPath = "/chains/{chain_id}/dapps/uniswapv2/pools/current";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new List<KeyValuePair<String, String>>();
            var localVarHeaderParams = new Dictionary<String, String>(this.Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
            };
            String localVarHttpContentType = this.Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
                "text/plain",
                "application/json",
                "text/json"
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            if (chainId != null) localVarPathParams.Add("chain_id", this.Configuration.ApiClient.ParameterToString(chainId)); // path parameter


            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) await this.Configuration.ApiClient.CallApiAsync(localVarPath,
                Method.GET, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType, cancellationToken);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("ChainsChainIdDappsUniswapv2PoolsCurrentGet", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<List<PairV2DTO>>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (List<PairV2DTO>) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(List<PairV2DTO>)));
        }

        /// <summary>
        /// GetSwaps 
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <returns>List<SwapV2DTO></returns>
        public List<SwapV2DTO> ChainsChainIdDappsUniswapv2SwapsCurrentGet (string chainId)
        {
             ApiResponse<List<SwapV2DTO>> localVarResponse = ChainsChainIdDappsUniswapv2SwapsCurrentGetWithHttpInfo(chainId);
             return localVarResponse.Data;
        }

        /// <summary>
        /// GetSwaps 
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <returns>ApiResponse of List<SwapV2DTO></returns>
        public ApiResponse<List<SwapV2DTO>> ChainsChainIdDappsUniswapv2SwapsCurrentGetWithHttpInfo (string chainId)
        {
            // verify the required parameter 'chainId' is set
            if (chainId == null)
                throw new ApiException(400, "Missing required parameter 'chainId' when calling UniswapV2Api->ChainsChainIdDappsUniswapv2SwapsCurrentGet");

            var localVarPath = "/chains/{chain_id}/dapps/uniswapv2/swaps/current";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new List<KeyValuePair<String, String>>();
            var localVarHeaderParams = new Dictionary<String, String>(this.Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
            };
            String localVarHttpContentType = this.Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
                "text/plain",
                "application/json",
                "text/json"
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            if (chainId != null) localVarPathParams.Add("chain_id", this.Configuration.ApiClient.ParameterToString(chainId)); // path parameter


            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) this.Configuration.ApiClient.CallApi(localVarPath,
                Method.GET, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("ChainsChainIdDappsUniswapv2SwapsCurrentGet", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<List<SwapV2DTO>>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (List<SwapV2DTO>) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(List<SwapV2DTO>)));
        }

        /// <summary>
        /// GetSwaps 
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of List<SwapV2DTO></returns>
        public async System.Threading.Tasks.Task<List<SwapV2DTO>> ChainsChainIdDappsUniswapv2SwapsCurrentGetAsync (string chainId, CancellationToken cancellationToken = default(CancellationToken))
        {
             ApiResponse<List<SwapV2DTO>> localVarResponse = await ChainsChainIdDappsUniswapv2SwapsCurrentGetWithHttpInfoAsync(chainId, cancellationToken);
             return localVarResponse.Data;

        }

        /// <summary>
        /// GetSwaps 
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of ApiResponse (List&lt;SwapV2DTO&gt;)</returns>
        public async System.Threading.Tasks.Task<ApiResponse<List<SwapV2DTO>>> ChainsChainIdDappsUniswapv2SwapsCurrentGetWithHttpInfoAsync (string chainId, CancellationToken cancellationToken = default(CancellationToken))
        {
            // verify the required parameter 'chainId' is set
            if (chainId == null)
                throw new ApiException(400, "Missing required parameter 'chainId' when calling UniswapV2Api->ChainsChainIdDappsUniswapv2SwapsCurrentGet");

            var localVarPath = "/chains/{chain_id}/dapps/uniswapv2/swaps/current";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new List<KeyValuePair<String, String>>();
            var localVarHeaderParams = new Dictionary<String, String>(this.Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
            };
            String localVarHttpContentType = this.Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
                "text/plain",
                "application/json",
                "text/json"
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            if (chainId != null) localVarPathParams.Add("chain_id", this.Configuration.ApiClient.ParameterToString(chainId)); // path parameter


            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) await this.Configuration.ApiClient.CallApiAsync(localVarPath,
                Method.GET, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType, cancellationToken);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("ChainsChainIdDappsUniswapv2SwapsCurrentGet", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<List<SwapV2DTO>>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (List<SwapV2DTO>) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(List<SwapV2DTO>)));
        }

        /// <summary>
        /// GetTokens 
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <returns>List<TokenV2DTO></returns>
        public List<TokenV2DTO> ChainsChainIdDappsUniswapv2TokensCurrentGet (string chainId)
        {
             ApiResponse<List<TokenV2DTO>> localVarResponse = ChainsChainIdDappsUniswapv2TokensCurrentGetWithHttpInfo(chainId);
             return localVarResponse.Data;
        }

        /// <summary>
        /// GetTokens 
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <returns>ApiResponse of List<TokenV2DTO></returns>
        public ApiResponse<List<TokenV2DTO>> ChainsChainIdDappsUniswapv2TokensCurrentGetWithHttpInfo (string chainId)
        {
            // verify the required parameter 'chainId' is set
            if (chainId == null)
                throw new ApiException(400, "Missing required parameter 'chainId' when calling UniswapV2Api->ChainsChainIdDappsUniswapv2TokensCurrentGet");

            var localVarPath = "/chains/{chain_id}/dapps/uniswapv2/tokens/current";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new List<KeyValuePair<String, String>>();
            var localVarHeaderParams = new Dictionary<String, String>(this.Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
            };
            String localVarHttpContentType = this.Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
                "text/plain",
                "application/json",
                "text/json"
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            if (chainId != null) localVarPathParams.Add("chain_id", this.Configuration.ApiClient.ParameterToString(chainId)); // path parameter


            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) this.Configuration.ApiClient.CallApi(localVarPath,
                Method.GET, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("ChainsChainIdDappsUniswapv2TokensCurrentGet", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<List<TokenV2DTO>>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (List<TokenV2DTO>) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(List<TokenV2DTO>)));
        }

        /// <summary>
        /// GetTokens 
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of List<TokenV2DTO></returns>
        public async System.Threading.Tasks.Task<List<TokenV2DTO>> ChainsChainIdDappsUniswapv2TokensCurrentGetAsync (string chainId, CancellationToken cancellationToken = default(CancellationToken))
        {
             ApiResponse<List<TokenV2DTO>> localVarResponse = await ChainsChainIdDappsUniswapv2TokensCurrentGetWithHttpInfoAsync(chainId, cancellationToken);
             return localVarResponse.Data;

        }

        /// <summary>
        /// GetTokens 
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of ApiResponse (List&lt;TokenV2DTO&gt;)</returns>
        public async System.Threading.Tasks.Task<ApiResponse<List<TokenV2DTO>>> ChainsChainIdDappsUniswapv2TokensCurrentGetWithHttpInfoAsync (string chainId, CancellationToken cancellationToken = default(CancellationToken))
        {
            // verify the required parameter 'chainId' is set
            if (chainId == null)
                throw new ApiException(400, "Missing required parameter 'chainId' when calling UniswapV2Api->ChainsChainIdDappsUniswapv2TokensCurrentGet");

            var localVarPath = "/chains/{chain_id}/dapps/uniswapv2/tokens/current";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new List<KeyValuePair<String, String>>();
            var localVarHeaderParams = new Dictionary<String, String>(this.Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
            };
            String localVarHttpContentType = this.Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
                "text/plain",
                "application/json",
                "text/json"
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            if (chainId != null) localVarPathParams.Add("chain_id", this.Configuration.ApiClient.ParameterToString(chainId)); // path parameter


            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) await this.Configuration.ApiClient.CallApiAsync(localVarPath,
                Method.GET, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType, cancellationToken);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("ChainsChainIdDappsUniswapv2TokensCurrentGet", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<List<TokenV2DTO>>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (List<TokenV2DTO>) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(List<TokenV2DTO>)));
        }

    }
}
