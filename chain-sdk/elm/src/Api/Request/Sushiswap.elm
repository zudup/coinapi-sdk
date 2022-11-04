{-
   OnChain API
    This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

   The version of the OpenAPI document: v1
   Contact: support@coinapi.io

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git

   DO NOT EDIT THIS FILE MANUALLY.

   For more info on generating Elm code, see https://eriktim.github.io/openapi-elm/
-}


module Api.Request.Sushiswap exposing
    ( dappsSushiswapBundlesHistoricalGet
    , dappsSushiswapBurnsHistoricalGet
    , dappsSushiswapDayDataHistoricalGet
    , dappsSushiswapFactoryHistoricalGet
    , dappsSushiswapHourDataHistoricalGet
    , dappsSushiswapLiquidityPositionHistoricalGet
    , dappsSushiswapLiquidityPositionSnapshotsHistoricalGet
    , dappsSushiswapMintsHistoricalGet
    , dappsSushiswapPoolDayDataHistoricalGet
    , dappsSushiswapPoolHourDataHistoricalGet
    , dappsSushiswapTokenDayDataHistoricalGet
    , dappsSushiswapTransactionsHistoricalGet
    , dappsSushiswapUsersHistoricalGet
    , sushiswapGetPoolsCurrent
    , sushiswapGetPoolsHistorical
    , sushiswapGetSwapsCurrent
    , sushiswapGetSwapsHistorical
    , sushiswapGetTokensCurrent
    , sushiswapGetTokensHistorical
    )

import Api
import Api.Data
import Api.Time exposing (Posix)
import Dict
import Http
import Json.Decode
import Json.Encode



dappsSushiswapBundlesHistoricalGet : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Api.Request ()
dappsSushiswapBundlesHistoricalGet startBlock_query endBlock_query startDate_query endDate_query =
    Api.request
        "GET"
        "/dapps/sushiswap/bundles/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ) ]
        []
        Nothing
        (Json.Decode.succeed ())



dappsSushiswapBurnsHistoricalGet : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Api.Request ()
dappsSushiswapBurnsHistoricalGet startBlock_query endBlock_query startDate_query endDate_query poolId_query =
    Api.request
        "GET"
        "/dapps/sushiswap/burns/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "poolId", Maybe.map identity poolId_query ) ]
        []
        Nothing
        (Json.Decode.succeed ())



dappsSushiswapDayDataHistoricalGet : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Api.Request ()
dappsSushiswapDayDataHistoricalGet startBlock_query endBlock_query startDate_query endDate_query =
    Api.request
        "GET"
        "/dapps/sushiswap/dayData/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ) ]
        []
        Nothing
        (Json.Decode.succeed ())



dappsSushiswapFactoryHistoricalGet : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Api.Request ()
dappsSushiswapFactoryHistoricalGet startBlock_query endBlock_query startDate_query endDate_query =
    Api.request
        "GET"
        "/dapps/sushiswap/factory/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ) ]
        []
        Nothing
        (Json.Decode.succeed ())



dappsSushiswapHourDataHistoricalGet : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Api.Request ()
dappsSushiswapHourDataHistoricalGet startBlock_query endBlock_query startDate_query endDate_query =
    Api.request
        "GET"
        "/dapps/sushiswap/hourData/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ) ]
        []
        Nothing
        (Json.Decode.succeed ())



dappsSushiswapLiquidityPositionHistoricalGet : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Api.Request ()
dappsSushiswapLiquidityPositionHistoricalGet startBlock_query endBlock_query startDate_query endDate_query poolId_query =
    Api.request
        "GET"
        "/dapps/sushiswap/liquidityPosition/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "poolId", Maybe.map identity poolId_query ) ]
        []
        Nothing
        (Json.Decode.succeed ())



dappsSushiswapLiquidityPositionSnapshotsHistoricalGet : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Api.Request ()
dappsSushiswapLiquidityPositionSnapshotsHistoricalGet startBlock_query endBlock_query startDate_query endDate_query poolId_query =
    Api.request
        "GET"
        "/dapps/sushiswap/liquidityPositionSnapshots/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "poolId", Maybe.map identity poolId_query ) ]
        []
        Nothing
        (Json.Decode.succeed ())



dappsSushiswapMintsHistoricalGet : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Api.Request ()
dappsSushiswapMintsHistoricalGet startBlock_query endBlock_query startDate_query endDate_query poolId_query =
    Api.request
        "GET"
        "/dapps/sushiswap/mints/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "poolId", Maybe.map identity poolId_query ) ]
        []
        Nothing
        (Json.Decode.succeed ())



dappsSushiswapPoolDayDataHistoricalGet : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Api.Request ()
dappsSushiswapPoolDayDataHistoricalGet startBlock_query endBlock_query startDate_query endDate_query poolId_query =
    Api.request
        "GET"
        "/dapps/sushiswap/poolDayData/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "poolId", Maybe.map identity poolId_query ) ]
        []
        Nothing
        (Json.Decode.succeed ())



dappsSushiswapPoolHourDataHistoricalGet : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Api.Request ()
dappsSushiswapPoolHourDataHistoricalGet startBlock_query endBlock_query startDate_query endDate_query poolId_query =
    Api.request
        "GET"
        "/dapps/sushiswap/poolHourData/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "poolId", Maybe.map identity poolId_query ) ]
        []
        Nothing
        (Json.Decode.succeed ())



dappsSushiswapTokenDayDataHistoricalGet : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Api.Request ()
dappsSushiswapTokenDayDataHistoricalGet startBlock_query endBlock_query startDate_query endDate_query tokenId_query =
    Api.request
        "GET"
        "/dapps/sushiswap/tokenDayData/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "tokenId", Maybe.map identity tokenId_query ) ]
        []
        Nothing
        (Json.Decode.succeed ())



dappsSushiswapTransactionsHistoricalGet : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Api.Request ()
dappsSushiswapTransactionsHistoricalGet startBlock_query endBlock_query startDate_query endDate_query =
    Api.request
        "GET"
        "/dapps/sushiswap/transactions/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ) ]
        []
        Nothing
        (Json.Decode.succeed ())



dappsSushiswapUsersHistoricalGet : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Api.Request ()
dappsSushiswapUsersHistoricalGet startBlock_query endBlock_query startDate_query endDate_query =
    Api.request
        "GET"
        "/dapps/sushiswap/users/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ) ]
        []
        Nothing
        (Json.Decode.succeed ())



{-| GetPools (current)
-}
sushiswapGetPoolsCurrent : Api.Request (List Api.Data.SushiswapPairDTO)
sushiswapGetPoolsCurrent =
    Api.request
        "GET"
        "/dapps/sushiswap/pools/current"
        []
        []
        []
        Nothing
        (Json.Decode.list Api.Data.sushiswapPairDTODecoder)



{-| GetPools (historical)
-}
sushiswapGetPoolsHistorical : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Api.Request (List Api.Data.SushiswapPairDTO)
sushiswapGetPoolsHistorical startBlock_query endBlock_query startDate_query endDate_query poolId_query =
    Api.request
        "GET"
        "/dapps/sushiswap/pools/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "poolId", Maybe.map identity poolId_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.sushiswapPairDTODecoder)



{-| GetSwaps (current)
-}
sushiswapGetSwapsCurrent : Api.Request (List Api.Data.SushiswapSwapDTO)
sushiswapGetSwapsCurrent =
    Api.request
        "GET"
        "/dapps/sushiswap/swaps/current"
        []
        []
        []
        Nothing
        (Json.Decode.list Api.Data.sushiswapSwapDTODecoder)



{-| GetSwaps (historical)
-}
sushiswapGetSwapsHistorical : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Api.Request (List Api.Data.SushiswapSwapDTO)
sushiswapGetSwapsHistorical startBlock_query endBlock_query startDate_query endDate_query poolId_query =
    Api.request
        "GET"
        "/dapps/sushiswap/swaps/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "poolId", Maybe.map identity poolId_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.sushiswapSwapDTODecoder)



{-| GetTokens (current)
-}
sushiswapGetTokensCurrent : Api.Request (List Api.Data.SushiswapTokenDTO)
sushiswapGetTokensCurrent =
    Api.request
        "GET"
        "/dapps/sushiswap/tokens/current"
        []
        []
        []
        Nothing
        (Json.Decode.list Api.Data.sushiswapTokenDTODecoder)



{-| GetTokens (historical)
-}
sushiswapGetTokensHistorical : Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Api.Request (List Api.Data.SushiswapTokenDTO)
sushiswapGetTokensHistorical startBlock_query endBlock_query startDate_query endDate_query tokenId_query =
    Api.request
        "GET"
        "/dapps/sushiswap/tokens/historical"
        []
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "tokenId", Maybe.map identity tokenId_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.sushiswapTokenDTODecoder)
