{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-unused-imports -fno-warn-unused-matches #-}

module Instances where

import OnChain.Model
import OnChain.Core

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.HashMap.Strict as HM
import qualified Data.Set as Set
import qualified Data.Text as T
import qualified Data.Time as TI
import qualified Data.Vector as V
import Data.String (fromString)

import Control.Monad
import Data.Char (isSpace)
import Data.List (sort)
import Test.QuickCheck

import ApproxEq

instance Arbitrary T.Text where
  arbitrary = T.pack <$> arbitrary

instance Arbitrary TI.Day where
  arbitrary = TI.ModifiedJulianDay . (2000 +) <$> arbitrary
  shrink = (TI.ModifiedJulianDay <$>) . shrink . TI.toModifiedJulianDay

instance Arbitrary TI.UTCTime where
  arbitrary =
    TI.UTCTime <$> arbitrary <*> (TI.secondsToDiffTime <$> choose (0, 86401))

instance Arbitrary BL.ByteString where
    arbitrary = BL.pack <$> arbitrary
    shrink xs = BL.pack <$> shrink (BL.unpack xs)

instance Arbitrary ByteArray where
    arbitrary = ByteArray <$> arbitrary
    shrink (ByteArray xs) = ByteArray <$> shrink xs

instance Arbitrary Binary where
    arbitrary = Binary <$> arbitrary
    shrink (Binary xs) = Binary <$> shrink xs

instance Arbitrary DateTime where
    arbitrary = DateTime <$> arbitrary
    shrink (DateTime xs) = DateTime <$> shrink xs

instance Arbitrary Date where
    arbitrary = Date <$> arbitrary
    shrink (Date xs) = Date <$> shrink xs

#if MIN_VERSION_aeson(2,0,0)
#else
-- | A naive Arbitrary instance for A.Value:
instance Arbitrary A.Value where
  arbitrary = arbitraryValue
#endif

arbitraryValue :: Gen A.Value
arbitraryValue =
  frequency [(3, simpleTypes), (1, arrayTypes), (1, objectTypes)]
    where
      simpleTypes :: Gen A.Value
      simpleTypes =
        frequency
          [ (1, return A.Null)
          , (2, liftM A.Bool (arbitrary :: Gen Bool))
          , (2, liftM (A.Number . fromIntegral) (arbitrary :: Gen Int))
          , (2, liftM (A.String . T.pack) (arbitrary :: Gen String))
          ]
      mapF (k, v) = (fromString k, v)
      simpleAndArrays = frequency [(1, sized sizedArray), (4, simpleTypes)]
      arrayTypes = sized sizedArray
      objectTypes = sized sizedObject
      sizedArray n = liftM (A.Array . V.fromList) $ replicateM n simpleTypes
      sizedObject n =
        liftM (A.object . map mapF) $
        replicateM n $ (,) <$> (arbitrary :: Gen String) <*> simpleAndArrays

-- | Checks if a given list has no duplicates in _O(n log n)_.
hasNoDups
  :: (Ord a)
  => [a] -> Bool
hasNoDups = go Set.empty
  where
    go _ [] = True
    go s (x:xs)
      | s' <- Set.insert x s
      , Set.size s' > Set.size s = go s' xs
      | otherwise = False

instance ApproxEq TI.Day where
  (=~) = (==)

arbitraryReduced :: Arbitrary a => Int -> Gen a
arbitraryReduced n = resize (n `div` 2) arbitrary

arbitraryReducedMaybe :: Arbitrary a => Int -> Gen (Maybe a)
arbitraryReducedMaybe 0 = elements [Nothing]
arbitraryReducedMaybe n = arbitraryReduced n

arbitraryReducedMaybeValue :: Int -> Gen (Maybe A.Value)
arbitraryReducedMaybeValue 0 = elements [Nothing]
arbitraryReducedMaybeValue n = do
  generated <- arbitraryReduced n
  if generated == Just A.Null
    then return Nothing
    else return generated

-- * Models

instance Arbitrary CurveExchangeDTO where
  arbitrary = sized genCurveExchangeDTO

genCurveExchangeDTO :: Int -> Gen CurveExchangeDTO
genCurveExchangeDTO n =
  CurveExchangeDTO
    <$> arbitraryReducedMaybe n -- curveExchangeDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveExchangeDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveExchangeDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveExchangeDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveExchangeDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveExchangeDTOBuyer :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveExchangeDTOReceiver :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveExchangeDTOTokenSold :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveExchangeDTOTokenBought :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveExchangeDTOAmountSold :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveExchangeDTOAmountBought :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveExchangeDTOBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveExchangeDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveExchangeDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveExchangeDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveExchangeDTOEvaluatedPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- curveExchangeDTOEvaluatedAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- curveExchangeDTOEvaluatedAggressor :: Maybe TransactionsETradeAggressiveSide
    <*> arbitraryReducedMaybe n -- curveExchangeDTOPoolId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveExchangeDTOTransactionId :: Maybe Text
  
instance Arbitrary DexTradeDTO where
  arbitrary = sized genDexTradeDTO

genDexTradeDTO :: Int -> Gen DexTradeDTO
genDexTradeDTO n =
  DexTradeDTO
    <$> arbitraryReducedMaybe n -- dexTradeDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexTradeDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexTradeDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexTradeDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOOrder :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOOwner :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOSellVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOBuyVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOTradeBatchId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOTradeEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOBuyToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOSellToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOCreateEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTORevertEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOTxHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOTxLogIndex :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexTradeDTOPoolId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOTransactionId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTradeDTOEvaluatedPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- dexTradeDTOEvaluatedAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- dexTradeDTOEvaluatedAggressor :: Maybe TransactionsETradeAggressiveSide
  
instance Arbitrary NumericsBigInteger where
  arbitrary = sized genNumericsBigInteger

genNumericsBigInteger :: Int -> Gen NumericsBigInteger
genNumericsBigInteger n =
  NumericsBigInteger
    <$> arbitraryReducedMaybe n -- numericsBigIntegerIsPowerOfTwo :: Maybe Bool
    <*> arbitraryReducedMaybe n -- numericsBigIntegerIsZero :: Maybe Bool
    <*> arbitraryReducedMaybe n -- numericsBigIntegerIsOne :: Maybe Bool
    <*> arbitraryReducedMaybe n -- numericsBigIntegerIsEven :: Maybe Bool
    <*> arbitraryReducedMaybe n -- numericsBigIntegerSign :: Maybe Int
  
instance Arbitrary SushiswapPairDTO where
  arbitrary = sized genSushiswapPairDTO

genSushiswapPairDTO :: Int -> Gen SushiswapPairDTO
genSushiswapPairDTO n =
  SushiswapPairDTO
    <$> arbitraryReducedMaybe n -- sushiswapPairDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapPairDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOFactory :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOReserve0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOReserve1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOTotalSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOReserveEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOReserveUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOTrackedReserveEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOToken0Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOToken1Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOLiquidityProviderCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapPairDTOEvaluatedAsk :: Maybe Double
  
instance Arbitrary SushiswapSwapDTO where
  arbitrary = sized genSushiswapSwapDTO

genSushiswapSwapDTO :: Int -> Gen SushiswapSwapDTO
genSushiswapSwapDTO n =
  SushiswapSwapDTO
    <$> arbitraryReducedMaybe n -- sushiswapSwapDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOSender :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOAmount0In :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOAmount1In :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOAmount0Out :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOAmount1Out :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOTo :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOLogIndex :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOAmountUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOPoolId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOTransactionId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOEvaluatedPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOEvaluatedAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- sushiswapSwapDTOEvaluatedAggressor :: Maybe TransactionsETradeAggressiveSide
  
instance Arbitrary SushiswapTokenDTO where
  arbitrary = sized genSushiswapTokenDTO

genSushiswapTokenDTO :: Int -> Gen SushiswapTokenDTO
genSushiswapTokenDTO n =
  SushiswapTokenDTO
    <$> arbitraryReducedMaybe n -- sushiswapTokenDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOFactory :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTODecimals :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOTotalSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTODerivedEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOWhitelistPairs :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapTokenDTOTokenSymbol :: Maybe Text
  
instance Arbitrary UniswapV2PairV2DTO where
  arbitrary = sized genUniswapV2PairV2DTO

genUniswapV2PairV2DTO :: Int -> Gen UniswapV2PairV2DTO
genUniswapV2PairV2DTO n =
  UniswapV2PairV2DTO
    <$> arbitraryReducedMaybe n -- uniswapV2PairV2DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2PairV2DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2PairV2DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2PairV2DTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2PairV2DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairV2DTOToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairV2DTOToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairV2DTOReserve0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairV2DTOReserve1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairV2DTOTotalSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairV2DTOReserveEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairV2DTOReserveUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairV2DTOTrackedReserveEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairV2DTOToken0Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairV2DTOToken1Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairV2DTOVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairV2DTOVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairV2DTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairV2DTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairV2DTOTxCount :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV2PairV2DTOCreatedAtTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2PairV2DTOLiquidityProviderCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairV2DTOEvaluatedAsk :: Maybe Double
  
instance Arbitrary UniswapV2SwapV2DTO where
  arbitrary = sized genUniswapV2SwapV2DTO

genUniswapV2SwapV2DTO :: Int -> Gen UniswapV2SwapV2DTO
genUniswapV2SwapV2DTO n =
  UniswapV2SwapV2DTO
    <$> arbitraryReducedMaybe n -- uniswapV2SwapV2DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2SwapV2DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2SwapV2DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2SwapV2DTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2SwapV2DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2SwapV2DTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2SwapV2DTOTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2SwapV2DTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2SwapV2DTOSender :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2SwapV2DTOFrom :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2SwapV2DTOAmount0In :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2SwapV2DTOAmount1In :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2SwapV2DTOAmount0Out :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2SwapV2DTOAmount1Out :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2SwapV2DTOTo :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2SwapV2DTOLogIndex :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV2SwapV2DTOAmountUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2SwapV2DTOEvaluatedPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- uniswapV2SwapV2DTOEvaluatedAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- uniswapV2SwapV2DTOEvaluatedAggressor :: Maybe TransactionsETradeAggressiveSide
    <*> arbitraryReducedMaybe n -- uniswapV2SwapV2DTOPoolId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2SwapV2DTOTransactionId :: Maybe Text
  
instance Arbitrary UniswapV2TokenV2DTO where
  arbitrary = sized genUniswapV2TokenV2DTO

genUniswapV2TokenV2DTO :: Int -> Gen UniswapV2TokenV2DTO
genUniswapV2TokenV2DTO n =
  UniswapV2TokenV2DTO
    <$> arbitraryReducedMaybe n -- uniswapV2TokenV2DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2TokenV2DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2TokenV2DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2TokenV2DTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2TokenV2DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenV2DTOSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenV2DTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenV2DTODecimals :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV2TokenV2DTOTotalSupply :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV2TokenV2DTOTradeVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenV2DTOTradeVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenV2DTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenV2DTOTxCount :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV2TokenV2DTOTotalLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenV2DTODerivedEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenV2DTOTokenSymbol :: Maybe Text
  
instance Arbitrary UniswapV3BundleV3DTO where
  arbitrary = sized genUniswapV3BundleV3DTO

genUniswapV3BundleV3DTO :: Int -> Gen UniswapV3BundleV3DTO
genUniswapV3BundleV3DTO n =
  UniswapV3BundleV3DTO
    <$> arbitraryReducedMaybe n -- uniswapV3BundleV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3BundleV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3BundleV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3BundleV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BundleV3DTOEthPriceUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BundleV3DTOVid :: Maybe Integer
  
instance Arbitrary UniswapV3BurnV3DTO where
  arbitrary = sized genUniswapV3BurnV3DTO

genUniswapV3BurnV3DTO :: Int -> Gen UniswapV3BurnV3DTO
genUniswapV3BurnV3DTO n =
  UniswapV3BurnV3DTO
    <$> arbitraryReducedMaybe n -- uniswapV3BurnV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3BurnV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3BurnV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3BurnV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnV3DTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnV3DTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnV3DTOToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnV3DTOToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnV3DTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnV3DTOOwner :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnV3DTOOrigin :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnV3DTOAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnV3DTOAmount0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnV3DTOAmount1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnV3DTOAmountUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnV3DTOTickLower :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnV3DTOTickUpper :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnV3DTOLogIndex :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3BurnV3DTOVid :: Maybe Integer
  
instance Arbitrary UniswapV3FactoryV3DTO where
  arbitrary = sized genUniswapV3FactoryV3DTO

genUniswapV3FactoryV3DTO :: Int -> Gen UniswapV3FactoryV3DTO
genUniswapV3FactoryV3DTO n =
  UniswapV3FactoryV3DTO
    <$> arbitraryReducedMaybe n -- uniswapV3FactoryV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryV3DTOPoolCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryV3DTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryV3DTOTotalVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryV3DTOTotalVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryV3DTOTotalFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryV3DTOTotalFeesEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryV3DTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryV3DTOTotalValueLockedUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryV3DTOTotalValueLockedEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryV3DTOTotalValueLockedUsdUntracked :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryV3DTOTotalValueLockedEthUntracked :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryV3DTOOwner :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3FactoryV3DTOVid :: Maybe Integer
  
instance Arbitrary UniswapV3MintV3DTO where
  arbitrary = sized genUniswapV3MintV3DTO

genUniswapV3MintV3DTO :: Int -> Gen UniswapV3MintV3DTO
genUniswapV3MintV3DTO n =
  UniswapV3MintV3DTO
    <$> arbitraryReducedMaybe n -- uniswapV3MintV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3MintV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3MintV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3MintV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintV3DTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintV3DTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintV3DTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintV3DTOToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintV3DTOToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintV3DTOOwner :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintV3DTOSender :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintV3DTOOrigin :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintV3DTOAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintV3DTOAmount0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintV3DTOAmount1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintV3DTOAmountUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintV3DTOTickLower :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintV3DTOTickUpper :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintV3DTOLogIndex :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3MintV3DTOVid :: Maybe Integer
  
instance Arbitrary UniswapV3PoolDayDataV3DTO where
  arbitrary = sized genUniswapV3PoolDayDataV3DTO

genUniswapV3PoolDayDataV3DTO :: Int -> Gen UniswapV3PoolDayDataV3DTO
genUniswapV3PoolDayDataV3DTO n =
  UniswapV3PoolDayDataV3DTO
    <$> arbitraryReducedMaybe n -- uniswapV3PoolDayDataV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataV3DTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataV3DTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataV3DTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataV3DTOSqrtPrice :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataV3DTOToken0Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataV3DTOToken1Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataV3DTOTick :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataV3DTOFeeGrowthGlobal0x128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataV3DTOFeeGrowthGlobal1x128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataV3DTOTvlUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataV3DTOVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataV3DTOVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataV3DTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataV3DTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataV3DTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataV3DTOOpen :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataV3DTOHigh :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataV3DTOLow :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataV3DTOClose :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolDayDataV3DTOVid :: Maybe Integer
  
instance Arbitrary UniswapV3PoolHourDataV3DTO where
  arbitrary = sized genUniswapV3PoolHourDataV3DTO

genUniswapV3PoolHourDataV3DTO :: Int -> Gen UniswapV3PoolHourDataV3DTO
genUniswapV3PoolHourDataV3DTO n =
  UniswapV3PoolHourDataV3DTO
    <$> arbitraryReducedMaybe n -- uniswapV3PoolHourDataV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataV3DTOPeriodStartUnix :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataV3DTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataV3DTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataV3DTOSqrtPrice :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataV3DTOToken0Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataV3DTOToken1Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataV3DTOTick :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataV3DTOFeeGrowthGlobal0x128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataV3DTOFeeGrowthGlobal1x128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataV3DTOTvlUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataV3DTOVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataV3DTOVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataV3DTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataV3DTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataV3DTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataV3DTOOpen :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataV3DTOHigh :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataV3DTOLow :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataV3DTOClose :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolHourDataV3DTOVid :: Maybe Integer
  
instance Arbitrary UniswapV3PoolV3DTO where
  arbitrary = sized genUniswapV3PoolV3DTO

genUniswapV3PoolV3DTO :: Int -> Gen UniswapV3PoolV3DTO
genUniswapV3PoolV3DTO n =
  UniswapV3PoolV3DTO
    <$> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOCreatedAtTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOFeeTier :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOLiquidity :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOSqrtPrice :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOFeeGrowthGlobal0x128 :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOFeeGrowthGlobal1x128 :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOToken0Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOToken1Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOTick :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOObservationIndex :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOTxCount :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOCollectedFeesToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOCollectedFeesToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOCollectedFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOTotalValueLockedToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOTotalValueLockedToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOTotalValueLockedEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOTotalValueLockedUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOTotalValueLockedUsdUntracked :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOLiquidityProviderCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PoolV3DTOEvaluatedAsk :: Maybe Double
  
instance Arbitrary UniswapV3PositionSnapshotV3DTO where
  arbitrary = sized genUniswapV3PositionSnapshotV3DTO

genUniswapV3PositionSnapshotV3DTO :: Int -> Gen UniswapV3PositionSnapshotV3DTO
genUniswapV3PositionSnapshotV3DTO n =
  UniswapV3PositionSnapshotV3DTO
    <$> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotV3DTOOwner :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotV3DTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotV3DTOPosition :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotV3DTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotV3DTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotV3DTODepositedToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotV3DTODepositedToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotV3DTOWithdrawnToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotV3DTOWithdrawnToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotV3DTOCollectedFeesToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotV3DTOCollectedFeesToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotV3DTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotV3DTOFeeGrowthInside0LastX128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotV3DTOFeeGrowthInside1LastX128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionSnapshotV3DTOVid :: Maybe Integer
  
instance Arbitrary UniswapV3PositionV3DTO where
  arbitrary = sized genUniswapV3PositionV3DTO

genUniswapV3PositionV3DTO :: Int -> Gen UniswapV3PositionV3DTO
genUniswapV3PositionV3DTO n =
  UniswapV3PositionV3DTO
    <$> arbitraryReducedMaybe n -- uniswapV3PositionV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3PositionV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3PositionV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3PositionV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionV3DTOOwner :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionV3DTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionV3DTOToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionV3DTOToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionV3DTOTickLower :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionV3DTOTickUpper :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionV3DTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionV3DTODepositedToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionV3DTODepositedToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionV3DTOWithdrawnToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionV3DTOWithdrawnToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionV3DTOCollectedFeesToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionV3DTOCollectedFeesToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionV3DTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionV3DTOFeeGrowthInside0LastX128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionV3DTOFeeGrowthInside1LastX128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3PositionV3DTOVid :: Maybe Integer
  
instance Arbitrary UniswapV3SwapV3DTO where
  arbitrary = sized genUniswapV3SwapV3DTO

genUniswapV3SwapV3DTO :: Int -> Gen UniswapV3SwapV3DTO
genUniswapV3SwapV3DTO n =
  UniswapV3SwapV3DTO
    <$> arbitraryReducedMaybe n -- uniswapV3SwapV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3SwapV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3SwapV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3SwapV3DTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3SwapV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3SwapV3DTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3SwapV3DTOTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3SwapV3DTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3SwapV3DTOToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3SwapV3DTOToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3SwapV3DTOSender :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3SwapV3DTORecipient :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3SwapV3DTOOrigin :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3SwapV3DTOAmount0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3SwapV3DTOAmount1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3SwapV3DTOAmountUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3SwapV3DTOSqrtPriceX96 :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3SwapV3DTOTick :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3SwapV3DTOLogIndex :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3SwapV3DTOEvaluatedPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- uniswapV3SwapV3DTOEvaluatedAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- uniswapV3SwapV3DTOEvaluatedAggressor :: Maybe TransactionsETradeAggressiveSide
    <*> arbitraryReducedMaybe n -- uniswapV3SwapV3DTOPoolId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3SwapV3DTOTransactionId :: Maybe Text
  
instance Arbitrary UniswapV3TickDayDataV3DTO where
  arbitrary = sized genUniswapV3TickDayDataV3DTO

genUniswapV3TickDayDataV3DTO :: Int -> Gen UniswapV3TickDayDataV3DTO
genUniswapV3TickDayDataV3DTO n =
  UniswapV3TickDayDataV3DTO
    <$> arbitraryReducedMaybe n -- uniswapV3TickDayDataV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataV3DTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataV3DTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataV3DTOTick :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataV3DTOLiquidityGross :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataV3DTOLiquidityNet :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataV3DTOVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataV3DTOVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataV3DTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataV3DTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataV3DTOFeeGrowthOutside0x128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataV3DTOFeeGrowthOutside1x128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickDayDataV3DTOVid :: Maybe Integer
  
instance Arbitrary UniswapV3TickV3DTO where
  arbitrary = sized genUniswapV3TickV3DTO

genUniswapV3TickV3DTO :: Int -> Gen UniswapV3TickV3DTO
genUniswapV3TickV3DTO n =
  UniswapV3TickV3DTO
    <$> arbitraryReducedMaybe n -- uniswapV3TickV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TickV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TickV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3TickV3DTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3TickV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickV3DTOPoolAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickV3DTOTickIdx :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3TickV3DTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickV3DTOLiquidityGross :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3TickV3DTOLiquidityNet :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3TickV3DTOPrice0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickV3DTOPrice1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickV3DTOVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickV3DTOVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickV3DTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickV3DTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickV3DTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickV3DTOCollectedFeesToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickV3DTOCollectedFeesToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickV3DTOCollectedFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TickV3DTOCreatedAtTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TickV3DTOLiquidityProviderCount :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3TickV3DTOFeeGrowthOutside0x128 :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3TickV3DTOFeeGrowthOutside1x128 :: Maybe NumericsBigInteger
  
instance Arbitrary UniswapV3TokenHourDataV3DTO where
  arbitrary = sized genUniswapV3TokenHourDataV3DTO

genUniswapV3TokenHourDataV3DTO :: Int -> Gen UniswapV3TokenHourDataV3DTO
genUniswapV3TokenHourDataV3DTO n =
  UniswapV3TokenHourDataV3DTO
    <$> arbitraryReducedMaybe n -- uniswapV3TokenHourDataV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataV3DTOPeriodStartUnix :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataV3DTOToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataV3DTOVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataV3DTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataV3DTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataV3DTOTotalValueLocked :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataV3DTOTotalValueLockedUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataV3DTOPriceUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataV3DTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataV3DTOOpen :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataV3DTOHigh :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataV3DTOLow :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataV3DTOClose :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenHourDataV3DTOVid :: Maybe Integer
  
instance Arbitrary UniswapV3TokenV3DTO where
  arbitrary = sized genUniswapV3TokenV3DTO

genUniswapV3TokenV3DTO :: Int -> Gen UniswapV3TokenV3DTO
genUniswapV3TokenV3DTO n =
  UniswapV3TokenV3DTO
    <$> arbitraryReducedMaybe n -- uniswapV3TokenV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DTOSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DTODecimals :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DTOTotalSupply :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DTOVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DTOTxCount :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DTOPoolCount :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DTOTotalValueLocked :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DTOTotalValueLockedUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DTOTotalValueLockedUsdUntracked :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DTODerivedEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DTOWhitelistPools :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DTOTokenSymbol :: Maybe Text
  
instance Arbitrary UniswapV3TokenV3DayDataDTO where
  arbitrary = sized genUniswapV3TokenV3DayDataDTO

genUniswapV3TokenV3DayDataDTO :: Int -> Gen UniswapV3TokenV3DayDataDTO
genUniswapV3TokenV3DayDataDTO n =
  UniswapV3TokenV3DayDataDTO
    <$> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOTotalValueLocked :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOTotalValueLockedUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOPriceUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOOpen :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOHigh :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOLow :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TokenV3DayDataDTOClose :: Maybe Text
  
instance Arbitrary UniswapV3UniswapDayDataV3DTO where
  arbitrary = sized genUniswapV3UniswapDayDataV3DTO

genUniswapV3UniswapDayDataV3DTO :: Int -> Gen UniswapV3UniswapDayDataV3DTO
genUniswapV3UniswapDayDataV3DTO n =
  UniswapV3UniswapDayDataV3DTO
    <$> arbitraryReducedMaybe n -- uniswapV3UniswapDayDataV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3UniswapDayDataV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3UniswapDayDataV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3UniswapDayDataV3DTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3UniswapDayDataV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3UniswapDayDataV3DTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV3UniswapDayDataV3DTOVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3UniswapDayDataV3DTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3UniswapDayDataV3DTOVolumeUsdUntracked :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3UniswapDayDataV3DTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3UniswapDayDataV3DTOTxCount :: Maybe NumericsBigInteger
    <*> arbitraryReducedMaybe n -- uniswapV3UniswapDayDataV3DTOTvlUsd :: Maybe Text
  



instance Arbitrary TransactionsETradeAggressiveSide where
  arbitrary = arbitraryBoundedEnum

