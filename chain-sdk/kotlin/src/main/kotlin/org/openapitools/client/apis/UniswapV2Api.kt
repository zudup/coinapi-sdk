/**
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 *
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

import org.openapitools.client.models.UniswapV2PairV2DTO
import org.openapitools.client.models.UniswapV2SwapV2DTO
import org.openapitools.client.models.UniswapV2TokenV2DTO

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

class UniswapV2Api(basePath: kotlin.String = defaultBasePath, client: OkHttpClient = ApiClient.defaultClient) : ApiClient(basePath, client) {
    companion object {
        @JvmStatic
        val defaultBasePath: String by lazy {
            System.getProperties().getProperty(ApiClient.baseUrlKey, "https://onchain.coinapi.io")
        }
    }

    /**
     * Pools (current) 🔥
     * Gets pools.
     * @param filterPoolId  (optional)
     * @return kotlin.collections.List<UniswapV2PairV2DTO>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun uniswapV2GetPoolsCurrent(filterPoolId: kotlin.String? = null) : kotlin.collections.List<UniswapV2PairV2DTO> {
        val localVarResponse = uniswapV2GetPoolsCurrentWithHttpInfo(filterPoolId = filterPoolId)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as kotlin.collections.List<UniswapV2PairV2DTO>
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
     * Pools (current) 🔥
     * Gets pools.
     * @param filterPoolId  (optional)
     * @return ApiResponse<kotlin.collections.List<UniswapV2PairV2DTO>?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun uniswapV2GetPoolsCurrentWithHttpInfo(filterPoolId: kotlin.String?) : ApiResponse<kotlin.collections.List<UniswapV2PairV2DTO>?> {
        val localVariableConfig = uniswapV2GetPoolsCurrentRequestConfig(filterPoolId = filterPoolId)

        return request<Unit, kotlin.collections.List<UniswapV2PairV2DTO>>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation uniswapV2GetPoolsCurrent
     *
     * @param filterPoolId  (optional)
     * @return RequestConfig
     */
    fun uniswapV2GetPoolsCurrentRequestConfig(filterPoolId: kotlin.String?) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf<kotlin.String, kotlin.collections.List<kotlin.String>>()
            .apply {
                if (filterPoolId != null) {
                    put("filter_pool_id", listOf(filterPoolId.toString()))
                }
            }
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/dapps/uniswapv2/pools/current",
            query = localVariableQuery,
            headers = localVariableHeaders,
            body = localVariableBody
        )
    }

    /**
     * Swaps (current) 🔥
     * Gets swaps.
     * @return kotlin.collections.List<UniswapV2SwapV2DTO>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun uniswapV2GetSwapsCurrent() : kotlin.collections.List<UniswapV2SwapV2DTO> {
        val localVarResponse = uniswapV2GetSwapsCurrentWithHttpInfo()

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as kotlin.collections.List<UniswapV2SwapV2DTO>
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
     * Swaps (current) 🔥
     * Gets swaps.
     * @return ApiResponse<kotlin.collections.List<UniswapV2SwapV2DTO>?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun uniswapV2GetSwapsCurrentWithHttpInfo() : ApiResponse<kotlin.collections.List<UniswapV2SwapV2DTO>?> {
        val localVariableConfig = uniswapV2GetSwapsCurrentRequestConfig()

        return request<Unit, kotlin.collections.List<UniswapV2SwapV2DTO>>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation uniswapV2GetSwapsCurrent
     *
     * @return RequestConfig
     */
    fun uniswapV2GetSwapsCurrentRequestConfig() : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf()
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/dapps/uniswapv2/swaps/current",
            query = localVariableQuery,
            headers = localVariableHeaders,
            body = localVariableBody
        )
    }

    /**
     * Tokens (current) 🔥
     * Gets tokens.
     * @return kotlin.collections.List<UniswapV2TokenV2DTO>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun uniswapV2GetTokensCurrent() : kotlin.collections.List<UniswapV2TokenV2DTO> {
        val localVarResponse = uniswapV2GetTokensCurrentWithHttpInfo()

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as kotlin.collections.List<UniswapV2TokenV2DTO>
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
     * Tokens (current) 🔥
     * Gets tokens.
     * @return ApiResponse<kotlin.collections.List<UniswapV2TokenV2DTO>?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun uniswapV2GetTokensCurrentWithHttpInfo() : ApiResponse<kotlin.collections.List<UniswapV2TokenV2DTO>?> {
        val localVariableConfig = uniswapV2GetTokensCurrentRequestConfig()

        return request<Unit, kotlin.collections.List<UniswapV2TokenV2DTO>>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation uniswapV2GetTokensCurrent
     *
     * @return RequestConfig
     */
    fun uniswapV2GetTokensCurrentRequestConfig() : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf()
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/dapps/uniswapv2/tokens/current",
            query = localVariableQuery,
            headers = localVariableHeaders,
            body = localVariableBody
        )
    }


    private fun encodeURIComponent(uriComponent: kotlin.String): kotlin.String =
        HttpUrl.Builder().scheme("http").host("localhost").addPathSegment(uriComponent).build().encodedPathSegments[0]
}
