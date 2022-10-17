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


module Api.Request.Swaps exposing
    ( chainsChainIdDappsCurveSwapsHistoricalGet
    , chainsChainIdDappsSushiswapSwapsHistoricalGet
    , chainsChainIdDappsUniswapv2SwapsHistoricalGet
    , chainsChainIdDappsUniswapv3SwapsHistoricalGet
    )

import Api
import Api.Data
import Api.Time exposing (Posix)
import Dict
import Http
import Json.Decode
import Json.Encode



chainsChainIdDappsCurveSwapsHistoricalGet : String -> Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Api.Request ()
chainsChainIdDappsCurveSwapsHistoricalGet chainId_path startBlock_query endBlock_query startDate_query endDate_query poolId_query =
    Api.request
        "GET"
        "/chains/{chain_id}/dapps/curve/swaps/historical"
        [ ( "chainId", identity chainId_path ) ]
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "poolId", Maybe.map identity poolId_query ) ]
        []
        Nothing
        (Json.Decode.succeed ())



chainsChainIdDappsSushiswapSwapsHistoricalGet : String -> Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Api.Request ()
chainsChainIdDappsSushiswapSwapsHistoricalGet chainId_path startBlock_query endBlock_query startDate_query endDate_query poolId_query =
    Api.request
        "GET"
        "/chains/{chain_id}/dapps/sushiswap/swaps/historical"
        [ ( "chainId", identity chainId_path ) ]
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "poolId", Maybe.map identity poolId_query ) ]
        []
        Nothing
        (Json.Decode.succeed ())



chainsChainIdDappsUniswapv2SwapsHistoricalGet : String -> Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Api.Request ()
chainsChainIdDappsUniswapv2SwapsHistoricalGet chainId_path startBlock_query endBlock_query startDate_query endDate_query poolId_query =
    Api.request
        "GET"
        "/chains/{chain_id}/dapps/uniswapv2/swaps/historical"
        [ ( "chainId", identity chainId_path ) ]
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "poolId", Maybe.map identity poolId_query ) ]
        []
        Nothing
        (Json.Decode.succeed ())



chainsChainIdDappsUniswapv3SwapsHistoricalGet : String -> Maybe Int -> Maybe Int -> Maybe Posix -> Maybe Posix -> Maybe String -> Api.Request ()
chainsChainIdDappsUniswapv3SwapsHistoricalGet chainId_path startBlock_query endBlock_query startDate_query endDate_query poolId_query =
    Api.request
        "GET"
        "/chains/{chain_id}/dapps/uniswapv3/swaps/historical"
        [ ( "chainId", identity chainId_path ) ]
        [ ( "startBlock", Maybe.map String.fromInt startBlock_query ), ( "endBlock", Maybe.map String.fromInt endBlock_query ), ( "startDate", Maybe.map Api.Time.dateTimeToString startDate_query ), ( "endDate", Maybe.map Api.Time.dateTimeToString endDate_query ), ( "poolId", Maybe.map identity poolId_query ) ]
        []
        Nothing
        (Json.Decode.succeed ())