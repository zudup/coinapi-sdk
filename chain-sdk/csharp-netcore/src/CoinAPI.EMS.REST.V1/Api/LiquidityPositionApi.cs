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
using System.Net;
using System.Net.Mime;
using CoinAPI.EMS.REST.V1.Client;

namespace CoinAPI.EMS.REST.V1.Api
{

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface ILiquidityPositionApiSync : IApiAccessor
    {
        #region Synchronous Operations
        /// <summary>
        /// 
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId"></param>
        /// <param name="startBlock"> (optional)</param>
        /// <param name="endBlock"> (optional)</param>
        /// <param name="startDate"> (optional)</param>
        /// <param name="endDate"> (optional)</param>
        /// <param name="poolId"> (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns></returns>
        void ChainsChainIdDappsSushiswapLiquidityPositionHistoricalGet(string chainId, long? startBlock = default(long?), long? endBlock = default(long?), DateTime? startDate = default(DateTime?), DateTime? endDate = default(DateTime?), string poolId = default(string), int operationIndex = 0);

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
        /// <param name="poolId"> (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ApiResponse of Object(void)</returns>
        ApiResponse<Object> ChainsChainIdDappsSushiswapLiquidityPositionHistoricalGetWithHttpInfo(string chainId, long? startBlock = default(long?), long? endBlock = default(long?), DateTime? startDate = default(DateTime?), DateTime? endDate = default(DateTime?), string poolId = default(string), int operationIndex = 0);
        /// <summary>
        /// 
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId"></param>
        /// <param name="startBlock"> (optional)</param>
        /// <param name="endBlock"> (optional)</param>
        /// <param name="startDate"> (optional)</param>
        /// <param name="endDate"> (optional)</param>
        /// <param name="poolId"> (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns></returns>
        void ChainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet(string chainId, long? startBlock = default(long?), long? endBlock = default(long?), DateTime? startDate = default(DateTime?), DateTime? endDate = default(DateTime?), string poolId = default(string), int operationIndex = 0);

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
        /// <param name="poolId"> (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ApiResponse of Object(void)</returns>
        ApiResponse<Object> ChainsChainIdDappsUniswapv2LiquidityPositionHistoricalGetWithHttpInfo(string chainId, long? startBlock = default(long?), long? endBlock = default(long?), DateTime? startDate = default(DateTime?), DateTime? endDate = default(DateTime?), string poolId = default(string), int operationIndex = 0);
        #endregion Synchronous Operations
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface ILiquidityPositionApiAsync : IApiAccessor
    {
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
        /// <param name="poolId"> (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of void</returns>
        System.Threading.Tasks.Task ChainsChainIdDappsSushiswapLiquidityPositionHistoricalGetAsync(string chainId, long? startBlock = default(long?), long? endBlock = default(long?), DateTime? startDate = default(DateTime?), DateTime? endDate = default(DateTime?), string poolId = default(string), int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));

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
        /// <param name="poolId"> (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse</returns>
        System.Threading.Tasks.Task<ApiResponse<Object>> ChainsChainIdDappsSushiswapLiquidityPositionHistoricalGetWithHttpInfoAsync(string chainId, long? startBlock = default(long?), long? endBlock = default(long?), DateTime? startDate = default(DateTime?), DateTime? endDate = default(DateTime?), string poolId = default(string), int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));
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
        /// <param name="poolId"> (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of void</returns>
        System.Threading.Tasks.Task ChainsChainIdDappsUniswapv2LiquidityPositionHistoricalGetAsync(string chainId, long? startBlock = default(long?), long? endBlock = default(long?), DateTime? startDate = default(DateTime?), DateTime? endDate = default(DateTime?), string poolId = default(string), int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));

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
        /// <param name="poolId"> (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse</returns>
        System.Threading.Tasks.Task<ApiResponse<Object>> ChainsChainIdDappsUniswapv2LiquidityPositionHistoricalGetWithHttpInfoAsync(string chainId, long? startBlock = default(long?), long? endBlock = default(long?), DateTime? startDate = default(DateTime?), DateTime? endDate = default(DateTime?), string poolId = default(string), int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));
        #endregion Asynchronous Operations
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface ILiquidityPositionApi : ILiquidityPositionApiSync, ILiquidityPositionApiAsync
    {

    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public partial class LiquidityPositionApi : ILiquidityPositionApi
    {
        private CoinAPI.EMS.REST.V1.Client.ExceptionFactory _exceptionFactory = (name, response) => null;

        /// <summary>
        /// Initializes a new instance of the <see cref="LiquidityPositionApi"/> class.
        /// </summary>
        /// <returns></returns>
        public LiquidityPositionApi() : this((string)null)
        {
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="LiquidityPositionApi"/> class.
        /// </summary>
        /// <returns></returns>
        public LiquidityPositionApi(string basePath)
        {
            this.Configuration = CoinAPI.EMS.REST.V1.Client.Configuration.MergeConfigurations(
                CoinAPI.EMS.REST.V1.Client.GlobalConfiguration.Instance,
                new CoinAPI.EMS.REST.V1.Client.Configuration { BasePath = basePath }
            );
            this.Client = new CoinAPI.EMS.REST.V1.Client.ApiClient(this.Configuration.BasePath);
            this.AsynchronousClient = new CoinAPI.EMS.REST.V1.Client.ApiClient(this.Configuration.BasePath);
            this.ExceptionFactory = CoinAPI.EMS.REST.V1.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="LiquidityPositionApi"/> class
        /// using Configuration object
        /// </summary>
        /// <param name="configuration">An instance of Configuration</param>
        /// <returns></returns>
        public LiquidityPositionApi(CoinAPI.EMS.REST.V1.Client.Configuration configuration)
        {
            if (configuration == null) throw new ArgumentNullException("configuration");

            this.Configuration = CoinAPI.EMS.REST.V1.Client.Configuration.MergeConfigurations(
                CoinAPI.EMS.REST.V1.Client.GlobalConfiguration.Instance,
                configuration
            );
            this.Client = new CoinAPI.EMS.REST.V1.Client.ApiClient(this.Configuration.BasePath);
            this.AsynchronousClient = new CoinAPI.EMS.REST.V1.Client.ApiClient(this.Configuration.BasePath);
            ExceptionFactory = CoinAPI.EMS.REST.V1.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="LiquidityPositionApi"/> class
        /// using a Configuration object and client instance.
        /// </summary>
        /// <param name="client">The client interface for synchronous API access.</param>
        /// <param name="asyncClient">The client interface for asynchronous API access.</param>
        /// <param name="configuration">The configuration object.</param>
        public LiquidityPositionApi(CoinAPI.EMS.REST.V1.Client.ISynchronousClient client, CoinAPI.EMS.REST.V1.Client.IAsynchronousClient asyncClient, CoinAPI.EMS.REST.V1.Client.IReadableConfiguration configuration)
        {
            if (client == null) throw new ArgumentNullException("client");
            if (asyncClient == null) throw new ArgumentNullException("asyncClient");
            if (configuration == null) throw new ArgumentNullException("configuration");

            this.Client = client;
            this.AsynchronousClient = asyncClient;
            this.Configuration = configuration;
            this.ExceptionFactory = CoinAPI.EMS.REST.V1.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// The client for accessing this underlying API asynchronously.
        /// </summary>
        public CoinAPI.EMS.REST.V1.Client.IAsynchronousClient AsynchronousClient { get; set; }

        /// <summary>
        /// The client for accessing this underlying API synchronously.
        /// </summary>
        public CoinAPI.EMS.REST.V1.Client.ISynchronousClient Client { get; set; }

        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <value>The base path</value>
        public string GetBasePath()
        {
            return this.Configuration.BasePath;
        }

        /// <summary>
        /// Gets or sets the configuration object
        /// </summary>
        /// <value>An instance of the Configuration</value>
        public CoinAPI.EMS.REST.V1.Client.IReadableConfiguration Configuration { get; set; }

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
        ///  
        /// </summary>
        /// <exception cref="CoinAPI.EMS.REST.V1.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="chainId"></param>
        /// <param name="startBlock"> (optional)</param>
        /// <param name="endBlock"> (optional)</param>
        /// <param name="startDate"> (optional)</param>
        /// <param name="endDate"> (optional)</param>
        /// <param name="poolId"> (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns></returns>
        public void ChainsChainIdDappsSushiswapLiquidityPositionHistoricalGet(string chainId, long? startBlock = default(long?), long? endBlock = default(long?), DateTime? startDate = default(DateTime?), DateTime? endDate = default(DateTime?), string poolId = default(string), int operationIndex = 0)
        {
            ChainsChainIdDappsSushiswapLiquidityPositionHistoricalGetWithHttpInfo(chainId, startBlock, endBlock, startDate, endDate, poolId);
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
        /// <param name="poolId"> (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ApiResponse of Object(void)</returns>
        public CoinAPI.EMS.REST.V1.Client.ApiResponse<Object> ChainsChainIdDappsSushiswapLiquidityPositionHistoricalGetWithHttpInfo(string chainId, long? startBlock = default(long?), long? endBlock = default(long?), DateTime? startDate = default(DateTime?), DateTime? endDate = default(DateTime?), string poolId = default(string), int operationIndex = 0)
        {
            // verify the required parameter 'chainId' is set
            if (chainId == null)
            {
                throw new CoinAPI.EMS.REST.V1.Client.ApiException(400, "Missing required parameter 'chainId' when calling LiquidityPositionApi->ChainsChainIdDappsSushiswapLiquidityPositionHistoricalGet");
            }

            CoinAPI.EMS.REST.V1.Client.RequestOptions localVarRequestOptions = new CoinAPI.EMS.REST.V1.Client.RequestOptions();

            string[] _contentTypes = new string[] {
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
            };

            var localVarContentType = CoinAPI.EMS.REST.V1.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);
            }

            var localVarAccept = CoinAPI.EMS.REST.V1.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);
            }

            localVarRequestOptions.PathParameters.Add("chain_id", CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToString(chainId)); // path parameter
            if (startBlock != null)
            {
                localVarRequestOptions.QueryParameters.Add(CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToMultiMap("", "startBlock", startBlock));
            }
            if (endBlock != null)
            {
                localVarRequestOptions.QueryParameters.Add(CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToMultiMap("", "endBlock", endBlock));
            }
            if (startDate != null)
            {
                localVarRequestOptions.QueryParameters.Add(CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToMultiMap("", "startDate", startDate));
            }
            if (endDate != null)
            {
                localVarRequestOptions.QueryParameters.Add(CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToMultiMap("", "endDate", endDate));
            }
            if (poolId != null)
            {
                localVarRequestOptions.QueryParameters.Add(CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToMultiMap("", "poolId", poolId));
            }

            localVarRequestOptions.Operation = "LiquidityPositionApi.ChainsChainIdDappsSushiswapLiquidityPositionHistoricalGet";
            localVarRequestOptions.OperationIndex = operationIndex;


            // make the HTTP request
            var localVarResponse = this.Client.Get<Object>("/chains/{chain_id}/dapps/sushiswap/liquidityPosition/historical", localVarRequestOptions, this.Configuration);
            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("ChainsChainIdDappsSushiswapLiquidityPositionHistoricalGet", localVarResponse);
                if (_exception != null)
                {
                    throw _exception;
                }
            }

            return localVarResponse;
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
        /// <param name="poolId"> (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of void</returns>
        public async System.Threading.Tasks.Task ChainsChainIdDappsSushiswapLiquidityPositionHistoricalGetAsync(string chainId, long? startBlock = default(long?), long? endBlock = default(long?), DateTime? startDate = default(DateTime?), DateTime? endDate = default(DateTime?), string poolId = default(string), int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            await ChainsChainIdDappsSushiswapLiquidityPositionHistoricalGetWithHttpInfoAsync(chainId, startBlock, endBlock, startDate, endDate, poolId, operationIndex, cancellationToken).ConfigureAwait(false);
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
        /// <param name="poolId"> (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse</returns>
        public async System.Threading.Tasks.Task<CoinAPI.EMS.REST.V1.Client.ApiResponse<Object>> ChainsChainIdDappsSushiswapLiquidityPositionHistoricalGetWithHttpInfoAsync(string chainId, long? startBlock = default(long?), long? endBlock = default(long?), DateTime? startDate = default(DateTime?), DateTime? endDate = default(DateTime?), string poolId = default(string), int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            // verify the required parameter 'chainId' is set
            if (chainId == null)
            {
                throw new CoinAPI.EMS.REST.V1.Client.ApiException(400, "Missing required parameter 'chainId' when calling LiquidityPositionApi->ChainsChainIdDappsSushiswapLiquidityPositionHistoricalGet");
            }


            CoinAPI.EMS.REST.V1.Client.RequestOptions localVarRequestOptions = new CoinAPI.EMS.REST.V1.Client.RequestOptions();

            string[] _contentTypes = new string[] {
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
            };

            var localVarContentType = CoinAPI.EMS.REST.V1.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);
            }

            var localVarAccept = CoinAPI.EMS.REST.V1.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);
            }

            localVarRequestOptions.PathParameters.Add("chain_id", CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToString(chainId)); // path parameter
            if (startBlock != null)
            {
                localVarRequestOptions.QueryParameters.Add(CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToMultiMap("", "startBlock", startBlock));
            }
            if (endBlock != null)
            {
                localVarRequestOptions.QueryParameters.Add(CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToMultiMap("", "endBlock", endBlock));
            }
            if (startDate != null)
            {
                localVarRequestOptions.QueryParameters.Add(CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToMultiMap("", "startDate", startDate));
            }
            if (endDate != null)
            {
                localVarRequestOptions.QueryParameters.Add(CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToMultiMap("", "endDate", endDate));
            }
            if (poolId != null)
            {
                localVarRequestOptions.QueryParameters.Add(CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToMultiMap("", "poolId", poolId));
            }

            localVarRequestOptions.Operation = "LiquidityPositionApi.ChainsChainIdDappsSushiswapLiquidityPositionHistoricalGet";
            localVarRequestOptions.OperationIndex = operationIndex;


            // make the HTTP request
            var localVarResponse = await this.AsynchronousClient.GetAsync<Object>("/chains/{chain_id}/dapps/sushiswap/liquidityPosition/historical", localVarRequestOptions, this.Configuration, cancellationToken).ConfigureAwait(false);

            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("ChainsChainIdDappsSushiswapLiquidityPositionHistoricalGet", localVarResponse);
                if (_exception != null)
                {
                    throw _exception;
                }
            }

            return localVarResponse;
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
        /// <param name="poolId"> (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns></returns>
        public void ChainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet(string chainId, long? startBlock = default(long?), long? endBlock = default(long?), DateTime? startDate = default(DateTime?), DateTime? endDate = default(DateTime?), string poolId = default(string), int operationIndex = 0)
        {
            ChainsChainIdDappsUniswapv2LiquidityPositionHistoricalGetWithHttpInfo(chainId, startBlock, endBlock, startDate, endDate, poolId);
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
        /// <param name="poolId"> (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ApiResponse of Object(void)</returns>
        public CoinAPI.EMS.REST.V1.Client.ApiResponse<Object> ChainsChainIdDappsUniswapv2LiquidityPositionHistoricalGetWithHttpInfo(string chainId, long? startBlock = default(long?), long? endBlock = default(long?), DateTime? startDate = default(DateTime?), DateTime? endDate = default(DateTime?), string poolId = default(string), int operationIndex = 0)
        {
            // verify the required parameter 'chainId' is set
            if (chainId == null)
            {
                throw new CoinAPI.EMS.REST.V1.Client.ApiException(400, "Missing required parameter 'chainId' when calling LiquidityPositionApi->ChainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet");
            }

            CoinAPI.EMS.REST.V1.Client.RequestOptions localVarRequestOptions = new CoinAPI.EMS.REST.V1.Client.RequestOptions();

            string[] _contentTypes = new string[] {
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
            };

            var localVarContentType = CoinAPI.EMS.REST.V1.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);
            }

            var localVarAccept = CoinAPI.EMS.REST.V1.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);
            }

            localVarRequestOptions.PathParameters.Add("chain_id", CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToString(chainId)); // path parameter
            if (startBlock != null)
            {
                localVarRequestOptions.QueryParameters.Add(CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToMultiMap("", "startBlock", startBlock));
            }
            if (endBlock != null)
            {
                localVarRequestOptions.QueryParameters.Add(CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToMultiMap("", "endBlock", endBlock));
            }
            if (startDate != null)
            {
                localVarRequestOptions.QueryParameters.Add(CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToMultiMap("", "startDate", startDate));
            }
            if (endDate != null)
            {
                localVarRequestOptions.QueryParameters.Add(CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToMultiMap("", "endDate", endDate));
            }
            if (poolId != null)
            {
                localVarRequestOptions.QueryParameters.Add(CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToMultiMap("", "poolId", poolId));
            }

            localVarRequestOptions.Operation = "LiquidityPositionApi.ChainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet";
            localVarRequestOptions.OperationIndex = operationIndex;


            // make the HTTP request
            var localVarResponse = this.Client.Get<Object>("/chains/{chain_id}/dapps/uniswapv2/liquidityPosition/historical", localVarRequestOptions, this.Configuration);
            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("ChainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet", localVarResponse);
                if (_exception != null)
                {
                    throw _exception;
                }
            }

            return localVarResponse;
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
        /// <param name="poolId"> (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of void</returns>
        public async System.Threading.Tasks.Task ChainsChainIdDappsUniswapv2LiquidityPositionHistoricalGetAsync(string chainId, long? startBlock = default(long?), long? endBlock = default(long?), DateTime? startDate = default(DateTime?), DateTime? endDate = default(DateTime?), string poolId = default(string), int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            await ChainsChainIdDappsUniswapv2LiquidityPositionHistoricalGetWithHttpInfoAsync(chainId, startBlock, endBlock, startDate, endDate, poolId, operationIndex, cancellationToken).ConfigureAwait(false);
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
        /// <param name="poolId"> (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse</returns>
        public async System.Threading.Tasks.Task<CoinAPI.EMS.REST.V1.Client.ApiResponse<Object>> ChainsChainIdDappsUniswapv2LiquidityPositionHistoricalGetWithHttpInfoAsync(string chainId, long? startBlock = default(long?), long? endBlock = default(long?), DateTime? startDate = default(DateTime?), DateTime? endDate = default(DateTime?), string poolId = default(string), int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            // verify the required parameter 'chainId' is set
            if (chainId == null)
            {
                throw new CoinAPI.EMS.REST.V1.Client.ApiException(400, "Missing required parameter 'chainId' when calling LiquidityPositionApi->ChainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet");
            }


            CoinAPI.EMS.REST.V1.Client.RequestOptions localVarRequestOptions = new CoinAPI.EMS.REST.V1.Client.RequestOptions();

            string[] _contentTypes = new string[] {
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
            };

            var localVarContentType = CoinAPI.EMS.REST.V1.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);
            }

            var localVarAccept = CoinAPI.EMS.REST.V1.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);
            }

            localVarRequestOptions.PathParameters.Add("chain_id", CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToString(chainId)); // path parameter
            if (startBlock != null)
            {
                localVarRequestOptions.QueryParameters.Add(CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToMultiMap("", "startBlock", startBlock));
            }
            if (endBlock != null)
            {
                localVarRequestOptions.QueryParameters.Add(CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToMultiMap("", "endBlock", endBlock));
            }
            if (startDate != null)
            {
                localVarRequestOptions.QueryParameters.Add(CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToMultiMap("", "startDate", startDate));
            }
            if (endDate != null)
            {
                localVarRequestOptions.QueryParameters.Add(CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToMultiMap("", "endDate", endDate));
            }
            if (poolId != null)
            {
                localVarRequestOptions.QueryParameters.Add(CoinAPI.EMS.REST.V1.Client.ClientUtils.ParameterToMultiMap("", "poolId", poolId));
            }

            localVarRequestOptions.Operation = "LiquidityPositionApi.ChainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet";
            localVarRequestOptions.OperationIndex = operationIndex;


            // make the HTTP request
            var localVarResponse = await this.AsynchronousClient.GetAsync<Object>("/chains/{chain_id}/dapps/uniswapv2/liquidityPosition/historical", localVarRequestOptions, this.Configuration, cancellationToken).ConfigureAwait(false);

            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("ChainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet", localVarResponse);
                if (_exception != null)
                {
                    throw _exception;
                }
            }

            return localVarResponse;
        }

    }
}
