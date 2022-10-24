{-
   OnChain API

    This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

   OpenAPI Version: 3.0.1
   OnChain API API version: v1
   Contact: support@coinapi.io
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : OnChain.API.Mints
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module OnChain.API.Mints where

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


-- ** Mints

-- *** chainsChainIdDappsSushiswapMintsHistoricalGet

-- | @GET \/chains\/{chain_id}\/dapps\/sushiswap\/mints\/historical@
-- 
chainsChainIdDappsSushiswapMintsHistoricalGet
  :: ChainId -- ^ "chainId"
  -> OnChainRequest ChainsChainIdDappsSushiswapMintsHistoricalGet MimeNoContent NoContent MimeNoContent
chainsChainIdDappsSushiswapMintsHistoricalGet (ChainId chainId) =
  _mkRequest "GET" ["/chains/",toPath chainId,"/dapps/sushiswap/mints/historical"]

data ChainsChainIdDappsSushiswapMintsHistoricalGet  
instance HasOptionalParam ChainsChainIdDappsSushiswapMintsHistoricalGet StartBlock where
  applyOptionalParam req (StartBlock xs) =
    req `addQuery` toQuery ("startBlock", Just xs)
instance HasOptionalParam ChainsChainIdDappsSushiswapMintsHistoricalGet EndBlock where
  applyOptionalParam req (EndBlock xs) =
    req `addQuery` toQuery ("endBlock", Just xs)
instance HasOptionalParam ChainsChainIdDappsSushiswapMintsHistoricalGet StartDate where
  applyOptionalParam req (StartDate xs) =
    req `addQuery` toQuery ("startDate", Just xs)
instance HasOptionalParam ChainsChainIdDappsSushiswapMintsHistoricalGet EndDate where
  applyOptionalParam req (EndDate xs) =
    req `addQuery` toQuery ("endDate", Just xs)
instance HasOptionalParam ChainsChainIdDappsSushiswapMintsHistoricalGet PoolId where
  applyOptionalParam req (PoolId xs) =
    req `addQuery` toQuery ("poolId", Just xs)
instance Produces ChainsChainIdDappsSushiswapMintsHistoricalGet MimeNoContent


-- *** chainsChainIdDappsUniswapv2MintsHistoricalGet

-- | @GET \/chains\/{chain_id}\/dapps\/uniswapv2\/mints\/historical@
-- 
chainsChainIdDappsUniswapv2MintsHistoricalGet
  :: ChainId -- ^ "chainId"
  -> OnChainRequest ChainsChainIdDappsUniswapv2MintsHistoricalGet MimeNoContent NoContent MimeNoContent
chainsChainIdDappsUniswapv2MintsHistoricalGet (ChainId chainId) =
  _mkRequest "GET" ["/chains/",toPath chainId,"/dapps/uniswapv2/mints/historical"]

data ChainsChainIdDappsUniswapv2MintsHistoricalGet  
instance HasOptionalParam ChainsChainIdDappsUniswapv2MintsHistoricalGet StartBlock where
  applyOptionalParam req (StartBlock xs) =
    req `addQuery` toQuery ("startBlock", Just xs)
instance HasOptionalParam ChainsChainIdDappsUniswapv2MintsHistoricalGet EndBlock where
  applyOptionalParam req (EndBlock xs) =
    req `addQuery` toQuery ("endBlock", Just xs)
instance HasOptionalParam ChainsChainIdDappsUniswapv2MintsHistoricalGet StartDate where
  applyOptionalParam req (StartDate xs) =
    req `addQuery` toQuery ("startDate", Just xs)
instance HasOptionalParam ChainsChainIdDappsUniswapv2MintsHistoricalGet EndDate where
  applyOptionalParam req (EndDate xs) =
    req `addQuery` toQuery ("endDate", Just xs)
instance HasOptionalParam ChainsChainIdDappsUniswapv2MintsHistoricalGet PoolId where
  applyOptionalParam req (PoolId xs) =
    req `addQuery` toQuery ("poolId", Just xs)
instance Produces ChainsChainIdDappsUniswapv2MintsHistoricalGet MimeNoContent


-- *** chainsChainIdDappsUniswapv3MintsHistoricalGet

-- | @GET \/chains\/{chain_id}\/dapps\/uniswapv3\/mints\/historical@
-- 
chainsChainIdDappsUniswapv3MintsHistoricalGet
  :: ChainId -- ^ "chainId"
  -> OnChainRequest ChainsChainIdDappsUniswapv3MintsHistoricalGet MimeNoContent NoContent MimeNoContent
chainsChainIdDappsUniswapv3MintsHistoricalGet (ChainId chainId) =
  _mkRequest "GET" ["/chains/",toPath chainId,"/dapps/uniswapv3/mints/historical"]

data ChainsChainIdDappsUniswapv3MintsHistoricalGet  
instance HasOptionalParam ChainsChainIdDappsUniswapv3MintsHistoricalGet StartBlock where
  applyOptionalParam req (StartBlock xs) =
    req `addQuery` toQuery ("startBlock", Just xs)
instance HasOptionalParam ChainsChainIdDappsUniswapv3MintsHistoricalGet EndBlock where
  applyOptionalParam req (EndBlock xs) =
    req `addQuery` toQuery ("endBlock", Just xs)
instance HasOptionalParam ChainsChainIdDappsUniswapv3MintsHistoricalGet StartDate where
  applyOptionalParam req (StartDate xs) =
    req `addQuery` toQuery ("startDate", Just xs)
instance HasOptionalParam ChainsChainIdDappsUniswapv3MintsHistoricalGet EndDate where
  applyOptionalParam req (EndDate xs) =
    req `addQuery` toQuery ("endDate", Just xs)
instance HasOptionalParam ChainsChainIdDappsUniswapv3MintsHistoricalGet PoolId where
  applyOptionalParam req (PoolId xs) =
    req `addQuery` toQuery ("poolId", Just xs)
instance Produces ChainsChainIdDappsUniswapv3MintsHistoricalGet MimeNoContent

