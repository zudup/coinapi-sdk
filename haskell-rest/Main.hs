{-# LANGUAGE OverloadedStrings #-}

module Main where

import CoinApi
import qualified CoinApi.Monadic as M
import Data.Time
import Control.Monad.State (liftIO)

key = "73034021-0EBC-493D-8A00-E0F138111F41"
asset_id_base = "BTC"
asset_id_quote = "USD"
symbol_id = "BITSTAMP_SPOT_BTC_USD"
period_id = "1HRS"
time_start = UTCTime (fromGregorian 2016 01 01) (fromIntegral 0)
limit = 100

-- using pure interface
pure :: IO ()
pure = do
  putStrLn "Exchanges:"
  ex1 <- metadata_list_exchanges key
  case ex1 of
    Right result -> mapM_ print result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn $ asset_id_base ++ "/" ++ asset_id_quote ++ " rate"
  ex2 <- exchange_rates_get_specific_rate key asset_id_base asset_id_quote
  case ex2 of
    Right result -> print result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn $ "all " ++ asset_id_base ++ " rates"
  ex3 <- exchange_rates_get_all_current_rates key asset_id_base
  case ex3 of
    Right result -> mapM_ print result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn "Periods:"
  ex4 <- ohlcv_list_all_periods key
  case ex4 of
    Right result -> mapM_ print result
    Left  err    -> putStrLn err
  putStrLn ""

  putStrLn "Quotes history:"
  ex5 <- quotes_historical_data_l key symbol_id time_start limit
  case ex5 of
    Right result -> mapM_ print result
    Left  err    -> putStrLn err
  putStrLn ""

-- using monadic interface
monadic :: IO ()
monadic = M.withApiKey key $ do ex1 <- M.metadata_list_exchanges
                                liftIO $ do putStrLn "Exchanges:"
                                            case ex1 of
                                              Right result -> mapM_ print result
                                              Left  err    -> putStrLn err
                                            putStrLn ""

                                
                                ex2 <- M.exchange_rates_get_specific_rate asset_id_base asset_id_quote
                                liftIO $ do putStrLn $ asset_id_base ++ "/" ++ asset_id_quote ++ " rate"
                                            case ex2 of
                                              Right result -> print result
                                              Left  err    -> putStrLn err
                                            putStrLn ""

                                ex3 <- M.exchange_rates_get_all_current_rates asset_id_base
                                liftIO $ do putStrLn $ "all " ++ asset_id_base ++ " rates"
                                            case ex3 of
                                              Right result -> mapM_ print result
                                              Left  err    -> putStrLn err
                                            putStrLn ""

                                ex4 <- M.ohlcv_list_all_periods
                                liftIO $ do putStrLn "Periods:"
                                            case ex4 of
                                              Right result -> mapM_ print result
                                              Left  err    -> putStrLn err
                                            putStrLn ""

                                ex5 <- M.quotes_historical_data_l symbol_id time_start limit
                                liftIO $ do putStrLn "Quotes history:"
                                            case ex5 of
                                              Right result -> mapM_ print result
                                              Left  err    -> putStrLn err
                                            putStrLn ""
                              

main = do putStrLn "Pure interface:"
          Main.pure
          putStrLn "Monadic interface:"
          Main.monadic
