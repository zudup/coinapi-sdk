(ns on-chain-api.api.uniswap-v-
  (:require [on-chain-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [on-chain-api.specs.sushiswap/factory-dto :refer :all]
            [on-chain-api.specs.curve/gauge-type-dto :refer :all]
            [on-chain-api.specs.curve/gauge-weight-vote-dto :refer :all]
            [on-chain-api.specs.sushiswap/token-day-data-dto :refer :all]
            [on-chain-api.specs.curve/gauge-withdraw-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/burn-dto :refer :all]
            [on-chain-api.specs.dex/deposit-dto :refer :all]
            [on-chain-api.specs.sushiswap/mint-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/pool-dto :refer :all]
            [on-chain-api.specs.curve/proposal-dto :refer :all]
            [on-chain-api.specs.sushiswap/liquidity-position-snapshot-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/swap-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/position-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/liquidity-position-snapshot-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/pair-day-data-dto :refer :all]
            [on-chain-api.specs.curve/transfer-ownership-event-dto :refer :all]
            [on-chain-api.specs.sushiswap/day-data-dto :refer :all]
            [on-chain-api.specs.curve/proposal-vote-dto :refer :all]
            [on-chain-api.specs.curve/coin-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/transaction-dto :refer :all]
            [on-chain-api.specs.curve/account-dto :refer :all]
            [on-chain-api.specs.curve/underlying-coin-dto :refer :all]
            [on-chain-api.specs.cow/trade-dto :refer :all]
            [on-chain-api.specs.curve/gauge-deposit-dto :refer :all]
            [on-chain-api.specs.sushiswap/transaction-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/token-v3-day-data-dto :refer :all]
            [on-chain-api.specs.dex/trade-dto :refer :all]
            [on-chain-api.specs.dex/withdraw-dto :refer :all]
            [on-chain-api.specs.curve/gauge-liquidity-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/pool-day-data-dto :refer :all]
            [on-chain-api.specs.dex/token-dto :refer :all]
            [on-chain-api.specs.cow/settlement-dto :refer :all]
            [on-chain-api.specs.curve/gauge-weight-dto :refer :all]
            [on-chain-api.specs.sushiswap/swap-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/factory-dto :refer :all]
            [on-chain-api.specs.sushiswap/bundle-dto :refer :all]
            [on-chain-api.specs.cow/order-dto :refer :all]
            [on-chain-api.specs.curve/gauge-total-weight-dto :refer :all]
            [on-chain-api.specs.sushiswap/pair-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/swap-dto :refer :all]
            [on-chain-api.specs.curve/hourly-volume-dto :refer :all]
            [on-chain-api.specs.dex/price-dto :refer :all]
            [on-chain-api.specs.dex/solution-dto :refer :all]
            [on-chain-api.specs.curve/pool-dto :refer :all]
            [on-chain-api.specs.curve/gauge-dto :refer :all]
            [on-chain-api.specs.sushiswap/hour-data-dto :refer :all]
            [on-chain-api.specs.curve/contract-version-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/pair-hour-data-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/tick-day-data-dto :refer :all]
            [on-chain-api.specs.curve/remove-liquidity-one-event-dto :refer :all]
            [on-chain-api.specs.cow/token-dto :refer :all]
            [on-chain-api.specs.dex/batch-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/token-hour-data-dto :refer :all]
            [on-chain-api.specs.dex/order-dto :refer :all]
            [on-chain-api.specs.curve/token-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/user-dto :refer :all]
            [on-chain-api.specs.cow/user-dto :refer :all]
            [on-chain-api.specs.dex/user-dto :refer :all]
            [on-chain-api.specs.curve/admin-fee-change-log-dto :refer :all]
            [on-chain-api.specs.curve/gauge-type-weight-dto :refer :all]
            [on-chain-api.specs.curve/voting-app-dto :refer :all]
            [on-chain-api.specs.curve/system-state-dto :refer :all]
            [on-chain-api.specs.curve/add-liquidity-event-dto :refer :all]
            [on-chain-api.specs.curve/exchange-dto :refer :all]
            [on-chain-api.specs.sushiswap/pair-day-data-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/bundle-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/mint-dto :refer :all]
            [on-chain-api.specs.curve/amplification-coeff-change-log-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/liquidity-position-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/transaction-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/token-day-data-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/token-dto :refer :all]
            [on-chain-api.specs.transactions/e-trade-aggressive-side :refer :all]
            [on-chain-api.specs.sushiswap/token-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/pair-dto :refer :all]
            [on-chain-api.specs.sushiswap/burn-dto :refer :all]
            [on-chain-api.specs.sushiswap/user-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/uniswap-day-data-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/uniswap-day-data-dto :refer :all]
            [on-chain-api.specs.curve/fee-change-log-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/bundle-dto :refer :all]
            [on-chain-api.specs.curve/weekly-volume-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/pool-hour-data-dto :refer :all]
            [on-chain-api.specs.curve/contract-dto :refer :all]
            [on-chain-api.specs.numerics/big-integer :refer :all]
            [on-chain-api.specs.dex/withdraw-request-dto :refer :all]
            [on-chain-api.specs.curve/lp-token-dto :refer :all]
            [on-chain-api.specs.sushiswap/pair-hour-data-dto :refer :all]
            [on-chain-api.specs.curve/daily-volume-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/burn-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/tick-dto :refer :all]
            [on-chain-api.specs.dex/stats-dto :refer :all]
            [on-chain-api.specs.sushiswap/liquidity-position-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/uniswap-factory-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/position-snapshot-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/mint-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/token-dto :refer :all]
            [on-chain-api.specs.curve/remove-liquidity-event-dto :refer :all]
            )
  (:import (java.io File)))


(defn-spec uniswap-v2-bundles-current-with-http-info any?
  "Bundles (current)
  Gets bundles."
  []
  (call-api "/dapps/uniswapv2/bundles/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-bundles-current (s/coll-of uniswap-v2/bundle-dto-spec)
  "Bundles (current)
  Gets bundles."
  []
  (let [res (:data (uniswap-v2-bundles-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/bundle-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-burns-current-with-http-info any?
  "Burns (current)
  Gets burns."
  []
  (call-api "/dapps/uniswapv2/burns/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-burns-current (s/coll-of uniswap-v2/burn-dto-spec)
  "Burns (current)
  Gets burns."
  []
  (let [res (:data (uniswap-v2-burns-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/burn-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-get-bundles-historical-with-http-info any?
  "Bundles (historical)
  Gets bundles."
  ([] (uniswap-v2-get-bundles-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/bundles/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-bundles-historical (s/coll-of uniswap-v2/bundle-dto-spec)
  "Bundles (historical)
  Gets bundles."
  ([] (uniswap-v2-get-bundles-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-bundles-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/bundle-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-burns-historical-with-http-info any?
  "Burns (historical)
  Gets burns."
  ([] (uniswap-v2-get-burns-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/burns/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-burns-historical (s/coll-of uniswap-v2/burn-dto-spec)
  "Burns (historical)
  Gets burns."
  ([] (uniswap-v2-get-burns-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-burns-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/burn-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-liquidity-position-snapshots-historical-with-http-info any?
  "LiquidityPositionSnapshots (historical)
  Gets liquidityPositionSnapshots."
  ([] (uniswap-v2-get-liquidity-position-snapshots-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id user pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/liquidityPositionSnapshots/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "user" user "pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-liquidity-position-snapshots-historical (s/coll-of uniswap-v2/liquidity-position-snapshot-dto-spec)
  "LiquidityPositionSnapshots (historical)
  Gets liquidityPositionSnapshots."
  ([] (uniswap-v2-get-liquidity-position-snapshots-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-liquidity-position-snapshots-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/liquidity-position-snapshot-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-liquidity-positions-historical-with-http-info any?
  "LiquidityPositions (historical)
  Gets liquidityPositions."
  ([] (uniswap-v2-get-liquidity-positions-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id user pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/liquidityPositions/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "user" user "pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-liquidity-positions-historical (s/coll-of uniswap-v2/liquidity-position-dto-spec)
  "LiquidityPositions (historical)
  Gets liquidityPositions."
  ([] (uniswap-v2-get-liquidity-positions-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-liquidity-positions-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/liquidity-position-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-mints-historical-with-http-info any?
  "Mints (historical)
  Gets mints."
  ([] (uniswap-v2-get-mints-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/mints/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-mints-historical (s/coll-of uniswap-v2/mint-dto-spec)
  "Mints (historical)
  Gets mints."
  ([] (uniswap-v2-get-mints-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-mints-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/mint-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-pair-day-datas-historical-with-http-info any?
  "PairDayDatas (historical)
  Gets pairDayDatas."
  ([] (uniswap-v2-get-pair-day-datas-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id token_0 token_1]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/pairDayDatas/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "token_0" token_0 "token_1" token_1 }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-pair-day-datas-historical (s/coll-of uniswap-v2/pair-day-data-dto-spec)
  "PairDayDatas (historical)
  Gets pairDayDatas."
  ([] (uniswap-v2-get-pair-day-datas-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-pair-day-datas-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/pair-day-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-pair-hour-datas-historical-with-http-info any?
  "PairHourDatas (historical)
  Gets pairHourDatas."
  ([] (uniswap-v2-get-pair-hour-datas-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/pairHourDatas/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-pair-hour-datas-historical (s/coll-of uniswap-v2/pair-hour-data-dto-spec)
  "PairHourDatas (historical)
  Gets pairHourDatas."
  ([] (uniswap-v2-get-pair-hour-datas-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-pair-hour-datas-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/pair-hour-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-pairs-historical-with-http-info any?
  "Pairs (historical)
  Gets pairs."
  ([] (uniswap-v2-get-pairs-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id token_0 token_1]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/pairs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "token_0" token_0 "token_1" token_1 }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-pairs-historical (s/coll-of uniswap-v2/pair-dto-spec)
  "Pairs (historical)
  Gets pairs."
  ([] (uniswap-v2-get-pairs-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-pairs-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/pair-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-swaps-historical-with-http-info any?
  "Swaps (historical)
  Gets swaps."
  ([] (uniswap-v2-get-swaps-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/swaps/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-swaps-historical (s/coll-of uniswap-v2/swap-dto-spec)
  "Swaps (historical)
  Gets swaps."
  ([] (uniswap-v2-get-swaps-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-swaps-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/swap-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-token-day-datas-historical-with-http-info any?
  "TokenDayDatas (historical)
  Gets tokenDayDatas."
  ([] (uniswap-v2-get-token-day-datas-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/tokenDayDatas/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-token-day-datas-historical (s/coll-of uniswap-v2/token-day-data-dto-spec)
  "TokenDayDatas (historical)
  Gets tokenDayDatas."
  ([] (uniswap-v2-get-token-day-datas-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-token-day-datas-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/token-day-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-tokens-historical-with-http-info any?
  "Tokens (historical)
  Gets tokens."
  ([] (uniswap-v2-get-tokens-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id symbol name]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/tokens/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "symbol" symbol "name" name }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-tokens-historical (s/coll-of uniswap-v2/token-dto-spec)
  "Tokens (historical)
  Gets tokens."
  ([] (uniswap-v2-get-tokens-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-tokens-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/token-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-transactions-historical-with-http-info any?
  "Transactions (historical)
  Gets transactions."
  ([] (uniswap-v2-get-transactions-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/transactions/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-transactions-historical (s/coll-of uniswap-v2/transaction-dto-spec)
  "Transactions (historical)
  Gets transactions."
  ([] (uniswap-v2-get-transactions-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-transactions-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/transaction-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-uniswap-day-datas-historical-with-http-info any?
  "UniswapDayDatas (historical)
  Gets uniswapDayDatas."
  ([] (uniswap-v2-get-uniswap-day-datas-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/uniswapDayDatas/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-uniswap-day-datas-historical (s/coll-of uniswap-v2/uniswap-day-data-dto-spec)
  "UniswapDayDatas (historical)
  Gets uniswapDayDatas."
  ([] (uniswap-v2-get-uniswap-day-datas-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-uniswap-day-datas-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/uniswap-day-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-uniswap-factorys-historical-with-http-info any?
  "UniswapFactorys (historical)
  Gets uniswapFactorys."
  ([] (uniswap-v2-get-uniswap-factorys-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/uniswapFactorys/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-uniswap-factorys-historical (s/coll-of uniswap-v2/uniswap-factory-dto-spec)
  "UniswapFactorys (historical)
  Gets uniswapFactorys."
  ([] (uniswap-v2-get-uniswap-factorys-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-uniswap-factorys-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/uniswap-factory-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-users-historical-with-http-info any?
  "Users (historical)
  Gets users."
  ([] (uniswap-v2-get-users-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/users/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-users-historical (s/coll-of uniswap-v2/user-dto-spec)
  "Users (historical)
  Gets users."
  ([] (uniswap-v2-get-users-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-users-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/user-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-liquidity-position-snapshots-current-with-http-info any?
  "LiquidityPositionSnapshots (current)
  Gets liquidityPositionSnapshots."
  []
  (call-api "/dapps/uniswapv2/liquidityPositionSnapshots/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-liquidity-position-snapshots-current (s/coll-of uniswap-v2/liquidity-position-snapshot-dto-spec)
  "LiquidityPositionSnapshots (current)
  Gets liquidityPositionSnapshots."
  []
  (let [res (:data (uniswap-v2-liquidity-position-snapshots-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/liquidity-position-snapshot-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-liquidity-positions-current-with-http-info any?
  "LiquidityPositions (current)
  Gets liquidityPositions."
  []
  (call-api "/dapps/uniswapv2/liquidityPositions/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-liquidity-positions-current (s/coll-of uniswap-v2/liquidity-position-dto-spec)
  "LiquidityPositions (current)
  Gets liquidityPositions."
  []
  (let [res (:data (uniswap-v2-liquidity-positions-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/liquidity-position-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-mints-current-with-http-info any?
  "Mints (current)
  Gets mints."
  []
  (call-api "/dapps/uniswapv2/mints/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-mints-current (s/coll-of uniswap-v2/mint-dto-spec)
  "Mints (current)
  Gets mints."
  []
  (let [res (:data (uniswap-v2-mints-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/mint-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-pair-day-datas-current-with-http-info any?
  "PairDayDatas (current)
  Gets pairDayDatas."
  []
  (call-api "/dapps/uniswapv2/pairDayDatas/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-pair-day-datas-current (s/coll-of uniswap-v2/pair-day-data-dto-spec)
  "PairDayDatas (current)
  Gets pairDayDatas."
  []
  (let [res (:data (uniswap-v2-pair-day-datas-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/pair-day-data-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-pair-hour-datas-current-with-http-info any?
  "PairHourDatas (current)
  Gets pairHourDatas."
  []
  (call-api "/dapps/uniswapv2/pairHourDatas/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-pair-hour-datas-current (s/coll-of uniswap-v2/pair-hour-data-dto-spec)
  "PairHourDatas (current)
  Gets pairHourDatas."
  []
  (let [res (:data (uniswap-v2-pair-hour-datas-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/pair-hour-data-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-pairs-current-with-http-info any?
  "Pairs (current)
  Gets pairs."
  ([] (uniswap-v2-pairs-current-with-http-info nil))
  ([{:keys [id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/pairs/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-pairs-current (s/coll-of uniswap-v2/pair-dto-spec)
  "Pairs (current)
  Gets pairs."
  ([] (uniswap-v2-pairs-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-pairs-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/pair-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-swaps-current-with-http-info any?
  "Swaps (current)
  Gets swaps."
  ([] (uniswap-v2-swaps-current-with-http-info nil))
  ([{:keys [pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/swaps/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-swaps-current (s/coll-of uniswap-v2/swap-dto-spec)
  "Swaps (current)
  Gets swaps."
  ([] (uniswap-v2-swaps-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-swaps-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/swap-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-token-day-datas-current-with-http-info any?
  "TokenDayDatas (current)
  Gets tokenDayDatas."
  []
  (call-api "/dapps/uniswapv2/tokenDayDatas/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-token-day-datas-current (s/coll-of uniswap-v2/token-day-data-dto-spec)
  "TokenDayDatas (current)
  Gets tokenDayDatas."
  []
  (let [res (:data (uniswap-v2-token-day-datas-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/token-day-data-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-tokens-current-with-http-info any?
  "Tokens (current)
  Gets tokens."
  []
  (call-api "/dapps/uniswapv2/tokens/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-tokens-current (s/coll-of uniswap-v2/token-dto-spec)
  "Tokens (current)
  Gets tokens."
  []
  (let [res (:data (uniswap-v2-tokens-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/token-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-transactions-current-with-http-info any?
  "Transactions (current)
  Gets transactions."
  []
  (call-api "/dapps/uniswapv2/transactions/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-transactions-current (s/coll-of uniswap-v2/transaction-dto-spec)
  "Transactions (current)
  Gets transactions."
  []
  (let [res (:data (uniswap-v2-transactions-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/transaction-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-uniswap-day-datas-current-with-http-info any?
  "UniswapDayDatas (current)
  Gets uniswapDayDatas."
  []
  (call-api "/dapps/uniswapv2/uniswapDayDatas/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-uniswap-day-datas-current (s/coll-of uniswap-v2/uniswap-day-data-dto-spec)
  "UniswapDayDatas (current)
  Gets uniswapDayDatas."
  []
  (let [res (:data (uniswap-v2-uniswap-day-datas-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/uniswap-day-data-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-uniswap-factorys-current-with-http-info any?
  "UniswapFactorys (current)
  Gets uniswapFactorys."
  []
  (call-api "/dapps/uniswapv2/uniswapFactorys/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-uniswap-factorys-current (s/coll-of uniswap-v2/uniswap-factory-dto-spec)
  "UniswapFactorys (current)
  Gets uniswapFactorys."
  []
  (let [res (:data (uniswap-v2-uniswap-factorys-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/uniswap-factory-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-users-current-with-http-info any?
  "Users (current)
  Gets users."
  []
  (call-api "/dapps/uniswapv2/users/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-users-current (s/coll-of uniswap-v2/user-dto-spec)
  "Users (current)
  Gets users."
  []
  (let [res (:data (uniswap-v2-users-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/user-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-bundles-current-with-http-info any?
  "Bundles (current)
  Gets bundles."
  []
  (call-api "/dapps/uniswapv3/bundles/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-bundles-current (s/coll-of uniswap-v3/bundle-dto-spec)
  "Bundles (current)
  Gets bundles."
  []
  (let [res (:data (uniswap-v3-bundles-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/bundle-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-burns-current-with-http-info any?
  "Burns (current)
  Gets burns."
  []
  (call-api "/dapps/uniswapv3/burns/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-burns-current (s/coll-of uniswap-v3/burn-dto-spec)
  "Burns (current)
  Gets burns."
  []
  (let [res (:data (uniswap-v3-burns-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/burn-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-factorys-current-with-http-info any?
  "Factorys (current)
  Gets factorys."
  []
  (call-api "/dapps/uniswapv3/factorys/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-factorys-current (s/coll-of uniswap-v3/factory-dto-spec)
  "Factorys (current)
  Gets factorys."
  []
  (let [res (:data (uniswap-v3-factorys-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/factory-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-get-bundles-historical-with-http-info any?
  "Bundles (historical)
  Gets bundles."
  ([] (uniswap-v3-get-bundles-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/bundles/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-bundles-historical (s/coll-of uniswap-v3/bundle-dto-spec)
  "Bundles (historical)
  Gets bundles."
  ([] (uniswap-v3-get-bundles-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-bundles-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/bundle-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-burns-historical-with-http-info any?
  "Burns (historical)
  Gets burns."
  ([] (uniswap-v3-get-burns-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool token_0 token_1]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/burns/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool "token_0" token_0 "token_1" token_1 }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-burns-historical (s/coll-of uniswap-v3/burn-dto-spec)
  "Burns (historical)
  Gets burns."
  ([] (uniswap-v3-get-burns-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-burns-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/burn-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-factorys-historical-with-http-info any?
  "Factorys (historical)
  Gets factorys."
  ([] (uniswap-v3-get-factorys-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/factorys/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-factorys-historical (s/coll-of uniswap-v3/factory-dto-spec)
  "Factorys (historical)
  Gets factorys."
  ([] (uniswap-v3-get-factorys-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-factorys-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/factory-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-mints-historical-with-http-info any?
  "Mints (historical)
  Gets mints."
  ([] (uniswap-v3-get-mints-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool token_0 token_1]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/mints/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool "token_0" token_0 "token_1" token_1 }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-mints-historical (s/coll-of uniswap-v3/mint-dto-spec)
  "Mints (historical)
  Gets mints."
  ([] (uniswap-v3-get-mints-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-mints-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/mint-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-pool-day-datas-historical-with-http-info any?
  "PoolDayDatas (historical)
  Gets poolDayDatas."
  ([] (uniswap-v3-get-pool-day-datas-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/poolDayDatas/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-pool-day-datas-historical (s/coll-of uniswap-v3/pool-day-data-dto-spec)
  "PoolDayDatas (historical)
  Gets poolDayDatas."
  ([] (uniswap-v3-get-pool-day-datas-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-pool-day-datas-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-day-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-pool-hour-datas-historical-with-http-info any?
  "PoolHourDatas (historical)
  Gets poolHourDatas."
  ([] (uniswap-v3-get-pool-hour-datas-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/poolHourDatas/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-pool-hour-datas-historical (s/coll-of uniswap-v3/pool-hour-data-dto-spec)
  "PoolHourDatas (historical)
  Gets poolHourDatas."
  ([] (uniswap-v3-get-pool-hour-datas-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-pool-hour-datas-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-hour-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-pools-historical-with-http-info any?
  "Pools (historical)
  Gets pools."
  ([] (uniswap-v3-get-pools-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id token_0 token_1]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/pools/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "token_0" token_0 "token_1" token_1 }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-pools-historical (s/coll-of uniswap-v3/pool-dto-spec)
  "Pools (historical)
  Gets pools."
  ([] (uniswap-v3-get-pools-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-pools-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-position-snapshots-historical-with-http-info any?
  "PositionSnapshots (historical)
  Gets positionSnapshots."
  ([] (uniswap-v3-get-position-snapshots-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/positionSnapshots/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-position-snapshots-historical (s/coll-of uniswap-v3/position-snapshot-dto-spec)
  "PositionSnapshots (historical)
  Gets positionSnapshots."
  ([] (uniswap-v3-get-position-snapshots-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-position-snapshots-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/position-snapshot-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-positions-historical-with-http-info any?
  "Positions (historical)
  Gets positions."
  ([] (uniswap-v3-get-positions-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool token_0 token_1]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/positions/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool "token_0" token_0 "token_1" token_1 }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-positions-historical (s/coll-of uniswap-v3/position-dto-spec)
  "Positions (historical)
  Gets positions."
  ([] (uniswap-v3-get-positions-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-positions-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/position-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-swaps-historical-with-http-info any?
  "Swaps (historical)
  Gets swaps."
  ([] (uniswap-v3-get-swaps-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool token_0 token_1]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/swaps/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool "token_0" token_0 "token_1" token_1 }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-swaps-historical (s/coll-of uniswap-v3/swap-dto-spec)
  "Swaps (historical)
  Gets swaps."
  ([] (uniswap-v3-get-swaps-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-swaps-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/swap-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-tick-day-datas-historical-with-http-info any?
  "TickDayDatas (historical)
  Gets tickDayDatas."
  ([] (uniswap-v3-get-tick-day-datas-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tickDayDatas/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-tick-day-datas-historical (s/coll-of uniswap-v3/tick-day-data-dto-spec)
  "TickDayDatas (historical)
  Gets tickDayDatas."
  ([] (uniswap-v3-get-tick-day-datas-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-tick-day-datas-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/tick-day-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-ticks-historical-with-http-info any?
  "Ticks (historical)
  Gets ticks."
  ([] (uniswap-v3-get-ticks-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/ticks/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-ticks-historical (s/coll-of uniswap-v3/tick-dto-spec)
  "Ticks (historical)
  Gets ticks."
  ([] (uniswap-v3-get-ticks-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-ticks-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/tick-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-token-hour-datas-historical-with-http-info any?
  "TokenHourDatas (historical)
  Gets tokenHourDatas."
  ([] (uniswap-v3-get-token-hour-datas-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tokenHourDatas/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-token-hour-datas-historical (s/coll-of uniswap-v3/token-hour-data-dto-spec)
  "TokenHourDatas (historical)
  Gets tokenHourDatas."
  ([] (uniswap-v3-get-token-hour-datas-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-token-hour-datas-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-hour-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-token-v3-day-datas-historical-with-http-info any?
  "TokenV3DayDatas (historical)
  Gets tokenV3DayDatas."
  ([] (uniswap-v3-get-token-v3-day-datas-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tokenV3DayDatas/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-token-v3-day-datas-historical (s/coll-of uniswap-v3/token-v3-day-data-dto-spec)
  "TokenV3DayDatas (historical)
  Gets tokenV3DayDatas."
  ([] (uniswap-v3-get-token-v3-day-datas-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-token-v3-day-datas-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-v3-day-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-tokens-historical-with-http-info any?
  "Tokens (historical)
  Gets tokens."
  ([] (uniswap-v3-get-tokens-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id symbol name]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tokens/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "symbol" symbol "name" name }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-tokens-historical (s/coll-of uniswap-v3/token-dto-spec)
  "Tokens (historical)
  Gets tokens."
  ([] (uniswap-v3-get-tokens-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-tokens-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-transactions-historical-with-http-info any?
  "Transactions (historical)
  Gets transactions."
  ([] (uniswap-v3-get-transactions-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/transactions/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-transactions-historical (s/coll-of uniswap-v3/transaction-dto-spec)
  "Transactions (historical)
  Gets transactions."
  ([] (uniswap-v3-get-transactions-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-transactions-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/transaction-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-uniswap-day-datas-historical-with-http-info any?
  "UniswapDayDatas (historical)
  Gets uniswapDayDatas."
  ([] (uniswap-v3-get-uniswap-day-datas-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/uniswapDayDatas/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-uniswap-day-datas-historical (s/coll-of uniswap-v3/uniswap-day-data-dto-spec)
  "UniswapDayDatas (historical)
  Gets uniswapDayDatas."
  ([] (uniswap-v3-get-uniswap-day-datas-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-uniswap-day-datas-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/uniswap-day-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-mints-current-with-http-info any?
  "Mints (current)
  Gets mints."
  []
  (call-api "/dapps/uniswapv3/mints/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-mints-current (s/coll-of uniswap-v3/mint-dto-spec)
  "Mints (current)
  Gets mints."
  []
  (let [res (:data (uniswap-v3-mints-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/mint-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-pool-day-datas-current-with-http-info any?
  "PoolDayDatas (current)
  Gets poolDayDatas."
  []
  (call-api "/dapps/uniswapv3/poolDayDatas/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-pool-day-datas-current (s/coll-of uniswap-v3/pool-day-data-dto-spec)
  "PoolDayDatas (current)
  Gets poolDayDatas."
  []
  (let [res (:data (uniswap-v3-pool-day-datas-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/pool-day-data-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-pool-hour-datas-current-with-http-info any?
  "PoolHourDatas (current)
  Gets poolHourDatas."
  []
  (call-api "/dapps/uniswapv3/poolHourDatas/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-pool-hour-datas-current (s/coll-of uniswap-v3/pool-hour-data-dto-spec)
  "PoolHourDatas (current)
  Gets poolHourDatas."
  []
  (let [res (:data (uniswap-v3-pool-hour-datas-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/pool-hour-data-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-pools-current-with-http-info any?
  "Pools (current)
  Gets pools."
  ([] (uniswap-v3-pools-current-with-http-info nil))
  ([{:keys [id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/pools/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-pools-current (s/coll-of uniswap-v3/pool-dto-spec)
  "Pools (current)
  Gets pools."
  ([] (uniswap-v3-pools-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-pools-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-position-snapshots-current-with-http-info any?
  "PositionSnapshots (current)
  Gets positionSnapshots."
  []
  (call-api "/dapps/uniswapv3/positionSnapshots/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-position-snapshots-current (s/coll-of uniswap-v3/position-snapshot-dto-spec)
  "PositionSnapshots (current)
  Gets positionSnapshots."
  []
  (let [res (:data (uniswap-v3-position-snapshots-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/position-snapshot-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-positions-current-with-http-info any?
  "Positions (current)
  Gets positions."
  []
  (call-api "/dapps/uniswapv3/positions/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-positions-current (s/coll-of uniswap-v3/position-dto-spec)
  "Positions (current)
  Gets positions."
  []
  (let [res (:data (uniswap-v3-positions-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/position-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-swaps-current-with-http-info any?
  "Swaps (current)
  Gets swaps."
  ([] (uniswap-v3-swaps-current-with-http-info nil))
  ([{:keys [pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/swaps/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-swaps-current (s/coll-of uniswap-v3/swap-dto-spec)
  "Swaps (current)
  Gets swaps."
  ([] (uniswap-v3-swaps-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-swaps-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/swap-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-tick-day-datas-current-with-http-info any?
  "TickDayDatas (current)
  Gets tickDayDatas."
  []
  (call-api "/dapps/uniswapv3/tickDayDatas/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-tick-day-datas-current (s/coll-of uniswap-v3/tick-day-data-dto-spec)
  "TickDayDatas (current)
  Gets tickDayDatas."
  []
  (let [res (:data (uniswap-v3-tick-day-datas-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/tick-day-data-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-ticks-current-with-http-info any?
  "Ticks (current)
  Gets ticks."
  []
  (call-api "/dapps/uniswapv3/ticks/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-ticks-current (s/coll-of uniswap-v3/tick-dto-spec)
  "Ticks (current)
  Gets ticks."
  []
  (let [res (:data (uniswap-v3-ticks-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/tick-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-token-hour-datas-current-with-http-info any?
  "TokenHourDatas (current)
  Gets tokenHourDatas."
  []
  (call-api "/dapps/uniswapv3/tokenHourDatas/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-token-hour-datas-current (s/coll-of uniswap-v3/token-hour-data-dto-spec)
  "TokenHourDatas (current)
  Gets tokenHourDatas."
  []
  (let [res (:data (uniswap-v3-token-hour-datas-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/token-hour-data-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-token-v3-day-datas-current-with-http-info any?
  "TokenV3DayDatas (current)
  Gets tokenV3DayDatas."
  []
  (call-api "/dapps/uniswapv3/tokenV3DayDatas/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-token-v3-day-datas-current (s/coll-of uniswap-v3/token-v3-day-data-dto-spec)
  "TokenV3DayDatas (current)
  Gets tokenV3DayDatas."
  []
  (let [res (:data (uniswap-v3-token-v3-day-datas-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/token-v3-day-data-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-tokens-current-with-http-info any?
  "Tokens (current)
  Gets tokens."
  []
  (call-api "/dapps/uniswapv3/tokens/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-tokens-current (s/coll-of uniswap-v3/token-dto-spec)
  "Tokens (current)
  Gets tokens."
  []
  (let [res (:data (uniswap-v3-tokens-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/token-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-transactions-current-with-http-info any?
  "Transactions (current)
  Gets transactions."
  []
  (call-api "/dapps/uniswapv3/transactions/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-transactions-current (s/coll-of uniswap-v3/transaction-dto-spec)
  "Transactions (current)
  Gets transactions."
  []
  (let [res (:data (uniswap-v3-transactions-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/transaction-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-uniswap-day-datas-current-with-http-info any?
  "UniswapDayDatas (current)
  Gets uniswapDayDatas."
  []
  (call-api "/dapps/uniswapv3/uniswapDayDatas/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-uniswap-day-datas-current (s/coll-of uniswap-v3/uniswap-day-data-dto-spec)
  "UniswapDayDatas (current)
  Gets uniswapDayDatas."
  []
  (let [res (:data (uniswap-v3-uniswap-day-datas-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/uniswap-day-data-dto-spec) res st/string-transformer)
       res)))


