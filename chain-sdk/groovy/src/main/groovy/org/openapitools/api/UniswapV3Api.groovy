package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.BundleV3DTO
import org.openapitools.model.BurnV3DTO
import org.openapitools.model.FactoryV3DTO
import org.openapitools.model.MintV3DTO
import org.openapitools.model.PoolDayDataV3DTO
import org.openapitools.model.PoolHourDataV3DTO
import org.openapitools.model.PoolV3DTO
import org.openapitools.model.PositionSnapshotV3DTO
import org.openapitools.model.PositionV3DTO
import org.openapitools.model.SwapV3DTO
import org.openapitools.model.TickDayDataV3DTO
import org.openapitools.model.TickV3DTO
import org.openapitools.model.TokenHourDataV3DTO
import org.openapitools.model.TokenV3DTO
import org.openapitools.model.TokenV3DayDataDTO
import org.openapitools.model.UniswapDayDataV3DTO

class UniswapV3Api {
    String basePath = "https://onchain.coinapi.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def dappsUniswapv3BundleCurrentGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/bundle/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    BundleV3DTO.class )

    }

    def dappsUniswapv3BundlesHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/bundles/historical"

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

    def dappsUniswapv3BurnsCurrentGet ( String filterPoolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/burns/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (filterPoolId != null) {
            queryParams.put("filter_pool_id", filterPoolId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    BurnV3DTO.class )

    }

    def dappsUniswapv3BurnsHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/burns/historical"

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

    def dappsUniswapv3DayDataHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/dayData/historical"

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

    def dappsUniswapv3FactoryCurrentGet ( String chainId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/factory/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (chainId == null) {
            throw new RuntimeException("missing required params chainId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    FactoryV3DTO.class )

    }

    def dappsUniswapv3FactoryHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/factory/historical"

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

    def dappsUniswapv3MintsCurrentGet ( String filterPoolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/mints/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (filterPoolId != null) {
            queryParams.put("filter_pool_id", filterPoolId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    MintV3DTO.class )

    }

    def dappsUniswapv3MintsHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/mints/historical"

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

    def dappsUniswapv3PoiHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/poi/historical"

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

    def dappsUniswapv3PoolDayDataHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/poolDayData/historical"

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

    def dappsUniswapv3PoolHourDataHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/poolHourData/historical"

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

    def dappsUniswapv3PoolsCurrentGet ( String filterPoolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/pools/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (filterPoolId != null) {
            queryParams.put("filter_pool_id", filterPoolId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    PoolV3DTO.class )

    }

    def dappsUniswapv3PoolsDayDataCurrentGet ( String filterPoolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/poolsDayData/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (filterPoolId != null) {
            queryParams.put("filter_pool_id", filterPoolId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    PoolDayDataV3DTO.class )

    }

    def dappsUniswapv3PoolsHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/pools/historical"

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

    def dappsUniswapv3PoolsHourDataCurrentGet ( String filterPoolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/poolsHourData/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (filterPoolId != null) {
            queryParams.put("filter_pool_id", filterPoolId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    PoolHourDataV3DTO.class )

    }

    def dappsUniswapv3PositionSnapshotHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/positionSnapshot/historical"

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

    def dappsUniswapv3PositionSnapshotsCurrentGet ( String filterPoolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/positionSnapshots/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (filterPoolId != null) {
            queryParams.put("filter_pool_id", filterPoolId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    PositionSnapshotV3DTO.class )

    }

    def dappsUniswapv3PositionsCurrentGet ( String filterPoolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/positions/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (filterPoolId != null) {
            queryParams.put("filter_pool_id", filterPoolId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    PositionV3DTO.class )

    }

    def dappsUniswapv3PositionsHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/positions/historical"

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

    def dappsUniswapv3SwapsCurrentGet ( String filterPoolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/swaps/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (filterPoolId != null) {
            queryParams.put("filter_pool_id", filterPoolId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    SwapV3DTO.class )

    }

    def dappsUniswapv3SwapsHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/swaps/historical"

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

    def dappsUniswapv3TickDayDataHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/tickDayData/historical"

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

    def dappsUniswapv3TicksCurrentGet ( String filterPoolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/ticks/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (filterPoolId != null) {
            queryParams.put("filter_pool_id", filterPoolId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    TickV3DTO.class )

    }

    def dappsUniswapv3TicksDayDataCurrentGet ( String filterPoolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/ticksDayData/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (filterPoolId != null) {
            queryParams.put("filter_pool_id", filterPoolId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    TickDayDataV3DTO.class )

    }

    def dappsUniswapv3TicksHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/ticks/historical"

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

    def dappsUniswapv3TokenDayDataHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, String tokenId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/tokenDayData/historical"

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

    def dappsUniswapv3TokenHourDataHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, String tokenId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/tokenHourData/historical"

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

    def dappsUniswapv3TokensCurrentGet ( String filterTokenId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/tokens/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (filterTokenId != null) {
            queryParams.put("filter_token_id", filterTokenId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    TokenV3DTO.class )

    }

    def dappsUniswapv3TokensDayDataCurrentGet ( String filterTokenId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/tokensDayData/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (filterTokenId != null) {
            queryParams.put("filter_token_id", filterTokenId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    TokenV3DayDataDTO.class )

    }

    def dappsUniswapv3TokensHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, String tokenId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/tokens/historical"

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

    def dappsUniswapv3TokensHourDataCurrentGet ( String filterTokenId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/tokensHourData/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (filterTokenId != null) {
            queryParams.put("filter_token_id", filterTokenId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    TokenHourDataV3DTO.class )

    }

    def dappsUniswapv3TransactionsHistoricalGet ( Long startBlock, Long endBlock, Date startDate, Date endDate, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/transactions/historical"

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

    def dappsUniswapv3UniswapDayDataCurrentGet ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/uniswapDayData/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapDayDataV3DTO.class )

    }

}
