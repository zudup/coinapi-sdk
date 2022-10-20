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

namespace CoinAPI.EMS.REST.V1.Api
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IPoiApi : IApiAccessor
    {
        #region Synchronous Operations
        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// 
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId"></param>
        /// <param name="startBlock"> (optional)</param>
        /// <param name="endBlock"> (optional)</param>
        /// <param name="startDate"> (optional)</param>
        /// <param name="endDate"> (optional)</param>
        /// <returns></returns>
        void ChainsChainIdDappsUniswapv3PoiHistoricalGet (string chainId, long? startBlock = default(long?), long? endBlock = default(long?), DateTime? startDate = default(DateTime?), DateTime? endDate = default(DateTime?));

        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// 
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId"></param>
        /// <param name="startBlock"> (optional)</param>
        /// <param name="endBlock"> (optional)</param>
        /// <param name="startDate"> (optional)</param>
        /// <param name="endDate"> (optional)</param>
        /// <returns>ApiResponse of Object(void)</returns>
        ApiResponse<Object> ChainsChainIdDappsUniswapv3PoiHistoricalGetWithHttpInfo (string chainId, long? startBlock = default(long?), long? endBlock = default(long?), DateTime? startDate = default(DateTime?), DateTime? endDate = default(DateTime?));
        #endregion Synchronous Operations
        #region Asynchronous Operations
        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// 
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId"></param>
        /// <param name="startBlock"> (optional)</param>
        /// <param name="endBlock"> (optional)</param>
        /// <param name="startDate"> (optional)</param>
        /// <param name="endDate"> (optional)</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of void</returns>
        System.Threading.Tasks.Task ChainsChainIdDappsUniswapv3PoiHistoricalGetAsync (string chainId, long? startBlock = default(long?), long? endBlock = default(long?), DateTime? startDate = default(DateTime?), DateTime? endDate = default(DateTime?), CancellationToken cancellationToken = default(CancellationToken));

        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// 
        /// </remarks>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId"></param>
        /// <param name="startBlock"> (optional)</param>
        /// <param name="endBlock"> (optional)</param>
        /// <param name="startDate"> (optional)</param>
        /// <param name="endDate"> (optional)</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of ApiResponse</returns>
        System.Threading.Tasks.Task<ApiResponse<Object>> ChainsChainIdDappsUniswapv3PoiHistoricalGetWithHttpInfoAsync (string chainId, long? startBlock = default(long?), long? endBlock = default(long?), DateTime? startDate = default(DateTime?), DateTime? endDate = default(DateTime?), CancellationToken cancellationToken = default(CancellationToken));
        #endregion Asynchronous Operations
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public partial class PoiApi : IPoiApi
    {
        private CoinAPI.EMS.REST.V1.Client.ExceptionFactory _exceptionFactory = (name, response) => null;

        /// <summary>
        /// Initializes a new instance of the <see cref="PoiApi"/> class.
        /// </summary>
        /// <returns></returns>
        public PoiApi(String basePath)
        {
            this.Configuration = new CoinAPI.EMS.REST.V1.Client.Configuration { BasePath = basePath };

            ExceptionFactory = CoinAPI.EMS.REST.V1.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="PoiApi"/> class
        /// </summary>
        /// <returns></returns>
        public PoiApi()
        {
            this.Configuration = CoinAPI.EMS.REST.V1.Client.Configuration.Default;

            ExceptionFactory = CoinAPI.EMS.REST.V1.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="PoiApi"/> class
        /// using Configuration object
        /// </summary>
        /// <param name="configuration">An instance of Configuration</param>
        /// <returns></returns>
        public PoiApi(CoinAPI.EMS.REST.V1.Client.Configuration configuration = null)
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
        ///  
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId"></param>
        /// <param name="startBlock"> (optional)</param>
        /// <param name="endBlock"> (optional)</param>
        /// <param name="startDate"> (optional)</param>
        /// <param name="endDate"> (optional)</param>
        /// <returns></returns>
        public void ChainsChainIdDappsUniswapv3PoiHistoricalGet (string chainId, long? startBlock = default(long?), long? endBlock = default(long?), DateTime? startDate = default(DateTime?), DateTime? endDate = default(DateTime?))
        {
             ChainsChainIdDappsUniswapv3PoiHistoricalGetWithHttpInfo(chainId, startBlock, endBlock, startDate, endDate);
        }

        /// <summary>
        ///  
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId"></param>
        /// <param name="startBlock"> (optional)</param>
        /// <param name="endBlock"> (optional)</param>
        /// <param name="startDate"> (optional)</param>
        /// <param name="endDate"> (optional)</param>
        /// <returns>ApiResponse of Object(void)</returns>
        public ApiResponse<Object> ChainsChainIdDappsUniswapv3PoiHistoricalGetWithHttpInfo (string chainId, long? startBlock = default(long?), long? endBlock = default(long?), DateTime? startDate = default(DateTime?), DateTime? endDate = default(DateTime?))
        {
            // verify the required parameter 'chainId' is set
            if (chainId == null)
                throw new ApiException(400, "Missing required parameter 'chainId' when calling PoiApi->ChainsChainIdDappsUniswapv3PoiHistoricalGet");

            var localVarPath = "/chains/{chain_id}/dapps/uniswapv3/poi/historical";
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
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            if (chainId != null) localVarPathParams.Add("chain_id", this.Configuration.ApiClient.ParameterToString(chainId)); // path parameter
            if (startBlock != null) localVarQueryParams.AddRange(this.Configuration.ApiClient.ParameterToKeyValuePairs("", "startBlock", startBlock)); // query parameter
            if (endBlock != null) localVarQueryParams.AddRange(this.Configuration.ApiClient.ParameterToKeyValuePairs("", "endBlock", endBlock)); // query parameter
            if (startDate != null) localVarQueryParams.AddRange(this.Configuration.ApiClient.ParameterToKeyValuePairs("", "startDate", startDate)); // query parameter
            if (endDate != null) localVarQueryParams.AddRange(this.Configuration.ApiClient.ParameterToKeyValuePairs("", "endDate", endDate)); // query parameter


            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) this.Configuration.ApiClient.CallApi(localVarPath,
                Method.GET, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("ChainsChainIdDappsUniswapv3PoiHistoricalGet", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<Object>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                null);
        }

        /// <summary>
        ///  
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId"></param>
        /// <param name="startBlock"> (optional)</param>
        /// <param name="endBlock"> (optional)</param>
        /// <param name="startDate"> (optional)</param>
        /// <param name="endDate"> (optional)</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of void</returns>
        public async System.Threading.Tasks.Task ChainsChainIdDappsUniswapv3PoiHistoricalGetAsync (string chainId, long? startBlock = default(long?), long? endBlock = default(long?), DateTime? startDate = default(DateTime?), DateTime? endDate = default(DateTime?), CancellationToken cancellationToken = default(CancellationToken))
        {
             await ChainsChainIdDappsUniswapv3PoiHistoricalGetWithHttpInfoAsync(chainId, startBlock, endBlock, startDate, endDate, cancellationToken);

        }

        /// <summary>
        ///  
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId"></param>
        /// <param name="startBlock"> (optional)</param>
        /// <param name="endBlock"> (optional)</param>
        /// <param name="startDate"> (optional)</param>
        /// <param name="endDate"> (optional)</param>
        /// <param name="cancellationToken">Cancellation Token to cancel request (optional) </param>
        /// <returns>Task of ApiResponse</returns>
        public async System.Threading.Tasks.Task<ApiResponse<Object>> ChainsChainIdDappsUniswapv3PoiHistoricalGetWithHttpInfoAsync (string chainId, long? startBlock = default(long?), long? endBlock = default(long?), DateTime? startDate = default(DateTime?), DateTime? endDate = default(DateTime?), CancellationToken cancellationToken = default(CancellationToken))
        {
            // verify the required parameter 'chainId' is set
            if (chainId == null)
                throw new ApiException(400, "Missing required parameter 'chainId' when calling PoiApi->ChainsChainIdDappsUniswapv3PoiHistoricalGet");

            var localVarPath = "/chains/{chain_id}/dapps/uniswapv3/poi/historical";
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
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            if (chainId != null) localVarPathParams.Add("chain_id", this.Configuration.ApiClient.ParameterToString(chainId)); // path parameter
            if (startBlock != null) localVarQueryParams.AddRange(this.Configuration.ApiClient.ParameterToKeyValuePairs("", "startBlock", startBlock)); // query parameter
            if (endBlock != null) localVarQueryParams.AddRange(this.Configuration.ApiClient.ParameterToKeyValuePairs("", "endBlock", endBlock)); // query parameter
            if (startDate != null) localVarQueryParams.AddRange(this.Configuration.ApiClient.ParameterToKeyValuePairs("", "startDate", startDate)); // query parameter
            if (endDate != null) localVarQueryParams.AddRange(this.Configuration.ApiClient.ParameterToKeyValuePairs("", "endDate", endDate)); // query parameter


            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) await this.Configuration.ApiClient.CallApiAsync(localVarPath,
                Method.GET, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType, cancellationToken);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("ChainsChainIdDappsUniswapv3PoiHistoricalGet", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<Object>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                null);
        }

    }
}
