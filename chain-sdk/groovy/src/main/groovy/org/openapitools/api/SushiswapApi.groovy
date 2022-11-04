package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.PairDTO
import org.openapitools.model.SwapDTO
import org.openapitools.model.TokenDTO

class SushiswapApi {
    String basePath = "https://onchain.coinapi.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def dappsSushiswapBundlesHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/sushiswap/bundles/historical"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startBlock != null) {
            queryParams.put("startBlock", startBlock)
        }
        if (endBlock != null) {
            queryParams.put("endBlock", endBlock)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def dappsSushiswapBurnsHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/sushiswap/burns/historical"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startBlock != null) {
            queryParams.put("startBlock", startBlock)
        }
        if (endBlock != null) {
            queryParams.put("endBlock", endBlock)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (poolId != null) {
            queryParams.put("poolId", poolId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def dappsSushiswapDayDataHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/sushiswap/dayData/historical"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startBlock != null) {
            queryParams.put("startBlock", startBlock)
        }
        if (endBlock != null) {
            queryParams.put("endBlock", endBlock)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def dappsSushiswapFactoryHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/sushiswap/factory/historical"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startBlock != null) {
            queryParams.put("startBlock", startBlock)
        }
        if (endBlock != null) {
            queryParams.put("endBlock", endBlock)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def dappsSushiswapHourDataHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/sushiswap/hourData/historical"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startBlock != null) {
            queryParams.put("startBlock", startBlock)
        }
        if (endBlock != null) {
            queryParams.put("endBlock", endBlock)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def dappsSushiswapLiquidityPositionHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/sushiswap/liquidityPosition/historical"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startBlock != null) {
            queryParams.put("startBlock", startBlock)
        }
        if (endBlock != null) {
            queryParams.put("endBlock", endBlock)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (poolId != null) {
            queryParams.put("poolId", poolId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def dappsSushiswapLiquidityPositionSnapshotsHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/sushiswap/liquidityPositionSnapshots/historical"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startBlock != null) {
            queryParams.put("startBlock", startBlock)
        }
        if (endBlock != null) {
            queryParams.put("endBlock", endBlock)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (poolId != null) {
            queryParams.put("poolId", poolId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def dappsSushiswapMintsHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/sushiswap/mints/historical"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startBlock != null) {
            queryParams.put("startBlock", startBlock)
        }
        if (endBlock != null) {
            queryParams.put("endBlock", endBlock)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (poolId != null) {
            queryParams.put("poolId", poolId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def dappsSushiswapPoolDayDataHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/sushiswap/poolDayData/historical"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startBlock != null) {
            queryParams.put("startBlock", startBlock)
        }
        if (endBlock != null) {
            queryParams.put("endBlock", endBlock)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (poolId != null) {
            queryParams.put("poolId", poolId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def dappsSushiswapPoolHourDataHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/sushiswap/poolHourData/historical"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startBlock != null) {
            queryParams.put("startBlock", startBlock)
        }
        if (endBlock != null) {
            queryParams.put("endBlock", endBlock)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (poolId != null) {
            queryParams.put("poolId", poolId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def dappsSushiswapPoolsCurrentGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/sushiswap/pools/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    PairDTO.class )

    }

    def dappsSushiswapPoolsHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/sushiswap/pools/historical"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startBlock != null) {
            queryParams.put("startBlock", startBlock)
        }
        if (endBlock != null) {
            queryParams.put("endBlock", endBlock)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (poolId != null) {
            queryParams.put("poolId", poolId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    PairDTO.class )

    }

    def dappsSushiswapSwapsCurrentGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/sushiswap/swaps/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    SwapDTO.class )

    }

    def dappsSushiswapSwapsHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/sushiswap/swaps/historical"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startBlock != null) {
            queryParams.put("startBlock", startBlock)
        }
        if (endBlock != null) {
            queryParams.put("endBlock", endBlock)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (poolId != null) {
            queryParams.put("poolId", poolId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    SwapDTO.class )

    }

    def dappsSushiswapTokenDayDataHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, String tokenId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/sushiswap/tokenDayData/historical"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startBlock != null) {
            queryParams.put("startBlock", startBlock)
        }
        if (endBlock != null) {
            queryParams.put("endBlock", endBlock)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (tokenId != null) {
            queryParams.put("tokenId", tokenId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def dappsSushiswapTokensCurrentGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/sushiswap/tokens/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    TokenDTO.class )

    }

    def dappsSushiswapTokensHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, String tokenId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/sushiswap/tokens/historical"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startBlock != null) {
            queryParams.put("startBlock", startBlock)
        }
        if (endBlock != null) {
            queryParams.put("endBlock", endBlock)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (tokenId != null) {
            queryParams.put("tokenId", tokenId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    TokenDTO.class )

    }

    def dappsSushiswapTransactionsHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/sushiswap/transactions/historical"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startBlock != null) {
            queryParams.put("startBlock", startBlock)
        }
        if (endBlock != null) {
            queryParams.put("endBlock", endBlock)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def dappsSushiswapUsersHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/sushiswap/users/historical"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startBlock != null) {
            queryParams.put("startBlock", startBlock)
        }
        if (endBlock != null) {
            queryParams.put("endBlock", endBlock)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

}
