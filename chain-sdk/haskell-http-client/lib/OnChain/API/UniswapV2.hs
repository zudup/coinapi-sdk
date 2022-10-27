{-
   OnChain API

    This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

   OpenAPI Version: 3.0.1
   OnChain API API version: v1
   Contact: support@coinapi.io
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : OnChain.API.UniswapV2
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module OnChain.API.UniswapV2 where

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


-- ** UniswapV2

-- *** dappsUniswapv2BundlesHistoricalGet

-- | @GET \/dapps\/uniswapv2\/bundles\/historical@
-- 
dappsUniswapv2BundlesHistoricalGet
  :: OnChainRequest DappsUniswapv2BundlesHistoricalGet MimeNoContent NoContent MimeNoContent
dappsUniswapv2BundlesHistoricalGet =
  _mkRequest "GET" ["/dapps/uniswapv2/bundles/historical"]

data DappsUniswapv2BundlesHistoricalGet  
instance HasOptionalParam DappsUniswapv2BundlesHistoricalGet StartBlock where
  applyOptionalParam req (StartBlock xs) =
    req `addQuery` toQuery ("startBlock", Just xs)
instance HasOptionalParam DappsUniswapv2BundlesHistoricalGet EndBlock where
  applyOptionalParam req (EndBlock xs) =
    req `addQuery` toQuery ("endBlock", Just xs)
instance HasOptionalParam DappsUniswapv2BundlesHistoricalGet StartDate where
  applyOptionalParam req (StartDate xs) =
    req `addQuery` toQuery ("startDate", Just xs)
instance HasOptionalParam DappsUniswapv2BundlesHistoricalGet EndDate where
  applyOptionalParam req (EndDate xs) =
    req `addQuery` toQuery ("endDate", Just xs)
instance Produces DappsUniswapv2BundlesHistoricalGet MimeNoContent


-- *** dappsUniswapv2BurnsHistoricalGet

-- | @GET \/dapps\/uniswapv2\/burns\/historical@
-- 
dappsUniswapv2BurnsHistoricalGet
  :: OnChainRequest DappsUniswapv2BurnsHistoricalGet MimeNoContent NoContent MimeNoContent
dappsUniswapv2BurnsHistoricalGet =
  _mkRequest "GET" ["/dapps/uniswapv2/burns/historical"]

data DappsUniswapv2BurnsHistoricalGet  
instance HasOptionalParam DappsUniswapv2BurnsHistoricalGet StartBlock where
  applyOptionalParam req (StartBlock xs) =
    req `addQuery` toQuery ("startBlock", Just xs)
instance HasOptionalParam DappsUniswapv2BurnsHistoricalGet EndBlock where
  applyOptionalParam req (EndBlock xs) =
    req `addQuery` toQuery ("endBlock", Just xs)
instance HasOptionalParam DappsUniswapv2BurnsHistoricalGet StartDate where
  applyOptionalParam req (StartDate xs) =
    req `addQuery` toQuery ("startDate", Just xs)
instance HasOptionalParam DappsUniswapv2BurnsHistoricalGet EndDate where
  applyOptionalParam req (EndDate xs) =
    req `addQuery` toQuery ("endDate", Just xs)
instance HasOptionalParam DappsUniswapv2BurnsHistoricalGet PoolId where
  applyOptionalParam req (PoolId xs) =
    req `addQuery` toQuery ("poolId", Just xs)
instance Produces DappsUniswapv2BurnsHistoricalGet MimeNoContent


-- *** dappsUniswapv2DayDataHistoricalGet

-- | @GET \/dapps\/uniswapv2\/dayData\/historical@
-- 
dappsUniswapv2DayDataHistoricalGet
  :: OnChainRequest DappsUniswapv2DayDataHistoricalGet MimeNoContent NoContent MimeNoContent
dappsUniswapv2DayDataHistoricalGet =
  _mkRequest "GET" ["/dapps/uniswapv2/dayData/historical"]

data DappsUniswapv2DayDataHistoricalGet  
instance HasOptionalParam DappsUniswapv2DayDataHistoricalGet StartBlock where
  applyOptionalParam req (StartBlock xs) =
    req `addQuery` toQuery ("startBlock", Just xs)
instance HasOptionalParam DappsUniswapv2DayDataHistoricalGet EndBlock where
  applyOptionalParam req (EndBlock xs) =
    req `addQuery` toQuery ("endBlock", Just xs)
instance HasOptionalParam DappsUniswapv2DayDataHistoricalGet StartDate where
  applyOptionalParam req (StartDate xs) =
    req `addQuery` toQuery ("startDate", Just xs)
instance HasOptionalParam DappsUniswapv2DayDataHistoricalGet EndDate where
  applyOptionalParam req (EndDate xs) =
    req `addQuery` toQuery ("endDate", Just xs)
instance Produces DappsUniswapv2DayDataHistoricalGet MimeNoContent


-- *** dappsUniswapv2FactoryHistoricalGet

-- | @GET \/dapps\/uniswapv2\/factory\/historical@
-- 
dappsUniswapv2FactoryHistoricalGet
  :: OnChainRequest DappsUniswapv2FactoryHistoricalGet MimeNoContent NoContent MimeNoContent
dappsUniswapv2FactoryHistoricalGet =
  _mkRequest "GET" ["/dapps/uniswapv2/factory/historical"]

data DappsUniswapv2FactoryHistoricalGet  
instance HasOptionalParam DappsUniswapv2FactoryHistoricalGet StartBlock where
  applyOptionalParam req (StartBlock xs) =
    req `addQuery` toQuery ("startBlock", Just xs)
instance HasOptionalParam DappsUniswapv2FactoryHistoricalGet EndBlock where
  applyOptionalParam req (EndBlock xs) =
    req `addQuery` toQuery ("endBlock", Just xs)
instance HasOptionalParam DappsUniswapv2FactoryHistoricalGet StartDate where
  applyOptionalParam req (StartDate xs) =
    req `addQuery` toQuery ("startDate", Just xs)
instance HasOptionalParam DappsUniswapv2FactoryHistoricalGet EndDate where
  applyOptionalParam req (EndDate xs) =
    req `addQuery` toQuery ("endDate", Just xs)
instance Produces DappsUniswapv2FactoryHistoricalGet MimeNoContent


-- *** dappsUniswapv2LiquidityPositionHistoricalGet

-- | @GET \/dapps\/uniswapv2\/liquidityPosition\/historical@
-- 
dappsUniswapv2LiquidityPositionHistoricalGet
  :: OnChainRequest DappsUniswapv2LiquidityPositionHistoricalGet MimeNoContent NoContent MimeNoContent
dappsUniswapv2LiquidityPositionHistoricalGet =
  _mkRequest "GET" ["/dapps/uniswapv2/liquidityPosition/historical"]

data DappsUniswapv2LiquidityPositionHistoricalGet  
instance HasOptionalParam DappsUniswapv2LiquidityPositionHistoricalGet StartBlock where
  applyOptionalParam req (StartBlock xs) =
    req `addQuery` toQuery ("startBlock", Just xs)
instance HasOptionalParam DappsUniswapv2LiquidityPositionHistoricalGet EndBlock where
  applyOptionalParam req (EndBlock xs) =
    req `addQuery` toQuery ("endBlock", Just xs)
instance HasOptionalParam DappsUniswapv2LiquidityPositionHistoricalGet StartDate where
  applyOptionalParam req (StartDate xs) =
    req `addQuery` toQuery ("startDate", Just xs)
instance HasOptionalParam DappsUniswapv2LiquidityPositionHistoricalGet EndDate where
  applyOptionalParam req (EndDate xs) =
    req `addQuery` toQuery ("endDate", Just xs)
instance HasOptionalParam DappsUniswapv2LiquidityPositionHistoricalGet PoolId where
  applyOptionalParam req (PoolId xs) =
    req `addQuery` toQuery ("poolId", Just xs)
instance Produces DappsUniswapv2LiquidityPositionHistoricalGet MimeNoContent


-- *** dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet

-- | @GET \/dapps\/uniswapv2\/liquidityPositionSnapshots\/historical@
-- 
dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet
  :: OnChainRequest DappsUniswapv2LiquidityPositionSnapshotsHistoricalGet MimeNoContent NoContent MimeNoContent
dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet =
  _mkRequest "GET" ["/dapps/uniswapv2/liquidityPositionSnapshots/historical"]

data DappsUniswapv2LiquidityPositionSnapshotsHistoricalGet  
instance HasOptionalParam DappsUniswapv2LiquidityPositionSnapshotsHistoricalGet StartBlock where
  applyOptionalParam req (StartBlock xs) =
    req `addQuery` toQuery ("startBlock", Just xs)
instance HasOptionalParam DappsUniswapv2LiquidityPositionSnapshotsHistoricalGet EndBlock where
  applyOptionalParam req (EndBlock xs) =
    req `addQuery` toQuery ("endBlock", Just xs)
instance HasOptionalParam DappsUniswapv2LiquidityPositionSnapshotsHistoricalGet StartDate where
  applyOptionalParam req (StartDate xs) =
    req `addQuery` toQuery ("startDate", Just xs)
instance HasOptionalParam DappsUniswapv2LiquidityPositionSnapshotsHistoricalGet EndDate where
  applyOptionalParam req (EndDate xs) =
    req `addQuery` toQuery ("endDate", Just xs)
instance HasOptionalParam DappsUniswapv2LiquidityPositionSnapshotsHistoricalGet PoolId where
  applyOptionalParam req (PoolId xs) =
    req `addQuery` toQuery ("poolId", Just xs)
instance Produces DappsUniswapv2LiquidityPositionSnapshotsHistoricalGet MimeNoContent


-- *** dappsUniswapv2MintsHistoricalGet

-- | @GET \/dapps\/uniswapv2\/mints\/historical@
-- 
dappsUniswapv2MintsHistoricalGet
  :: OnChainRequest DappsUniswapv2MintsHistoricalGet MimeNoContent NoContent MimeNoContent
dappsUniswapv2MintsHistoricalGet =
  _mkRequest "GET" ["/dapps/uniswapv2/mints/historical"]

data DappsUniswapv2MintsHistoricalGet  
instance HasOptionalParam DappsUniswapv2MintsHistoricalGet StartBlock where
  applyOptionalParam req (StartBlock xs) =
    req `addQuery` toQuery ("startBlock", Just xs)
instance HasOptionalParam DappsUniswapv2MintsHistoricalGet EndBlock where
  applyOptionalParam req (EndBlock xs) =
    req `addQuery` toQuery ("endBlock", Just xs)
instance HasOptionalParam DappsUniswapv2MintsHistoricalGet StartDate where
  applyOptionalParam req (StartDate xs) =
    req `addQuery` toQuery ("startDate", Just xs)
instance HasOptionalParam DappsUniswapv2MintsHistoricalGet EndDate where
  applyOptionalParam req (EndDate xs) =
    req `addQuery` toQuery ("endDate", Just xs)
instance HasOptionalParam DappsUniswapv2MintsHistoricalGet PoolId where
  applyOptionalParam req (PoolId xs) =
    req `addQuery` toQuery ("poolId", Just xs)
instance Produces DappsUniswapv2MintsHistoricalGet MimeNoContent


-- *** dappsUniswapv2PoiHistoricalGet

-- | @GET \/dapps\/uniswapv2\/poi\/historical@
-- 
dappsUniswapv2PoiHistoricalGet
  :: OnChainRequest DappsUniswapv2PoiHistoricalGet MimeNoContent NoContent MimeNoContent
dappsUniswapv2PoiHistoricalGet =
  _mkRequest "GET" ["/dapps/uniswapv2/poi/historical"]

data DappsUniswapv2PoiHistoricalGet  
instance HasOptionalParam DappsUniswapv2PoiHistoricalGet StartBlock where
  applyOptionalParam req (StartBlock xs) =
    req `addQuery` toQuery ("startBlock", Just xs)
instance HasOptionalParam DappsUniswapv2PoiHistoricalGet EndBlock where
  applyOptionalParam req (EndBlock xs) =
    req `addQuery` toQuery ("endBlock", Just xs)
instance HasOptionalParam DappsUniswapv2PoiHistoricalGet StartDate where
  applyOptionalParam req (StartDate xs) =
    req `addQuery` toQuery ("startDate", Just xs)
instance HasOptionalParam DappsUniswapv2PoiHistoricalGet EndDate where
  applyOptionalParam req (EndDate xs) =
    req `addQuery` toQuery ("endDate", Just xs)
instance Produces DappsUniswapv2PoiHistoricalGet MimeNoContent


-- *** dappsUniswapv2PoolDayDataHistoricalGet

-- | @GET \/dapps\/uniswapv2\/poolDayData\/historical@
-- 
dappsUniswapv2PoolDayDataHistoricalGet
  :: OnChainRequest DappsUniswapv2PoolDayDataHistoricalGet MimeNoContent NoContent MimeNoContent
dappsUniswapv2PoolDayDataHistoricalGet =
  _mkRequest "GET" ["/dapps/uniswapv2/poolDayData/historical"]

data DappsUniswapv2PoolDayDataHistoricalGet  
instance HasOptionalParam DappsUniswapv2PoolDayDataHistoricalGet StartBlock where
  applyOptionalParam req (StartBlock xs) =
    req `addQuery` toQuery ("startBlock", Just xs)
instance HasOptionalParam DappsUniswapv2PoolDayDataHistoricalGet EndBlock where
  applyOptionalParam req (EndBlock xs) =
    req `addQuery` toQuery ("endBlock", Just xs)
instance HasOptionalParam DappsUniswapv2PoolDayDataHistoricalGet StartDate where
  applyOptionalParam req (StartDate xs) =
    req `addQuery` toQuery ("startDate", Just xs)
instance HasOptionalParam DappsUniswapv2PoolDayDataHistoricalGet EndDate where
  applyOptionalParam req (EndDate xs) =
    req `addQuery` toQuery ("endDate", Just xs)
instance HasOptionalParam DappsUniswapv2PoolDayDataHistoricalGet PoolId where
  applyOptionalParam req (PoolId xs) =
    req `addQuery` toQuery ("poolId", Just xs)
instance Produces DappsUniswapv2PoolDayDataHistoricalGet MimeNoContent


-- *** dappsUniswapv2PoolHourDataHistoricalGet

-- | @GET \/dapps\/uniswapv2\/poolHourData\/historical@
-- 
dappsUniswapv2PoolHourDataHistoricalGet
  :: OnChainRequest DappsUniswapv2PoolHourDataHistoricalGet MimeNoContent NoContent MimeNoContent
dappsUniswapv2PoolHourDataHistoricalGet =
  _mkRequest "GET" ["/dapps/uniswapv2/poolHourData/historical"]

data DappsUniswapv2PoolHourDataHistoricalGet  
instance HasOptionalParam DappsUniswapv2PoolHourDataHistoricalGet StartBlock where
  applyOptionalParam req (StartBlock xs) =
    req `addQuery` toQuery ("startBlock", Just xs)
instance HasOptionalParam DappsUniswapv2PoolHourDataHistoricalGet EndBlock where
  applyOptionalParam req (EndBlock xs) =
    req `addQuery` toQuery ("endBlock", Just xs)
instance HasOptionalParam DappsUniswapv2PoolHourDataHistoricalGet StartDate where
  applyOptionalParam req (StartDate xs) =
    req `addQuery` toQuery ("startDate", Just xs)
instance HasOptionalParam DappsUniswapv2PoolHourDataHistoricalGet EndDate where
  applyOptionalParam req (EndDate xs) =
    req `addQuery` toQuery ("endDate", Just xs)
instance HasOptionalParam DappsUniswapv2PoolHourDataHistoricalGet PoolId where
  applyOptionalParam req (PoolId xs) =
    req `addQuery` toQuery ("poolId", Just xs)
instance Produces DappsUniswapv2PoolHourDataHistoricalGet MimeNoContent


-- *** dappsUniswapv2PoolsCurrentGet

-- | @GET \/dapps\/uniswapv2\/pools\/current@
-- 
-- GetPools
-- 
dappsUniswapv2PoolsCurrentGet
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainRequest DappsUniswapv2PoolsCurrentGet MimeNoContent [PairV2DTO] accept
dappsUniswapv2PoolsCurrentGet  _ =
  _mkRequest "GET" ["/dapps/uniswapv2/pools/current"]

data DappsUniswapv2PoolsCurrentGet  

-- | /Optional Param/ "filter_pool_id" - Filter pool id
instance HasOptionalParam DappsUniswapv2PoolsCurrentGet FilterPoolId where
  applyOptionalParam req (FilterPoolId xs) =
    req `addQuery` toQuery ("filter_pool_id", Just xs)
-- | @application/json@
instance Produces DappsUniswapv2PoolsCurrentGet MimeJSON
-- | @text/json@
instance Produces DappsUniswapv2PoolsCurrentGet MimeTextJson
-- | @text/plain@
instance Produces DappsUniswapv2PoolsCurrentGet MimePlainText


-- *** dappsUniswapv2PoolsHistoricalGet

-- | @GET \/dapps\/uniswapv2\/pools\/historical@
-- 
dappsUniswapv2PoolsHistoricalGet
  :: OnChainRequest DappsUniswapv2PoolsHistoricalGet MimeNoContent NoContent MimeNoContent
dappsUniswapv2PoolsHistoricalGet =
  _mkRequest "GET" ["/dapps/uniswapv2/pools/historical"]

data DappsUniswapv2PoolsHistoricalGet  
instance HasOptionalParam DappsUniswapv2PoolsHistoricalGet StartBlock where
  applyOptionalParam req (StartBlock xs) =
    req `addQuery` toQuery ("startBlock", Just xs)
instance HasOptionalParam DappsUniswapv2PoolsHistoricalGet EndBlock where
  applyOptionalParam req (EndBlock xs) =
    req `addQuery` toQuery ("endBlock", Just xs)
instance HasOptionalParam DappsUniswapv2PoolsHistoricalGet StartDate where
  applyOptionalParam req (StartDate xs) =
    req `addQuery` toQuery ("startDate", Just xs)
instance HasOptionalParam DappsUniswapv2PoolsHistoricalGet EndDate where
  applyOptionalParam req (EndDate xs) =
    req `addQuery` toQuery ("endDate", Just xs)
instance HasOptionalParam DappsUniswapv2PoolsHistoricalGet PoolId where
  applyOptionalParam req (PoolId xs) =
    req `addQuery` toQuery ("poolId", Just xs)
instance Produces DappsUniswapv2PoolsHistoricalGet MimeNoContent


-- *** dappsUniswapv2SwapsCurrentGet

-- | @GET \/dapps\/uniswapv2\/swaps\/current@
-- 
-- GetSwaps
-- 
dappsUniswapv2SwapsCurrentGet
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainRequest DappsUniswapv2SwapsCurrentGet MimeNoContent [SwapV2DTO] accept
dappsUniswapv2SwapsCurrentGet  _ =
  _mkRequest "GET" ["/dapps/uniswapv2/swaps/current"]

data DappsUniswapv2SwapsCurrentGet  
-- | @application/json@
instance Produces DappsUniswapv2SwapsCurrentGet MimeJSON
-- | @text/json@
instance Produces DappsUniswapv2SwapsCurrentGet MimeTextJson
-- | @text/plain@
instance Produces DappsUniswapv2SwapsCurrentGet MimePlainText


-- *** dappsUniswapv2SwapsHistoricalGet

-- | @GET \/dapps\/uniswapv2\/swaps\/historical@
-- 
dappsUniswapv2SwapsHistoricalGet
  :: OnChainRequest DappsUniswapv2SwapsHistoricalGet MimeNoContent NoContent MimeNoContent
dappsUniswapv2SwapsHistoricalGet =
  _mkRequest "GET" ["/dapps/uniswapv2/swaps/historical"]

data DappsUniswapv2SwapsHistoricalGet  
instance HasOptionalParam DappsUniswapv2SwapsHistoricalGet StartBlock where
  applyOptionalParam req (StartBlock xs) =
    req `addQuery` toQuery ("startBlock", Just xs)
instance HasOptionalParam DappsUniswapv2SwapsHistoricalGet EndBlock where
  applyOptionalParam req (EndBlock xs) =
    req `addQuery` toQuery ("endBlock", Just xs)
instance HasOptionalParam DappsUniswapv2SwapsHistoricalGet StartDate where
  applyOptionalParam req (StartDate xs) =
    req `addQuery` toQuery ("startDate", Just xs)
instance HasOptionalParam DappsUniswapv2SwapsHistoricalGet EndDate where
  applyOptionalParam req (EndDate xs) =
    req `addQuery` toQuery ("endDate", Just xs)
instance HasOptionalParam DappsUniswapv2SwapsHistoricalGet PoolId where
  applyOptionalParam req (PoolId xs) =
    req `addQuery` toQuery ("poolId", Just xs)
instance Produces DappsUniswapv2SwapsHistoricalGet MimeNoContent


-- *** dappsUniswapv2TokenDayDataHistoricalGet

-- | @GET \/dapps\/uniswapv2\/tokenDayData\/historical@
-- 
dappsUniswapv2TokenDayDataHistoricalGet
  :: OnChainRequest DappsUniswapv2TokenDayDataHistoricalGet MimeNoContent NoContent MimeNoContent
dappsUniswapv2TokenDayDataHistoricalGet =
  _mkRequest "GET" ["/dapps/uniswapv2/tokenDayData/historical"]

data DappsUniswapv2TokenDayDataHistoricalGet  
instance HasOptionalParam DappsUniswapv2TokenDayDataHistoricalGet StartBlock where
  applyOptionalParam req (StartBlock xs) =
    req `addQuery` toQuery ("startBlock", Just xs)
instance HasOptionalParam DappsUniswapv2TokenDayDataHistoricalGet EndBlock where
  applyOptionalParam req (EndBlock xs) =
    req `addQuery` toQuery ("endBlock", Just xs)
instance HasOptionalParam DappsUniswapv2TokenDayDataHistoricalGet StartDate where
  applyOptionalParam req (StartDate xs) =
    req `addQuery` toQuery ("startDate", Just xs)
instance HasOptionalParam DappsUniswapv2TokenDayDataHistoricalGet EndDate where
  applyOptionalParam req (EndDate xs) =
    req `addQuery` toQuery ("endDate", Just xs)
instance HasOptionalParam DappsUniswapv2TokenDayDataHistoricalGet TokenId where
  applyOptionalParam req (TokenId xs) =
    req `addQuery` toQuery ("tokenId", Just xs)
instance Produces DappsUniswapv2TokenDayDataHistoricalGet MimeNoContent


-- *** dappsUniswapv2TokensCurrentGet

-- | @GET \/dapps\/uniswapv2\/tokens\/current@
-- 
-- GetTokens
-- 
dappsUniswapv2TokensCurrentGet
  :: Accept accept -- ^ request accept ('MimeType')
  -> OnChainRequest DappsUniswapv2TokensCurrentGet MimeNoContent [TokenV2DTO] accept
dappsUniswapv2TokensCurrentGet  _ =
  _mkRequest "GET" ["/dapps/uniswapv2/tokens/current"]

data DappsUniswapv2TokensCurrentGet  
-- | @application/json@
instance Produces DappsUniswapv2TokensCurrentGet MimeJSON
-- | @text/json@
instance Produces DappsUniswapv2TokensCurrentGet MimeTextJson
-- | @text/plain@
instance Produces DappsUniswapv2TokensCurrentGet MimePlainText


-- *** dappsUniswapv2TokensHistoricalGet

-- | @GET \/dapps\/uniswapv2\/tokens\/historical@
-- 
dappsUniswapv2TokensHistoricalGet
  :: OnChainRequest DappsUniswapv2TokensHistoricalGet MimeNoContent NoContent MimeNoContent
dappsUniswapv2TokensHistoricalGet =
  _mkRequest "GET" ["/dapps/uniswapv2/tokens/historical"]

data DappsUniswapv2TokensHistoricalGet  
instance HasOptionalParam DappsUniswapv2TokensHistoricalGet StartBlock where
  applyOptionalParam req (StartBlock xs) =
    req `addQuery` toQuery ("startBlock", Just xs)
instance HasOptionalParam DappsUniswapv2TokensHistoricalGet EndBlock where
  applyOptionalParam req (EndBlock xs) =
    req `addQuery` toQuery ("endBlock", Just xs)
instance HasOptionalParam DappsUniswapv2TokensHistoricalGet StartDate where
  applyOptionalParam req (StartDate xs) =
    req `addQuery` toQuery ("startDate", Just xs)
instance HasOptionalParam DappsUniswapv2TokensHistoricalGet EndDate where
  applyOptionalParam req (EndDate xs) =
    req `addQuery` toQuery ("endDate", Just xs)
instance HasOptionalParam DappsUniswapv2TokensHistoricalGet TokenId where
  applyOptionalParam req (TokenId xs) =
    req `addQuery` toQuery ("tokenId", Just xs)
instance Produces DappsUniswapv2TokensHistoricalGet MimeNoContent


-- *** dappsUniswapv2TransactionsHistoricalGet

-- | @GET \/dapps\/uniswapv2\/transactions\/historical@
-- 
dappsUniswapv2TransactionsHistoricalGet
  :: OnChainRequest DappsUniswapv2TransactionsHistoricalGet MimeNoContent NoContent MimeNoContent
dappsUniswapv2TransactionsHistoricalGet =
  _mkRequest "GET" ["/dapps/uniswapv2/transactions/historical"]

data DappsUniswapv2TransactionsHistoricalGet  
instance HasOptionalParam DappsUniswapv2TransactionsHistoricalGet StartBlock where
  applyOptionalParam req (StartBlock xs) =
    req `addQuery` toQuery ("startBlock", Just xs)
instance HasOptionalParam DappsUniswapv2TransactionsHistoricalGet EndBlock where
  applyOptionalParam req (EndBlock xs) =
    req `addQuery` toQuery ("endBlock", Just xs)
instance HasOptionalParam DappsUniswapv2TransactionsHistoricalGet StartDate where
  applyOptionalParam req (StartDate xs) =
    req `addQuery` toQuery ("startDate", Just xs)
instance HasOptionalParam DappsUniswapv2TransactionsHistoricalGet EndDate where
  applyOptionalParam req (EndDate xs) =
    req `addQuery` toQuery ("endDate", Just xs)
instance Produces DappsUniswapv2TransactionsHistoricalGet MimeNoContent


-- *** dappsUniswapv2UsersHistoricalGet

-- | @GET \/dapps\/uniswapv2\/users\/historical@
-- 
dappsUniswapv2UsersHistoricalGet
  :: OnChainRequest DappsUniswapv2UsersHistoricalGet MimeNoContent NoContent MimeNoContent
dappsUniswapv2UsersHistoricalGet =
  _mkRequest "GET" ["/dapps/uniswapv2/users/historical"]

data DappsUniswapv2UsersHistoricalGet  
instance HasOptionalParam DappsUniswapv2UsersHistoricalGet StartBlock where
  applyOptionalParam req (StartBlock xs) =
    req `addQuery` toQuery ("startBlock", Just xs)
instance HasOptionalParam DappsUniswapv2UsersHistoricalGet EndBlock where
  applyOptionalParam req (EndBlock xs) =
    req `addQuery` toQuery ("endBlock", Just xs)
instance HasOptionalParam DappsUniswapv2UsersHistoricalGet StartDate where
  applyOptionalParam req (StartDate xs) =
    req `addQuery` toQuery ("startDate", Just xs)
instance HasOptionalParam DappsUniswapv2UsersHistoricalGet EndDate where
  applyOptionalParam req (EndDate xs) =
    req `addQuery` toQuery ("endDate", Just xs)
instance Produces DappsUniswapv2UsersHistoricalGet MimeNoContent

