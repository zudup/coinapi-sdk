package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.CurveExchangeDTO
import org.openapitools.model.DexTradeDTO
import org.openapitools.model.SushiswapPairDTO
import org.openapitools.model.SushiswapSwapDTO
import org.openapitools.model.SushiswapTokenDTO

class SushiswapApi {
    String basePath = "https://onchain.coinapi.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def curveGetExchangesCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/sushiswap/exchanges/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    CurveExchangeDTO.class )

    }

    def dexGetTradesCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/sushiswap/trades/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    DexTradeDTO.class )

    }

    def sushiswapGetPoolsCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/sushiswap/pools/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    SushiswapPairDTO.class )

    }

    def sushiswapGetSwapsCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/sushiswap/swaps/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    SushiswapSwapDTO.class )

    }

    def sushiswapGetTokensCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/sushiswap/tokens/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    SushiswapTokenDTO.class )

    }

}
