(ns on-chain-api.api.uniswap-v-
  (:require [on-chain-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [on-chain-api.specs.sushiswap/factory-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/swap-v2-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/token-v2-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/factory-v3-dto :refer :all]
            [on-chain-api.specs.sushiswap/swap-dto :refer :all]
            [on-chain-api.specs.sushiswap/token-day-data-dto :refer :all]
            [on-chain-api.specs.sushiswap/bundle-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/bundle-v3-dto :refer :all]
            [on-chain-api.specs.sushiswap/pair-dto :refer :all]
            [on-chain-api.specs.sushiswap/mint-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/uniswap-day-data-v3-dto :refer :all]
            [on-chain-api.specs.sushiswap/liquidity-position-snapshot-dto :refer :all]
            [on-chain-api.specs.sushiswap/pair-day-data-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/swap-v3-dto :refer :all]
            [on-chain-api.specs.sushiswap/hour-data-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/burn-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/tick-day-data-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/position-snapshot-v3-dto :refer :all]
            [on-chain-api.specs.numerics/big-integer :refer :all]
            [on-chain-api.specs.uniswap-v3/pool-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/pool-day-data-v3-dto :refer :all]
            [on-chain-api.specs.sushiswap/day-data-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/token-v3-dto :refer :all]
            [on-chain-api.specs.sushiswap/pair-hour-data-dto :refer :all]
            [on-chain-api.specs.transactions/e-trade-aggressive-side :refer :all]
            [on-chain-api.specs.sushiswap/token-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/tick-v3-dto :refer :all]
            [on-chain-api.specs.sushiswap/burn-dto :refer :all]
            [on-chain-api.specs.sushiswap/user-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/token-hour-data-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/position-v3-dto :refer :all]
            [on-chain-api.specs.sushiswap/liquidity-position-dto :refer :all]
            [on-chain-api.specs.sushiswap/transaction-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/token-v3-day-data-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/pool-hour-data-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/pair-v2-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/mint-v3-dto :refer :all]
            )
  (:import (java.io File)))


(defn-spec dapps-uniswapv2-bundles-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv2-bundles-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/bundles/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv2-bundles-historical-get any?
  ""
  ([] (dapps-uniswapv2-bundles-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv2-bundles-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv2-burns-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv2-burns-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/burns/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv2-burns-historical-get any?
  ""
  ([] (dapps-uniswapv2-burns-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv2-burns-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv2-day-data-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv2-day-data-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/dayData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv2-day-data-historical-get any?
  ""
  ([] (dapps-uniswapv2-day-data-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv2-day-data-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv2-factory-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv2-factory-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/factory/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv2-factory-historical-get any?
  ""
  ([] (dapps-uniswapv2-factory-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv2-factory-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv2-liquidity-position-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv2-liquidity-position-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/liquidityPosition/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv2-liquidity-position-historical-get any?
  ""
  ([] (dapps-uniswapv2-liquidity-position-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv2-liquidity-position-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv2-liquidity-position-snapshots-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv2-liquidity-position-snapshots-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/liquidityPositionSnapshots/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv2-liquidity-position-snapshots-historical-get any?
  ""
  ([] (dapps-uniswapv2-liquidity-position-snapshots-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv2-liquidity-position-snapshots-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv2-mints-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv2-mints-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/mints/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv2-mints-historical-get any?
  ""
  ([] (dapps-uniswapv2-mints-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv2-mints-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv2-pool-day-data-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv2-pool-day-data-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/poolDayData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv2-pool-day-data-historical-get any?
  ""
  ([] (dapps-uniswapv2-pool-day-data-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv2-pool-day-data-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv2-pool-hour-data-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv2-pool-hour-data-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/poolHourData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv2-pool-hour-data-historical-get any?
  ""
  ([] (dapps-uniswapv2-pool-hour-data-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv2-pool-hour-data-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv2-pools-current-get-with-http-info any?
  "GetPools"
  ([] (dapps-uniswapv2-pools-current-get-with-http-info nil))
  ([{:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/pools/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dapps-uniswapv2-pools-current-get (s/coll-of uniswap-v2/pair-v2-dto-spec)
  "GetPools"
  ([] (dapps-uniswapv2-pools-current-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv2-pools-current-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v2/pair-v2-dto-spec) res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv2-pools-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv2-pools-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/pools/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv2-pools-historical-get any?
  ""
  ([] (dapps-uniswapv2-pools-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv2-pools-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv2-swaps-current-get-with-http-info any?
  "GetSwaps"
  []
  (call-api "/dapps/uniswapv2/swaps/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec dapps-uniswapv2-swaps-current-get (s/coll-of uniswap-v2/swap-v2-dto-spec)
  "GetSwaps"
  []
  (let [res (:data (dapps-uniswapv2-swaps-current-get-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/swap-v2-dto-spec) res st/string-transformer)
       res)))


(defn-spec dapps-uniswapv2-swaps-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv2-swaps-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/swaps/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv2-swaps-historical-get any?
  ""
  ([] (dapps-uniswapv2-swaps-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv2-swaps-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv2-token-day-data-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv2-token-day-data-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate tokenId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/tokenDayData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "tokenId" tokenId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv2-token-day-data-historical-get any?
  ""
  ([] (dapps-uniswapv2-token-day-data-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv2-token-day-data-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv2-tokens-current-get-with-http-info any?
  "GetTokens"
  []
  (call-api "/dapps/uniswapv2/tokens/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec dapps-uniswapv2-tokens-current-get (s/coll-of uniswap-v2/token-v2-dto-spec)
  "GetTokens"
  []
  (let [res (:data (dapps-uniswapv2-tokens-current-get-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v2/token-v2-dto-spec) res st/string-transformer)
       res)))


(defn-spec dapps-uniswapv2-tokens-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv2-tokens-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate tokenId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/tokens/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "tokenId" tokenId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv2-tokens-historical-get any?
  ""
  ([] (dapps-uniswapv2-tokens-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv2-tokens-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv2-transactions-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv2-transactions-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/transactions/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv2-transactions-historical-get any?
  ""
  ([] (dapps-uniswapv2-transactions-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv2-transactions-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv2-users-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv2-users-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv2/users/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv2-users-historical-get any?
  ""
  ([] (dapps-uniswapv2-users-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv2-users-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-bundle-current-get-with-http-info any?
  "GetBundles"
  []
  (call-api "/dapps/uniswapv3/bundle/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec dapps-uniswapv3-bundle-current-get (s/coll-of uniswap-v3/bundle-v3-dto-spec)
  "GetBundles"
  []
  (let [res (:data (dapps-uniswapv3-bundle-current-get-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/bundle-v3-dto-spec) res st/string-transformer)
       res)))


(defn-spec dapps-uniswapv3-bundles-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv3-bundles-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/bundles/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv3-bundles-historical-get any?
  ""
  ([] (dapps-uniswapv3-bundles-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-bundles-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-burns-current-get-with-http-info any?
  "GetBurns"
  ([] (dapps-uniswapv3-burns-current-get-with-http-info nil))
  ([{:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/burns/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dapps-uniswapv3-burns-current-get (s/coll-of uniswap-v3/burn-v3-dto-spec)
  "GetBurns"
  ([] (dapps-uniswapv3-burns-current-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-burns-current-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/burn-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-burns-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv3-burns-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/burns/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv3-burns-historical-get any?
  ""
  ([] (dapps-uniswapv3-burns-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-burns-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-day-data-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv3-day-data-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/dayData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv3-day-data-historical-get any?
  ""
  ([] (dapps-uniswapv3-day-data-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-day-data-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-factory-current-get-with-http-info any?
  "GetFactory"
  [chain_id string?]
  (check-required-params chain_id)
  (call-api "/dapps/uniswapv3/factory/current" :get
            {:path-params   {"chain_id" chain_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec dapps-uniswapv3-factory-current-get (s/coll-of uniswap-v3/factory-v3-dto-spec)
  "GetFactory"
  [chain_id string?]
  (let [res (:data (dapps-uniswapv3-factory-current-get-with-http-info chain_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/factory-v3-dto-spec) res st/string-transformer)
       res)))


(defn-spec dapps-uniswapv3-factory-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv3-factory-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/factory/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv3-factory-historical-get any?
  ""
  ([] (dapps-uniswapv3-factory-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-factory-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-mints-current-get-with-http-info any?
  "GetMints"
  ([] (dapps-uniswapv3-mints-current-get-with-http-info nil))
  ([{:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/mints/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dapps-uniswapv3-mints-current-get (s/coll-of uniswap-v3/mint-v3-dto-spec)
  "GetMints"
  ([] (dapps-uniswapv3-mints-current-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-mints-current-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/mint-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-mints-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv3-mints-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/mints/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv3-mints-historical-get any?
  ""
  ([] (dapps-uniswapv3-mints-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-mints-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-pool-day-data-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv3-pool-day-data-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/poolDayData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv3-pool-day-data-historical-get any?
  ""
  ([] (dapps-uniswapv3-pool-day-data-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-pool-day-data-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-pool-hour-data-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv3-pool-hour-data-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/poolHourData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv3-pool-hour-data-historical-get any?
  ""
  ([] (dapps-uniswapv3-pool-hour-data-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-pool-hour-data-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-pools-current-get-with-http-info any?
  "GetPools"
  ([] (dapps-uniswapv3-pools-current-get-with-http-info nil))
  ([{:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/pools/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dapps-uniswapv3-pools-current-get (s/coll-of uniswap-v3/pool-v3-dto-spec)
  "GetPools"
  ([] (dapps-uniswapv3-pools-current-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-pools-current-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-pools-day-data-current-get-with-http-info any?
  "GetPoolsDayData"
  ([] (dapps-uniswapv3-pools-day-data-current-get-with-http-info nil))
  ([{:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/poolsDayData/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dapps-uniswapv3-pools-day-data-current-get (s/coll-of uniswap-v3/pool-day-data-v3-dto-spec)
  "GetPoolsDayData"
  ([] (dapps-uniswapv3-pools-day-data-current-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-pools-day-data-current-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-day-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-pools-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv3-pools-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/pools/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv3-pools-historical-get any?
  ""
  ([] (dapps-uniswapv3-pools-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-pools-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-pools-hour-data-current-get-with-http-info any?
  "GetPoolsHourData"
  ([] (dapps-uniswapv3-pools-hour-data-current-get-with-http-info nil))
  ([{:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/poolsHourData/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dapps-uniswapv3-pools-hour-data-current-get (s/coll-of uniswap-v3/pool-hour-data-v3-dto-spec)
  "GetPoolsHourData"
  ([] (dapps-uniswapv3-pools-hour-data-current-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-pools-hour-data-current-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/pool-hour-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-position-snapshot-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv3-position-snapshot-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/positionSnapshot/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv3-position-snapshot-historical-get any?
  ""
  ([] (dapps-uniswapv3-position-snapshot-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-position-snapshot-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-position-snapshots-current-get-with-http-info any?
  "GetPositionSnapshot"
  ([] (dapps-uniswapv3-position-snapshots-current-get-with-http-info nil))
  ([{:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/positionSnapshots/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dapps-uniswapv3-position-snapshots-current-get (s/coll-of uniswap-v3/position-snapshot-v3-dto-spec)
  "GetPositionSnapshot"
  ([] (dapps-uniswapv3-position-snapshots-current-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-position-snapshots-current-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/position-snapshot-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-positions-current-get-with-http-info any?
  "GetPositions"
  ([] (dapps-uniswapv3-positions-current-get-with-http-info nil))
  ([{:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/positions/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dapps-uniswapv3-positions-current-get (s/coll-of uniswap-v3/position-v3-dto-spec)
  "GetPositions"
  ([] (dapps-uniswapv3-positions-current-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-positions-current-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/position-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-positions-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv3-positions-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/positions/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv3-positions-historical-get any?
  ""
  ([] (dapps-uniswapv3-positions-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-positions-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-swaps-current-get-with-http-info any?
  "GetSwaps"
  ([] (dapps-uniswapv3-swaps-current-get-with-http-info nil))
  ([{:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/swaps/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dapps-uniswapv3-swaps-current-get (s/coll-of uniswap-v3/swap-v3-dto-spec)
  "GetSwaps"
  ([] (dapps-uniswapv3-swaps-current-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-swaps-current-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/swap-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-swaps-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv3-swaps-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/swaps/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv3-swaps-historical-get any?
  ""
  ([] (dapps-uniswapv3-swaps-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-swaps-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-tick-day-data-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv3-tick-day-data-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tickDayData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv3-tick-day-data-historical-get any?
  ""
  ([] (dapps-uniswapv3-tick-day-data-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-tick-day-data-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-ticks-current-get-with-http-info any?
  "GetTicks"
  ([] (dapps-uniswapv3-ticks-current-get-with-http-info nil))
  ([{:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/ticks/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dapps-uniswapv3-ticks-current-get (s/coll-of uniswap-v3/tick-v3-dto-spec)
  "GetTicks"
  ([] (dapps-uniswapv3-ticks-current-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-ticks-current-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/tick-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-ticks-day-data-current-get-with-http-info any?
  "GetTicksDayData"
  ([] (dapps-uniswapv3-ticks-day-data-current-get-with-http-info nil))
  ([{:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/ticksDayData/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dapps-uniswapv3-ticks-day-data-current-get (s/coll-of uniswap-v3/tick-day-data-v3-dto-spec)
  "GetTicksDayData"
  ([] (dapps-uniswapv3-ticks-day-data-current-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-ticks-day-data-current-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/tick-day-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-ticks-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv3-ticks-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/ticks/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv3-ticks-historical-get any?
  ""
  ([] (dapps-uniswapv3-ticks-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-ticks-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-token-day-data-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv3-token-day-data-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate tokenId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tokenDayData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "tokenId" tokenId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv3-token-day-data-historical-get any?
  ""
  ([] (dapps-uniswapv3-token-day-data-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-token-day-data-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-token-hour-data-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv3-token-hour-data-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate tokenId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tokenHourData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "tokenId" tokenId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv3-token-hour-data-historical-get any?
  ""
  ([] (dapps-uniswapv3-token-hour-data-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-token-hour-data-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-tokens-current-get-with-http-info any?
  "GetTokens"
  ([] (dapps-uniswapv3-tokens-current-get-with-http-info nil))
  ([{:keys [filter_token_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tokens/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_token_id" filter_token_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dapps-uniswapv3-tokens-current-get (s/coll-of uniswap-v3/token-v3-dto-spec)
  "GetTokens"
  ([] (dapps-uniswapv3-tokens-current-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-tokens-current-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-tokens-day-data-current-get-with-http-info any?
  "GetTokensDayData"
  ([] (dapps-uniswapv3-tokens-day-data-current-get-with-http-info nil))
  ([{:keys [filter_token_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tokensDayData/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_token_id" filter_token_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dapps-uniswapv3-tokens-day-data-current-get (s/coll-of uniswap-v3/token-v3-day-data-dto-spec)
  "GetTokensDayData"
  ([] (dapps-uniswapv3-tokens-day-data-current-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-tokens-day-data-current-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-v3-day-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-tokens-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv3-tokens-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate tokenId]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tokens/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "tokenId" tokenId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv3-tokens-historical-get any?
  ""
  ([] (dapps-uniswapv3-tokens-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-tokens-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-tokens-hour-data-current-get-with-http-info any?
  "GetTokensHourData"
  ([] (dapps-uniswapv3-tokens-hour-data-current-get-with-http-info nil))
  ([{:keys [filter_token_id]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/tokensHourData/current" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"filter_token_id" filter_token_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dapps-uniswapv3-tokens-hour-data-current-get (s/coll-of uniswap-v3/token-hour-data-v3-dto-spec)
  "GetTokensHourData"
  ([] (dapps-uniswapv3-tokens-hour-data-current-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-tokens-hour-data-current-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of uniswap-v3/token-hour-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-transactions-historical-get-with-http-info any?
  ""
  ([] (dapps-uniswapv3-transactions-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/uniswapv3/transactions/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-uniswapv3-transactions-historical-get any?
  ""
  ([] (dapps-uniswapv3-transactions-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-uniswapv3-transactions-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-uniswapv3-uniswap-day-data-current-get-with-http-info any?
  "GetUniswapDayData"
  []
  (call-api "/dapps/uniswapv3/uniswapDayData/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec dapps-uniswapv3-uniswap-day-data-current-get (s/coll-of uniswap-v3/uniswap-day-data-v3-dto-spec)
  "GetUniswapDayData"
  []
  (let [res (:data (dapps-uniswapv3-uniswap-day-data-current-get-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-v3/uniswap-day-data-v3-dto-spec) res st/string-transformer)
       res)))


