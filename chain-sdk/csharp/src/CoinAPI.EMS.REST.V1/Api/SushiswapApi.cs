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
    public interface ISushiswapApi : IApiAccessor
    {
        #region Synchronous Operations
        /// <summary>
        /// GetPools
        /// </summary>
        /// <remarks>
        /// Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <returns>List<PairDTO></returns>
        List<PairDTO> ChainsChainIdDappsSushiswapPoolsCurrentGet (string chainId);

        /// <summary>
        /// GetPools
        /// </summary>
        /// <remarks>
        /// Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <returns>ApiResponse of List<PairDTO></returns>
        ApiResponse<List<PairDTO>> ChainsChainIdDappsSushiswapPoolsCurrentGetWithHttpInfo (string chainId);
        /// <summary>
        /// GetSwaps
        /// </summary>
        /// <remarks>
        /// 
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <returns>List<SwapDTO></returns>
        List<SwapDTO> ChainsChainIdDappsSushiswapSwapsCurrentGet (string chainId);

        /// <summary>
        /// GetSwaps
        /// </summary>
        /// <remarks>
        /// 
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <returns>ApiResponse of List<SwapDTO></returns>
        ApiResponse<List<SwapDTO>> ChainsChainIdDappsSushiswapSwapsCurrentGetWithHttpInfo (string chainId);
        /// <summary>
        /// GetTokens
        /// </summary>
        /// <remarks>
        /// 
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <returns>List<TokenDTO></returns>
        List<TokenDTO> ChainsChainIdDappsSushiswapTokensCurrentGet (string chainId);

        /// <summary>
        /// GetTokens
        /// </summary>
        /// <remarks>
        /// 
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <returns>ApiResponse of List<TokenDTO></returns>
        ApiResponse<List<TokenDTO>> ChainsChainIdDappsSushiswapTokensCurrentGetWithHttpInfo (string chainId);
        #endregion Synchronous Operations
        #region Asynchronous Operations
        /// <summary>
        /// GetPools
        /// </summary>
        /// <remarks>
        /// Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of List<PairDTO></returns>
        System.Threading.Tasks.Task<List<PairDTO>> ChainsChainIdDappsSushiswapPoolsCurrentGetAsync (string chainId, CancellationToken cancellationToken = default(CancellationToken));

        /// <summary>
        /// GetPools
        /// </summary>
        /// <remarks>
        /// Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of ApiResponse (List&lt;PairDTO&gt;)</returns>
        System.Threading.Tasks.Task<ApiResponse<List<PairDTO>>> ChainsChainIdDappsSushiswapPoolsCurrentGetWithHttpInfoAsync (string chainId, CancellationToken cancellationToken = default(CancellationToken));
        /// <summary>
        /// GetSwaps
        /// </summary>
        /// <remarks>
        /// 
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of List<SwapDTO></returns>
        System.Threading.Tasks.Task<List<SwapDTO>> ChainsChainIdDappsSushiswapSwapsCurrentGetAsync (string chainId, CancellationToken cancellationToken = default(CancellationToken));

        /// <summary>
        /// GetSwaps
        /// </summary>
        /// <remarks>
        /// 
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of ApiResponse (List&lt;SwapDTO&gt;)</returns>
        System.Threading.Tasks.Task<ApiResponse<List<SwapDTO>>> ChainsChainIdDappsSushiswapSwapsCurrentGetWithHttpInfoAsync (string chainId, CancellationToken cancellationToken = default(CancellationToken));
        /// <summary>
        /// GetTokens
        /// </summary>
        /// <remarks>
        /// 
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of List<TokenDTO></returns>
        System.Threading.Tasks.Task<List<TokenDTO>> ChainsChainIdDappsSushiswapTokensCurrentGetAsync (string chainId, CancellationToken cancellationToken = default(CancellationToken));

        /// <summary>
        /// GetTokens
        /// </summary>
        /// <remarks>
        /// 
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of ApiResponse (List&lt;TokenDTO&gt;)</returns>
        System.Threading.Tasks.Task<ApiResponse<List<TokenDTO>>> ChainsChainIdDappsSushiswapTokensCurrentGetWithHttpInfoAsync (string chainId, CancellationToken cancellationToken = default(CancellationToken));
        #endregion Asynchronous Operations
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public partial class SushiswapApi : ISushiswapApi
    {
        private CoinAPI.EMS.REST.V1.Client.ExceptionFactory _exceptionFactory = (name, response) => null;

        /// <summary>
        /// Initializes a new instance of the <see cref="SushiswapApi"/> class.
        /// </summary>
        /// <returns></returns>
        public SushiswapApi(String basePath)
        {
            this.Configuration = new CoinAPI.EMS.REST.V1.Client.Configuration { BasePath = basePath };

            ExceptionFactory = CoinAPI.EMS.REST.V1.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="SushiswapApi"/> class
        /// </summary>
        /// <returns></returns>
        public SushiswapApi()
        {
            this.Configuration = CoinAPI.EMS.REST.V1.Client.Configuration.Default;

            ExceptionFactory = CoinAPI.EMS.REST.V1.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="SushiswapApi"/> class
        /// using Configuration object
        /// </summary>
        /// <param name="configuration">An instance of Configuration</param>
        /// <returns></returns>
        public SushiswapApi(CoinAPI.EMS.REST.V1.Client.Configuration configuration = null)
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
        /// GetPools Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <returns>List<PairDTO></returns>
        public List<PairDTO> ChainsChainIdDappsSushiswapPoolsCurrentGet (string chainId)
        {
             ApiResponse<List<PairDTO>> localVarResponse = ChainsChainIdDappsSushiswapPoolsCurrentGetWithHttpInfo(chainId);
             return localVarResponse.Data;
        }

        /// <summary>
        /// GetPools Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <returns>ApiResponse of List<PairDTO></returns>
        public ApiResponse<List<PairDTO>> ChainsChainIdDappsSushiswapPoolsCurrentGetWithHttpInfo (string chainId)
        {
            // verify the required parameter 'chainId' is set
            if (chainId == null)
                throw new ApiException(400, "Missing required parameter 'chainId' when calling SushiswapApi->ChainsChainIdDappsSushiswapPoolsCurrentGet");

            var localVarPath = "/chains/{chain_id}/dapps/sushiswap/pools/current";
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
                Exception exception = ExceptionFactory("ChainsChainIdDappsSushiswapPoolsCurrentGet", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<List<PairDTO>>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (List<PairDTO>) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(List<PairDTO>)));
        }

        /// <summary>
        /// GetPools Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of List<PairDTO></returns>
        public async System.Threading.Tasks.Task<List<PairDTO>> ChainsChainIdDappsSushiswapPoolsCurrentGetAsync (string chainId, CancellationToken cancellationToken = default(CancellationToken))
        {
             ApiResponse<List<PairDTO>> localVarResponse = await ChainsChainIdDappsSushiswapPoolsCurrentGetWithHttpInfoAsync(chainId, cancellationToken);
             return localVarResponse.Data;

        }

        /// <summary>
        /// GetPools Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of ApiResponse (List&lt;PairDTO&gt;)</returns>
        public async System.Threading.Tasks.Task<ApiResponse<List<PairDTO>>> ChainsChainIdDappsSushiswapPoolsCurrentGetWithHttpInfoAsync (string chainId, CancellationToken cancellationToken = default(CancellationToken))
        {
            // verify the required parameter 'chainId' is set
            if (chainId == null)
                throw new ApiException(400, "Missing required parameter 'chainId' when calling SushiswapApi->ChainsChainIdDappsSushiswapPoolsCurrentGet");

            var localVarPath = "/chains/{chain_id}/dapps/sushiswap/pools/current";
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
                Exception exception = ExceptionFactory("ChainsChainIdDappsSushiswapPoolsCurrentGet", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<List<PairDTO>>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (List<PairDTO>) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(List<PairDTO>)));
        }

        /// <summary>
        /// GetSwaps 
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <returns>List<SwapDTO></returns>
        public List<SwapDTO> ChainsChainIdDappsSushiswapSwapsCurrentGet (string chainId)
        {
             ApiResponse<List<SwapDTO>> localVarResponse = ChainsChainIdDappsSushiswapSwapsCurrentGetWithHttpInfo(chainId);
             return localVarResponse.Data;
        }

        /// <summary>
        /// GetSwaps 
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <returns>ApiResponse of List<SwapDTO></returns>
        public ApiResponse<List<SwapDTO>> ChainsChainIdDappsSushiswapSwapsCurrentGetWithHttpInfo (string chainId)
        {
            // verify the required parameter 'chainId' is set
            if (chainId == null)
                throw new ApiException(400, "Missing required parameter 'chainId' when calling SushiswapApi->ChainsChainIdDappsSushiswapSwapsCurrentGet");

            var localVarPath = "/chains/{chain_id}/dapps/sushiswap/swaps/current";
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
                Exception exception = ExceptionFactory("ChainsChainIdDappsSushiswapSwapsCurrentGet", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<List<SwapDTO>>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (List<SwapDTO>) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(List<SwapDTO>)));
        }

        /// <summary>
        /// GetSwaps 
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of List<SwapDTO></returns>
        public async System.Threading.Tasks.Task<List<SwapDTO>> ChainsChainIdDappsSushiswapSwapsCurrentGetAsync (string chainId, CancellationToken cancellationToken = default(CancellationToken))
        {
             ApiResponse<List<SwapDTO>> localVarResponse = await ChainsChainIdDappsSushiswapSwapsCurrentGetWithHttpInfoAsync(chainId, cancellationToken);
             return localVarResponse.Data;

        }

        /// <summary>
        /// GetSwaps 
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of ApiResponse (List&lt;SwapDTO&gt;)</returns>
        public async System.Threading.Tasks.Task<ApiResponse<List<SwapDTO>>> ChainsChainIdDappsSushiswapSwapsCurrentGetWithHttpInfoAsync (string chainId, CancellationToken cancellationToken = default(CancellationToken))
        {
            // verify the required parameter 'chainId' is set
            if (chainId == null)
                throw new ApiException(400, "Missing required parameter 'chainId' when calling SushiswapApi->ChainsChainIdDappsSushiswapSwapsCurrentGet");

            var localVarPath = "/chains/{chain_id}/dapps/sushiswap/swaps/current";
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
                Exception exception = ExceptionFactory("ChainsChainIdDappsSushiswapSwapsCurrentGet", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<List<SwapDTO>>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (List<SwapDTO>) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(List<SwapDTO>)));
        }

        /// <summary>
        /// GetTokens 
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <returns>List<TokenDTO></returns>
        public List<TokenDTO> ChainsChainIdDappsSushiswapTokensCurrentGet (string chainId)
        {
             ApiResponse<List<TokenDTO>> localVarResponse = ChainsChainIdDappsSushiswapTokensCurrentGetWithHttpInfo(chainId);
             return localVarResponse.Data;
        }

        /// <summary>
        /// GetTokens 
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <returns>ApiResponse of List<TokenDTO></returns>
        public ApiResponse<List<TokenDTO>> ChainsChainIdDappsSushiswapTokensCurrentGetWithHttpInfo (string chainId)
        {
            // verify the required parameter 'chainId' is set
            if (chainId == null)
                throw new ApiException(400, "Missing required parameter 'chainId' when calling SushiswapApi->ChainsChainIdDappsSushiswapTokensCurrentGet");

            var localVarPath = "/chains/{chain_id}/dapps/sushiswap/tokens/current";
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
                Exception exception = ExceptionFactory("ChainsChainIdDappsSushiswapTokensCurrentGet", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<List<TokenDTO>>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (List<TokenDTO>) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(List<TokenDTO>)));
        }

        /// <summary>
        /// GetTokens 
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of List<TokenDTO></returns>
        public async System.Threading.Tasks.Task<List<TokenDTO>> ChainsChainIdDappsSushiswapTokensCurrentGetAsync (string chainId, CancellationToken cancellationToken = default(CancellationToken))
        {
             ApiResponse<List<TokenDTO>> localVarResponse = await ChainsChainIdDappsSushiswapTokensCurrentGetWithHttpInfoAsync(chainId, cancellationToken);
             return localVarResponse.Data;

        }

        /// <summary>
        /// GetTokens 
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId">Chain id</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of ApiResponse (List&lt;TokenDTO&gt;)</returns>
        public async System.Threading.Tasks.Task<ApiResponse<List<TokenDTO>>> ChainsChainIdDappsSushiswapTokensCurrentGetWithHttpInfoAsync (string chainId, CancellationToken cancellationToken = default(CancellationToken))
        {
            // verify the required parameter 'chainId' is set
            if (chainId == null)
                throw new ApiException(400, "Missing required parameter 'chainId' when calling SushiswapApi->ChainsChainIdDappsSushiswapTokensCurrentGet");

            var localVarPath = "/chains/{chain_id}/dapps/sushiswap/tokens/current";
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
                Exception exception = ExceptionFactory("ChainsChainIdDappsSushiswapTokensCurrentGet", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<List<TokenDTO>>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (List<TokenDTO>) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(List<TokenDTO>)));
        }

    }
}
