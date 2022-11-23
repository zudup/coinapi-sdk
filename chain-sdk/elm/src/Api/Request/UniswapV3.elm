{-
   On Chain - REST API
    This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

   The version of the OpenAPI document: v1
   Contact: support@coinapi.io

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git

   DO NOT EDIT THIS FILE MANUALLY.

   For more info on generating Elm code, see https://eriktim.github.io/openapi-elm/
-}


module Api.Request.UniswapV3 exposing
    ( uniswapV3BundlesCurrent
    , uniswapV3BurnsCurrent
    , uniswapV3FactoriesCurrent
    , uniswapV3GetBundlesHistorical
    , uniswapV3GetBurnsHistorical
    , uniswapV3GetFactoriesHistorical
    , uniswapV3GetMintsHistorical
    , uniswapV3GetPoolDayDataHistorical
    , uniswapV3GetPoolHourDataHistorical
    , uniswapV3GetPoolsHistorical
    , uniswapV3GetPositionSnapshotsHistorical
    , uniswapV3GetPositionsHistorical
    , uniswapV3GetSwapsHistorical
    , uniswapV3GetTickDayDataHistorical
    , uniswapV3GetTicksHistorical
    , uniswapV3GetTokenHourDataHistorical
    , uniswapV3GetTokenV3DayDataHistorical
    , uniswapV3GetTokensHistorical
    , uniswapV3GetTransactionsHistorical
    , uniswapV3GetUniswapDayDataHistorical
    , uniswapV3MintsCurrent
    , uniswapV3PoolDayDataCurrent
    , uniswapV3PoolHourDataCurrent
    , uniswapV3PoolsCurrent
    , uniswapV3PositionSnapshotsCurrent
    , uniswapV3PositionsCurrent
    , uniswapV3SwapsCurrent
    , uniswapV3TickDayDataCurrent
    , uniswapV3TicksCurrent
    , uniswapV3TokenHourDataCurrent
    , uniswapV3TokenV3DayDataCurrent
    , uniswapV3TokensCurrent
    , uniswapV3TransactionsCurrent
    , uniswapV3UniswapDayDataCurrent
    )

import Api
import Api.Data
import Api.Time exposing (Posix)
import Dict
import Http
import Json.Decode
import Json.Encode



{-| Gets bundles.
-}
uniswapV3BundlesCurrent : Api.Request (List Api.Data.UniswapV3BundleDTO)
uniswapV3BundlesCurrent =
    Api.request
        "GET"
        "/dapps/uniswapv3/bundles/current"
        []
        []
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3BundleDTODecoder)



{-| Gets burns.
-}
uniswapV3BurnsCurrent : Api.Request (List Api.Data.UniswapV3BurnDTO)
uniswapV3BurnsCurrent =
    Api.request
        "GET"
        "/dapps/uniswapv3/burns/current"
        []
        []
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3BurnDTODecoder)



{-| Gets factories.
-}
uniswapV3FactoriesCurrent : Api.Request (List Api.Data.UniswapV3FactoryDTO)
uniswapV3FactoriesCurrent =
    Api.request
        "GET"
        "/dapps/uniswapv3/factories/current"
        []
        []
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3FactoryDTODecoder)



{-| Gets bundles.
-}
uniswapV3GetBundlesHistorical : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Api.Request (List Api.Data.UniswapV3BundleDTO)
uniswapV3GetBundlesHistorical startBlock_query endBlock_query startDate_query endDate_query id_query =
    Api.request
        "GET"
        "/dapps/uniswapv3/bundles/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "id", Maybe.map identity id_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3BundleDTODecoder)



{-| Gets burns.
-}
uniswapV3GetBurnsHistorical : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Maybe String -> Maybe String -> Maybe String -> Api.Request (List Api.Data.UniswapV3BurnDTO)
uniswapV3GetBurnsHistorical startBlock_query endBlock_query startDate_query endDate_query id_query pool_query token0_query token1_query =
    Api.request
        "GET"
        "/dapps/uniswapv3/burns/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "id", Maybe.map identity id_query ), ( "pool", Maybe.map identity pool_query ), ( "token_0", Maybe.map identity token0_query ), ( "token_1", Maybe.map identity token1_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3BurnDTODecoder)



{-| Gets factories.
-}
uniswapV3GetFactoriesHistorical : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Api.Request (List Api.Data.UniswapV3FactoryDTO)
uniswapV3GetFactoriesHistorical startBlock_query endBlock_query startDate_query endDate_query id_query =
    Api.request
        "GET"
        "/dapps/uniswapv3/factories/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "id", Maybe.map identity id_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3FactoryDTODecoder)



{-| Gets mints.
-}
uniswapV3GetMintsHistorical : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Maybe String -> Maybe String -> Maybe String -> Api.Request (List Api.Data.UniswapV3MintDTO)
uniswapV3GetMintsHistorical startBlock_query endBlock_query startDate_query endDate_query id_query pool_query token0_query token1_query =
    Api.request
        "GET"
        "/dapps/uniswapv3/mints/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "id", Maybe.map identity id_query ), ( "pool", Maybe.map identity pool_query ), ( "token_0", Maybe.map identity token0_query ), ( "token_1", Maybe.map identity token1_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3MintDTODecoder)



{-| Gets poolDayData.
-}
uniswapV3GetPoolDayDataHistorical : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Maybe String -> Api.Request (List Api.Data.UniswapV3PoolDayDataDTO)
uniswapV3GetPoolDayDataHistorical startBlock_query endBlock_query startDate_query endDate_query id_query pool_query =
    Api.request
        "GET"
        "/dapps/uniswapv3/poolDayData/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "id", Maybe.map identity id_query ), ( "pool", Maybe.map identity pool_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3PoolDayDataDTODecoder)



{-| Gets poolHourData.
-}
uniswapV3GetPoolHourDataHistorical : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Maybe String -> Api.Request (List Api.Data.UniswapV3PoolHourDataDTO)
uniswapV3GetPoolHourDataHistorical startBlock_query endBlock_query startDate_query endDate_query id_query pool_query =
    Api.request
        "GET"
        "/dapps/uniswapv3/poolHourData/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "id", Maybe.map identity id_query ), ( "pool", Maybe.map identity pool_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3PoolHourDataDTODecoder)



{-| Gets pools.
-}
uniswapV3GetPoolsHistorical : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Maybe String -> Maybe String -> Api.Request (List Api.Data.UniswapV3PoolDTO)
uniswapV3GetPoolsHistorical startBlock_query endBlock_query startDate_query endDate_query id_query token0_query token1_query =
    Api.request
        "GET"
        "/dapps/uniswapv3/pools/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "id", Maybe.map identity id_query ), ( "token_0", Maybe.map identity token0_query ), ( "token_1", Maybe.map identity token1_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3PoolDTODecoder)



{-| Gets positionSnapshots.
-}
uniswapV3GetPositionSnapshotsHistorical : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Maybe String -> Api.Request (List Api.Data.UniswapV3PositionSnapshotDTO)
uniswapV3GetPositionSnapshotsHistorical startBlock_query endBlock_query startDate_query endDate_query id_query pool_query =
    Api.request
        "GET"
        "/dapps/uniswapv3/positionSnapshots/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "id", Maybe.map identity id_query ), ( "pool", Maybe.map identity pool_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3PositionSnapshotDTODecoder)



{-| Gets positions.
-}
uniswapV3GetPositionsHistorical : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Maybe String -> Maybe String -> Maybe String -> Api.Request (List Api.Data.UniswapV3PositionDTO)
uniswapV3GetPositionsHistorical startBlock_query endBlock_query startDate_query endDate_query id_query pool_query token0_query token1_query =
    Api.request
        "GET"
        "/dapps/uniswapv3/positions/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "id", Maybe.map identity id_query ), ( "pool", Maybe.map identity pool_query ), ( "token_0", Maybe.map identity token0_query ), ( "token_1", Maybe.map identity token1_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3PositionDTODecoder)



{-| Gets swaps.
-}
uniswapV3GetSwapsHistorical : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Maybe String -> Maybe String -> Maybe String -> Api.Request (List Api.Data.UniswapV3SwapDTO)
uniswapV3GetSwapsHistorical startBlock_query endBlock_query startDate_query endDate_query id_query pool_query token0_query token1_query =
    Api.request
        "GET"
        "/dapps/uniswapv3/swaps/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "id", Maybe.map identity id_query ), ( "pool", Maybe.map identity pool_query ), ( "token_0", Maybe.map identity token0_query ), ( "token_1", Maybe.map identity token1_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3SwapDTODecoder)



{-| Gets tickDayData.
-}
uniswapV3GetTickDayDataHistorical : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Maybe String -> Api.Request (List Api.Data.UniswapV3TickDayDataDTO)
uniswapV3GetTickDayDataHistorical startBlock_query endBlock_query startDate_query endDate_query id_query pool_query =
    Api.request
        "GET"
        "/dapps/uniswapv3/tickDayData/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "id", Maybe.map identity id_query ), ( "pool", Maybe.map identity pool_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3TickDayDataDTODecoder)



{-| Gets ticks.
-}
uniswapV3GetTicksHistorical : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Maybe String -> Api.Request (List Api.Data.UniswapV3TickDTO)
uniswapV3GetTicksHistorical startBlock_query endBlock_query startDate_query endDate_query id_query pool_query =
    Api.request
        "GET"
        "/dapps/uniswapv3/ticks/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "id", Maybe.map identity id_query ), ( "pool", Maybe.map identity pool_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3TickDTODecoder)



{-| Gets tokenHourData.
-}
uniswapV3GetTokenHourDataHistorical : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Api.Request (List Api.Data.UniswapV3TokenHourDataDTO)
uniswapV3GetTokenHourDataHistorical startBlock_query endBlock_query startDate_query endDate_query id_query =
    Api.request
        "GET"
        "/dapps/uniswapv3/tokenHourData/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "id", Maybe.map identity id_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3TokenHourDataDTODecoder)



{-| Gets tokenV3DayData.
-}
uniswapV3GetTokenV3DayDataHistorical : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Api.Request (List Api.Data.UniswapV3TokenV3DayDataDTO)
uniswapV3GetTokenV3DayDataHistorical startBlock_query endBlock_query startDate_query endDate_query id_query =
    Api.request
        "GET"
        "/dapps/uniswapv3/tokenV3DayData/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "id", Maybe.map identity id_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3TokenV3DayDataDTODecoder)



{-| Gets tokens.
-}
uniswapV3GetTokensHistorical : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Maybe String -> Maybe String -> Api.Request (List Api.Data.UniswapV3TokenDTO)
uniswapV3GetTokensHistorical startBlock_query endBlock_query startDate_query endDate_query id_query symbol_query name_query =
    Api.request
        "GET"
        "/dapps/uniswapv3/tokens/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "id", Maybe.map identity id_query ), ( "symbol", Maybe.map identity symbol_query ), ( "name", Maybe.map identity name_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3TokenDTODecoder)



{-| Gets transactions.
-}
uniswapV3GetTransactionsHistorical : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Api.Request (List Api.Data.UniswapV3TransactionDTO)
uniswapV3GetTransactionsHistorical startBlock_query endBlock_query startDate_query endDate_query id_query =
    Api.request
        "GET"
        "/dapps/uniswapv3/transactions/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "id", Maybe.map identity id_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3TransactionDTODecoder)



{-| Gets uniswapDayData.
-}
uniswapV3GetUniswapDayDataHistorical : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Api.Request (List Api.Data.UniswapV3UniswapDayDataDTO)
uniswapV3GetUniswapDayDataHistorical startBlock_query endBlock_query startDate_query endDate_query id_query =
    Api.request
        "GET"
        "/dapps/uniswapv3/uniswapDayData/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "id", Maybe.map identity id_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3UniswapDayDataDTODecoder)



{-| Gets mints.
-}
uniswapV3MintsCurrent : Api.Request (List Api.Data.UniswapV3MintDTO)
uniswapV3MintsCurrent =
    Api.request
        "GET"
        "/dapps/uniswapv3/mints/current"
        []
        []
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3MintDTODecoder)



{-| Gets poolDayData.
-}
uniswapV3PoolDayDataCurrent : Api.Request (List Api.Data.UniswapV3PoolDayDataDTO)
uniswapV3PoolDayDataCurrent =
    Api.request
        "GET"
        "/dapps/uniswapv3/poolDayData/current"
        []
        []
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3PoolDayDataDTODecoder)



{-| Gets poolHourData.
-}
uniswapV3PoolHourDataCurrent : Api.Request (List Api.Data.UniswapV3PoolHourDataDTO)
uniswapV3PoolHourDataCurrent =
    Api.request
        "GET"
        "/dapps/uniswapv3/poolHourData/current"
        []
        []
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3PoolHourDataDTODecoder)



{-| Gets pools.
-}
uniswapV3PoolsCurrent : Maybe String -> Api.Request (List Api.Data.UniswapV3PoolDTO)
uniswapV3PoolsCurrent id_query =
    Api.request
        "GET"
        "/dapps/uniswapv3/pools/current"
        []
        [ ( "id", Maybe.map identity id_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3PoolDTODecoder)



{-| Gets positionSnapshots.
-}
uniswapV3PositionSnapshotsCurrent : Api.Request (List Api.Data.UniswapV3PositionSnapshotDTO)
uniswapV3PositionSnapshotsCurrent =
    Api.request
        "GET"
        "/dapps/uniswapv3/positionSnapshots/current"
        []
        []
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3PositionSnapshotDTODecoder)



{-| Gets positions.
-}
uniswapV3PositionsCurrent : Api.Request (List Api.Data.UniswapV3PositionDTO)
uniswapV3PositionsCurrent =
    Api.request
        "GET"
        "/dapps/uniswapv3/positions/current"
        []
        []
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3PositionDTODecoder)



{-| Gets swaps.
-}
uniswapV3SwapsCurrent : Maybe String -> Api.Request (List Api.Data.UniswapV3SwapDTO)
uniswapV3SwapsCurrent pool_query =
    Api.request
        "GET"
        "/dapps/uniswapv3/swaps/current"
        []
        [ ( "pool", Maybe.map identity pool_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3SwapDTODecoder)



{-| Gets tickDayData.
-}
uniswapV3TickDayDataCurrent : Api.Request (List Api.Data.UniswapV3TickDayDataDTO)
uniswapV3TickDayDataCurrent =
    Api.request
        "GET"
        "/dapps/uniswapv3/tickDayData/current"
        []
        []
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3TickDayDataDTODecoder)



{-| Gets ticks.
-}
uniswapV3TicksCurrent : Api.Request (List Api.Data.UniswapV3TickDTO)
uniswapV3TicksCurrent =
    Api.request
        "GET"
        "/dapps/uniswapv3/ticks/current"
        []
        []
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3TickDTODecoder)



{-| Gets tokenHourData.
-}
uniswapV3TokenHourDataCurrent : Api.Request (List Api.Data.UniswapV3TokenHourDataDTO)
uniswapV3TokenHourDataCurrent =
    Api.request
        "GET"
        "/dapps/uniswapv3/tokenHourData/current"
        []
        []
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3TokenHourDataDTODecoder)



{-| Gets tokenV3DayData.
-}
uniswapV3TokenV3DayDataCurrent : Api.Request (List Api.Data.UniswapV3TokenV3DayDataDTO)
uniswapV3TokenV3DayDataCurrent =
    Api.request
        "GET"
        "/dapps/uniswapv3/tokenV3DayData/current"
        []
        []
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3TokenV3DayDataDTODecoder)



{-| Gets tokens.
-}
uniswapV3TokensCurrent : Api.Request (List Api.Data.UniswapV3TokenDTO)
uniswapV3TokensCurrent =
    Api.request
        "GET"
        "/dapps/uniswapv3/tokens/current"
        []
        []
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3TokenDTODecoder)



{-| Gets transactions.
-}
uniswapV3TransactionsCurrent : Api.Request (List Api.Data.UniswapV3TransactionDTO)
uniswapV3TransactionsCurrent =
    Api.request
        "GET"
        "/dapps/uniswapv3/transactions/current"
        []
        []
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3TransactionDTODecoder)



{-| Gets uniswapDayData.
-}
uniswapV3UniswapDayDataCurrent : Api.Request (List Api.Data.UniswapV3UniswapDayDataDTO)
uniswapV3UniswapDayDataCurrent =
    Api.request
        "GET"
        "/dapps/uniswapv3/uniswapDayData/current"
        []
        []
        []
        Nothing
        (Json.Decode.list Api.Data.uniswapV3UniswapDayDataDTODecoder)
