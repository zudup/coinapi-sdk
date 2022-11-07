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
      propMimeEq MimeJSON (Proxy :: Proxy NumericsBigInteger)
      propMimeEq MimeJSON (Proxy :: Proxy SushiswapBundleDTO)
      propMimeEq MimeJSON (Proxy :: Proxy SushiswapBurnDTO)
      propMimeEq MimeJSON (Proxy :: Proxy SushiswapDayDataDTO)
      propMimeEq MimeJSON (Proxy :: Proxy SushiswapFactoryDTO)
      propMimeEq MimeJSON (Proxy :: Proxy SushiswapHourDataDTO)
      propMimeEq MimeJSON (Proxy :: Proxy SushiswapLiquidityPositionDTO)
      propMimeEq MimeJSON (Proxy :: Proxy SushiswapLiquidityPositionSnapshotDTO)
      propMimeEq MimeJSON (Proxy :: Proxy SushiswapMintDTO)
      propMimeEq MimeJSON (Proxy :: Proxy SushiswapPairDTO)
      propMimeEq MimeJSON (Proxy :: Proxy SushiswapPairDayDataDTO)
      propMimeEq MimeJSON (Proxy :: Proxy SushiswapPairHourDataDTO)
      propMimeEq MimeJSON (Proxy :: Proxy SushiswapSwapDTO)
      propMimeEq MimeJSON (Proxy :: Proxy SushiswapTokenDTO)
      propMimeEq MimeJSON (Proxy :: Proxy SushiswapTokenDayDataDTO)
      propMimeEq MimeJSON (Proxy :: Proxy SushiswapTransactionDTO)
      propMimeEq MimeJSON (Proxy :: Proxy SushiswapUserDTO)
      propMimeEq MimeJSON (Proxy :: Proxy TransactionsETradeAggressiveSide)
      propMimeEq MimeJSON (Proxy :: Proxy UniswapV2PairV2DTO)
      propMimeEq MimeJSON (Proxy :: Proxy UniswapV2SwapV2DTO)
      propMimeEq MimeJSON (Proxy :: Proxy UniswapV2TokenV2DTO)
      propMimeEq MimeJSON (Proxy :: Proxy UniswapV3BundleV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy UniswapV3BurnV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy UniswapV3FactoryV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy UniswapV3MintV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy UniswapV3PoolDayDataV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy UniswapV3PoolHourDataV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy UniswapV3PoolV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy UniswapV3PositionSnapshotV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy UniswapV3PositionV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy UniswapV3SwapV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy UniswapV3TickDayDataV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy UniswapV3TickV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy UniswapV3TokenHourDataV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy UniswapV3TokenV3DTO)
      propMimeEq MimeJSON (Proxy :: Proxy UniswapV3TokenV3DayDataDTO)
      propMimeEq MimeJSON (Proxy :: Proxy UniswapV3UniswapDayDataV3DTO)
      
