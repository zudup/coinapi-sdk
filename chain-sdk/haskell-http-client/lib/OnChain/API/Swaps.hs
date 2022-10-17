{-
   OnChain API

    This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

   OpenAPI Version: 3.0.1
   OnChain API API version: v1
   Contact: support@coinapi.io
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : OnChain.API.Swaps
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module OnChain.API.Swaps where

import OnChain.Core
import OnChain.MimeTypes
import OnChain.Model as M

import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Proxy as P (Proxy(..))
import qualified Data.Set as Set
import qualified Data.String as P
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Encoding as TL
import qualified Data.Time as TI
import qualified Network.HTTP.Client.MultipartFormData as NH
import qualified Network.HTTP.Media as ME
import qualified Network.HTTP.Types as NH
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Data.Text (Text)
import GHC.Base ((<|>))

import Prelude ((==),(/=),($), (.),(<$>),(<*>),(>>=),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

-- * Operations


-- ** Swaps

-- *** chainsChainIdDappsCurveSwapsHistoricalGet

-- | @GET \/chains\/{chain_id}\/dapps\/curve\/swaps\/historical@
-- 
chainsChainIdDappsCurveSwapsHistoricalGet
  :: ChainId -- ^ "chainId"
  -> OnChainRequest ChainsChainIdDappsCurveSwapsHistoricalGet MimeNoContent NoContent MimeNoContent
chainsChainIdDappsCurveSwapsHistoricalGet (ChainId chainId) =
  _mkRequest "GET" ["/chains/",toPath chainId,"/dapps/curve/swaps/historical"]

data ChainsChainIdDappsCurveSwapsHistoricalGet  
instance HasOptionalParam ChainsChainIdDappsCurveSwapsHistoricalGet StartBlock where
  applyOptionalParam req (StartBlock xs) =
    req `addQuery` toQuery ("startBlock", Just xs)
instance HasOptionalParam ChainsChainIdDappsCurveSwapsHistoricalGet EndBlock where
  applyOptionalParam req (EndBlock xs) =
    req `addQuery` toQuery ("endBlock", Just xs)
instance HasOptionalParam ChainsChainIdDappsCurveSwapsHistoricalGet StartDate where
  applyOptionalParam req (StartDate xs) =
    req `addQuery` toQuery ("startDate", Just xs)
instance HasOptionalParam ChainsChainIdDappsCurveSwapsHistoricalGet EndDate where
  applyOptionalParam req (EndDate xs) =
    req `addQuery` toQuery ("endDate", Just xs)
instance HasOptionalParam ChainsChainIdDappsCurveSwapsHistoricalGet PoolId where
  applyOptionalParam req (PoolId xs) =
    req `addQuery` toQuery ("poolId", Just xs)
instance Produces ChainsChainIdDappsCurveSwapsHistoricalGet MimeNoContent


-- *** chainsChainIdDappsSushiswapSwapsHistoricalGet

-- | @GET \/chains\/{chain_id}\/dapps\/sushiswap\/swaps\/historical@
-- 
chainsChainIdDappsSushiswapSwapsHistoricalGet
  :: ChainId -- ^ "chainId"
  -> OnChainRequest ChainsChainIdDappsSushiswapSwapsHistoricalGet MimeNoContent NoContent MimeNoContent
chainsChainIdDappsSushiswapSwapsHistoricalGet (ChainId chainId) =
  _mkRequest "GET" ["/chains/",toPath chainId,"/dapps/sushiswap/swaps/historical"]

data ChainsChainIdDappsSushiswapSwapsHistoricalGet  
instance HasOptionalParam ChainsChainIdDappsSushiswapSwapsHistoricalGet StartBlock where
  applyOptionalParam req (StartBlock xs) =
    req `addQuery` toQuery ("startBlock", Just xs)
instance HasOptionalParam ChainsChainIdDappsSushiswapSwapsHistoricalGet EndBlock where
  applyOptionalParam req (EndBlock xs) =
    req `addQuery` toQuery ("endBlock", Just xs)
instance HasOptionalParam ChainsChainIdDappsSushiswapSwapsHistoricalGet StartDate where
  applyOptionalParam req (StartDate xs) =
    req `addQuery` toQuery ("startDate", Just xs)
instance HasOptionalParam ChainsChainIdDappsSushiswapSwapsHistoricalGet EndDate where
  applyOptionalParam req (EndDate xs) =
    req `addQuery` toQuery ("endDate", Just xs)
instance HasOptionalParam ChainsChainIdDappsSushiswapSwapsHistoricalGet PoolId where
  applyOptionalParam req (PoolId xs) =
    req `addQuery` toQuery ("poolId", Just xs)
instance Produces ChainsChainIdDappsSushiswapSwapsHistoricalGet MimeNoContent


-- *** chainsChainIdDappsUniswapv2SwapsHistoricalGet

-- | @GET \/chains\/{chain_id}\/dapps\/uniswapv2\/swaps\/historical@
-- 
chainsChainIdDappsUniswapv2SwapsHistoricalGet
  :: ChainId -- ^ "chainId"
  -> OnChainRequest ChainsChainIdDappsUniswapv2SwapsHistoricalGet MimeNoContent NoContent MimeNoContent
chainsChainIdDappsUniswapv2SwapsHistoricalGet (ChainId chainId) =
  _mkRequest "GET" ["/chains/",toPath chainId,"/dapps/uniswapv2/swaps/historical"]

data ChainsChainIdDappsUniswapv2SwapsHistoricalGet  
instance HasOptionalParam ChainsChainIdDappsUniswapv2SwapsHistoricalGet StartBlock where
  applyOptionalParam req (StartBlock xs) =
    req `addQuery` toQuery ("startBlock", Just xs)
instance HasOptionalParam ChainsChainIdDappsUniswapv2SwapsHistoricalGet EndBlock where
  applyOptionalParam req (EndBlock xs) =
    req `addQuery` toQuery ("endBlock", Just xs)
instance HasOptionalParam ChainsChainIdDappsUniswapv2SwapsHistoricalGet StartDate where
  applyOptionalParam req (StartDate xs) =
    req `addQuery` toQuery ("startDate", Just xs)
instance HasOptionalParam ChainsChainIdDappsUniswapv2SwapsHistoricalGet EndDate where
  applyOptionalParam req (EndDate xs) =
    req `addQuery` toQuery ("endDate", Just xs)
instance HasOptionalParam ChainsChainIdDappsUniswapv2SwapsHistoricalGet PoolId where
  applyOptionalParam req (PoolId xs) =
    req `addQuery` toQuery ("poolId", Just xs)
instance Produces ChainsChainIdDappsUniswapv2SwapsHistoricalGet MimeNoContent


-- *** chainsChainIdDappsUniswapv3SwapsHistoricalGet

-- | @GET \/chains\/{chain_id}\/dapps\/uniswapv3\/swaps\/historical@
-- 
chainsChainIdDappsUniswapv3SwapsHistoricalGet
  :: ChainId -- ^ "chainId"
  -> OnChainRequest ChainsChainIdDappsUniswapv3SwapsHistoricalGet MimeNoContent NoContent MimeNoContent
chainsChainIdDappsUniswapv3SwapsHistoricalGet (ChainId chainId) =
  _mkRequest "GET" ["/chains/",toPath chainId,"/dapps/uniswapv3/swaps/historical"]

data ChainsChainIdDappsUniswapv3SwapsHistoricalGet  
instance HasOptionalParam ChainsChainIdDappsUniswapv3SwapsHistoricalGet StartBlock where
  applyOptionalParam req (StartBlock xs) =
    req `addQuery` toQuery ("startBlock", Just xs)
instance HasOptionalParam ChainsChainIdDappsUniswapv3SwapsHistoricalGet EndBlock where
  applyOptionalParam req (EndBlock xs) =
    req `addQuery` toQuery ("endBlock", Just xs)
instance HasOptionalParam ChainsChainIdDappsUniswapv3SwapsHistoricalGet StartDate where
  applyOptionalParam req (StartDate xs) =
    req `addQuery` toQuery ("startDate", Just xs)
instance HasOptionalParam ChainsChainIdDappsUniswapv3SwapsHistoricalGet EndDate where
  applyOptionalParam req (EndDate xs) =
    req `addQuery` toQuery ("endDate", Just xs)
instance HasOptionalParam ChainsChainIdDappsUniswapv3SwapsHistoricalGet PoolId where
  applyOptionalParam req (PoolId xs) =
    req `addQuery` toQuery ("poolId", Just xs)
instance Produces ChainsChainIdDappsUniswapv3SwapsHistoricalGet MimeNoContent
