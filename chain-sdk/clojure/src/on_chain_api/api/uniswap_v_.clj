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


(defn-spec uniswap-v2-get-bundles-historical-with-http-info any?
  "GetBundles (historical)
  Gets bundles."
  ([] (uniswap-v2-get-bundles-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/bundles/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-bundles-historical (s/coll-of uniswap-v2/bundle-v2-dto-spec)
  "GetBundles (historical)
  Gets bundles."
  ([] (uniswap-v2-get-bundles-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-bundles-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/bundle-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-burns-historical-with-http-info any?
  "GetBurns (historical)
  Gets burns."
  ([] (uniswap-v2-get-burns-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/burns/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-burns-historical (s/coll-of uniswap-v2/burn-v2-dto-spec)
  "GetBurns (historical)
  Gets burns."
  ([] (uniswap-v2-get-burns-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-burns-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/burn-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-day-data-historical-with-http-info any?
  "GetDayData (historical)
  Gets uniswapv2 day data."
  ([] (uniswap-v2-get-day-data-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/dayData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-day-data-historical (s/coll-of uniswap-v2/uniswap-day-data-v2-dto-spec)
  "GetDayData (historical)
  Gets uniswapv2 day data."
  ([] (uniswap-v2-get-day-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-day-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/uniswap-day-data-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-factory-historical-with-http-info any?
  "GetFactory (historical)
  Gets factory."
  ([] (uniswap-v2-get-factory-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/factory/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-factory-historical (s/coll-of uniswap-v2/uniswap-factory-v2-dto-spec)
  "GetFactory (historical)
  Gets factory."
  ([] (uniswap-v2-get-factory-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-factory-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/uniswap-factory-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-liquidity-positions-historical-with-http-info any?
  "GetLiquidityPositions (historical)
  Gets liquidity positions."
  ([] (uniswap-v2-get-liquidity-positions-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/liquidityPositions/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-liquidity-positions-historical (s/coll-of uniswap-v2/liquidity-position-v2-dto-spec)
  "GetLiquidityPositions (historical)
  Gets liquidity positions."
  ([] (uniswap-v2-get-liquidity-positions-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-liquidity-positions-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/liquidity-position-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-liquidity-positions-snapshots-historical-with-http-info any?
  "GetLiquidityPositionsSnapshots (historical)
  Gets liquidity positions snapshots."
  ([] (uniswap-v2-get-liquidity-positions-snapshots-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/liquidityPositionsSnapshots/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-liquidity-positions-snapshots-historical (s/coll-of uniswap-v2/liquidity-position-snapshot-v2-dto-spec)
  "GetLiquidityPositionsSnapshots (historical)
  Gets liquidity positions snapshots."
  ([] (uniswap-v2-get-liquidity-positions-snapshots-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-liquidity-positions-snapshots-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/liquidity-position-snapshot-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-mints-historical-with-http-info any?
  "GetMints (historical)
  Gets mints."
  ([] (uniswap-v2-get-mints-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/mints/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-mints-historical (s/coll-of uniswap-v2/mint-v2-dto-spec)
  "GetMints (historical)
  Gets mints."
  ([] (uniswap-v2-get-mints-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-mints-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/mint-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-pools-current-with-http-info any?
  "GetPools (current) 🔥
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
  "GetPools (current) 🔥
  Gets pools."
  ([] (uniswap-v2-get-pools-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-pools-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/pair-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-pools-day-data-historical-with-http-info any?
  "GetPoolsDayData (historical)
  Gets pools day data."
  ([] (uniswap-v2-get-pools-day-data-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/poolsDayData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-pools-day-data-historical (s/coll-of uniswap-v2/pair-day-data-v2-dto-spec)
  "GetPoolsDayData (historical)
  Gets pools day data."
  ([] (uniswap-v2-get-pools-day-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-pools-day-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/pair-day-data-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-pools-historical-with-http-info any?
  "GetPools (historical) 🔥
  Gets pools."
  ([] (uniswap-v2-get-pools-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/pools/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-pools-historical (s/coll-of uniswap-v2/pair-v2-dto-spec)
  "GetPools (historical) 🔥
  Gets pools."
  ([] (uniswap-v2-get-pools-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-pools-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/pair-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-pools-hour-data-historical-with-http-info any?
  "GetPoolsHourData (historical)
  Gets pools tracked each our."
  ([] (uniswap-v2-get-pools-hour-data-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/poolsHourData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-pools-hour-data-historical (s/coll-of uniswap-v2/pair-hour-data-v2-dto-spec)
  "GetPoolsHourData (historical)
  Gets pools tracked each our."
  ([] (uniswap-v2-get-pools-hour-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-pools-hour-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/pair-hour-data-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-swaps-current-with-http-info any?
  "GetSwaps (current) 🔥
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
  "GetSwaps (current) 🔥
  Gets swaps."
  []
  (let [res (:data (uniswap-v2-get-swaps-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/swap-v2-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-get-swaps-historical-with-http-info any?
  "GetSwaps (historical) 🔥
  Gets swaps."
  ([] (uniswap-v2-get-swaps-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/swaps/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-swaps-historical (s/coll-of uniswap-v2/swap-v2-dto-spec)
  "GetSwaps (historical) 🔥
  Gets swaps."
  ([] (uniswap-v2-get-swaps-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-swaps-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/swap-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-tokens-current-with-http-info any?
  "GetTokens (current) 🔥
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
  "GetTokens (current) 🔥
  Gets tokens."
  []
  (let [res (:data (uniswap-v2-get-tokens-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/token-v2-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v2-get-tokens-day-data-historical-with-http-info any?
  "GetTokensDayData (historical)
  Gets tokens day data."
  ([] (uniswap-v2-get-tokens-day-data-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate tokenId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/tokensDayData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "tokenId" tokenId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-tokens-day-data-historical (s/coll-of uniswap-v2/token-day-data-v2-dto-spec)
  "GetTokensDayData (historical)
  Gets tokens day data."
  ([] (uniswap-v2-get-tokens-day-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-tokens-day-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/token-day-data-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-tokens-historical-with-http-info any?
  "GetTokens (historical) 🔥
  Gets tokens."
  ([] (uniswap-v2-get-tokens-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate tokenId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/tokens/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "tokenId" tokenId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-tokens-historical (s/coll-of uniswap-v2/token-v2-dto-spec)
  "GetTokens (historical) 🔥
  Gets tokens."
  ([] (uniswap-v2-get-tokens-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-tokens-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/token-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-transactions-historical-with-http-info any?
  "GetTransactions (historical)
  Gets transactions."
  ([] (uniswap-v2-get-transactions-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/transactions/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-transactions-historical (s/coll-of uniswap-v2/transaction-v2-dto-spec)
  "GetTransactions (historical)
  Gets transactions."
  ([] (uniswap-v2-get-transactions-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-transactions-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/transaction-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-users-historical-with-http-info any?
  "GetUsers (historical)
  Gets users."
  ([] (uniswap-v2-get-users-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/users/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-users-historical (s/coll-of uniswap-v2/user-v2-dto-spec)
  "GetUsers (historical)
  Gets users."
  ([] (uniswap-v2-get-users-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-users-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/user-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-bundles-current-with-http-info any?
  "GetBundles (current)
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
  "GetBundles (current)
  Gets bundles."
  []
  (let [res (:data (uniswap-v3-get-bundles-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/bundle-v3-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-get-bundles-historical-with-http-info any?
  "GetBundles (historical)
  Gets bundles."
  ([] (uniswap-v3-get-bundles-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/bundles/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-bundles-historical (s/coll-of uniswap-v3/bundle-v3-dto-spec)
  "GetBundles (historical)
  Gets bundles."
  ([] (uniswap-v3-get-bundles-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-bundles-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/bundle-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-burns-current-with-http-info any?
  "GetBurns (current)
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
  "GetBurns (current)
  Gets burns."
  ([] (uniswap-v3-get-burns-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-burns-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/burn-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-burns-historical-with-http-info any?
  "GetBurns (historical)
  Gets burns."
  ([] (uniswap-v3-get-burns-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/burns/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-burns-historical (s/coll-of uniswap-v3/burn-v3-dto-spec)
  "GetBurns (historical)
  Gets burns."
  ([] (uniswap-v3-get-burns-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-burns-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/burn-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-day-data-current-with-http-info any?
  "GetDayData (current)
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
  "GetDayData (current)
  Gets uniswapv3 day data."
  []
  (let [res (:data (uniswap-v3-get-day-data-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/uniswap-day-data-v3-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-get-day-data-historical-with-http-info any?
  "GetDayData (historical)
  Gets uniswapv3 day data."
  ([] (uniswap-v3-get-day-data-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/dayData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-day-data-historical (s/coll-of uniswap-v3/uniswap-day-data-v3-dto-spec)
  "GetDayData (historical)
  Gets uniswapv3 day data."
  ([] (uniswap-v3-get-day-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-day-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/uniswap-day-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-factory-current-with-http-info any?
  "GetFactory (current)
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
  "GetFactory (current)
  Gets factory."
  []
  (let [res (:data (uniswap-v3-get-factory-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/factory-v3-dto-spec) res st/string-transformer)
       res)))


(defn-spec uniswap-v3-get-factory-historical-with-http-info any?
  "GetFactory (historical)
  Gets factory."
  ([] (uniswap-v3-get-factory-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/factory/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-factory-historical (s/coll-of uniswap-v3/factory-v3-dto-spec)
  "GetFactory (historical)
  Gets factory."
  ([] (uniswap-v3-get-factory-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-factory-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/factory-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-mints-current-with-http-info any?
  "GetMints (current)
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
  "GetMints (current)
  Gets mints."
  ([] (uniswap-v3-get-mints-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-mints-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/mint-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-mints-historical-with-http-info any?
  "GetMints (historical)
  Gets mints."
  ([] (uniswap-v3-get-mints-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/mints/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-mints-historical (s/coll-of uniswap-v3/mint-v3-dto-spec)
  "GetMints (historical)
  Gets mints."
  ([] (uniswap-v3-get-mints-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-mints-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/mint-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-pools-current-with-http-info any?
  "GetPools (current) 🔥
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
  "GetPools (current) 🔥
  Gets pools."
  ([] (uniswap-v3-get-pools-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-pools-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-pools-day-data-current-with-http-info any?
  "GetPoolsDayData (current)
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
  "GetPoolsDayData (current)
  Gets pools day data."
  ([] (uniswap-v3-get-pools-day-data-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-pools-day-data-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-day-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-pools-day-data-historical-with-http-info any?
  "GetPoolsDayData (historical)
  Gets pools day data."
  ([] (uniswap-v3-get-pools-day-data-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/poolsDayData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-pools-day-data-historical (s/coll-of uniswap-v3/pool-day-data-v3-dto-spec)
  "GetPoolsDayData (historical)
  Gets pools day data."
  ([] (uniswap-v3-get-pools-day-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-pools-day-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-day-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-pools-historical-with-http-info any?
  "GetPools (historical) 🔥
  Gets pools."
  ([] (uniswap-v3-get-pools-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/pools/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-pools-historical (s/coll-of uniswap-v3/pool-v3-dto-spec)
  "GetPools (historical) 🔥
  Gets pools."
  ([] (uniswap-v3-get-pools-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-pools-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-pools-hour-data-current-with-http-info any?
  "GetPoolsHourData (current)
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
  "GetPoolsHourData (current)
  Gets pools hour data."
  ([] (uniswap-v3-get-pools-hour-data-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-pools-hour-data-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-hour-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-pools-hour-data-historical-with-http-info any?
  "GetPoolsHourData (historical)
  Gets pools hour data."
  ([] (uniswap-v3-get-pools-hour-data-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/poolsHourData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-pools-hour-data-historical (s/coll-of uniswap-v3/pool-hour-data-v3-dto-spec)
  "GetPoolsHourData (historical)
  Gets pools hour data."
  ([] (uniswap-v3-get-pools-hour-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-pools-hour-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-hour-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-positions-current-with-http-info any?
  "GetPositions (current)
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
  "GetPositions (current)
  Gets positions."
  ([] (uniswap-v3-get-positions-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-positions-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/position-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-positions-historical-with-http-info any?
  "GetPositions (historical)
  Gets positions."
  ([] (uniswap-v3-get-positions-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/positions/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-positions-historical (s/coll-of uniswap-v3/position-v3-dto-spec)
  "GetPositions (historical)
  Gets positions."
  ([] (uniswap-v3-get-positions-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-positions-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/position-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-positions-snaphots-historical-with-http-info any?
  "GetPositionsSnaphots (historical)
  Gets positions snapshots."
  ([] (uniswap-v3-get-positions-snaphots-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/positionsSnapshots/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-positions-snaphots-historical (s/coll-of uniswap-v3/position-snapshot-v3-dto-spec)
  "GetPositionsSnaphots (historical)
  Gets positions snapshots."
  ([] (uniswap-v3-get-positions-snaphots-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-positions-snaphots-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/position-snapshot-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-positions-snapshots-current-with-http-info any?
  "GetPositionsSnapshots (current)
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
  "GetPositionsSnapshots (current)
  Gets positions snapshots."
  ([] (uniswap-v3-get-positions-snapshots-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-positions-snapshots-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/position-snapshot-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-swaps-current-with-http-info any?
  "GetSwaps (current) 🔥
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
  "GetSwaps (current) 🔥
  Gets swaps."
  ([] (uniswap-v3-get-swaps-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-swaps-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/swap-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-swaps-historical-with-http-info any?
  "GetSwaps (historical) 🔥
  Gets swaps."
  ([] (uniswap-v3-get-swaps-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/swaps/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-swaps-historical (s/coll-of uniswap-v3/swap-v3-dto-spec)
  "GetSwaps (historical) 🔥
  Gets swaps."
  ([] (uniswap-v3-get-swaps-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-swaps-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/swap-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-ticks-current-with-http-info any?
  "GetTicks (current)
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
  "GetTicks (current)
  Gets ticks."
  ([] (uniswap-v3-get-ticks-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-ticks-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/tick-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-ticks-day-data-current-with-http-info any?
  "GetTicksDayData (current)
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
  "GetTicksDayData (current)
  Gets ticks day data."
  ([] (uniswap-v3-get-ticks-day-data-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-ticks-day-data-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/tick-day-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-ticks-day-data-historical-with-http-info any?
  "GetTicksDayData (historical)
  Gets ticks day data."
  ([] (uniswap-v3-get-ticks-day-data-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/ticksDayData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-ticks-day-data-historical (s/coll-of uniswap-v3/tick-day-data-v3-dto-spec)
  "GetTicksDayData (historical)
  Gets ticks day data."
  ([] (uniswap-v3-get-ticks-day-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-ticks-day-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/tick-day-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-ticks-historical-with-http-info any?
  "GetTicks (historical)
  Gets ticks."
  ([] (uniswap-v3-get-ticks-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/ticks/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-ticks-historical (s/coll-of uniswap-v3/tick-v3-dto-spec)
  "GetTicks (historical)
  Gets ticks."
  ([] (uniswap-v3-get-ticks-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-ticks-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/tick-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-tokens-current-with-http-info any?
  "GetTokens (current) 🔥
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
  "GetTokens (current) 🔥
  Gets tokens."
  ([] (uniswap-v3-get-tokens-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-tokens-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-tokens-day-data-current-with-http-info any?
  "GetTokensDayData (current)
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
  "GetTokensDayData (current)
  Gets tokens day data."
  ([] (uniswap-v3-get-tokens-day-data-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-tokens-day-data-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-v3-day-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-tokens-day-data-historical-with-http-info any?
  "GetTokensDayData (historical)
  Gets tokens day data."
  ([] (uniswap-v3-get-tokens-day-data-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate tokenId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tokensDayData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "tokenId" tokenId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-tokens-day-data-historical (s/coll-of uniswap-v3/token-v3-day-data-dto-spec)
  "GetTokensDayData (historical)
  Gets tokens day data."
  ([] (uniswap-v3-get-tokens-day-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-tokens-day-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-v3-day-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-tokens-historical-with-http-info any?
  "GetTokens (historical) 🔥
  Gets tokens."
  ([] (uniswap-v3-get-tokens-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate tokenId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tokens/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "tokenId" tokenId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-tokens-historical (s/coll-of uniswap-v3/token-v3-dto-spec)
  "GetTokens (historical) 🔥
  Gets tokens."
  ([] (uniswap-v3-get-tokens-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-tokens-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-tokens-hour-data-current-with-http-info any?
  "GetTokensHourData (current)
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
  "GetTokensHourData (current)
  Gets tokens hour data."
  ([] (uniswap-v3-get-tokens-hour-data-current nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-tokens-hour-data-current-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-hour-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-tokens-hour-data-historical-with-http-info any?
  "GetTokensHourData (historical)
  Gets tokens hour data."
  ([] (uniswap-v3-get-tokens-hour-data-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate tokenId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tokensHourData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "tokenId" tokenId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-tokens-hour-data-historical (s/coll-of uniswap-v3/token-hour-data-v3-dto-spec)
  "GetTokensHourData (historical)
  Gets tokens hour data."
  ([] (uniswap-v3-get-tokens-hour-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-tokens-hour-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-hour-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-transactions-historical-with-http-info any?
  "GetTransactions (historical)
  Gets transactions."
  ([] (uniswap-v3-get-transactions-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/transactions/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-transactions-historical (s/coll-of uniswap-v3/transaction-v3-dto-spec)
  "GetTransactions (historical)
  Gets transactions."
  ([] (uniswap-v3-get-transactions-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-transactions-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/transaction-v3-dto-spec) res st/string-transformer)
        res))))


