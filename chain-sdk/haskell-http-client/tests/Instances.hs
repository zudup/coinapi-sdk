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

instance Arbitrary BigInteger where
  arbitrary = sized genBigInteger

genBigInteger :: Int -> Gen BigInteger
genBigInteger n =
  BigInteger
    <$> arbitraryReducedMaybe n -- bigIntegerIsPowerOfTwo :: Maybe Bool
    <*> arbitraryReducedMaybe n -- bigIntegerIsZero :: Maybe Bool
    <*> arbitraryReducedMaybe n -- bigIntegerIsOne :: Maybe Bool
    <*> arbitraryReducedMaybe n -- bigIntegerIsEven :: Maybe Bool
    <*> arbitraryReducedMaybe n -- bigIntegerSign :: Maybe Int
  
instance Arbitrary BundleV3DTO where
  arbitrary = sized genBundleV3DTO

genBundleV3DTO :: Int -> Gen BundleV3DTO
genBundleV3DTO n =
  BundleV3DTO
    <$> arbitraryReducedMaybe n -- bundleV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- bundleV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- bundleV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- bundleV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- bundleV3DTOEthPriceUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- bundleV3DTOVid :: Maybe Integer
  
instance Arbitrary BurnV3DTO where
  arbitrary = sized genBurnV3DTO

genBurnV3DTO :: Int -> Gen BurnV3DTO
genBurnV3DTO n =
  BurnV3DTO
    <$> arbitraryReducedMaybe n -- burnV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- burnV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- burnV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- burnV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- burnV3DTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- burnV3DTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- burnV3DTOToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- burnV3DTOToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- burnV3DTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- burnV3DTOOwner :: Maybe Text
    <*> arbitraryReducedMaybe n -- burnV3DTOOrigin :: Maybe Text
    <*> arbitraryReducedMaybe n -- burnV3DTOAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- burnV3DTOAmount0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- burnV3DTOAmount1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- burnV3DTOAmountUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- burnV3DTOTickLower :: Maybe Text
    <*> arbitraryReducedMaybe n -- burnV3DTOTickUpper :: Maybe Text
    <*> arbitraryReducedMaybe n -- burnV3DTOLogIndex :: Maybe Text
    <*> arbitraryReducedMaybe n -- burnV3DTOVid :: Maybe Integer
  
instance Arbitrary FactoryV3DTO where
  arbitrary = sized genFactoryV3DTO

genFactoryV3DTO :: Int -> Gen FactoryV3DTO
genFactoryV3DTO n =
  FactoryV3DTO
    <$> arbitraryReducedMaybe n -- factoryV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- factoryV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- factoryV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- factoryV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- factoryV3DTOPoolCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- factoryV3DTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- factoryV3DTOTotalVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- factoryV3DTOTotalVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- factoryV3DTOTotalFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- factoryV3DTOTotalFeesEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- factoryV3DTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- factoryV3DTOTotalValueLockedUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- factoryV3DTOTotalValueLockedEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- factoryV3DTOTotalValueLockedUsdUntracked :: Maybe Text
    <*> arbitraryReducedMaybe n -- factoryV3DTOTotalValueLockedEthUntracked :: Maybe Text
    <*> arbitraryReducedMaybe n -- factoryV3DTOOwner :: Maybe Text
    <*> arbitraryReducedMaybe n -- factoryV3DTOVid :: Maybe Integer
  
instance Arbitrary MintV3DTO where
  arbitrary = sized genMintV3DTO

genMintV3DTO :: Int -> Gen MintV3DTO
genMintV3DTO n =
  MintV3DTO
    <$> arbitraryReducedMaybe n -- mintV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- mintV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- mintV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- mintV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- mintV3DTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- mintV3DTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- mintV3DTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- mintV3DTOToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- mintV3DTOToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- mintV3DTOOwner :: Maybe Text
    <*> arbitraryReducedMaybe n -- mintV3DTOSender :: Maybe Text
    <*> arbitraryReducedMaybe n -- mintV3DTOOrigin :: Maybe Text
    <*> arbitraryReducedMaybe n -- mintV3DTOAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- mintV3DTOAmount0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- mintV3DTOAmount1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- mintV3DTOAmountUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- mintV3DTOTickLower :: Maybe Text
    <*> arbitraryReducedMaybe n -- mintV3DTOTickUpper :: Maybe Text
    <*> arbitraryReducedMaybe n -- mintV3DTOLogIndex :: Maybe Text
    <*> arbitraryReducedMaybe n -- mintV3DTOVid :: Maybe Integer
  
instance Arbitrary PairDTO where
  arbitrary = sized genPairDTO

genPairDTO :: Int -> Gen PairDTO
genPairDTO n =
  PairDTO
    <$> arbitraryReducedMaybe n -- pairDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- pairDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- pairDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- pairDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairDTOFactory :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairDTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairDTOToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairDTOToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairDTOReserve0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairDTOReserve1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairDTOTotalSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairDTOReserveEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairDTOReserveUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairDTOTrackedReserveEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairDTOToken0Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairDTOToken1Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairDTOVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairDTOVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairDTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairDTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairDTOLiquidityProviderCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairDTOBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- pairDTOEvaluatedAsk :: Maybe Double
  
instance Arbitrary PairV2DTO where
  arbitrary = sized genPairV2DTO

genPairV2DTO :: Int -> Gen PairV2DTO
genPairV2DTO n =
  PairV2DTO
    <$> arbitraryReducedMaybe n -- pairV2DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- pairV2DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- pairV2DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- pairV2DTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- pairV2DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairV2DTOToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairV2DTOToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairV2DTOReserve0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairV2DTOReserve1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairV2DTOTotalSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairV2DTOReserveEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairV2DTOReserveUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairV2DTOTrackedReserveEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairV2DTOToken0Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairV2DTOToken1Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairV2DTOVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairV2DTOVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairV2DTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairV2DTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairV2DTOTxCount :: Maybe BigInteger
    <*> arbitraryReducedMaybe n -- pairV2DTOCreatedAtTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- pairV2DTOLiquidityProviderCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- pairV2DTOEvaluatedAsk :: Maybe Double
  
instance Arbitrary PoolDayDataV3DTO where
  arbitrary = sized genPoolDayDataV3DTO

genPoolDayDataV3DTO :: Int -> Gen PoolDayDataV3DTO
genPoolDayDataV3DTO n =
  PoolDayDataV3DTO
    <$> arbitraryReducedMaybe n -- poolDayDataV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- poolDayDataV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- poolDayDataV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- poolDayDataV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolDayDataV3DTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- poolDayDataV3DTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolDayDataV3DTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolDayDataV3DTOSqrtPrice :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolDayDataV3DTOToken0Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolDayDataV3DTOToken1Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolDayDataV3DTOTick :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolDayDataV3DTOFeeGrowthGlobal0x128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolDayDataV3DTOFeeGrowthGlobal1x128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolDayDataV3DTOTvlUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolDayDataV3DTOVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolDayDataV3DTOVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolDayDataV3DTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolDayDataV3DTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolDayDataV3DTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolDayDataV3DTOOpen :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolDayDataV3DTOHigh :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolDayDataV3DTOLow :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolDayDataV3DTOClose :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolDayDataV3DTOVid :: Maybe Integer
  
instance Arbitrary PoolHourDataV3DTO where
  arbitrary = sized genPoolHourDataV3DTO

genPoolHourDataV3DTO :: Int -> Gen PoolHourDataV3DTO
genPoolHourDataV3DTO n =
  PoolHourDataV3DTO
    <$> arbitraryReducedMaybe n -- poolHourDataV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- poolHourDataV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- poolHourDataV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- poolHourDataV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolHourDataV3DTOPeriodStartUnix :: Maybe Int
    <*> arbitraryReducedMaybe n -- poolHourDataV3DTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolHourDataV3DTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolHourDataV3DTOSqrtPrice :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolHourDataV3DTOToken0Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolHourDataV3DTOToken1Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolHourDataV3DTOTick :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolHourDataV3DTOFeeGrowthGlobal0x128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolHourDataV3DTOFeeGrowthGlobal1x128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolHourDataV3DTOTvlUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolHourDataV3DTOVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolHourDataV3DTOVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolHourDataV3DTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolHourDataV3DTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolHourDataV3DTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolHourDataV3DTOOpen :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolHourDataV3DTOHigh :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolHourDataV3DTOLow :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolHourDataV3DTOClose :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolHourDataV3DTOVid :: Maybe Integer
  
instance Arbitrary PoolV3DTO where
  arbitrary = sized genPoolV3DTO

genPoolV3DTO :: Int -> Gen PoolV3DTO
genPoolV3DTO n =
  PoolV3DTO
    <$> arbitraryReducedMaybe n -- poolV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- poolV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- poolV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- poolV3DTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- poolV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolV3DTOCreatedAtTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- poolV3DTOToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolV3DTOToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolV3DTOFeeTier :: Maybe BigInteger
    <*> arbitraryReducedMaybe n -- poolV3DTOLiquidity :: Maybe BigInteger
    <*> arbitraryReducedMaybe n -- poolV3DTOSqrtPrice :: Maybe BigInteger
    <*> arbitraryReducedMaybe n -- poolV3DTOFeeGrowthGlobal0x128 :: Maybe BigInteger
    <*> arbitraryReducedMaybe n -- poolV3DTOFeeGrowthGlobal1x128 :: Maybe BigInteger
    <*> arbitraryReducedMaybe n -- poolV3DTOToken0Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolV3DTOToken1Price :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolV3DTOTick :: Maybe BigInteger
    <*> arbitraryReducedMaybe n -- poolV3DTOObservationIndex :: Maybe BigInteger
    <*> arbitraryReducedMaybe n -- poolV3DTOVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolV3DTOVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolV3DTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolV3DTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolV3DTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolV3DTOTxCount :: Maybe BigInteger
    <*> arbitraryReducedMaybe n -- poolV3DTOCollectedFeesToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolV3DTOCollectedFeesToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolV3DTOCollectedFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolV3DTOTotalValueLockedToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolV3DTOTotalValueLockedToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolV3DTOTotalValueLockedEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolV3DTOTotalValueLockedUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolV3DTOTotalValueLockedUsdUntracked :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolV3DTOLiquidityProviderCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- poolV3DTOEvaluatedAsk :: Maybe Double
  
instance Arbitrary PositionSnapshotV3DTO where
  arbitrary = sized genPositionSnapshotV3DTO

genPositionSnapshotV3DTO :: Int -> Gen PositionSnapshotV3DTO
genPositionSnapshotV3DTO n =
  PositionSnapshotV3DTO
    <$> arbitraryReducedMaybe n -- positionSnapshotV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- positionSnapshotV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- positionSnapshotV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- positionSnapshotV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionSnapshotV3DTOOwner :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionSnapshotV3DTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionSnapshotV3DTOPosition :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionSnapshotV3DTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionSnapshotV3DTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionSnapshotV3DTODepositedToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionSnapshotV3DTODepositedToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionSnapshotV3DTOWithdrawnToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionSnapshotV3DTOWithdrawnToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionSnapshotV3DTOCollectedFeesToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionSnapshotV3DTOCollectedFeesToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionSnapshotV3DTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionSnapshotV3DTOFeeGrowthInside0LastX128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionSnapshotV3DTOFeeGrowthInside1LastX128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionSnapshotV3DTOVid :: Maybe Integer
  
instance Arbitrary PositionV3DTO where
  arbitrary = sized genPositionV3DTO

genPositionV3DTO :: Int -> Gen PositionV3DTO
genPositionV3DTO n =
  PositionV3DTO
    <$> arbitraryReducedMaybe n -- positionV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- positionV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- positionV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- positionV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionV3DTOOwner :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionV3DTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionV3DTOToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionV3DTOToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionV3DTOTickLower :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionV3DTOTickUpper :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionV3DTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionV3DTODepositedToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionV3DTODepositedToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionV3DTOWithdrawnToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionV3DTOWithdrawnToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionV3DTOCollectedFeesToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionV3DTOCollectedFeesToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionV3DTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionV3DTOFeeGrowthInside0LastX128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionV3DTOFeeGrowthInside1LastX128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- positionV3DTOVid :: Maybe Integer
  
instance Arbitrary SwapDTO where
  arbitrary = sized genSwapDTO

genSwapDTO :: Int -> Gen SwapDTO
genSwapDTO n =
  SwapDTO
    <$> arbitraryReducedMaybe n -- swapDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- swapDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- swapDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- swapDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapDTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapDTOSender :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapDTOAmount0In :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapDTOAmount1In :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapDTOAmount0Out :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapDTOAmount1Out :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapDTOTo :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapDTOLogIndex :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapDTOAmountUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- swapDTOPoolId :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapDTOTransactionId :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapDTOEvaluatedPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- swapDTOEvaluatedAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- swapDTOEvaluatedAggressor :: Maybe ETradeAggressiveSide
  
instance Arbitrary SwapV2DTO where
  arbitrary = sized genSwapV2DTO

genSwapV2DTO :: Int -> Gen SwapV2DTO
genSwapV2DTO n =
  SwapV2DTO
    <$> arbitraryReducedMaybe n -- swapV2DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- swapV2DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- swapV2DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- swapV2DTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- swapV2DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapV2DTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapV2DTOTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- swapV2DTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapV2DTOSender :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapV2DTOFrom :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapV2DTOAmount0In :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapV2DTOAmount1In :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapV2DTOAmount0Out :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapV2DTOAmount1Out :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapV2DTOTo :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapV2DTOLogIndex :: Maybe BigInteger
    <*> arbitraryReducedMaybe n -- swapV2DTOAmountUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapV2DTOEvaluatedPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- swapV2DTOEvaluatedAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- swapV2DTOEvaluatedAggressor :: Maybe ETradeAggressiveSide
    <*> arbitraryReducedMaybe n -- swapV2DTOPoolId :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapV2DTOTransactionId :: Maybe Text
  
instance Arbitrary SwapV3DTO where
  arbitrary = sized genSwapV3DTO

genSwapV3DTO :: Int -> Gen SwapV3DTO
genSwapV3DTO n =
  SwapV3DTO
    <$> arbitraryReducedMaybe n -- swapV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- swapV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- swapV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- swapV3DTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- swapV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapV3DTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapV3DTOTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- swapV3DTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapV3DTOToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapV3DTOToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapV3DTOSender :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapV3DTORecipient :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapV3DTOOrigin :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapV3DTOAmount0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapV3DTOAmount1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapV3DTOAmountUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapV3DTOSqrtPriceX96 :: Maybe BigInteger
    <*> arbitraryReducedMaybe n -- swapV3DTOTick :: Maybe BigInteger
    <*> arbitraryReducedMaybe n -- swapV3DTOLogIndex :: Maybe BigInteger
    <*> arbitraryReducedMaybe n -- swapV3DTOEvaluatedPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- swapV3DTOEvaluatedAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- swapV3DTOEvaluatedAggressor :: Maybe ETradeAggressiveSide
    <*> arbitraryReducedMaybe n -- swapV3DTOPoolId :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapV3DTOTransactionId :: Maybe Text
  
instance Arbitrary TickDayDataV3DTO where
  arbitrary = sized genTickDayDataV3DTO

genTickDayDataV3DTO :: Int -> Gen TickDayDataV3DTO
genTickDayDataV3DTO n =
  TickDayDataV3DTO
    <$> arbitraryReducedMaybe n -- tickDayDataV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- tickDayDataV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- tickDayDataV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- tickDayDataV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- tickDayDataV3DTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- tickDayDataV3DTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- tickDayDataV3DTOTick :: Maybe Text
    <*> arbitraryReducedMaybe n -- tickDayDataV3DTOLiquidityGross :: Maybe Text
    <*> arbitraryReducedMaybe n -- tickDayDataV3DTOLiquidityNet :: Maybe Text
    <*> arbitraryReducedMaybe n -- tickDayDataV3DTOVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- tickDayDataV3DTOVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- tickDayDataV3DTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- tickDayDataV3DTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- tickDayDataV3DTOFeeGrowthOutside0x128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- tickDayDataV3DTOFeeGrowthOutside1x128 :: Maybe Text
    <*> arbitraryReducedMaybe n -- tickDayDataV3DTOVid :: Maybe Integer
  
instance Arbitrary TickV3DTO where
  arbitrary = sized genTickV3DTO

genTickV3DTO :: Int -> Gen TickV3DTO
genTickV3DTO n =
  TickV3DTO
    <$> arbitraryReducedMaybe n -- tickV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- tickV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- tickV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- tickV3DTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- tickV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- tickV3DTOPoolAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- tickV3DTOTickIdx :: Maybe BigInteger
    <*> arbitraryReducedMaybe n -- tickV3DTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- tickV3DTOLiquidityGross :: Maybe BigInteger
    <*> arbitraryReducedMaybe n -- tickV3DTOLiquidityNet :: Maybe BigInteger
    <*> arbitraryReducedMaybe n -- tickV3DTOPrice0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- tickV3DTOPrice1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- tickV3DTOVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- tickV3DTOVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- tickV3DTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- tickV3DTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- tickV3DTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- tickV3DTOCollectedFeesToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- tickV3DTOCollectedFeesToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- tickV3DTOCollectedFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- tickV3DTOCreatedAtTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- tickV3DTOLiquidityProviderCount :: Maybe BigInteger
    <*> arbitraryReducedMaybe n -- tickV3DTOFeeGrowthOutside0x128 :: Maybe BigInteger
    <*> arbitraryReducedMaybe n -- tickV3DTOFeeGrowthOutside1x128 :: Maybe BigInteger
  
instance Arbitrary TokenDTO where
  arbitrary = sized genTokenDTO

genTokenDTO :: Int -> Gen TokenDTO
genTokenDTO n =
  TokenDTO
    <$> arbitraryReducedMaybe n -- tokenDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- tokenDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- tokenDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- tokenDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenDTOFactory :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenDTOSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenDTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenDTODecimals :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenDTOTotalSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenDTOVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenDTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenDTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenDTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenDTODerivedEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenDTOWhitelistPairs :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- tokenDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- tokenDTOTokenSymbol :: Maybe Text
  
instance Arbitrary TokenHourDataV3DTO where
  arbitrary = sized genTokenHourDataV3DTO

genTokenHourDataV3DTO :: Int -> Gen TokenHourDataV3DTO
genTokenHourDataV3DTO n =
  TokenHourDataV3DTO
    <$> arbitraryReducedMaybe n -- tokenHourDataV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- tokenHourDataV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- tokenHourDataV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- tokenHourDataV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenHourDataV3DTOPeriodStartUnix :: Maybe Int
    <*> arbitraryReducedMaybe n -- tokenHourDataV3DTOToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenHourDataV3DTOVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenHourDataV3DTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenHourDataV3DTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenHourDataV3DTOTotalValueLocked :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenHourDataV3DTOTotalValueLockedUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenHourDataV3DTOPriceUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenHourDataV3DTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenHourDataV3DTOOpen :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenHourDataV3DTOHigh :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenHourDataV3DTOLow :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenHourDataV3DTOClose :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenHourDataV3DTOVid :: Maybe Integer
  
instance Arbitrary TokenV2DTO where
  arbitrary = sized genTokenV2DTO

genTokenV2DTO :: Int -> Gen TokenV2DTO
genTokenV2DTO n =
  TokenV2DTO
    <$> arbitraryReducedMaybe n -- tokenV2DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- tokenV2DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- tokenV2DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- tokenV2DTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- tokenV2DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV2DTOSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV2DTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV2DTODecimals :: Maybe Int
    <*> arbitraryReducedMaybe n -- tokenV2DTOTotalSupply :: Maybe BigInteger
    <*> arbitraryReducedMaybe n -- tokenV2DTOTradeVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV2DTOTradeVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV2DTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV2DTOTxCount :: Maybe BigInteger
    <*> arbitraryReducedMaybe n -- tokenV2DTOTotalLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV2DTODerivedEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV2DTOTokenSymbol :: Maybe Text
  
instance Arbitrary TokenV3DTO where
  arbitrary = sized genTokenV3DTO

genTokenV3DTO :: Int -> Gen TokenV3DTO
genTokenV3DTO n =
  TokenV3DTO
    <$> arbitraryReducedMaybe n -- tokenV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- tokenV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- tokenV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- tokenV3DTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- tokenV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV3DTOSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV3DTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV3DTODecimals :: Maybe Int
    <*> arbitraryReducedMaybe n -- tokenV3DTOTotalSupply :: Maybe BigInteger
    <*> arbitraryReducedMaybe n -- tokenV3DTOVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV3DTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV3DTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV3DTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV3DTOTxCount :: Maybe BigInteger
    <*> arbitraryReducedMaybe n -- tokenV3DTOPoolCount :: Maybe BigInteger
    <*> arbitraryReducedMaybe n -- tokenV3DTOTotalValueLocked :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV3DTOTotalValueLockedUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV3DTOTotalValueLockedUsdUntracked :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV3DTODerivedEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV3DTOWhitelistPools :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- tokenV3DTOTokenSymbol :: Maybe Text
  
instance Arbitrary TokenV3DayDataDTO where
  arbitrary = sized genTokenV3DayDataDTO

genTokenV3DayDataDTO :: Int -> Gen TokenV3DayDataDTO
genTokenV3DayDataDTO n =
  TokenV3DayDataDTO
    <$> arbitraryReducedMaybe n -- tokenV3DayDataDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- tokenV3DayDataDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- tokenV3DayDataDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- tokenV3DayDataDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- tokenV3DayDataDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV3DayDataDTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- tokenV3DayDataDTOToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV3DayDataDTOVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV3DayDataDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV3DayDataDTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV3DayDataDTOTotalValueLocked :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV3DayDataDTOTotalValueLockedUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV3DayDataDTOPriceUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV3DayDataDTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV3DayDataDTOOpen :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV3DayDataDTOHigh :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV3DayDataDTOLow :: Maybe Text
    <*> arbitraryReducedMaybe n -- tokenV3DayDataDTOClose :: Maybe Text
  
instance Arbitrary UniswapDayDataV3DTO where
  arbitrary = sized genUniswapDayDataV3DTO

genUniswapDayDataV3DTO :: Int -> Gen UniswapDayDataV3DTO
genUniswapDayDataV3DTO n =
  UniswapDayDataV3DTO
    <$> arbitraryReducedMaybe n -- uniswapDayDataV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapDayDataV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapDayDataV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapDayDataV3DTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapDayDataV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapDayDataV3DTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapDayDataV3DTOVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapDayDataV3DTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapDayDataV3DTOVolumeUsdUntracked :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapDayDataV3DTOFeesUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapDayDataV3DTOTxCount :: Maybe BigInteger
    <*> arbitraryReducedMaybe n -- uniswapDayDataV3DTOTvlUsd :: Maybe Text
  



instance Arbitrary ETradeAggressiveSide where
  arbitrary = arbitraryBoundedEnum

