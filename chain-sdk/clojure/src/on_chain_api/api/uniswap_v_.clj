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
            [on-chain-api.specs.dex/deposit-dto :refer :all]
            [on-chain-api.specs.sushiswap/mint-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/mint-v2-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/uniswap-day-data-v3-dto :refer :all]
            [on-chain-api.specs.curve/proposal-dto :refer :all]
            [on-chain-api.specs.sushiswap/liquidity-position-snapshot-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/burn-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/position-snapshot-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/pool-day-data-v3-dto :refer :all]
            [on-chain-api.specs.curve/transfer-ownership-event-dto :refer :all]
            [on-chain-api.specs.sushiswap/day-data-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/pair-day-data-v2-dto :refer :all]
            [on-chain-api.specs.curve/proposal-vote-dto :refer :all]
            [on-chain-api.specs.curve/coin-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/position-v3-dto :refer :all]
            [on-chain-api.specs.curve/account-dto :refer :all]
            [on-chain-api.specs.curve/underlying-coin-dto :refer :all]
            [on-chain-api.specs.cow/trade-dto :refer :all]
            [on-chain-api.specs.curve/gauge-deposit-dto :refer :all]
            [on-chain-api.specs.sushiswap/transaction-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/token-v3-day-data-dto :refer :all]
            [on-chain-api.specs.dex/trade-dto :refer :all]
            [on-chain-api.specs.dex/withdraw-dto :refer :all]
            [on-chain-api.specs.curve/gauge-liquidity-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/swap-v2-dto :refer :all]
            [on-chain-api.specs.dex/token-dto :refer :all]
            [on-chain-api.specs.cow/settlement-dto :refer :all]
            [on-chain-api.specs.curve/gauge-weight-dto :refer :all]
            [on-chain-api.specs.sushiswap/swap-dto :refer :all]
            [on-chain-api.specs.sushiswap/bundle-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/bundle-v3-dto :refer :all]
            [on-chain-api.specs.cow/order-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/uniswap-day-data-v2-dto :refer :all]
            [on-chain-api.specs.curve/gauge-total-weight-dto :refer :all]
            [on-chain-api.specs.sushiswap/pair-dto :refer :all]
            [on-chain-api.specs.curve/hourly-volume-dto :refer :all]
            [on-chain-api.specs.dex/price-dto :refer :all]
            [on-chain-api.specs.dex/solution-dto :refer :all]
            [on-chain-api.specs.curve/pool-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/swap-v3-dto :refer :all]
            [on-chain-api.specs.curve/gauge-dto :refer :all]
            [on-chain-api.specs.sushiswap/hour-data-dto :refer :all]
            [on-chain-api.specs.curve/contract-version-dto :refer :all]
            [on-chain-api.specs.curve/remove-liquidity-one-event-dto :refer :all]
            [on-chain-api.specs.cow/token-dto :refer :all]
            [on-chain-api.specs.dex/batch-dto :refer :all]
            [on-chain-api.specs.dex/order-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/liquidity-position-v2-dto :refer :all]
            [on-chain-api.specs.curve/token-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/pool-hour-data-v3-dto :refer :all]
            [on-chain-api.specs.cow/user-dto :refer :all]
            [on-chain-api.specs.dex/user-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/pair-v2-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/transaction-v2-dto :refer :all]
            [on-chain-api.specs.curve/admin-fee-change-log-dto :refer :all]
            [on-chain-api.specs.curve/gauge-type-weight-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/token-v2-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/factory-v3-dto :refer :all]
            [on-chain-api.specs.curve/voting-app-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/burn-v2-dto :refer :all]
            [on-chain-api.specs.curve/system-state-dto :refer :all]
            [on-chain-api.specs.curve/add-liquidity-event-dto :refer :all]
            [on-chain-api.specs.curve/exchange-dto :refer :all]
            [on-chain-api.specs.sushiswap/pair-day-data-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/liquidity-position-snapshot-v2-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/tick-day-data-v3-dto :refer :all]
            [on-chain-api.specs.curve/amplification-coeff-change-log-dto :refer :all]
            [on-chain-api.specs.transactions/e-trade-aggressive-side :refer :all]
            [on-chain-api.specs.sushiswap/token-dto :refer :all]
            [on-chain-api.specs.sushiswap/burn-dto :refer :all]
            [on-chain-api.specs.sushiswap/user-dto :refer :all]
            [on-chain-api.specs.curve/fee-change-log-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/mint-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/uniswap-factory-v2-dto :refer :all]
            [on-chain-api.specs.curve/weekly-volume-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/transaction-v3-dto :refer :all]
            [on-chain-api.specs.curve/contract-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/pair-hour-data-v2-dto :refer :all]
            [on-chain-api.specs.numerics/big-integer :refer :all]
            [on-chain-api.specs.dex/withdraw-request-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/pool-v3-dto :refer :all]
            [on-chain-api.specs.curve/lp-token-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/token-v3-dto :refer :all]
            [on-chain-api.specs.sushiswap/pair-hour-data-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/token-day-data-v2-dto :refer :all]
            [on-chain-api.specs.curve/daily-volume-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/tick-v3-dto :refer :all]
            [on-chain-api.specs.dex/stats-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/token-hour-data-v3-dto :refer :all]
            [on-chain-api.specs.sushiswap/liquidity-position-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/user-v2-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/bundle-v2-dto :refer :all]
            [on-chain-api.specs.curve/remove-liquidity-event-dto :refer :all]
            )
  (:import (java.io File)))


(defn-spec uniswap-v2-get-bundle-v2s-historical-with-http-info any?
  "BundleV2s (historical) 🔥
  Gets bundlev2s."
  ([] (uniswap-v2-get-bundle-v2s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/bundlev2s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-bundle-v2s-historical (s/coll-of uniswap-v2/bundle-v2-dto-spec)
  "BundleV2s (historical) 🔥
  Gets bundlev2s."
  ([] (uniswap-v2-get-bundle-v2s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-bundle-v2s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/bundle-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-burn-v2s-historical-with-http-info any?
  "BurnV2s (historical) 🔥
  Gets burnv2s."
  ([] (uniswap-v2-get-burn-v2s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/burnv2s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-burn-v2s-historical (s/coll-of uniswap-v2/burn-v2-dto-spec)
  "BurnV2s (historical) 🔥
  Gets burnv2s."
  ([] (uniswap-v2-get-burn-v2s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-burn-v2s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/burn-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-liquidity-position-snapshot-v2s-historical-with-http-info any?
  "LiquidityPositionSnapshotV2s (historical) 🔥
  Gets liquiditypositionsnapshotv2s."
  ([] (uniswap-v2-get-liquidity-position-snapshot-v2s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id user pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/liquiditypositionsnapshotv2s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "user" user "pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-liquidity-position-snapshot-v2s-historical (s/coll-of uniswap-v2/liquidity-position-snapshot-v2-dto-spec)
  "LiquidityPositionSnapshotV2s (historical) 🔥
  Gets liquiditypositionsnapshotv2s."
  ([] (uniswap-v2-get-liquidity-position-snapshot-v2s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-liquidity-position-snapshot-v2s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/liquidity-position-snapshot-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-liquidity-position-v2s-historical-with-http-info any?
  "LiquidityPositionV2s (historical) 🔥
  Gets liquiditypositionv2s."
  ([] (uniswap-v2-get-liquidity-position-v2s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id user pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/liquiditypositionv2s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "user" user "pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-liquidity-position-v2s-historical (s/coll-of uniswap-v2/liquidity-position-v2-dto-spec)
  "LiquidityPositionV2s (historical) 🔥
  Gets liquiditypositionv2s."
  ([] (uniswap-v2-get-liquidity-position-v2s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-liquidity-position-v2s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/liquidity-position-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-mint-v2s-historical-with-http-info any?
  "MintV2s (historical) 🔥
  Gets mintv2s."
  ([] (uniswap-v2-get-mint-v2s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/mintv2s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-mint-v2s-historical (s/coll-of uniswap-v2/mint-v2-dto-spec)
  "MintV2s (historical) 🔥
  Gets mintv2s."
  ([] (uniswap-v2-get-mint-v2s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-mint-v2s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/mint-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-pair-day-data-v2s-historical-with-http-info any?
  "PairDayDataV2s (historical) 🔥
  Gets pairdaydatav2s."
  ([] (uniswap-v2-get-pair-day-data-v2s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id token_0 token_1]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/pairdaydatav2s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "token_0" token_0 "token_1" token_1 }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-pair-day-data-v2s-historical (s/coll-of uniswap-v2/pair-day-data-v2-dto-spec)
  "PairDayDataV2s (historical) 🔥
  Gets pairdaydatav2s."
  ([] (uniswap-v2-get-pair-day-data-v2s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-pair-day-data-v2s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/pair-day-data-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-pair-hour-data-v2s-historical-with-http-info any?
  "PairHourDataV2s (historical) 🔥
  Gets pairhourdatav2s."
  ([] (uniswap-v2-get-pair-hour-data-v2s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/pairhourdatav2s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-pair-hour-data-v2s-historical (s/coll-of uniswap-v2/pair-hour-data-v2-dto-spec)
  "PairHourDataV2s (historical) 🔥
  Gets pairhourdatav2s."
  ([] (uniswap-v2-get-pair-hour-data-v2s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-pair-hour-data-v2s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/pair-hour-data-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-pair-v2s-historical-with-http-info any?
  "PairV2s (historical) 🔥
  Gets pairv2s."
  ([] (uniswap-v2-get-pair-v2s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id token_0 token_1]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/pairv2s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "token_0" token_0 "token_1" token_1 }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-pair-v2s-historical (s/coll-of uniswap-v2/pair-v2-dto-spec)
  "PairV2s (historical) 🔥
  Gets pairv2s."
  ([] (uniswap-v2-get-pair-v2s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-pair-v2s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/pair-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-pools-current-with-http-info any?
  "Pools (current) 🔥
  Gets pools."
  ([] (uniswap-v2-get-pools-current-with-http-info nil))
  ([{:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/pools/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-pools-current (s/coll-of uniswap-v2/pair-v2-dto-spec)
  "Pools (current) 🔥
  Gets pools."
  ([] (uniswap-v2-get-pools-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-pools-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/pair-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-swap-v2s-historical-with-http-info any?
  "SwapV2s (historical) 🔥
  Gets swapv2s."
  ([] (uniswap-v2-get-swap-v2s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pair]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/swapv2s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pair" pair }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-swap-v2s-historical (s/coll-of uniswap-v2/swap-v2-dto-spec)
  "SwapV2s (historical) 🔥
  Gets swapv2s."
  ([] (uniswap-v2-get-swap-v2s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-swap-v2s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/swap-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-swaps-current-with-http-info any?
  "Swaps (current) 🔥
  Gets swaps."
  []
  (call-api "/dapps/uniswapv2/swaps/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v2-get-swaps-current (s/coll-of uniswap-v2/swap-v2-dto-spec)
  "Swaps (current) 🔥
  Gets swaps."
  []
  (let [res (:data (uniswap-v2-get-swaps-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/swap-v2-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-get-token-day-data-v2s-historical-with-http-info any?
  "TokenDayDataV2s (historical) 🔥
  Gets tokendaydatav2s."
  ([] (uniswap-v2-get-token-day-data-v2s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/tokendaydatav2s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-token-day-data-v2s-historical (s/coll-of uniswap-v2/token-day-data-v2-dto-spec)
  "TokenDayDataV2s (historical) 🔥
  Gets tokendaydatav2s."
  ([] (uniswap-v2-get-token-day-data-v2s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-token-day-data-v2s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/token-day-data-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-token-v2s-historical-with-http-info any?
  "TokenV2s (historical) 🔥
  Gets tokenv2s."
  ([] (uniswap-v2-get-token-v2s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id symbol name]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/tokenv2s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "symbol" symbol "name" name }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-token-v2s-historical (s/coll-of uniswap-v2/token-v2-dto-spec)
  "TokenV2s (historical) 🔥
  Gets tokenv2s."
  ([] (uniswap-v2-get-token-v2s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-token-v2s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/token-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-tokens-current-with-http-info any?
  "Tokens (current) 🔥
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

(defn-spec uniswap-v2-get-tokens-current (s/coll-of uniswap-v2/token-v2-dto-spec)
  "Tokens (current) 🔥
  Gets tokens."
  []
  (let [res (:data (uniswap-v2-get-tokens-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/token-v2-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-get-transaction-v2s-historical-with-http-info any?
  "TransactionV2s (historical) 🔥
  Gets transactionv2s."
  ([] (uniswap-v2-get-transaction-v2s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/transactionv2s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-transaction-v2s-historical (s/coll-of uniswap-v2/transaction-v2-dto-spec)
  "TransactionV2s (historical) 🔥
  Gets transactionv2s."
  ([] (uniswap-v2-get-transaction-v2s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-transaction-v2s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/transaction-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-uniswap-day-data-v2s-historical-with-http-info any?
  "UniswapDayDataV2s (historical) 🔥
  Gets uniswapdaydatav2s."
  ([] (uniswap-v2-get-uniswap-day-data-v2s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/uniswapdaydatav2s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-uniswap-day-data-v2s-historical (s/coll-of uniswap-v2/uniswap-day-data-v2-dto-spec)
  "UniswapDayDataV2s (historical) 🔥
  Gets uniswapdaydatav2s."
  ([] (uniswap-v2-get-uniswap-day-data-v2s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-uniswap-day-data-v2s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/uniswap-day-data-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-uniswap-factory-v2s-historical-with-http-info any?
  "UniswapFactoryV2s (historical) 🔥
  Gets uniswapfactoryv2s."
  ([] (uniswap-v2-get-uniswap-factory-v2s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/uniswapfactoryv2s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-uniswap-factory-v2s-historical (s/coll-of uniswap-v2/uniswap-factory-v2-dto-spec)
  "UniswapFactoryV2s (historical) 🔥
  Gets uniswapfactoryv2s."
  ([] (uniswap-v2-get-uniswap-factory-v2s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-uniswap-factory-v2s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/uniswap-factory-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-user-v2s-historical-with-http-info any?
  "UserV2s (historical) 🔥
  Gets userv2s."
  ([] (uniswap-v2-get-user-v2s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/userv2s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-user-v2s-historical (s/coll-of uniswap-v2/user-v2-dto-spec)
  "UserV2s (historical) 🔥
  Gets userv2s."
  ([] (uniswap-v2-get-user-v2s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-user-v2s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/user-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-bundle-v3s-historical-with-http-info any?
  "BundleV3s (historical) 🔥
  Gets bundlev3s."
  ([] (uniswap-v3-get-bundle-v3s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/bundlev3s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-bundle-v3s-historical (s/coll-of uniswap-v3/bundle-v3-dto-spec)
  "BundleV3s (historical) 🔥
  Gets bundlev3s."
  ([] (uniswap-v3-get-bundle-v3s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-bundle-v3s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/bundle-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-bundles-current-with-http-info any?
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

(defn-spec uniswap-v3-get-bundles-current (s/coll-of uniswap-v3/bundle-v3-dto-spec)
  "Bundles (current)
  Gets bundles."
  []
  (let [res (:data (uniswap-v3-get-bundles-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/bundle-v3-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-get-burn-v3s-historical-with-http-info any?
  "BurnV3s (historical) 🔥
  Gets burnv3s."
  ([] (uniswap-v3-get-burn-v3s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool token_0 token_1]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/burnv3s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool "token_0" token_0 "token_1" token_1 }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-burn-v3s-historical (s/coll-of uniswap-v3/burn-v3-dto-spec)
  "BurnV3s (historical) 🔥
  Gets burnv3s."
  ([] (uniswap-v3-get-burn-v3s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-burn-v3s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/burn-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-burns-current-with-http-info any?
  "Burns (current)
  Gets burns."
  ([] (uniswap-v3-get-burns-current-with-http-info nil))
  ([{:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/burns/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-burns-current (s/coll-of uniswap-v3/burn-v3-dto-spec)
  "Burns (current)
  Gets burns."
  ([] (uniswap-v3-get-burns-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-burns-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/burn-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-day-data-current-with-http-info any?
  "DayData (current)
  Gets uniswapv3 day data."
  []
  (call-api "/dapps/uniswapv3/dayData/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-get-day-data-current (s/coll-of uniswap-v3/uniswap-day-data-v3-dto-spec)
  "DayData (current)
  Gets uniswapv3 day data."
  []
  (let [res (:data (uniswap-v3-get-day-data-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/uniswap-day-data-v3-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-get-factory-current-with-http-info any?
  "Factory (current)
  Gets factory."
  []
  (call-api "/dapps/uniswapv3/factory/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec uniswap-v3-get-factory-current (s/coll-of uniswap-v3/factory-v3-dto-spec)
  "Factory (current)
  Gets factory."
  []
  (let [res (:data (uniswap-v3-get-factory-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/factory-v3-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-get-factory-v3s-historical-with-http-info any?
  "FactoryV3s (historical) 🔥
  Gets factoryv3s."
  ([] (uniswap-v3-get-factory-v3s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/factoryv3s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-factory-v3s-historical (s/coll-of uniswap-v3/factory-v3-dto-spec)
  "FactoryV3s (historical) 🔥
  Gets factoryv3s."
  ([] (uniswap-v3-get-factory-v3s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-factory-v3s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/factory-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-mint-v3s-historical-with-http-info any?
  "MintV3s (historical) 🔥
  Gets mintv3s."
  ([] (uniswap-v3-get-mint-v3s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool token_0 token_1]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/mintv3s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool "token_0" token_0 "token_1" token_1 }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-mint-v3s-historical (s/coll-of uniswap-v3/mint-v3-dto-spec)
  "MintV3s (historical) 🔥
  Gets mintv3s."
  ([] (uniswap-v3-get-mint-v3s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-mint-v3s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/mint-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-mints-current-with-http-info any?
  "Mints (current)
  Gets mints."
  ([] (uniswap-v3-get-mints-current-with-http-info nil))
  ([{:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/mints/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-mints-current (s/coll-of uniswap-v3/mint-v3-dto-spec)
  "Mints (current)
  Gets mints."
  ([] (uniswap-v3-get-mints-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-mints-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/mint-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-pool-day-data-v3s-historical-with-http-info any?
  "PoolDayDataV3s (historical) 🔥
  Gets pooldaydatav3s."
  ([] (uniswap-v3-get-pool-day-data-v3s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/pooldaydatav3s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-pool-day-data-v3s-historical (s/coll-of uniswap-v3/pool-day-data-v3-dto-spec)
  "PoolDayDataV3s (historical) 🔥
  Gets pooldaydatav3s."
  ([] (uniswap-v3-get-pool-day-data-v3s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-pool-day-data-v3s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-day-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-pool-hour-data-v3s-historical-with-http-info any?
  "PoolHourDataV3s (historical) 🔥
  Gets poolhourdatav3s."
  ([] (uniswap-v3-get-pool-hour-data-v3s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/poolhourdatav3s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-pool-hour-data-v3s-historical (s/coll-of uniswap-v3/pool-hour-data-v3-dto-spec)
  "PoolHourDataV3s (historical) 🔥
  Gets poolhourdatav3s."
  ([] (uniswap-v3-get-pool-hour-data-v3s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-pool-hour-data-v3s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-hour-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-pool-v3s-historical-with-http-info any?
  "PoolV3s (historical) 🔥
  Gets poolv3s."
  ([] (uniswap-v3-get-pool-v3s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id token_0 token_1]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/poolv3s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "token_0" token_0 "token_1" token_1 }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-pool-v3s-historical (s/coll-of uniswap-v3/pool-v3-dto-spec)
  "PoolV3s (historical) 🔥
  Gets poolv3s."
  ([] (uniswap-v3-get-pool-v3s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-pool-v3s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-pools-current-with-http-info any?
  "Pools (current) 🔥
  Gets pools."
  ([] (uniswap-v3-get-pools-current-with-http-info nil))
  ([{:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/pools/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-pools-current (s/coll-of uniswap-v3/pool-v3-dto-spec)
  "Pools (current) 🔥
  Gets pools."
  ([] (uniswap-v3-get-pools-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-pools-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-pools-day-data-current-with-http-info any?
  "PoolsDayData (current)
  Gets pools day data."
  ([] (uniswap-v3-get-pools-day-data-current-with-http-info nil))
  ([{:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/poolsDayData/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-pools-day-data-current (s/coll-of uniswap-v3/pool-day-data-v3-dto-spec)
  "PoolsDayData (current)
  Gets pools day data."
  ([] (uniswap-v3-get-pools-day-data-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-pools-day-data-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-day-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-pools-hour-data-current-with-http-info any?
  "PoolsHourData (current)
  Gets pools hour data."
  ([] (uniswap-v3-get-pools-hour-data-current-with-http-info nil))
  ([{:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/poolsHourData/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-pools-hour-data-current (s/coll-of uniswap-v3/pool-hour-data-v3-dto-spec)
  "PoolsHourData (current)
  Gets pools hour data."
  ([] (uniswap-v3-get-pools-hour-data-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-pools-hour-data-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-hour-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-position-snapshot-v3s-historical-with-http-info any?
  "PositionSnapshotV3s (historical) 🔥
  Gets positionsnapshotv3s."
  ([] (uniswap-v3-get-position-snapshot-v3s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/positionsnapshotv3s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-position-snapshot-v3s-historical (s/coll-of uniswap-v3/position-snapshot-v3-dto-spec)
  "PositionSnapshotV3s (historical) 🔥
  Gets positionsnapshotv3s."
  ([] (uniswap-v3-get-position-snapshot-v3s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-position-snapshot-v3s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/position-snapshot-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-position-v3s-historical-with-http-info any?
  "PositionV3s (historical) 🔥
  Gets positionv3s."
  ([] (uniswap-v3-get-position-v3s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool token_0 token_1]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/positionv3s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool "token_0" token_0 "token_1" token_1 }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-position-v3s-historical (s/coll-of uniswap-v3/position-v3-dto-spec)
  "PositionV3s (historical) 🔥
  Gets positionv3s."
  ([] (uniswap-v3-get-position-v3s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-position-v3s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/position-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-positions-current-with-http-info any?
  "Positions (current)
  Gets positions."
  ([] (uniswap-v3-get-positions-current-with-http-info nil))
  ([{:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/positions/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-positions-current (s/coll-of uniswap-v3/position-v3-dto-spec)
  "Positions (current)
  Gets positions."
  ([] (uniswap-v3-get-positions-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-positions-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/position-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-positions-snapshots-current-with-http-info any?
  "PositionsSnapshots (current)
  Gets positions snapshots."
  ([] (uniswap-v3-get-positions-snapshots-current-with-http-info nil))
  ([{:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/positionSnapshots/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-positions-snapshots-current (s/coll-of uniswap-v3/position-snapshot-v3-dto-spec)
  "PositionsSnapshots (current)
  Gets positions snapshots."
  ([] (uniswap-v3-get-positions-snapshots-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-positions-snapshots-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/position-snapshot-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-swap-v3s-historical-with-http-info any?
  "SwapV3s (historical) 🔥
  Gets swapv3s."
  ([] (uniswap-v3-get-swap-v3s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool token_0 token_1]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/swapv3s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool "token_0" token_0 "token_1" token_1 }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-swap-v3s-historical (s/coll-of uniswap-v3/swap-v3-dto-spec)
  "SwapV3s (historical) 🔥
  Gets swapv3s."
  ([] (uniswap-v3-get-swap-v3s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-swap-v3s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/swap-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-swaps-current-with-http-info any?
  "Swaps (current) 🔥
  Gets swaps."
  ([] (uniswap-v3-get-swaps-current-with-http-info nil))
  ([{:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/swaps/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-swaps-current (s/coll-of uniswap-v3/swap-v3-dto-spec)
  "Swaps (current) 🔥
  Gets swaps."
  ([] (uniswap-v3-get-swaps-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-swaps-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/swap-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-tick-day-data-v3s-historical-with-http-info any?
  "TickDayDataV3s (historical) 🔥
  Gets tickdaydatav3s."
  ([] (uniswap-v3-get-tick-day-data-v3s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tickdaydatav3s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-tick-day-data-v3s-historical (s/coll-of uniswap-v3/tick-day-data-v3-dto-spec)
  "TickDayDataV3s (historical) 🔥
  Gets tickdaydatav3s."
  ([] (uniswap-v3-get-tick-day-data-v3s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-tick-day-data-v3s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/tick-day-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-tick-v3s-historical-with-http-info any?
  "TickV3s (historical) 🔥
  Gets tickv3s."
  ([] (uniswap-v3-get-tick-v3s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tickv3s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-tick-v3s-historical (s/coll-of uniswap-v3/tick-v3-dto-spec)
  "TickV3s (historical) 🔥
  Gets tickv3s."
  ([] (uniswap-v3-get-tick-v3s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-tick-v3s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/tick-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-ticks-current-with-http-info any?
  "Ticks (current)
  Gets ticks."
  ([] (uniswap-v3-get-ticks-current-with-http-info nil))
  ([{:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/ticks/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-ticks-current (s/coll-of uniswap-v3/tick-v3-dto-spec)
  "Ticks (current)
  Gets ticks."
  ([] (uniswap-v3-get-ticks-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-ticks-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/tick-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-ticks-day-data-current-with-http-info any?
  "TicksDayData (current)
  Gets ticks day data."
  ([] (uniswap-v3-get-ticks-day-data-current-with-http-info nil))
  ([{:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/ticksDayData/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-ticks-day-data-current (s/coll-of uniswap-v3/tick-day-data-v3-dto-spec)
  "TicksDayData (current)
  Gets ticks day data."
  ([] (uniswap-v3-get-ticks-day-data-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-ticks-day-data-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/tick-day-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-token-hour-data-v3s-historical-with-http-info any?
  "TokenHourDataV3s (historical) 🔥
  Gets tokenhourdatav3s."
  ([] (uniswap-v3-get-token-hour-data-v3s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tokenhourdatav3s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-token-hour-data-v3s-historical (s/coll-of uniswap-v3/token-hour-data-v3-dto-spec)
  "TokenHourDataV3s (historical) 🔥
  Gets tokenhourdatav3s."
  ([] (uniswap-v3-get-token-hour-data-v3s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-token-hour-data-v3s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-hour-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-token-v3-day-datas-historical-with-http-info any?
  "TokenV3DayDatas (historical) 🔥
  Gets tokenv3daydatas."
  ([] (uniswap-v3-get-token-v3-day-datas-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tokenv3daydatas/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-token-v3-day-datas-historical (s/coll-of uniswap-v3/token-v3-day-data-dto-spec)
  "TokenV3DayDatas (historical) 🔥
  Gets tokenv3daydatas."
  ([] (uniswap-v3-get-token-v3-day-datas-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-token-v3-day-datas-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-v3-day-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-token-v3s-historical-with-http-info any?
  "TokenV3s (historical) 🔥
  Gets tokenv3s."
  ([] (uniswap-v3-get-token-v3s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id symbol name]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tokenv3s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "symbol" symbol "name" name }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-token-v3s-historical (s/coll-of uniswap-v3/token-v3-dto-spec)
  "TokenV3s (historical) 🔥
  Gets tokenv3s."
  ([] (uniswap-v3-get-token-v3s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-token-v3s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-tokens-current-with-http-info any?
  "Tokens (current) 🔥
  Gets tokens."
  ([] (uniswap-v3-get-tokens-current-with-http-info nil))
  ([{:keys [filter_token_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tokens/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_token_id" filter_token_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-tokens-current (s/coll-of uniswap-v3/token-v3-dto-spec)
  "Tokens (current) 🔥
  Gets tokens."
  ([] (uniswap-v3-get-tokens-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-tokens-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-tokens-day-data-current-with-http-info any?
  "TokensDayData (current)
  Gets tokens day data."
  ([] (uniswap-v3-get-tokens-day-data-current-with-http-info nil))
  ([{:keys [filter_token_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tokensDayData/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_token_id" filter_token_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-tokens-day-data-current (s/coll-of uniswap-v3/token-v3-day-data-dto-spec)
  "TokensDayData (current)
  Gets tokens day data."
  ([] (uniswap-v3-get-tokens-day-data-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-tokens-day-data-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-v3-day-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-tokens-hour-data-current-with-http-info any?
  "TokensHourData (current)
  Gets tokens hour data."
  ([] (uniswap-v3-get-tokens-hour-data-current-with-http-info nil))
  ([{:keys [filter_token_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tokensHourData/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_token_id" filter_token_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-tokens-hour-data-current (s/coll-of uniswap-v3/token-hour-data-v3-dto-spec)
  "TokensHourData (current)
  Gets tokens hour data."
  ([] (uniswap-v3-get-tokens-hour-data-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-tokens-hour-data-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-hour-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-transaction-v3s-historical-with-http-info any?
  "TransactionV3s (historical) 🔥
  Gets transactionv3s."
  ([] (uniswap-v3-get-transaction-v3s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/transactionv3s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-transaction-v3s-historical (s/coll-of uniswap-v3/transaction-v3-dto-spec)
  "TransactionV3s (historical) 🔥
  Gets transactionv3s."
  ([] (uniswap-v3-get-transaction-v3s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-transaction-v3s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/transaction-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-uniswap-day-data-v3s-historical-with-http-info any?
  "UniswapDayDataV3s (historical) 🔥
  Gets uniswapdaydatav3s."
  ([] (uniswap-v3-get-uniswap-day-data-v3s-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/uniswapdaydatav3s/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-uniswap-day-data-v3s-historical (s/coll-of uniswap-v3/uniswap-day-data-v3-dto-spec)
  "UniswapDayDataV3s (historical) 🔥
  Gets uniswapdaydatav3s."
  ([] (uniswap-v3-get-uniswap-day-data-v3s-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-uniswap-day-data-v3s-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/uniswap-day-data-v3-dto-spec) res st/string-transformer)
        res))))


