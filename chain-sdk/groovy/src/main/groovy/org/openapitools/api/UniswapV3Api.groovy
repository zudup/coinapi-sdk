package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.UniswapV3BundleDTO
import org.openapitools.model.UniswapV3BurnDTO
import org.openapitools.model.UniswapV3FactoryDTO
import org.openapitools.model.UniswapV3MintDTO
import org.openapitools.model.UniswapV3PoolDTO
import org.openapitools.model.UniswapV3PoolDayDataDTO
import org.openapitools.model.UniswapV3PoolHourDataDTO
import org.openapitools.model.UniswapV3PositionDTO
import org.openapitools.model.UniswapV3PositionSnapshotDTO
import org.openapitools.model.UniswapV3SwapDTO
import org.openapitools.model.UniswapV3TickDTO
import org.openapitools.model.UniswapV3TickDayDataDTO
import org.openapitools.model.UniswapV3TokenDTO
import org.openapitools.model.UniswapV3TokenHourDataDTO
import org.openapitools.model.UniswapV3TokenV3DayDataDTO
import org.openapitools.model.UniswapV3TransactionDTO
import org.openapitools.model.UniswapV3UniswapDayDataDTO

class UniswapV3Api {
    String basePath = "https://onchain.coinapi.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def uniswapV3BundlesCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/bundles/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3BundleDTO.class )

    }

    def uniswapV3BurnsCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/burns/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3BurnDTO.class )

    }

    def uniswapV3FactorysCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/factorys/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3FactoryDTO.class )

    }

    def uniswapV3GetBundlesHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String id, Closure onSuccess, Closure onFailure)  {
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
        if (id != null) {
            queryParams.put("id", id)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3BundleDTO.class )

    }

    def uniswapV3GetBurnsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String id, String pool, String token0, String token1, Closure onSuccess, Closure onFailure)  {
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
        if (id != null) {
            queryParams.put("id", id)
        }
        if (pool != null) {
            queryParams.put("pool", pool)
        }
        if (token0 != null) {
            queryParams.put("token_0", token0)
        }
        if (token1 != null) {
            queryParams.put("token_1", token1)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3BurnDTO.class )

    }

    def uniswapV3GetFactorysHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/factorys/historical"

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
        if (id != null) {
            queryParams.put("id", id)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3FactoryDTO.class )

    }

    def uniswapV3GetMintsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String id, String pool, String token0, String token1, Closure onSuccess, Closure onFailure)  {
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
        if (id != null) {
            queryParams.put("id", id)
        }
        if (pool != null) {
            queryParams.put("pool", pool)
        }
        if (token0 != null) {
            queryParams.put("token_0", token0)
        }
        if (token1 != null) {
            queryParams.put("token_1", token1)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3MintDTO.class )

    }

    def uniswapV3GetPoolDayDatasHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String id, String pool, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/poolDayDatas/historical"

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
        if (id != null) {
            queryParams.put("id", id)
        }
        if (pool != null) {
            queryParams.put("pool", pool)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3PoolDayDataDTO.class )

    }

    def uniswapV3GetPoolHourDatasHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String id, String pool, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/poolHourDatas/historical"

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
        if (id != null) {
            queryParams.put("id", id)
        }
        if (pool != null) {
            queryParams.put("pool", pool)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3PoolHourDataDTO.class )

    }

    def uniswapV3GetPoolsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String id, String token0, String token1, Closure onSuccess, Closure onFailure)  {
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
        if (id != null) {
            queryParams.put("id", id)
        }
        if (token0 != null) {
            queryParams.put("token_0", token0)
        }
        if (token1 != null) {
            queryParams.put("token_1", token1)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3PoolDTO.class )

    }

    def uniswapV3GetPositionSnapshotsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String id, String pool, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/positionSnapshots/historical"

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
        if (id != null) {
            queryParams.put("id", id)
        }
        if (pool != null) {
            queryParams.put("pool", pool)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3PositionSnapshotDTO.class )

    }

    def uniswapV3GetPositionsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String id, String pool, String token0, String token1, Closure onSuccess, Closure onFailure)  {
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
        if (id != null) {
            queryParams.put("id", id)
        }
        if (pool != null) {
            queryParams.put("pool", pool)
        }
        if (token0 != null) {
            queryParams.put("token_0", token0)
        }
        if (token1 != null) {
            queryParams.put("token_1", token1)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3PositionDTO.class )

    }

    def uniswapV3GetSwapsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String id, String pool, String token0, String token1, Closure onSuccess, Closure onFailure)  {
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
        if (id != null) {
            queryParams.put("id", id)
        }
        if (pool != null) {
            queryParams.put("pool", pool)
        }
        if (token0 != null) {
            queryParams.put("token_0", token0)
        }
        if (token1 != null) {
            queryParams.put("token_1", token1)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3SwapDTO.class )

    }

    def uniswapV3GetTickDayDatasHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String id, String pool, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/tickDayDatas/historical"

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
        if (id != null) {
            queryParams.put("id", id)
        }
        if (pool != null) {
            queryParams.put("pool", pool)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3TickDayDataDTO.class )

    }

    def uniswapV3GetTicksHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String id, String pool, Closure onSuccess, Closure onFailure)  {
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
        if (id != null) {
            queryParams.put("id", id)
        }
        if (pool != null) {
            queryParams.put("pool", pool)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3TickDTO.class )

    }

    def uniswapV3GetTokenHourDatasHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/tokenHourDatas/historical"

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
        if (id != null) {
            queryParams.put("id", id)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3TokenHourDataDTO.class )

    }

    def uniswapV3GetTokenV3DayDatasHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/tokenV3DayDatas/historical"

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
        if (id != null) {
            queryParams.put("id", id)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3TokenV3DayDataDTO.class )

    }

    def uniswapV3GetTokensHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String id, String symbol, String name, Closure onSuccess, Closure onFailure)  {
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
        if (id != null) {
            queryParams.put("id", id)
        }
        if (symbol != null) {
            queryParams.put("symbol", symbol)
        }
        if (name != null) {
            queryParams.put("name", name)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3TokenDTO.class )

    }

    def uniswapV3GetTransactionsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String id, Closure onSuccess, Closure onFailure)  {
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
        if (id != null) {
            queryParams.put("id", id)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3TransactionDTO.class )

    }

    def uniswapV3GetUniswapDayDatasHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/uniswapDayDatas/historical"

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
        if (id != null) {
            queryParams.put("id", id)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3UniswapDayDataDTO.class )

    }

    def uniswapV3MintsCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/mints/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3MintDTO.class )

    }

    def uniswapV3PoolDayDatasCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/poolDayDatas/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3PoolDayDataDTO.class )

    }

    def uniswapV3PoolHourDatasCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/poolHourDatas/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3PoolHourDataDTO.class )

    }

    def uniswapV3PoolsCurrent ( String id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/pools/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (id != null) {
            queryParams.put("id", id)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3PoolDTO.class )

    }

    def uniswapV3PositionSnapshotsCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/positionSnapshots/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3PositionSnapshotDTO.class )

    }

    def uniswapV3PositionsCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/positions/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3PositionDTO.class )

    }

    def uniswapV3SwapsCurrent ( String pool, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/swaps/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (pool != null) {
            queryParams.put("pool", pool)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3SwapDTO.class )

    }

    def uniswapV3TickDayDatasCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/tickDayDatas/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3TickDayDataDTO.class )

    }

    def uniswapV3TicksCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/ticks/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3TickDTO.class )

    }

    def uniswapV3TokenHourDatasCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/tokenHourDatas/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3TokenHourDataDTO.class )

    }

    def uniswapV3TokenV3DayDatasCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/tokenV3DayDatas/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3TokenV3DayDataDTO.class )

    }

    def uniswapV3TokensCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/tokens/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3TokenDTO.class )

    }

    def uniswapV3TransactionsCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/transactions/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3TransactionDTO.class )

    }

    def uniswapV3UniswapDayDatasCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/uniswapDayDatas/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3UniswapDayDataDTO.class )

    }

}
