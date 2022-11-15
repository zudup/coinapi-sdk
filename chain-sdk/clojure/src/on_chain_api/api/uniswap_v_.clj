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


(defn-spec uniswap-v2-get-bundle-v2-dtos-historical-with-http-info any?
  "BundleV2DTOs (historical) 🔥
  Gets BundleV2DTOs."
  ([] (uniswap-v2-get-bundle-v2-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/BundleV2DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-bundle-v2-dtos-historical (s/coll-of uniswap-v2/bundle-v2-dto-spec)
  "BundleV2DTOs (historical) 🔥
  Gets BundleV2DTOs."
  ([] (uniswap-v2-get-bundle-v2-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-bundle-v2-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/bundle-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-bundles-historical-with-http-info any?
  "Bundles (historical)
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
  "Bundles (historical)
  Gets bundles."
  ([] (uniswap-v2-get-bundles-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-bundles-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/bundle-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-burn-v2-dtos-historical-with-http-info any?
  "BurnV2DTOs (historical) 🔥
  Gets BurnV2DTOs."
  ([] (uniswap-v2-get-burn-v2-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/BurnV2DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-burn-v2-dtos-historical (s/coll-of uniswap-v2/burn-v2-dto-spec)
  "BurnV2DTOs (historical) 🔥
  Gets BurnV2DTOs."
  ([] (uniswap-v2-get-burn-v2-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-burn-v2-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/burn-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-burns-historical-with-http-info any?
  "Burns (historical)
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
  "Burns (historical)
  Gets burns."
  ([] (uniswap-v2-get-burns-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-burns-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/burn-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-day-data-historical-with-http-info any?
  "DayData (historical)
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
  "DayData (historical)
  Gets uniswapv2 day data."
  ([] (uniswap-v2-get-day-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-day-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/uniswap-day-data-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-factory-historical-with-http-info any?
  "Factory (historical)
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
  "Factory (historical)
  Gets factory."
  ([] (uniswap-v2-get-factory-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-factory-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/uniswap-factory-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-liquidity-position-snapshot-v2-dtos-historical-with-http-info any?
  "LiquidityPositionSnapshotV2DTOs (historical) 🔥
  Gets LiquidityPositionSnapshotV2DTOs."
  ([] (uniswap-v2-get-liquidity-position-snapshot-v2-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/LiquidityPositionSnapshotV2DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-liquidity-position-snapshot-v2-dtos-historical (s/coll-of uniswap-v2/liquidity-position-snapshot-v2-dto-spec)
  "LiquidityPositionSnapshotV2DTOs (historical) 🔥
  Gets LiquidityPositionSnapshotV2DTOs."
  ([] (uniswap-v2-get-liquidity-position-snapshot-v2-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-liquidity-position-snapshot-v2-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/liquidity-position-snapshot-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-liquidity-position-v2-dtos-historical-with-http-info any?
  "LiquidityPositionV2DTOs (historical) 🔥
  Gets LiquidityPositionV2DTOs."
  ([] (uniswap-v2-get-liquidity-position-v2-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/LiquidityPositionV2DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-liquidity-position-v2-dtos-historical (s/coll-of uniswap-v2/liquidity-position-v2-dto-spec)
  "LiquidityPositionV2DTOs (historical) 🔥
  Gets LiquidityPositionV2DTOs."
  ([] (uniswap-v2-get-liquidity-position-v2-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-liquidity-position-v2-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/liquidity-position-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-liquidity-positions-historical-with-http-info any?
  "LiquidityPositions (historical)
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
  "LiquidityPositions (historical)
  Gets liquidity positions."
  ([] (uniswap-v2-get-liquidity-positions-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-liquidity-positions-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/liquidity-position-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-liquidity-positions-snapshots-historical-with-http-info any?
  "LiquidityPositionsSnapshots (historical)
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
  "LiquidityPositionsSnapshots (historical)
  Gets liquidity positions snapshots."
  ([] (uniswap-v2-get-liquidity-positions-snapshots-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-liquidity-positions-snapshots-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/liquidity-position-snapshot-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-mint-v2-dtos-historical-with-http-info any?
  "MintV2DTOs (historical) 🔥
  Gets MintV2DTOs."
  ([] (uniswap-v2-get-mint-v2-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/MintV2DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-mint-v2-dtos-historical (s/coll-of uniswap-v2/mint-v2-dto-spec)
  "MintV2DTOs (historical) 🔥
  Gets MintV2DTOs."
  ([] (uniswap-v2-get-mint-v2-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-mint-v2-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/mint-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-mints-historical-with-http-info any?
  "Mints (historical)
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
  "Mints (historical)
  Gets mints."
  ([] (uniswap-v2-get-mints-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-mints-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/mint-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-pair-day-data-v2-dtos-historical-with-http-info any?
  "PairDayDataV2DTOs (historical) 🔥
  Gets PairDayDataV2DTOs."
  ([] (uniswap-v2-get-pair-day-data-v2-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/PairDayDataV2DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-pair-day-data-v2-dtos-historical (s/coll-of uniswap-v2/pair-day-data-v2-dto-spec)
  "PairDayDataV2DTOs (historical) 🔥
  Gets PairDayDataV2DTOs."
  ([] (uniswap-v2-get-pair-day-data-v2-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-pair-day-data-v2-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/pair-day-data-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-pair-hour-data-v2-dtos-historical-with-http-info any?
  "PairHourDataV2DTOs (historical) 🔥
  Gets PairHourDataV2DTOs."
  ([] (uniswap-v2-get-pair-hour-data-v2-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/PairHourDataV2DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-pair-hour-data-v2-dtos-historical (s/coll-of uniswap-v2/pair-hour-data-v2-dto-spec)
  "PairHourDataV2DTOs (historical) 🔥
  Gets PairHourDataV2DTOs."
  ([] (uniswap-v2-get-pair-hour-data-v2-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-pair-hour-data-v2-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/pair-hour-data-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-pair-v2-dtos-historical-with-http-info any?
  "PairV2DTOs (historical) 🔥
  Gets PairV2DTOs."
  ([] (uniswap-v2-get-pair-v2-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/PairV2DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-pair-v2-dtos-historical (s/coll-of uniswap-v2/pair-v2-dto-spec)
  "PairV2DTOs (historical) 🔥
  Gets PairV2DTOs."
  ([] (uniswap-v2-get-pair-v2-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-pair-v2-dtos-historical-with-http-info optional-params))]
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


(defn-spec uniswap-v2-get-pools-day-data-historical-with-http-info any?
  "PoolsDayData (historical)
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
  "PoolsDayData (historical)
  Gets pools day data."
  ([] (uniswap-v2-get-pools-day-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-pools-day-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/pair-day-data-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-pools-historical-with-http-info any?
  "Pools (historical) 🔥
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
  "Pools (historical) 🔥
  Gets pools."
  ([] (uniswap-v2-get-pools-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-pools-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/pair-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-pools-hour-data-historical-with-http-info any?
  "PoolsHourData (historical)
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
  "PoolsHourData (historical)
  Gets pools tracked each our."
  ([] (uniswap-v2-get-pools-hour-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-pools-hour-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/pair-hour-data-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-swap-v2-dtos-historical-with-http-info any?
  "SwapV2DTOs (historical) 🔥
  Gets SwapV2DTOs."
  ([] (uniswap-v2-get-swap-v2-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/SwapV2DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-swap-v2-dtos-historical (s/coll-of uniswap-v2/swap-v2-dto-spec)
  "SwapV2DTOs (historical) 🔥
  Gets SwapV2DTOs."
  ([] (uniswap-v2-get-swap-v2-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-swap-v2-dtos-historical-with-http-info optional-params))]
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


(defn-spec uniswap-v2-get-swaps-historical-with-http-info any?
  "Swaps (historical) 🔥
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
  "Swaps (historical) 🔥
  Gets swaps."
  ([] (uniswap-v2-get-swaps-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-swaps-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/swap-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-token-day-data-v2-dtos-historical-with-http-info any?
  "TokenDayDataV2DTOs (historical) 🔥
  Gets TokenDayDataV2DTOs."
  ([] (uniswap-v2-get-token-day-data-v2-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/TokenDayDataV2DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-token-day-data-v2-dtos-historical (s/coll-of uniswap-v2/token-day-data-v2-dto-spec)
  "TokenDayDataV2DTOs (historical) 🔥
  Gets TokenDayDataV2DTOs."
  ([] (uniswap-v2-get-token-day-data-v2-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-token-day-data-v2-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/token-day-data-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-token-v2-dtos-historical-with-http-info any?
  "TokenV2DTOs (historical) 🔥
  Gets TokenV2DTOs."
  ([] (uniswap-v2-get-token-v2-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/TokenV2DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-token-v2-dtos-historical (s/coll-of uniswap-v2/token-v2-dto-spec)
  "TokenV2DTOs (historical) 🔥
  Gets TokenV2DTOs."
  ([] (uniswap-v2-get-token-v2-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-token-v2-dtos-historical-with-http-info optional-params))]
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


(defn-spec uniswap-v2-get-tokens-day-data-historical-with-http-info any?
  "TokensDayData (historical)
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
  "TokensDayData (historical)
  Gets tokens day data."
  ([] (uniswap-v2-get-tokens-day-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-tokens-day-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/token-day-data-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-tokens-historical-with-http-info any?
  "Tokens (historical) 🔥
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
  "Tokens (historical) 🔥
  Gets tokens."
  ([] (uniswap-v2-get-tokens-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-tokens-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/token-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-transaction-v2-dtos-historical-with-http-info any?
  "TransactionV2DTOs (historical) 🔥
  Gets TransactionV2DTOs."
  ([] (uniswap-v2-get-transaction-v2-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/TransactionV2DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-transaction-v2-dtos-historical (s/coll-of uniswap-v2/transaction-v2-dto-spec)
  "TransactionV2DTOs (historical) 🔥
  Gets TransactionV2DTOs."
  ([] (uniswap-v2-get-transaction-v2-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-transaction-v2-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/transaction-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-transactions-historical-with-http-info any?
  "Transactions (historical)
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
  "Transactions (historical)
  Gets transactions."
  ([] (uniswap-v2-get-transactions-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-transactions-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/transaction-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-uniswap-day-data-v2-dtos-historical-with-http-info any?
  "UniswapDayDataV2DTOs (historical) 🔥
  Gets UniswapDayDataV2DTOs."
  ([] (uniswap-v2-get-uniswap-day-data-v2-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/UniswapDayDataV2DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-uniswap-day-data-v2-dtos-historical (s/coll-of uniswap-v2/uniswap-day-data-v2-dto-spec)
  "UniswapDayDataV2DTOs (historical) 🔥
  Gets UniswapDayDataV2DTOs."
  ([] (uniswap-v2-get-uniswap-day-data-v2-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-uniswap-day-data-v2-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/uniswap-day-data-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-uniswap-factory-v2-dtos-historical-with-http-info any?
  "UniswapFactoryV2DTOs (historical) 🔥
  Gets UniswapFactoryV2DTOs."
  ([] (uniswap-v2-get-uniswap-factory-v2-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/UniswapFactoryV2DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-uniswap-factory-v2-dtos-historical (s/coll-of uniswap-v2/uniswap-factory-v2-dto-spec)
  "UniswapFactoryV2DTOs (historical) 🔥
  Gets UniswapFactoryV2DTOs."
  ([] (uniswap-v2-get-uniswap-factory-v2-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-uniswap-factory-v2-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/uniswap-factory-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-user-v2-dtos-historical-with-http-info any?
  "UserV2DTOs (historical) 🔥
  Gets UserV2DTOs."
  ([] (uniswap-v2-get-user-v2-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/UserV2DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v2-get-user-v2-dtos-historical (s/coll-of uniswap-v2/user-v2-dto-spec)
  "UserV2DTOs (historical) 🔥
  Gets UserV2DTOs."
  ([] (uniswap-v2-get-user-v2-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-user-v2-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/user-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v2-get-users-historical-with-http-info any?
  "Users (historical)
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
  "Users (historical)
  Gets users."
  ([] (uniswap-v2-get-users-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v2-get-users-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/user-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-bundle-v3-dtos-historical-with-http-info any?
  "BundleV3DTOs (historical) 🔥
  Gets BundleV3DTOs."
  ([] (uniswap-v3-get-bundle-v3-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/BundleV3DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-bundle-v3-dtos-historical (s/coll-of uniswap-v3/bundle-v3-dto-spec)
  "BundleV3DTOs (historical) 🔥
  Gets BundleV3DTOs."
  ([] (uniswap-v3-get-bundle-v3-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-bundle-v3-dtos-historical-with-http-info optional-params))]
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


(defn-spec uniswap-v3-get-bundles-historical-with-http-info any?
  "Bundles (historical)
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
  "Bundles (historical)
  Gets bundles."
  ([] (uniswap-v3-get-bundles-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-bundles-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/bundle-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-burn-v3-dtos-historical-with-http-info any?
  "BurnV3DTOs (historical) 🔥
  Gets BurnV3DTOs."
  ([] (uniswap-v3-get-burn-v3-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/BurnV3DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-burn-v3-dtos-historical (s/coll-of uniswap-v3/burn-v3-dto-spec)
  "BurnV3DTOs (historical) 🔥
  Gets BurnV3DTOs."
  ([] (uniswap-v3-get-burn-v3-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-burn-v3-dtos-historical-with-http-info optional-params))]
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


(defn-spec uniswap-v3-get-burns-historical-with-http-info any?
  "Burns (historical)
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
  "Burns (historical)
  Gets burns."
  ([] (uniswap-v3-get-burns-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-burns-historical-with-http-info optional-params))]
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


(defn-spec uniswap-v3-get-day-data-historical-with-http-info any?
  "DayData (historical)
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
  "DayData (historical)
  Gets uniswapv3 day data."
  ([] (uniswap-v3-get-day-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-day-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/uniswap-day-data-v3-dto-spec) res st/string-transformer)
        res))))


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


(defn-spec uniswap-v3-get-factory-historical-with-http-info any?
  "Factory (historical)
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
  "Factory (historical)
  Gets factory."
  ([] (uniswap-v3-get-factory-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-factory-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/factory-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-factory-v3-dtos-historical-with-http-info any?
  "FactoryV3DTOs (historical) 🔥
  Gets FactoryV3DTOs."
  ([] (uniswap-v3-get-factory-v3-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/FactoryV3DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-factory-v3-dtos-historical (s/coll-of uniswap-v3/factory-v3-dto-spec)
  "FactoryV3DTOs (historical) 🔥
  Gets FactoryV3DTOs."
  ([] (uniswap-v3-get-factory-v3-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-factory-v3-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/factory-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-mint-v3-dtos-historical-with-http-info any?
  "MintV3DTOs (historical) 🔥
  Gets MintV3DTOs."
  ([] (uniswap-v3-get-mint-v3-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/MintV3DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-mint-v3-dtos-historical (s/coll-of uniswap-v3/mint-v3-dto-spec)
  "MintV3DTOs (historical) 🔥
  Gets MintV3DTOs."
  ([] (uniswap-v3-get-mint-v3-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-mint-v3-dtos-historical-with-http-info optional-params))]
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


(defn-spec uniswap-v3-get-mints-historical-with-http-info any?
  "Mints (historical)
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
  "Mints (historical)
  Gets mints."
  ([] (uniswap-v3-get-mints-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-mints-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/mint-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-pool-day-data-v3-dtos-historical-with-http-info any?
  "PoolDayDataV3DTOs (historical) 🔥
  Gets PoolDayDataV3DTOs."
  ([] (uniswap-v3-get-pool-day-data-v3-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/PoolDayDataV3DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-pool-day-data-v3-dtos-historical (s/coll-of uniswap-v3/pool-day-data-v3-dto-spec)
  "PoolDayDataV3DTOs (historical) 🔥
  Gets PoolDayDataV3DTOs."
  ([] (uniswap-v3-get-pool-day-data-v3-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-pool-day-data-v3-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-day-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-pool-hour-data-v3-dtos-historical-with-http-info any?
  "PoolHourDataV3DTOs (historical) 🔥
  Gets PoolHourDataV3DTOs."
  ([] (uniswap-v3-get-pool-hour-data-v3-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/PoolHourDataV3DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-pool-hour-data-v3-dtos-historical (s/coll-of uniswap-v3/pool-hour-data-v3-dto-spec)
  "PoolHourDataV3DTOs (historical) 🔥
  Gets PoolHourDataV3DTOs."
  ([] (uniswap-v3-get-pool-hour-data-v3-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-pool-hour-data-v3-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-hour-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-pool-v3-dtos-historical-with-http-info any?
  "PoolV3DTOs (historical) 🔥
  Gets PoolV3DTOs."
  ([] (uniswap-v3-get-pool-v3-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/PoolV3DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-pool-v3-dtos-historical (s/coll-of uniswap-v3/pool-v3-dto-spec)
  "PoolV3DTOs (historical) 🔥
  Gets PoolV3DTOs."
  ([] (uniswap-v3-get-pool-v3-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-pool-v3-dtos-historical-with-http-info optional-params))]
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


(defn-spec uniswap-v3-get-pools-day-data-historical-with-http-info any?
  "PoolsDayData (historical)
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
  "PoolsDayData (historical)
  Gets pools day data."
  ([] (uniswap-v3-get-pools-day-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-pools-day-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-day-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-pools-historical-with-http-info any?
  "Pools (historical) 🔥
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
  "Pools (historical) 🔥
  Gets pools."
  ([] (uniswap-v3-get-pools-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-pools-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-v3-dto-spec) res st/string-transformer)
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


(defn-spec uniswap-v3-get-pools-hour-data-historical-with-http-info any?
  "PoolsHourData (historical)
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
  "PoolsHourData (historical)
  Gets pools hour data."
  ([] (uniswap-v3-get-pools-hour-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-pools-hour-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-hour-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-position-snapshot-v3-dtos-historical-with-http-info any?
  "PositionSnapshotV3DTOs (historical) 🔥
  Gets PositionSnapshotV3DTOs."
  ([] (uniswap-v3-get-position-snapshot-v3-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/PositionSnapshotV3DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-position-snapshot-v3-dtos-historical (s/coll-of uniswap-v3/position-snapshot-v3-dto-spec)
  "PositionSnapshotV3DTOs (historical) 🔥
  Gets PositionSnapshotV3DTOs."
  ([] (uniswap-v3-get-position-snapshot-v3-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-position-snapshot-v3-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/position-snapshot-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-position-v3-dtos-historical-with-http-info any?
  "PositionV3DTOs (historical) 🔥
  Gets PositionV3DTOs."
  ([] (uniswap-v3-get-position-v3-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/PositionV3DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-position-v3-dtos-historical (s/coll-of uniswap-v3/position-v3-dto-spec)
  "PositionV3DTOs (historical) 🔥
  Gets PositionV3DTOs."
  ([] (uniswap-v3-get-position-v3-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-position-v3-dtos-historical-with-http-info optional-params))]
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


(defn-spec uniswap-v3-get-positions-historical-with-http-info any?
  "Positions (historical)
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
  "Positions (historical)
  Gets positions."
  ([] (uniswap-v3-get-positions-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-positions-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/position-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-positions-snaphots-historical-with-http-info any?
  "PositionsSnaphots (historical)
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
  "PositionsSnaphots (historical)
  Gets positions snapshots."
  ([] (uniswap-v3-get-positions-snaphots-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-positions-snaphots-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/position-snapshot-v3-dto-spec) res st/string-transformer)
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


(defn-spec uniswap-v3-get-swap-v3-dtos-historical-with-http-info any?
  "SwapV3DTOs (historical) 🔥
  Gets SwapV3DTOs."
  ([] (uniswap-v3-get-swap-v3-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/SwapV3DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-swap-v3-dtos-historical (s/coll-of uniswap-v3/swap-v3-dto-spec)
  "SwapV3DTOs (historical) 🔥
  Gets SwapV3DTOs."
  ([] (uniswap-v3-get-swap-v3-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-swap-v3-dtos-historical-with-http-info optional-params))]
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


(defn-spec uniswap-v3-get-swaps-historical-with-http-info any?
  "Swaps (historical) 🔥
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
  "Swaps (historical) 🔥
  Gets swaps."
  ([] (uniswap-v3-get-swaps-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-swaps-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/swap-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-tick-day-data-v3-dtos-historical-with-http-info any?
  "TickDayDataV3DTOs (historical) 🔥
  Gets TickDayDataV3DTOs."
  ([] (uniswap-v3-get-tick-day-data-v3-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/TickDayDataV3DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-tick-day-data-v3-dtos-historical (s/coll-of uniswap-v3/tick-day-data-v3-dto-spec)
  "TickDayDataV3DTOs (historical) 🔥
  Gets TickDayDataV3DTOs."
  ([] (uniswap-v3-get-tick-day-data-v3-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-tick-day-data-v3-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/tick-day-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-tick-v3-dtos-historical-with-http-info any?
  "TickV3DTOs (historical) 🔥
  Gets TickV3DTOs."
  ([] (uniswap-v3-get-tick-v3-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/TickV3DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-tick-v3-dtos-historical (s/coll-of uniswap-v3/tick-v3-dto-spec)
  "TickV3DTOs (historical) 🔥
  Gets TickV3DTOs."
  ([] (uniswap-v3-get-tick-v3-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-tick-v3-dtos-historical-with-http-info optional-params))]
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


(defn-spec uniswap-v3-get-ticks-day-data-historical-with-http-info any?
  "TicksDayData (historical)
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
  "TicksDayData (historical)
  Gets ticks day data."
  ([] (uniswap-v3-get-ticks-day-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-ticks-day-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/tick-day-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-ticks-historical-with-http-info any?
  "Ticks (historical)
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
  "Ticks (historical)
  Gets ticks."
  ([] (uniswap-v3-get-ticks-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-ticks-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/tick-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-token-hour-data-v3-dtos-historical-with-http-info any?
  "TokenHourDataV3DTOs (historical) 🔥
  Gets TokenHourDataV3DTOs."
  ([] (uniswap-v3-get-token-hour-data-v3-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/TokenHourDataV3DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-token-hour-data-v3-dtos-historical (s/coll-of uniswap-v3/token-hour-data-v3-dto-spec)
  "TokenHourDataV3DTOs (historical) 🔥
  Gets TokenHourDataV3DTOs."
  ([] (uniswap-v3-get-token-hour-data-v3-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-token-hour-data-v3-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-hour-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-token-v3-day-data-dtos-historical-with-http-info any?
  "TokenV3DayDataDTOs (historical) 🔥
  Gets TokenV3DayDataDTOs."
  ([] (uniswap-v3-get-token-v3-day-data-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/TokenV3DayDataDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-token-v3-day-data-dtos-historical (s/coll-of uniswap-v3/token-v3-day-data-dto-spec)
  "TokenV3DayDataDTOs (historical) 🔥
  Gets TokenV3DayDataDTOs."
  ([] (uniswap-v3-get-token-v3-day-data-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-token-v3-day-data-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-v3-day-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-token-v3-dtos-historical-with-http-info any?
  "TokenV3DTOs (historical) 🔥
  Gets TokenV3DTOs."
  ([] (uniswap-v3-get-token-v3-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/TokenV3DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-token-v3-dtos-historical (s/coll-of uniswap-v3/token-v3-dto-spec)
  "TokenV3DTOs (historical) 🔥
  Gets TokenV3DTOs."
  ([] (uniswap-v3-get-token-v3-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-token-v3-dtos-historical-with-http-info optional-params))]
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


(defn-spec uniswap-v3-get-tokens-day-data-historical-with-http-info any?
  "TokensDayData (historical)
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
  "TokensDayData (historical)
  Gets tokens day data."
  ([] (uniswap-v3-get-tokens-day-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-tokens-day-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-v3-day-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-tokens-historical-with-http-info any?
  "Tokens (historical) 🔥
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
  "Tokens (historical) 🔥
  Gets tokens."
  ([] (uniswap-v3-get-tokens-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-tokens-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-v3-dto-spec) res st/string-transformer)
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


(defn-spec uniswap-v3-get-tokens-hour-data-historical-with-http-info any?
  "TokensHourData (historical)
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
  "TokensHourData (historical)
  Gets tokens hour data."
  ([] (uniswap-v3-get-tokens-hour-data-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-tokens-hour-data-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-hour-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-transaction-v3-dtos-historical-with-http-info any?
  "TransactionV3DTOs (historical) 🔥
  Gets TransactionV3DTOs."
  ([] (uniswap-v3-get-transaction-v3-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/TransactionV3DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-transaction-v3-dtos-historical (s/coll-of uniswap-v3/transaction-v3-dto-spec)
  "TransactionV3DTOs (historical) 🔥
  Gets TransactionV3DTOs."
  ([] (uniswap-v3-get-transaction-v3-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-transaction-v3-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/transaction-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-transactions-historical-with-http-info any?
  "Transactions (historical)
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
  "Transactions (historical)
  Gets transactions."
  ([] (uniswap-v3-get-transactions-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-transactions-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/transaction-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec uniswap-v3-get-uniswap-day-data-v3-dtos-historical-with-http-info any?
  "UniswapDayDataV3DTOs (historical) 🔥
  Gets UniswapDayDataV3DTOs."
  ([] (uniswap-v3-get-uniswap-day-data-v3-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/UniswapDayDataV3DTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec uniswap-v3-get-uniswap-day-data-v3-dtos-historical (s/coll-of uniswap-v3/uniswap-day-data-v3-dto-spec)
  "UniswapDayDataV3DTOs (historical) 🔥
  Gets UniswapDayDataV3DTOs."
  ([] (uniswap-v3-get-uniswap-day-data-v3-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (uniswap-v3-get-uniswap-day-data-v3-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/uniswap-day-data-v3-dto-spec) res st/string-transformer)
        res))))


