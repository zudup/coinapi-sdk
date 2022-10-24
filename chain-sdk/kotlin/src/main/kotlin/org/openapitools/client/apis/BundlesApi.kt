/**
 * OnChain API
 *
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package org.openapitools.client.apis

import java.io.IOException
import okhttp3.OkHttpClient
import okhttp3.HttpUrl


import com.squareup.moshi.Json

import org.openapitools.client.infrastructure.ApiClient
import org.openapitools.client.infrastructure.ApiResponse
import org.openapitools.client.infrastructure.ClientException
import org.openapitools.client.infrastructure.ClientError
import org.openapitools.client.infrastructure.ServerException
import org.openapitools.client.infrastructure.ServerError
import org.openapitools.client.infrastructure.MultiValueMap
import org.openapitools.client.infrastructure.PartConfig
import org.openapitools.client.infrastructure.RequestConfig
import org.openapitools.client.infrastructure.RequestMethod
import org.openapitools.client.infrastructure.ResponseType
import org.openapitools.client.infrastructure.Success
import org.openapitools.client.infrastructure.toMultiValue

class BundlesApi(basePath: kotlin.String = defaultBasePath, client: OkHttpClient = ApiClient.defaultClient) : ApiClient(basePath, client) {
    companion object {
        @JvmStatic
        val defaultBasePath: String by lazy {
            System.getProperties().getProperty(ApiClient.baseUrlKey, "https://onchain.coinapi.io")
        }
    }

    /**
     * 
     * 
     * @param chainId 
     * @param startBlock  (optional)
     * @param endBlock  (optional)
     * @param startDate  (optional)
     * @param endDate  (optional)
     * @return void
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun chainsChainIdDappsUniswapv2BundlesHistoricalGet(chainId: kotlin.String, startBlock: kotlin.Long? = null, endBlock: kotlin.Long? = null, startDate: java.time.OffsetDateTime? = null, endDate: java.time.OffsetDateTime? = null) : Unit {
        val localVarResponse = chainsChainIdDappsUniswapv2BundlesHistoricalGetWithHttpInfo(chainId = chainId, startBlock = startBlock, endBlock = endBlock, startDate = startDate, endDate = endDate)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> Unit
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
     * 
     * 
     * @param chainId 
     * @param startBlock  (optional)
     * @param endBlock  (optional)
     * @param startDate  (optional)
     * @param endDate  (optional)
     * @return ApiResponse<Unit?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Throws(IllegalStateException::class, IOException::class)
    fun chainsChainIdDappsUniswapv2BundlesHistoricalGetWithHttpInfo(chainId: kotlin.String, startBlock: kotlin.Long?, endBlock: kotlin.Long?, startDate: java.time.OffsetDateTime?, endDate: java.time.OffsetDateTime?) : ApiResponse<Unit?> {
        val localVariableConfig = chainsChainIdDappsUniswapv2BundlesHistoricalGetRequestConfig(chainId = chainId, startBlock = startBlock, endBlock = endBlock, startDate = startDate, endDate = endDate)

        return request<Unit, Unit>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation chainsChainIdDappsUniswapv2BundlesHistoricalGet
     *
     * @param chainId 
     * @param startBlock  (optional)
     * @param endBlock  (optional)
     * @param startDate  (optional)
     * @param endDate  (optional)
     * @return RequestConfig
     */
    fun chainsChainIdDappsUniswapv2BundlesHistoricalGetRequestConfig(chainId: kotlin.String, startBlock: kotlin.Long?, endBlock: kotlin.Long?, startDate: java.time.OffsetDateTime?, endDate: java.time.OffsetDateTime?) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf<kotlin.String, kotlin.collections.List<kotlin.String>>()
            .apply {
                if (startBlock != null) {
                    put("startBlock", listOf(startBlock.toString()))
                }
                if (endBlock != null) {
                    put("endBlock", listOf(endBlock.toString()))
                }
                if (startDate != null) {
                    put("startDate", listOf(parseDateToQueryString(startDate)))
                }
                if (endDate != null) {
                    put("endDate", listOf(parseDateToQueryString(endDate)))
                }
            }
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        
        return RequestConfig(
            method = RequestMethod.GET,
            path = "/chains/{chain_id}/dapps/uniswapv2/bundles/historical".replace("{"+"chain_id"+"}", encodeURIComponent(chainId.toString())),
            query = localVariableQuery,
            headers = localVariableHeaders,
            body = localVariableBody
        )
    }

    /**
     * 
     * 
     * @param chainId 
     * @param startBlock  (optional)
     * @param endBlock  (optional)
     * @param startDate  (optional)
     * @param endDate  (optional)
     * @return void
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun chainsChainIdDappsUniswapv3BundlesHistoricalGet(chainId: kotlin.String, startBlock: kotlin.Long? = null, endBlock: kotlin.Long? = null, startDate: java.time.OffsetDateTime? = null, endDate: java.time.OffsetDateTime? = null) : Unit {
        val localVarResponse = chainsChainIdDappsUniswapv3BundlesHistoricalGetWithHttpInfo(chainId = chainId, startBlock = startBlock, endBlock = endBlock, startDate = startDate, endDate = endDate)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> Unit
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
     * 
     * 
     * @param chainId 
     * @param startBlock  (optional)
     * @param endBlock  (optional)
     * @param startDate  (optional)
     * @param endDate  (optional)
     * @return ApiResponse<Unit?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Throws(IllegalStateException::class, IOException::class)
    fun chainsChainIdDappsUniswapv3BundlesHistoricalGetWithHttpInfo(chainId: kotlin.String, startBlock: kotlin.Long?, endBlock: kotlin.Long?, startDate: java.time.OffsetDateTime?, endDate: java.time.OffsetDateTime?) : ApiResponse<Unit?> {
        val localVariableConfig = chainsChainIdDappsUniswapv3BundlesHistoricalGetRequestConfig(chainId = chainId, startBlock = startBlock, endBlock = endBlock, startDate = startDate, endDate = endDate)

        return request<Unit, Unit>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation chainsChainIdDappsUniswapv3BundlesHistoricalGet
     *
     * @param chainId 
     * @param startBlock  (optional)
     * @param endBlock  (optional)
     * @param startDate  (optional)
     * @param endDate  (optional)
     * @return RequestConfig
     */
    fun chainsChainIdDappsUniswapv3BundlesHistoricalGetRequestConfig(chainId: kotlin.String, startBlock: kotlin.Long?, endBlock: kotlin.Long?, startDate: java.time.OffsetDateTime?, endDate: java.time.OffsetDateTime?) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf<kotlin.String, kotlin.collections.List<kotlin.String>>()
            .apply {
                if (startBlock != null) {
                    put("startBlock", listOf(startBlock.toString()))
                }
                if (endBlock != null) {
                    put("endBlock", listOf(endBlock.toString()))
                }
                if (startDate != null) {
                    put("startDate", listOf(parseDateToQueryString(startDate)))
                }
                if (endDate != null) {
                    put("endDate", listOf(parseDateToQueryString(endDate)))
                }
            }
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        
        return RequestConfig(
            method = RequestMethod.GET,
            path = "/chains/{chain_id}/dapps/uniswapv3/bundles/historical".replace("{"+"chain_id"+"}", encodeURIComponent(chainId.toString())),
            query = localVariableQuery,
            headers = localVariableHeaders,
            body = localVariableBody
        )
    }


    private fun encodeURIComponent(uriComponent: kotlin.String): kotlin.String =
        HttpUrl.Builder().scheme("http").host("localhost").addPathSegment(uriComponent).build().encodedPathSegments[0]
}
