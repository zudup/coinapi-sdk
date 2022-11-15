package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.UniswapV3BundleV3DTO
import org.openapitools.model.UniswapV3BurnV3DTO
import org.openapitools.model.UniswapV3FactoryV3DTO
import org.openapitools.model.UniswapV3MintV3DTO
import org.openapitools.model.UniswapV3PoolDayDataV3DTO
import org.openapitools.model.UniswapV3PoolHourDataV3DTO
import org.openapitools.model.UniswapV3PoolV3DTO
import org.openapitools.model.UniswapV3PositionSnapshotV3DTO
import org.openapitools.model.UniswapV3PositionV3DTO
import org.openapitools.model.UniswapV3SwapV3DTO
import org.openapitools.model.UniswapV3TickDayDataV3DTO
import org.openapitools.model.UniswapV3TickV3DTO
import org.openapitools.model.UniswapV3TokenHourDataV3DTO
import org.openapitools.model.UniswapV3TokenV3DTO
import org.openapitools.model.UniswapV3TokenV3DayDataDTO
import org.openapitools.model.UniswapV3TransactionV3DTO
import org.openapitools.model.UniswapV3UniswapDayDataV3DTO

class UniswapV3Api {
    String basePath = "https://onchain.coinapi.io"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def uniswapV3GetBundleV3DTOsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/BundleV3DTOs/historical"

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
                    UniswapV3BundleV3DTO.class )

    }

    def uniswapV3GetBundlesCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/bundles/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3BundleV3DTO.class )

    }

    def uniswapV3GetBundlesHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, Closure onSuccess, Closure onFailure)  {
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
                    "GET", "array",
                    UniswapV3BundleV3DTO.class )

    }

    def uniswapV3GetBurnV3DTOsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/BurnV3DTOs/historical"

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
                    UniswapV3BurnV3DTO.class )

    }

    def uniswapV3GetBurnsCurrent ( String filterPoolId, Closure onSuccess, Closure onFailure)  {
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
                    UniswapV3BurnV3DTO.class )

    }

    def uniswapV3GetBurnsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
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
                    "GET", "array",
                    UniswapV3BurnV3DTO.class )

    }

    def uniswapV3GetDayDataCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/dayData/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3UniswapDayDataV3DTO.class )

    }

    def uniswapV3GetDayDataHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, Closure onSuccess, Closure onFailure)  {
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
                    "GET", "array",
                    UniswapV3UniswapDayDataV3DTO.class )

    }

    def uniswapV3GetFactoryCurrent ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/factory/current"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UniswapV3FactoryV3DTO.class )

    }

    def uniswapV3GetFactoryHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, Closure onSuccess, Closure onFailure)  {
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
                    "GET", "array",
                    UniswapV3FactoryV3DTO.class )

    }

    def uniswapV3GetFactoryV3DTOsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/FactoryV3DTOs/historical"

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
                    UniswapV3FactoryV3DTO.class )

    }

    def uniswapV3GetMintV3DTOsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/MintV3DTOs/historical"

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
                    UniswapV3MintV3DTO.class )

    }

    def uniswapV3GetMintsCurrent ( String filterPoolId, Closure onSuccess, Closure onFailure)  {
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
                    UniswapV3MintV3DTO.class )

    }

    def uniswapV3GetMintsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
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
                    "GET", "array",
                    UniswapV3MintV3DTO.class )

    }

    def uniswapV3GetPoolDayDataV3DTOsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/PoolDayDataV3DTOs/historical"

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
                    UniswapV3PoolDayDataV3DTO.class )

    }

    def uniswapV3GetPoolHourDataV3DTOsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/PoolHourDataV3DTOs/historical"

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
                    UniswapV3PoolHourDataV3DTO.class )

    }

    def uniswapV3GetPoolV3DTOsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/PoolV3DTOs/historical"

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
                    UniswapV3PoolV3DTO.class )

    }

    def uniswapV3GetPoolsCurrent ( String filterPoolId, Closure onSuccess, Closure onFailure)  {
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
                    UniswapV3PoolV3DTO.class )

    }

    def uniswapV3GetPoolsDayDataCurrent ( String filterPoolId, Closure onSuccess, Closure onFailure)  {
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
                    UniswapV3PoolDayDataV3DTO.class )

    }

    def uniswapV3GetPoolsDayDataHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/poolsDayData/historical"

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
                    UniswapV3PoolDayDataV3DTO.class )

    }

    def uniswapV3GetPoolsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
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
                    "GET", "array",
                    UniswapV3PoolV3DTO.class )

    }

    def uniswapV3GetPoolsHourDataCurrent ( String filterPoolId, Closure onSuccess, Closure onFailure)  {
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
                    UniswapV3PoolHourDataV3DTO.class )

    }

    def uniswapV3GetPoolsHourDataHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/poolsHourData/historical"

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
                    UniswapV3PoolHourDataV3DTO.class )

    }

    def uniswapV3GetPositionSnapshotV3DTOsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/PositionSnapshotV3DTOs/historical"

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
                    UniswapV3PositionSnapshotV3DTO.class )

    }

    def uniswapV3GetPositionV3DTOsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/PositionV3DTOs/historical"

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
                    UniswapV3PositionV3DTO.class )

    }

    def uniswapV3GetPositionsCurrent ( String filterPoolId, Closure onSuccess, Closure onFailure)  {
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
                    UniswapV3PositionV3DTO.class )

    }

    def uniswapV3GetPositionsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
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
                    "GET", "array",
                    UniswapV3PositionV3DTO.class )

    }

    def uniswapV3GetPositionsSnaphotsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/positionsSnapshots/historical"

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
                    UniswapV3PositionSnapshotV3DTO.class )

    }

    def uniswapV3GetPositionsSnapshotsCurrent ( String filterPoolId, Closure onSuccess, Closure onFailure)  {
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
                    UniswapV3PositionSnapshotV3DTO.class )

    }

    def uniswapV3GetSwapV3DTOsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/SwapV3DTOs/historical"

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
                    UniswapV3SwapV3DTO.class )

    }

    def uniswapV3GetSwapsCurrent ( String filterPoolId, Closure onSuccess, Closure onFailure)  {
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
                    UniswapV3SwapV3DTO.class )

    }

    def uniswapV3GetSwapsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
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
                    "GET", "array",
                    UniswapV3SwapV3DTO.class )

    }

    def uniswapV3GetTickDayDataV3DTOsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/TickDayDataV3DTOs/historical"

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
                    UniswapV3TickDayDataV3DTO.class )

    }

    def uniswapV3GetTickV3DTOsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/TickV3DTOs/historical"

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
                    UniswapV3TickV3DTO.class )

    }

    def uniswapV3GetTicksCurrent ( String filterPoolId, Closure onSuccess, Closure onFailure)  {
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
                    UniswapV3TickV3DTO.class )

    }

    def uniswapV3GetTicksDayDataCurrent ( String filterPoolId, Closure onSuccess, Closure onFailure)  {
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
                    UniswapV3TickDayDataV3DTO.class )

    }

    def uniswapV3GetTicksDayDataHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/ticksDayData/historical"

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
                    UniswapV3TickDayDataV3DTO.class )

    }

    def uniswapV3GetTicksHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
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
                    "GET", "array",
                    UniswapV3TickV3DTO.class )

    }

    def uniswapV3GetTokenHourDataV3DTOsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/TokenHourDataV3DTOs/historical"

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
                    UniswapV3TokenHourDataV3DTO.class )

    }

    def uniswapV3GetTokenV3DTOsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/TokenV3DTOs/historical"

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
                    UniswapV3TokenV3DTO.class )

    }

    def uniswapV3GetTokenV3DayDataDTOsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/TokenV3DayDataDTOs/historical"

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
                    UniswapV3TokenV3DayDataDTO.class )

    }

    def uniswapV3GetTokensCurrent ( String filterTokenId, Closure onSuccess, Closure onFailure)  {
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
                    UniswapV3TokenV3DTO.class )

    }

    def uniswapV3GetTokensDayDataCurrent ( String filterTokenId, Closure onSuccess, Closure onFailure)  {
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
                    UniswapV3TokenV3DayDataDTO.class )

    }

    def uniswapV3GetTokensDayDataHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String tokenId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/tokensDayData/historical"

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
                    UniswapV3TokenV3DayDataDTO.class )

    }

    def uniswapV3GetTokensHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String tokenId, Closure onSuccess, Closure onFailure)  {
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
                    "GET", "array",
                    UniswapV3TokenV3DTO.class )

    }

    def uniswapV3GetTokensHourDataCurrent ( String filterTokenId, Closure onSuccess, Closure onFailure)  {
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
                    UniswapV3TokenHourDataV3DTO.class )

    }

    def uniswapV3GetTokensHourDataHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String tokenId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/tokensHourData/historical"

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
                    UniswapV3TokenHourDataV3DTO.class )

    }

    def uniswapV3GetTransactionV3DTOsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/TransactionV3DTOs/historical"

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
                    UniswapV3TransactionV3DTO.class )

    }

    def uniswapV3GetTransactionsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, Closure onSuccess, Closure onFailure)  {
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
                    "GET", "array",
                    UniswapV3TransactionV3DTO.class )

    }

    def uniswapV3GetUniswapDayDataV3DTOsHistorical ( Long startBlock, Long endBlock, Date startDate, Date endDate, String poolId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/dapps/uniswapv3/UniswapDayDataV3DTOs/historical"

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
                    UniswapV3UniswapDayDataV3DTO.class )

    }

}
