{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE PartialTypeSignatures #-}

module Main where

import Data.Typeable (Proxy(..))
import Test.Hspec
import Test.Hspec.QuickCheck

import PropMime
import Instances ()

import OnChain.Model
import OnChain.MimeTypes

main :: IO ()
main =
  hspec $ modifyMaxSize (const 10) $ do
    describe "JSON instances" $ do
      pure ()
      propMimeEq MimeJSON (Proxy :: Proxy BigInteger)
      propMimeEq MimeJSON (Proxy :: Proxy BundleV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy BurnV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy ETradeAggressiveSide)
      propMimeEq MimeJSON (Proxy :: Proxy FactoryV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy MintV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy PairDTO)
      propMimeEq MimeJSON (Proxy :: Proxy PairV2DTO)
      propMimeEq MimeJSON (Proxy :: Proxy PoolDayDataV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy PoolHourDataV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy PoolV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy PositionSnapshotV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy PositionV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy SwapDTO)
      propMimeEq MimeJSON (Proxy :: Proxy SwapV2DTO)
      propMimeEq MimeJSON (Proxy :: Proxy SwapV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy TickDayDataV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy TickV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy TokenDTO)
      propMimeEq MimeJSON (Proxy :: Proxy TokenHourDataV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy TokenV2DTO)
      propMimeEq MimeJSON (Proxy :: Proxy TokenV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy TokenV3DayDataDTO)
      propMimeEq MimeJSON (Proxy :: Proxy UniswapDayDataV3DTO)
      
