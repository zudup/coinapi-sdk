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

instance Arbitrary CowOrderDTO where
  arbitrary = sized genCowOrderDTO

genCowOrderDTO :: Int -> Gen CowOrderDTO
genCowOrderDTO n =
  CowOrderDTO
    <$> arbitraryReducedMaybe n -- cowOrderDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cowOrderDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cowOrderDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cowOrderDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowOrderDTOOwner :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowOrderDTOTradesTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowOrderDTOInvalidateTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowOrderDTOPresignTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowOrderDTOIsSigned :: Maybe Bool
    <*> arbitraryReducedMaybe n -- cowOrderDTOIsValid :: Maybe Bool
    <*> arbitraryReducedMaybe n -- cowOrderDTOVid :: Maybe Integer
  
instance Arbitrary CowSettlementDTO where
  arbitrary = sized genCowSettlementDTO

genCowSettlementDTO :: Int -> Gen CowSettlementDTO
genCowSettlementDTO n =
  CowSettlementDTO
    <$> arbitraryReducedMaybe n -- cowSettlementDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cowSettlementDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cowSettlementDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cowSettlementDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowSettlementDTOSolver :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowSettlementDTOTxHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowSettlementDTOFirstTradeTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowSettlementDTOVid :: Maybe Integer
  
instance Arbitrary CowTokenDTO where
  arbitrary = sized genCowTokenDTO

genCowTokenDTO :: Int -> Gen CowTokenDTO
genCowTokenDTO n =
  CowTokenDTO
    <$> arbitraryReducedMaybe n -- cowTokenDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cowTokenDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cowTokenDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cowTokenDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTokenDTOAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTokenDTOFirstTradeTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTokenDTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTokenDTOSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTokenDTODecimals :: Maybe Int
    <*> arbitraryReducedMaybe n -- cowTokenDTOTotalVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTokenDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cowTokenDTOTokenSymbol :: Maybe Text
  
instance Arbitrary CowTradeDTO where
  arbitrary = sized genCowTradeDTO

genCowTradeDTO :: Int -> Gen CowTradeDTO
genCowTradeDTO n =
  CowTradeDTO
    <$> arbitraryReducedMaybe n -- cowTradeDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cowTradeDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cowTradeDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cowTradeDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOGasPrice :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOGasLimit :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOFeeAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOTxHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOSettlement :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOBuyAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOSellAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOSellToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOBuyToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOOrder :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cowTradeDTOPoolId :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOTransactionId :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowTradeDTOEvaluatedPrice :: Maybe Double
    <*> arbitraryReducedMaybe n -- cowTradeDTOEvaluatedAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- cowTradeDTOEvaluatedAggressor :: Maybe TransactionsETradeAggressiveSide
  
instance Arbitrary CowUserDTO where
  arbitrary = sized genCowUserDTO

genCowUserDTO :: Int -> Gen CowUserDTO
genCowUserDTO n =
  CowUserDTO
    <$> arbitraryReducedMaybe n -- cowUserDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cowUserDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- cowUserDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- cowUserDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowUserDTOAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowUserDTOFirstTradeTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- cowUserDTOIsSolver :: Maybe Bool
    <*> arbitraryReducedMaybe n -- cowUserDTOVid :: Maybe Integer
  
instance Arbitrary CurveAccountDTO where
  arbitrary = sized genCurveAccountDTO

genCurveAccountDTO :: Int -> Gen CurveAccountDTO
genCurveAccountDTO n =
  CurveAccountDTO
    <$> arbitraryReducedMaybe n -- curveAccountDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveAccountDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveAccountDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveAccountDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAccountDTOAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAccountDTOVid :: Maybe Integer
  
instance Arbitrary CurveAddLiquidityEventDTO where
  arbitrary = sized genCurveAddLiquidityEventDTO

genCurveAddLiquidityEventDTO :: Int -> Gen CurveAddLiquidityEventDTO
genCurveAddLiquidityEventDTO n =
  CurveAddLiquidityEventDTO
    <$> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOProvider :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOTokenAmounts :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOFees :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOInvariant :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOTokenSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAddLiquidityEventDTOVid :: Maybe Integer
  
instance Arbitrary CurveAdminFeeChangeLogDTO where
  arbitrary = sized genCurveAdminFeeChangeLogDTO

genCurveAdminFeeChangeLogDTO :: Int -> Gen CurveAdminFeeChangeLogDTO
genCurveAdminFeeChangeLogDTO n =
  CurveAdminFeeChangeLogDTO
    <$> arbitraryReducedMaybe n -- curveAdminFeeChangeLogDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveAdminFeeChangeLogDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveAdminFeeChangeLogDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveAdminFeeChangeLogDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAdminFeeChangeLogDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAdminFeeChangeLogDTOValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAdminFeeChangeLogDTOBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAdminFeeChangeLogDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAdminFeeChangeLogDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAdminFeeChangeLogDTOVid :: Maybe Integer
  
instance Arbitrary CurveAmplificationCoeffChangeLogDTO where
  arbitrary = sized genCurveAmplificationCoeffChangeLogDTO

genCurveAmplificationCoeffChangeLogDTO :: Int -> Gen CurveAmplificationCoeffChangeLogDTO
genCurveAmplificationCoeffChangeLogDTO n =
  CurveAmplificationCoeffChangeLogDTO
    <$> arbitraryReducedMaybe n -- curveAmplificationCoeffChangeLogDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveAmplificationCoeffChangeLogDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveAmplificationCoeffChangeLogDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveAmplificationCoeffChangeLogDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAmplificationCoeffChangeLogDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAmplificationCoeffChangeLogDTOValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAmplificationCoeffChangeLogDTOBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAmplificationCoeffChangeLogDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAmplificationCoeffChangeLogDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveAmplificationCoeffChangeLogDTOVid :: Maybe Integer
  
instance Arbitrary CurveCoinDTO where
  arbitrary = sized genCurveCoinDTO

genCurveCoinDTO :: Int -> Gen CurveCoinDTO
genCurveCoinDTO n =
  CurveCoinDTO
    <$> arbitraryReducedMaybe n -- curveCoinDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveCoinDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveCoinDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveCoinDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveCoinDTOIndex :: Maybe Int
    <*> arbitraryReducedMaybe n -- curveCoinDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveCoinDTOToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveCoinDTOUnderlying :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveCoinDTOBalance :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveCoinDTORate :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveCoinDTOUpdated :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveCoinDTOUpdatedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveCoinDTOUpdatedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveCoinDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveCoinDTOBlockRange :: Maybe Text
  
instance Arbitrary CurveContractDTO where
  arbitrary = sized genCurveContractDTO

genCurveContractDTO :: Int -> Gen CurveContractDTO
genCurveContractDTO n =
  CurveContractDTO
    <$> arbitraryReducedMaybe n -- curveContractDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveContractDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveContractDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveContractDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractDTODescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractDTOAdded :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractDTOAddedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractDTOAddedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractDTOModified :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractDTOModifiedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractDTOModifiedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractDTOVid :: Maybe Integer
  
instance Arbitrary CurveContractVersionDTO where
  arbitrary = sized genCurveContractVersionDTO

genCurveContractVersionDTO :: Int -> Gen CurveContractVersionDTO
genCurveContractVersionDTO n =
  CurveContractVersionDTO
    <$> arbitraryReducedMaybe n -- curveContractVersionDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveContractVersionDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveContractVersionDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveContractVersionDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractVersionDTOContract :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractVersionDTOAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractVersionDTOVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractVersionDTOAdded :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractVersionDTOAddedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractVersionDTOAddedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveContractVersionDTOVid :: Maybe Integer
  
instance Arbitrary CurveDailyVolumeDTO where
  arbitrary = sized genCurveDailyVolumeDTO

genCurveDailyVolumeDTO :: Int -> Gen CurveDailyVolumeDTO
genCurveDailyVolumeDTO n =
  CurveDailyVolumeDTO
    <$> arbitraryReducedMaybe n -- curveDailyVolumeDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveDailyVolumeDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveDailyVolumeDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveDailyVolumeDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveDailyVolumeDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveDailyVolumeDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveDailyVolumeDTOVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveDailyVolumeDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveDailyVolumeDTOBlockRange :: Maybe Text
  
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
  
instance Arbitrary CurveFeeChangeLogDTO where
  arbitrary = sized genCurveFeeChangeLogDTO

genCurveFeeChangeLogDTO :: Int -> Gen CurveFeeChangeLogDTO
genCurveFeeChangeLogDTO n =
  CurveFeeChangeLogDTO
    <$> arbitraryReducedMaybe n -- curveFeeChangeLogDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveFeeChangeLogDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveFeeChangeLogDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveFeeChangeLogDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveFeeChangeLogDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveFeeChangeLogDTOValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveFeeChangeLogDTOBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveFeeChangeLogDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveFeeChangeLogDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveFeeChangeLogDTOVid :: Maybe Integer
  
instance Arbitrary CurveGaugeDTO where
  arbitrary = sized genCurveGaugeDTO

genCurveGaugeDTO :: Int -> Gen CurveGaugeDTO
genCurveGaugeDTO n =
  CurveGaugeDTO
    <$> arbitraryReducedMaybe n -- curveGaugeDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveGaugeDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeDTOAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeDTOType :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeDTOCreated :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeDTOCreatedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeDTOCreatedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeDTOVid :: Maybe Integer
  
instance Arbitrary CurveGaugeDepositDTO where
  arbitrary = sized genCurveGaugeDepositDTO

genCurveGaugeDepositDTO :: Int -> Gen CurveGaugeDepositDTO
genCurveGaugeDepositDTO n =
  CurveGaugeDepositDTO
    <$> arbitraryReducedMaybe n -- curveGaugeDepositDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeDepositDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeDepositDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveGaugeDepositDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeDepositDTOGauge :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeDepositDTOProvider :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeDepositDTOValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeDepositDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveGaugeDepositDTOBlockRange :: Maybe Text
  
instance Arbitrary CurveGaugeLiquidityDTO where
  arbitrary = sized genCurveGaugeLiquidityDTO

genCurveGaugeLiquidityDTO :: Int -> Gen CurveGaugeLiquidityDTO
genCurveGaugeLiquidityDTO n =
  CurveGaugeLiquidityDTO
    <$> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOUser :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOGauge :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOOriginalBalance :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOOriginalSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOWorkingBalance :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOWorkingSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeLiquidityDTOVid :: Maybe Integer
  
instance Arbitrary CurveGaugeTotalWeightDTO where
  arbitrary = sized genCurveGaugeTotalWeightDTO

genCurveGaugeTotalWeightDTO :: Int -> Gen CurveGaugeTotalWeightDTO
genCurveGaugeTotalWeightDTO n =
  CurveGaugeTotalWeightDTO
    <$> arbitraryReducedMaybe n -- curveGaugeTotalWeightDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeTotalWeightDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeTotalWeightDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveGaugeTotalWeightDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeTotalWeightDTOTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeTotalWeightDTOWeight :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeTotalWeightDTOVid :: Maybe Integer
  
instance Arbitrary CurveGaugeTypeDTO where
  arbitrary = sized genCurveGaugeTypeDTO

genCurveGaugeTypeDTO :: Int -> Gen CurveGaugeTypeDTO
genCurveGaugeTypeDTO n =
  CurveGaugeTypeDTO
    <$> arbitraryReducedMaybe n -- curveGaugeTypeDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeTypeDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeTypeDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveGaugeTypeDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeTypeDTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeTypeDTOGaugeCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeTypeDTOVid :: Maybe Integer
  
instance Arbitrary CurveGaugeTypeWeightDTO where
  arbitrary = sized genCurveGaugeTypeWeightDTO

genCurveGaugeTypeWeightDTO :: Int -> Gen CurveGaugeTypeWeightDTO
genCurveGaugeTypeWeightDTO n =
  CurveGaugeTypeWeightDTO
    <$> arbitraryReducedMaybe n -- curveGaugeTypeWeightDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeTypeWeightDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeTypeWeightDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveGaugeTypeWeightDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeTypeWeightDTOType :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeTypeWeightDTOTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeTypeWeightDTOWeight :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeTypeWeightDTOVid :: Maybe Integer
  
instance Arbitrary CurveGaugeWeightDTO where
  arbitrary = sized genCurveGaugeWeightDTO

genCurveGaugeWeightDTO :: Int -> Gen CurveGaugeWeightDTO
genCurveGaugeWeightDTO n =
  CurveGaugeWeightDTO
    <$> arbitraryReducedMaybe n -- curveGaugeWeightDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeWeightDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeWeightDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveGaugeWeightDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWeightDTOGauge :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWeightDTOTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWeightDTOWeight :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWeightDTOVid :: Maybe Integer
  
instance Arbitrary CurveGaugeWeightVoteDTO where
  arbitrary = sized genCurveGaugeWeightVoteDTO

genCurveGaugeWeightVoteDTO :: Int -> Gen CurveGaugeWeightVoteDTO
genCurveGaugeWeightVoteDTO n =
  CurveGaugeWeightVoteDTO
    <$> arbitraryReducedMaybe n -- curveGaugeWeightVoteDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeWeightVoteDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeWeightVoteDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveGaugeWeightVoteDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWeightVoteDTOGauge :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWeightVoteDTOUser :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWeightVoteDTOTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWeightVoteDTOWeight :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWeightVoteDTOVid :: Maybe Integer
  
instance Arbitrary CurveGaugeWithdrawDTO where
  arbitrary = sized genCurveGaugeWithdrawDTO

genCurveGaugeWithdrawDTO :: Int -> Gen CurveGaugeWithdrawDTO
genCurveGaugeWithdrawDTO n =
  CurveGaugeWithdrawDTO
    <$> arbitraryReducedMaybe n -- curveGaugeWithdrawDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeWithdrawDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveGaugeWithdrawDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveGaugeWithdrawDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWithdrawDTOGauge :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWithdrawDTOProvider :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWithdrawDTOValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveGaugeWithdrawDTOVid :: Maybe Integer
  
instance Arbitrary CurveHourlyVolumeDTO where
  arbitrary = sized genCurveHourlyVolumeDTO

genCurveHourlyVolumeDTO :: Int -> Gen CurveHourlyVolumeDTO
genCurveHourlyVolumeDTO n =
  CurveHourlyVolumeDTO
    <$> arbitraryReducedMaybe n -- curveHourlyVolumeDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveHourlyVolumeDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveHourlyVolumeDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveHourlyVolumeDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveHourlyVolumeDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveHourlyVolumeDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveHourlyVolumeDTOVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveHourlyVolumeDTOVid :: Maybe Integer
  
instance Arbitrary CurveLpTokenDTO where
  arbitrary = sized genCurveLpTokenDTO

genCurveLpTokenDTO :: Int -> Gen CurveLpTokenDTO
genCurveLpTokenDTO n =
  CurveLpTokenDTO
    <$> arbitraryReducedMaybe n -- curveLpTokenDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveLpTokenDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveLpTokenDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveLpTokenDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveLpTokenDTOAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveLpTokenDTODecimals :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveLpTokenDTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveLpTokenDTOSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveLpTokenDTOGauge :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveLpTokenDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveLpTokenDTOVid :: Maybe Integer
  
instance Arbitrary CurvePoolDTO where
  arbitrary = sized genCurvePoolDTO

genCurvePoolDTO :: Int -> Gen CurvePoolDTO
genCurvePoolDTO n =
  CurvePoolDTO
    <$> arbitraryReducedMaybe n -- curvePoolDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curvePoolDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curvePoolDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curvePoolDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOIsMeta :: Maybe Bool
    <*> arbitraryReducedMaybe n -- curvePoolDTORegistryAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOSwapAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOLpToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOCoinCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOUnderlyingCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOA :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOFee :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOAdminFee :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOOwner :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOVirtualPrice :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOLocked :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOAddedAt :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curvePoolDTOAddedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOAddedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTORemovedAt :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTORemovedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTORemovedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOExchangeCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOGaugeCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curvePoolDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curvePoolDTOEvaluatedAsk :: Maybe Double
  
instance Arbitrary CurveProposalDTO where
  arbitrary = sized genCurveProposalDTO

genCurveProposalDTO :: Int -> Gen CurveProposalDTO
genCurveProposalDTO n =
  CurveProposalDTO
    <$> arbitraryReducedMaybe n -- curveProposalDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveProposalDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveProposalDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveProposalDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTONumber :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOApp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOCreator :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOExecutionScript :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOExpireDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOMinimumQuorum :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTORequiredSupport :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOSnapshotBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOVotingPower :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOMetadata :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOText :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOVoteCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOPositiveVoteCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTONegativeVoteCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOCurrentQuorum :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOCurrentSupport :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOStakedSupport :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOTotalStaked :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOCreated :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOCreatedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOCreatedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOUpdated :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOUpdatedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOUpdatedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOExecuted :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOExecutedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOExecutedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalDTOVid :: Maybe Integer
  
instance Arbitrary CurveProposalVoteDTO where
  arbitrary = sized genCurveProposalVoteDTO

genCurveProposalVoteDTO :: Int -> Gen CurveProposalVoteDTO
genCurveProposalVoteDTO n =
  CurveProposalVoteDTO
    <$> arbitraryReducedMaybe n -- curveProposalVoteDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveProposalVoteDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveProposalVoteDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveProposalVoteDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalVoteDTOProposal :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalVoteDTOSupports :: Maybe Bool
    <*> arbitraryReducedMaybe n -- curveProposalVoteDTOStake :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalVoteDTOVoter :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalVoteDTOCreated :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalVoteDTOCreatedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalVoteDTOCreatedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveProposalVoteDTOVid :: Maybe Integer
  
instance Arbitrary CurveRemoveLiquidityEventDTO where
  arbitrary = sized genCurveRemoveLiquidityEventDTO

genCurveRemoveLiquidityEventDTO :: Int -> Gen CurveRemoveLiquidityEventDTO
genCurveRemoveLiquidityEventDTO n =
  CurveRemoveLiquidityEventDTO
    <$> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOProvider :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOTokenAmounts :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOFees :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOTokenSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOInvariant :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityEventDTOVid :: Maybe Integer
  
instance Arbitrary CurveRemoveLiquidityOneEventDTO where
  arbitrary = sized genCurveRemoveLiquidityOneEventDTO

genCurveRemoveLiquidityOneEventDTO :: Int -> Gen CurveRemoveLiquidityOneEventDTO
genCurveRemoveLiquidityOneEventDTO n =
  CurveRemoveLiquidityOneEventDTO
    <$> arbitraryReducedMaybe n -- curveRemoveLiquidityOneEventDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityOneEventDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityOneEventDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityOneEventDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityOneEventDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityOneEventDTOProvider :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityOneEventDTOTokenAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityOneEventDTOCoinAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityOneEventDTOBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityOneEventDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityOneEventDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveRemoveLiquidityOneEventDTOVid :: Maybe Integer
  
instance Arbitrary CurveSystemStateDTO where
  arbitrary = sized genCurveSystemStateDTO

genCurveSystemStateDTO :: Int -> Gen CurveSystemStateDTO
genCurveSystemStateDTO n =
  CurveSystemStateDTO
    <$> arbitraryReducedMaybe n -- curveSystemStateDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveSystemStateDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveSystemStateDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveSystemStateDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveSystemStateDTORegistryContract :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveSystemStateDTOContractCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveSystemStateDTOGaugeCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveSystemStateDTOGaugeTypeCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveSystemStateDTOPoolCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveSystemStateDTOTokenCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveSystemStateDTOTotalPoolCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveSystemStateDTOUpdated :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveSystemStateDTOUpdatedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveSystemStateDTOUpdatedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveSystemStateDTOVid :: Maybe Integer
  
instance Arbitrary CurveTokenDTO where
  arbitrary = sized genCurveTokenDTO

genCurveTokenDTO :: Int -> Gen CurveTokenDTO
genCurveTokenDTO n =
  CurveTokenDTO
    <$> arbitraryReducedMaybe n -- curveTokenDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveTokenDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveTokenDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveTokenDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveTokenDTOAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveTokenDTODecimals :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveTokenDTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveTokenDTOSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveTokenDTOPools :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- curveTokenDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveTokenDTOTokenSymbol :: Maybe Text
  
instance Arbitrary CurveTransferOwnershipEventDTO where
  arbitrary = sized genCurveTransferOwnershipEventDTO

genCurveTransferOwnershipEventDTO :: Int -> Gen CurveTransferOwnershipEventDTO
genCurveTransferOwnershipEventDTO n =
  CurveTransferOwnershipEventDTO
    <$> arbitraryReducedMaybe n -- curveTransferOwnershipEventDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveTransferOwnershipEventDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveTransferOwnershipEventDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveTransferOwnershipEventDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveTransferOwnershipEventDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveTransferOwnershipEventDTONewAdmin :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveTransferOwnershipEventDTOBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveTransferOwnershipEventDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveTransferOwnershipEventDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveTransferOwnershipEventDTOVid :: Maybe Integer
  
instance Arbitrary CurveUnderlyingCoinDTO where
  arbitrary = sized genCurveUnderlyingCoinDTO

genCurveUnderlyingCoinDTO :: Int -> Gen CurveUnderlyingCoinDTO
genCurveUnderlyingCoinDTO n =
  CurveUnderlyingCoinDTO
    <$> arbitraryReducedMaybe n -- curveUnderlyingCoinDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveUnderlyingCoinDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveUnderlyingCoinDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveUnderlyingCoinDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveUnderlyingCoinDTOIndex :: Maybe Int
    <*> arbitraryReducedMaybe n -- curveUnderlyingCoinDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveUnderlyingCoinDTOToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveUnderlyingCoinDTOCoin :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveUnderlyingCoinDTOBalance :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveUnderlyingCoinDTOUpdated :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveUnderlyingCoinDTOUpdatedAtBlock :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveUnderlyingCoinDTOUpdatedAtTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveUnderlyingCoinDTOVid :: Maybe Integer
  
instance Arbitrary CurveVotingAppDTO where
  arbitrary = sized genCurveVotingAppDTO

genCurveVotingAppDTO :: Int -> Gen CurveVotingAppDTO
genCurveVotingAppDTO n =
  CurveVotingAppDTO
    <$> arbitraryReducedMaybe n -- curveVotingAppDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveVotingAppDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveVotingAppDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveVotingAppDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveVotingAppDTOAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveVotingAppDTOCodename :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveVotingAppDTOMinimumBalance :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveVotingAppDTOMinimumQuorum :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveVotingAppDTOMinimumTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveVotingAppDTORequiredSupport :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveVotingAppDTOVoteTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveVotingAppDTOProposalCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveVotingAppDTOVoteCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveVotingAppDTOToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveVotingAppDTOVid :: Maybe Integer
  
instance Arbitrary CurveWeeklyVolumeDTO where
  arbitrary = sized genCurveWeeklyVolumeDTO

genCurveWeeklyVolumeDTO :: Int -> Gen CurveWeeklyVolumeDTO
genCurveWeeklyVolumeDTO n =
  CurveWeeklyVolumeDTO
    <$> arbitraryReducedMaybe n -- curveWeeklyVolumeDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveWeeklyVolumeDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- curveWeeklyVolumeDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- curveWeeklyVolumeDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveWeeklyVolumeDTOPool :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveWeeklyVolumeDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveWeeklyVolumeDTOVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- curveWeeklyVolumeDTOVid :: Maybe Integer
  
instance Arbitrary DexBatchDTO where
  arbitrary = sized genDexBatchDTO

genDexBatchDTO :: Int -> Gen DexBatchDTO
genDexBatchDTO n =
  DexBatchDTO
    <$> arbitraryReducedMaybe n -- dexBatchDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexBatchDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexBatchDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexBatchDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexBatchDTOStartEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexBatchDTOEndEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexBatchDTOSolution :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexBatchDTOFirstSolutionEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexBatchDTOLastRevertEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexBatchDTOTxHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexBatchDTOVid :: Maybe Integer
  
instance Arbitrary DexDepositDTO where
  arbitrary = sized genDexDepositDTO

genDexDepositDTO :: Int -> Gen DexDepositDTO
genDexDepositDTO n =
  DexDepositDTO
    <$> arbitraryReducedMaybe n -- dexDepositDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexDepositDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexDepositDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexDepositDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexDepositDTOUser :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexDepositDTOTokenAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexDepositDTOAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexDepositDTOBatchId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexDepositDTOCreateEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexDepositDTOTxHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexDepositDTOVid :: Maybe Integer
  
instance Arbitrary DexOrderDTO where
  arbitrary = sized genDexOrderDTO

genDexOrderDTO :: Int -> Gen DexOrderDTO
genDexOrderDTO n =
  DexOrderDTO
    <$> arbitraryReducedMaybe n -- dexOrderDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexOrderDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexOrderDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexOrderDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOOwner :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOOrderId :: Maybe Int
    <*> arbitraryReducedMaybe n -- dexOrderDTOFromBatchId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOFromEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOUntilBatchId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOUntilEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOBuyToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOSellToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOPriceNumerator :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOPriceDenominator :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOMaxSellAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOMinReceiveAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOSoldVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOBoughtVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOCreateEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOCancelEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTODeleteEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOTxHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOTxLogIndex :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexOrderDTOVid :: Maybe Integer
  
instance Arbitrary DexPriceDTO where
  arbitrary = sized genDexPriceDTO

genDexPriceDTO :: Int -> Gen DexPriceDTO
genDexPriceDTO n =
  DexPriceDTO
    <$> arbitraryReducedMaybe n -- dexPriceDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexPriceDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexPriceDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexPriceDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexPriceDTOToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexPriceDTOBatchId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexPriceDTOPriceInOwlNumerator :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexPriceDTOPriceInOwlDenominator :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexPriceDTOVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexPriceDTOCreateEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexPriceDTOTxHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexPriceDTOVid :: Maybe Integer
  
instance Arbitrary DexSolutionDTO where
  arbitrary = sized genDexSolutionDTO

genDexSolutionDTO :: Int -> Gen DexSolutionDTO
genDexSolutionDTO n =
  DexSolutionDTO
    <$> arbitraryReducedMaybe n -- dexSolutionDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexSolutionDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexSolutionDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexSolutionDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexSolutionDTOBatch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexSolutionDTOSolver :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexSolutionDTOFeeReward :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexSolutionDTOObjectiveValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexSolutionDTOUtility :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexSolutionDTOTrades :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- dexSolutionDTOCreateEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexSolutionDTORevertEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexSolutionDTOTxHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexSolutionDTOTxLogIndex :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexSolutionDTOVid :: Maybe Integer
  
instance Arbitrary DexStatsDTO where
  arbitrary = sized genDexStatsDTO

genDexStatsDTO :: Int -> Gen DexStatsDTO
genDexStatsDTO n =
  DexStatsDTO
    <$> arbitraryReducedMaybe n -- dexStatsDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexStatsDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexStatsDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexStatsDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexStatsDTOVolumeInOwl :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexStatsDTOUtilityInOwl :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexStatsDTOOwlBurnt :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexStatsDTOSettledBatchCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- dexStatsDTOSettledTradeCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- dexStatsDTOListedTokens :: Maybe Int
    <*> arbitraryReducedMaybe n -- dexStatsDTOVid :: Maybe Integer
  
instance Arbitrary DexTokenDTO where
  arbitrary = sized genDexTokenDTO

genDexTokenDTO :: Int -> Gen DexTokenDTO
genDexTokenDTO n =
  DexTokenDTO
    <$> arbitraryReducedMaybe n -- dexTokenDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexTokenDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexTokenDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexTokenDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTokenDTOAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTokenDTOFromBatchId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTokenDTOSymbol :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTokenDTODecimals :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTokenDTOName :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTokenDTOSellVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTokenDTOCreateEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTokenDTOTxHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexTokenDTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexTokenDTOTokenSymbol :: Maybe Text
  
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
  
instance Arbitrary DexUserDTO where
  arbitrary = sized genDexUserDTO

genDexUserDTO :: Int -> Gen DexUserDTO
genDexUserDTO n =
  DexUserDTO
    <$> arbitraryReducedMaybe n -- dexUserDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexUserDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexUserDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexUserDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexUserDTOFromBatchId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexUserDTOCreateEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexUserDTOTxHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexUserDTOVid :: Maybe Integer
  
instance Arbitrary DexWithdrawDTO where
  arbitrary = sized genDexWithdrawDTO

genDexWithdrawDTO :: Int -> Gen DexWithdrawDTO
genDexWithdrawDTO n =
  DexWithdrawDTO
    <$> arbitraryReducedMaybe n -- dexWithdrawDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexWithdrawDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexWithdrawDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexWithdrawDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawDTOUser :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawDTOTokenAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawDTOAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawDTOCreateEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawDTOCreateBatchId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawDTOTxHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawDTOVid :: Maybe Integer
  
instance Arbitrary DexWithdrawRequestDTO where
  arbitrary = sized genDexWithdrawRequestDTO

genDexWithdrawRequestDTO :: Int -> Gen DexWithdrawRequestDTO
genDexWithdrawRequestDTO n =
  DexWithdrawRequestDTO
    <$> arbitraryReducedMaybe n -- dexWithdrawRequestDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexWithdrawRequestDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- dexWithdrawRequestDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- dexWithdrawRequestDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawRequestDTOUser :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawRequestDTOTokenAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawRequestDTOAmount :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawRequestDTOWithdrawableFromBatchId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawRequestDTOCreateEpoch :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawRequestDTOCreateBatchId :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawRequestDTOTxHash :: Maybe Text
    <*> arbitraryReducedMaybe n -- dexWithdrawRequestDTOVid :: Maybe Integer
  
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
  
instance Arbitrary SushiswapBundleDTO where
  arbitrary = sized genSushiswapBundleDTO

genSushiswapBundleDTO :: Int -> Gen SushiswapBundleDTO
genSushiswapBundleDTO n =
  SushiswapBundleDTO
    <$> arbitraryReducedMaybe n -- sushiswapBundleDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapBundleDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapBundleDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapBundleDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBundleDTOEthPrice :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBundleDTOVid :: Maybe Integer
  
instance Arbitrary SushiswapBurnDTO where
  arbitrary = sized genSushiswapBurnDTO

genSushiswapBurnDTO :: Int -> Gen SushiswapBurnDTO
genSushiswapBurnDTO n =
  SushiswapBurnDTO
    <$> arbitraryReducedMaybe n -- sushiswapBurnDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOSender :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOAmount0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOAmount1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOTo :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOLogIndex :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOAmountUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOComplete :: Maybe Bool
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOFeeTo :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOFeeLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapBurnDTOVid :: Maybe Integer
  
instance Arbitrary SushiswapDayDataDTO where
  arbitrary = sized genSushiswapDayDataDTO

genSushiswapDayDataDTO :: Int -> Gen SushiswapDayDataDTO
genSushiswapDayDataDTO n =
  SushiswapDayDataDTO
    <$> arbitraryReducedMaybe n -- sushiswapDayDataDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapDayDataDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapDayDataDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapDayDataDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapDayDataDTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- sushiswapDayDataDTOFactory :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapDayDataDTOVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapDayDataDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapDayDataDTOUntrackedVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapDayDataDTOLiquidityEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapDayDataDTOLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapDayDataDTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapDayDataDTOVid :: Maybe Integer
  
instance Arbitrary SushiswapFactoryDTO where
  arbitrary = sized genSushiswapFactoryDTO

genSushiswapFactoryDTO :: Int -> Gen SushiswapFactoryDTO
genSushiswapFactoryDTO n =
  SushiswapFactoryDTO
    <$> arbitraryReducedMaybe n -- sushiswapFactoryDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTOPairCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTOVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTOLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTOLiquidityEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTOTokenCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTOUserCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapFactoryDTOVid :: Maybe Integer
  
instance Arbitrary SushiswapHourDataDTO where
  arbitrary = sized genSushiswapHourDataDTO

genSushiswapHourDataDTO :: Int -> Gen SushiswapHourDataDTO
genSushiswapHourDataDTO n =
  SushiswapHourDataDTO
    <$> arbitraryReducedMaybe n -- sushiswapHourDataDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapHourDataDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapHourDataDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapHourDataDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapHourDataDTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- sushiswapHourDataDTOFactory :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapHourDataDTOVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapHourDataDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapHourDataDTOUntrackedVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapHourDataDTOLiquidityEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapHourDataDTOLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapHourDataDTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapHourDataDTOVid :: Maybe Integer
  
instance Arbitrary SushiswapLiquidityPositionDTO where
  arbitrary = sized genSushiswapLiquidityPositionDTO

genSushiswapLiquidityPositionDTO :: Int -> Gen SushiswapLiquidityPositionDTO
genSushiswapLiquidityPositionDTO n =
  SushiswapLiquidityPositionDTO
    <$> arbitraryReducedMaybe n -- sushiswapLiquidityPositionDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionDTOUser :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionDTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionDTOLiquidityTokenBalance :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionDTOBlock :: Maybe Int
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionDTOTimestamp :: Maybe Int
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionDTOVid :: Maybe Integer
  
instance Arbitrary SushiswapLiquidityPositionSnapshotDTO where
  arbitrary = sized genSushiswapLiquidityPositionSnapshotDTO

genSushiswapLiquidityPositionSnapshotDTO :: Int -> Gen SushiswapLiquidityPositionSnapshotDTO
genSushiswapLiquidityPositionSnapshotDTO n =
  SushiswapLiquidityPositionSnapshotDTO
    <$> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOLiquidityPosition :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOTimestamp :: Maybe Int
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOBlock :: Maybe Int
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOUser :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOToken0PriceUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOToken1PriceUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOReserve0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOReserve1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOReserveUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOLiquidityTokenTotalSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOLiquidityTokenBalance :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapLiquidityPositionSnapshotDTOVid :: Maybe Integer
  
instance Arbitrary SushiswapMintDTO where
  arbitrary = sized genSushiswapMintDTO

genSushiswapMintDTO :: Int -> Gen SushiswapMintDTO
genSushiswapMintDTO n =
  SushiswapMintDTO
    <$> arbitraryReducedMaybe n -- sushiswapMintDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapMintDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOTo :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOSender :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOAmount0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOAmount1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOLogIndex :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOAmountUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOFeeTo :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOFeeLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapMintDTOVid :: Maybe Integer
  
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
  
instance Arbitrary SushiswapPairDayDataDTO where
  arbitrary = sized genSushiswapPairDayDataDTO

genSushiswapPairDayDataDTO :: Int -> Gen SushiswapPairDayDataDTO
genSushiswapPairDayDataDTO n =
  SushiswapPairDayDataDTO
    <$> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOReserve0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOReserve1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOTotalSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOReserveUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairDayDataDTOVid :: Maybe Integer
  
instance Arbitrary SushiswapPairHourDataDTO where
  arbitrary = sized genSushiswapPairHourDataDTO

genSushiswapPairHourDataDTO :: Int -> Gen SushiswapPairHourDataDTO
genSushiswapPairHourDataDTO n =
  SushiswapPairHourDataDTO
    <$> arbitraryReducedMaybe n -- sushiswapPairHourDataDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTOReserve0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTOReserve1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTOReserveUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTOVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTOVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapPairHourDataDTOVid :: Maybe Integer
  
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
  
instance Arbitrary SushiswapTokenDayDataDTO where
  arbitrary = sized genSushiswapTokenDayDataDTO

genSushiswapTokenDayDataDTO :: Int -> Gen SushiswapTokenDayDataDTO
genSushiswapTokenDayDataDTO n =
  SushiswapTokenDayDataDTO
    <$> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOVolume :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOLiquidityEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOPriceUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTokenDayDataDTOVid :: Maybe Integer
  
instance Arbitrary SushiswapTransactionDTO where
  arbitrary = sized genSushiswapTransactionDTO

genSushiswapTransactionDTO :: Int -> Gen SushiswapTransactionDTO
genSushiswapTransactionDTO n =
  SushiswapTransactionDTO
    <$> arbitraryReducedMaybe n -- sushiswapTransactionDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapTransactionDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapTransactionDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapTransactionDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTransactionDTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapTransactionDTOMints :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- sushiswapTransactionDTOBurns :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- sushiswapTransactionDTOSwaps :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- sushiswapTransactionDTOVid :: Maybe Integer
  
instance Arbitrary SushiswapUserDTO where
  arbitrary = sized genSushiswapUserDTO

genSushiswapUserDTO :: Int -> Gen SushiswapUserDTO
genSushiswapUserDTO n =
  SushiswapUserDTO
    <$> arbitraryReducedMaybe n -- sushiswapUserDTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapUserDTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- sushiswapUserDTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- sushiswapUserDTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- sushiswapUserDTOVid :: Maybe Integer
  
instance Arbitrary UniswapV2BundleV2DTO where
  arbitrary = sized genUniswapV2BundleV2DTO

genUniswapV2BundleV2DTO :: Int -> Gen UniswapV2BundleV2DTO
genUniswapV2BundleV2DTO n =
  UniswapV2BundleV2DTO
    <$> arbitraryReducedMaybe n -- uniswapV2BundleV2DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2BundleV2DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2BundleV2DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2BundleV2DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BundleV2DTOEthPrice :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BundleV2DTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2BundleV2DTOBlockRange :: Maybe Text
  
instance Arbitrary UniswapV2BurnV2DTO where
  arbitrary = sized genUniswapV2BurnV2DTO

genUniswapV2BurnV2DTO :: Int -> Gen UniswapV2BurnV2DTO
genUniswapV2BurnV2DTO n =
  UniswapV2BurnV2DTO
    <$> arbitraryReducedMaybe n -- uniswapV2BurnV2DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2BurnV2DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2BurnV2DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2BurnV2DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnV2DTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnV2DTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnV2DTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnV2DTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnV2DTOSender :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnV2DTOAmount0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnV2DTOAmount1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnV2DTOTo :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnV2DTOLogIndex :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnV2DTOAmountUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnV2DTONeedsComplete :: Maybe Bool
    <*> arbitraryReducedMaybe n -- uniswapV2BurnV2DTOFeeTo :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnV2DTOFeeLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2BurnV2DTOVid :: Maybe Integer
  
instance Arbitrary UniswapV2LiquidityPositionSnapshotV2DTO where
  arbitrary = sized genUniswapV2LiquidityPositionSnapshotV2DTO

genUniswapV2LiquidityPositionSnapshotV2DTO :: Int -> Gen UniswapV2LiquidityPositionSnapshotV2DTO
genUniswapV2LiquidityPositionSnapshotV2DTO n =
  UniswapV2LiquidityPositionSnapshotV2DTO
    <$> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotV2DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotV2DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotV2DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotV2DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotV2DTOLiquidityPosition :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotV2DTOTimestamp :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotV2DTOBlock :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotV2DTOUser :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotV2DTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotV2DTOToken0PriceUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotV2DTOToken1PriceUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotV2DTOReserve0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotV2DTOReserve1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotV2DTOReserveUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotV2DTOLiquidityTokenTotalSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotV2DTOLiquidityTokenBalance :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotV2DTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionSnapshotV2DTOBlockRange :: Maybe Text
  
instance Arbitrary UniswapV2LiquidityPositionV2DTO where
  arbitrary = sized genUniswapV2LiquidityPositionV2DTO

genUniswapV2LiquidityPositionV2DTO :: Int -> Gen UniswapV2LiquidityPositionV2DTO
genUniswapV2LiquidityPositionV2DTO n =
  UniswapV2LiquidityPositionV2DTO
    <$> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionV2DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionV2DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionV2DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionV2DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionV2DTOUser :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionV2DTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionV2DTOLiquidityTokenBalance :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2LiquidityPositionV2DTOVid :: Maybe Integer
  
instance Arbitrary UniswapV2MintV2DTO where
  arbitrary = sized genUniswapV2MintV2DTO

genUniswapV2MintV2DTO :: Int -> Gen UniswapV2MintV2DTO
genUniswapV2MintV2DTO n =
  UniswapV2MintV2DTO
    <$> arbitraryReducedMaybe n -- uniswapV2MintV2DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2MintV2DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2MintV2DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2MintV2DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintV2DTOTransaction :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintV2DTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintV2DTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintV2DTOTo :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintV2DTOLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintV2DTOSender :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintV2DTOAmount0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintV2DTOAmount1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintV2DTOLogIndex :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintV2DTOAmountUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintV2DTOFeeTo :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintV2DTOFeeLiquidity :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2MintV2DTOVid :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2MintV2DTOBlockRange :: Maybe Text
  
instance Arbitrary UniswapV2PairDayDataV2DTO where
  arbitrary = sized genUniswapV2PairDayDataV2DTO

genUniswapV2PairDayDataV2DTO :: Int -> Gen UniswapV2PairDayDataV2DTO
genUniswapV2PairDayDataV2DTO n =
  UniswapV2PairDayDataV2DTO
    <$> arbitraryReducedMaybe n -- uniswapV2PairDayDataV2DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataV2DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataV2DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataV2DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataV2DTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataV2DTOPairAddress :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataV2DTOToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataV2DTOToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataV2DTOReserve0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataV2DTOReserve1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataV2DTOTotalSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataV2DTOReserveUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataV2DTODailyVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataV2DTODailyVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataV2DTODailyVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataV2DTODailyTxns :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairDayDataV2DTOVid :: Maybe Integer
  
instance Arbitrary UniswapV2PairHourDataV2DTO where
  arbitrary = sized genUniswapV2PairHourDataV2DTO

genUniswapV2PairHourDataV2DTO :: Int -> Gen UniswapV2PairHourDataV2DTO
genUniswapV2PairHourDataV2DTO n =
  UniswapV2PairHourDataV2DTO
    <$> arbitraryReducedMaybe n -- uniswapV2PairHourDataV2DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataV2DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataV2DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataV2DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataV2DTOHourStartUnix :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataV2DTOPair :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataV2DTOReserve0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataV2DTOReserve1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataV2DTOTotalSupply :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataV2DTOReserveUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataV2DTOHourlyVolumeToken0 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataV2DTOHourlyVolumeToken1 :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataV2DTOHourlyVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataV2DTOHourlyTxns :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2PairHourDataV2DTOVid :: Maybe Integer
  
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
  
instance Arbitrary UniswapV2TokenDayDataV2DTO where
  arbitrary = sized genUniswapV2TokenDayDataV2DTO

genUniswapV2TokenDayDataV2DTO :: Int -> Gen UniswapV2TokenDayDataV2DTO
genUniswapV2TokenDayDataV2DTO n =
  UniswapV2TokenDayDataV2DTO
    <$> arbitraryReducedMaybe n -- uniswapV2TokenDayDataV2DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataV2DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataV2DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataV2DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataV2DTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataV2DTOToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataV2DTODailyVolumeToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataV2DTODailyVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataV2DTODailyVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataV2DTODailyTxns :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataV2DTOTotalLiquidityToken :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataV2DTOTotalLiquidityEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataV2DTOTotalLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataV2DTOPriceUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TokenDayDataV2DTOVid :: Maybe Integer
  
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
  
instance Arbitrary UniswapV2TransactionV2DTO where
  arbitrary = sized genUniswapV2TransactionV2DTO

genUniswapV2TransactionV2DTO :: Int -> Gen UniswapV2TransactionV2DTO
genUniswapV2TransactionV2DTO n =
  UniswapV2TransactionV2DTO
    <$> arbitraryReducedMaybe n -- uniswapV2TransactionV2DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2TransactionV2DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2TransactionV2DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2TransactionV2DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TransactionV2DTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2TransactionV2DTOMints :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uniswapV2TransactionV2DTOBurns :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uniswapV2TransactionV2DTOSwaps :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- uniswapV2TransactionV2DTOVid :: Maybe Integer
  
instance Arbitrary UniswapV2UniswapDayDataV2DTO where
  arbitrary = sized genUniswapV2UniswapDayDataV2DTO

genUniswapV2UniswapDayDataV2DTO :: Int -> Gen UniswapV2UniswapDayDataV2DTO
genUniswapV2UniswapDayDataV2DTO n =
  UniswapV2UniswapDayDataV2DTO
    <$> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataV2DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataV2DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataV2DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataV2DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataV2DTODate :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataV2DTODailyVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataV2DTODailyVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataV2DTODailyVolumeUntracked :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataV2DTOTotalVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataV2DTOTotalLiquidityEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataV2DTOTotalVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataV2DTOTotalLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataV2DTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapDayDataV2DTOVid :: Maybe Integer
  
instance Arbitrary UniswapV2UniswapFactoryV2DTO where
  arbitrary = sized genUniswapV2UniswapFactoryV2DTO

genUniswapV2UniswapFactoryV2DTO :: Int -> Gen UniswapV2UniswapFactoryV2DTO
genUniswapV2UniswapFactoryV2DTO n =
  UniswapV2UniswapFactoryV2DTO
    <$> arbitraryReducedMaybe n -- uniswapV2UniswapFactoryV2DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapFactoryV2DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapFactoryV2DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapFactoryV2DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapFactoryV2DTOPairCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapFactoryV2DTOTotalVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapFactoryV2DTOTotalVolumeEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapFactoryV2DTOUntrackedVolumeUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapFactoryV2DTOTotalLiquidityUsd :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapFactoryV2DTOTotalLiquidityEth :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapFactoryV2DTOTxCount :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UniswapFactoryV2DTOVid :: Maybe Integer
  
instance Arbitrary UniswapV2UserV2DTO where
  arbitrary = sized genUniswapV2UserV2DTO

genUniswapV2UserV2DTO :: Int -> Gen UniswapV2UserV2DTO
genUniswapV2UserV2DTO n =
  UniswapV2UserV2DTO
    <$> arbitraryReducedMaybe n -- uniswapV2UserV2DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2UserV2DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV2UserV2DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV2UserV2DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UserV2DTOUsdSwapped :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV2UserV2DTOVid :: Maybe Integer
  
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
  
instance Arbitrary UniswapV3TransactionV3DTO where
  arbitrary = sized genUniswapV3TransactionV3DTO

genUniswapV3TransactionV3DTO :: Int -> Gen UniswapV3TransactionV3DTO
genUniswapV3TransactionV3DTO n =
  UniswapV3TransactionV3DTO
    <$> arbitraryReducedMaybe n -- uniswapV3TransactionV3DTOEntryTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TransactionV3DTORecvTime :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- uniswapV3TransactionV3DTOBlockNumber :: Maybe Integer
    <*> arbitraryReducedMaybe n -- uniswapV3TransactionV3DTOId :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TransactionV3DTOTimestamp :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TransactionV3DTOGasUsed :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TransactionV3DTOGasPrice :: Maybe Text
    <*> arbitraryReducedMaybe n -- uniswapV3TransactionV3DTOVid :: Maybe Integer
  
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

