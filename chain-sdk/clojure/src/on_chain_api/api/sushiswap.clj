(ns on-chain-api.api.sushiswap
  (:require [on-chain-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [on-chain-api.specs.uniswap-v2/swap-v2-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/token-v2-dto :refer :all]
            [on-chain-api.specs.transactions/e-trade-aggressive-side :refer :all]
            [on-chain-api.specs.uniswap-v3/factory-v3-dto :refer :all]
            [on-chain-api.specs.sushiswap/token-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/tick-v3-dto :refer :all]
            [on-chain-api.specs.sushiswap/swap-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/bundle-v3-dto :refer :all]
            [on-chain-api.specs.sushiswap/pair-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/token-hour-data-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/uniswap-day-data-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/swap-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/position-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/burn-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/tick-day-data-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/position-snapshot-v3-dto :refer :all]
            [on-chain-api.specs.numerics/big-integer :refer :all]
            [on-chain-api.specs.uniswap-v3/pool-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/pool-day-data-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/token-v3-day-data-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/pool-hour-data-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/pair-v2-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/token-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/mint-v3-dto :refer :all]
            )
  (:import (java.io File)))


(defn-spec dapps-sushiswap-bundles-historical-get-with-http-info any?
  ""
  ([] (dapps-sushiswap-bundles-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/bundles/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-sushiswap-bundles-historical-get any?
  ""
  ([] (dapps-sushiswap-bundles-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-sushiswap-bundles-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-sushiswap-burns-historical-get-with-http-info any?
  ""
  ([] (dapps-sushiswap-burns-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/burns/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-sushiswap-burns-historical-get any?
  ""
  ([] (dapps-sushiswap-burns-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-sushiswap-burns-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-sushiswap-day-data-historical-get-with-http-info any?
  ""
  ([] (dapps-sushiswap-day-data-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/dayData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-sushiswap-day-data-historical-get any?
  ""
  ([] (dapps-sushiswap-day-data-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-sushiswap-day-data-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-sushiswap-factory-historical-get-with-http-info any?
  ""
  ([] (dapps-sushiswap-factory-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/factory/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-sushiswap-factory-historical-get any?
  ""
  ([] (dapps-sushiswap-factory-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-sushiswap-factory-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-sushiswap-hour-data-historical-get-with-http-info any?
  ""
  ([] (dapps-sushiswap-hour-data-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/hourData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-sushiswap-hour-data-historical-get any?
  ""
  ([] (dapps-sushiswap-hour-data-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-sushiswap-hour-data-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-sushiswap-liquidity-position-historical-get-with-http-info any?
  ""
  ([] (dapps-sushiswap-liquidity-position-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/liquidityPosition/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-sushiswap-liquidity-position-historical-get any?
  ""
  ([] (dapps-sushiswap-liquidity-position-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-sushiswap-liquidity-position-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-sushiswap-liquidity-position-snapshots-historical-get-with-http-info any?
  ""
  ([] (dapps-sushiswap-liquidity-position-snapshots-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/liquidityPositionSnapshots/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-sushiswap-liquidity-position-snapshots-historical-get any?
  ""
  ([] (dapps-sushiswap-liquidity-position-snapshots-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-sushiswap-liquidity-position-snapshots-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-sushiswap-mints-historical-get-with-http-info any?
  ""
  ([] (dapps-sushiswap-mints-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/mints/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-sushiswap-mints-historical-get any?
  ""
  ([] (dapps-sushiswap-mints-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-sushiswap-mints-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-sushiswap-pool-day-data-historical-get-with-http-info any?
  ""
  ([] (dapps-sushiswap-pool-day-data-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/poolDayData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-sushiswap-pool-day-data-historical-get any?
  ""
  ([] (dapps-sushiswap-pool-day-data-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-sushiswap-pool-day-data-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-sushiswap-pool-hour-data-historical-get-with-http-info any?
  ""
  ([] (dapps-sushiswap-pool-hour-data-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/poolHourData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-sushiswap-pool-hour-data-historical-get any?
  ""
  ([] (dapps-sushiswap-pool-hour-data-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-sushiswap-pool-hour-data-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-sushiswap-token-day-data-historical-get-with-http-info any?
  ""
  ([] (dapps-sushiswap-token-day-data-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate tokenId]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/tokenDayData/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "tokenId" tokenId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-sushiswap-token-day-data-historical-get any?
  ""
  ([] (dapps-sushiswap-token-day-data-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-sushiswap-token-day-data-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-sushiswap-transactions-historical-get-with-http-info any?
  ""
  ([] (dapps-sushiswap-transactions-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/transactions/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-sushiswap-transactions-historical-get any?
  ""
  ([] (dapps-sushiswap-transactions-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-sushiswap-transactions-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-sushiswap-users-historical-get-with-http-info any?
  ""
  ([] (dapps-sushiswap-users-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/users/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-sushiswap-users-historical-get any?
  ""
  ([] (dapps-sushiswap-users-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-sushiswap-users-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec sushiswap-get-pools-current-with-http-info any?
  "Sushiswap.GetPools (current)
  Gets pools."
  []
  (call-api "/dapps/sushiswap/pools/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec sushiswap-get-pools-current (s/coll-of sushiswap/pair-dto-spec)
  "Sushiswap.GetPools (current)
  Gets pools."
  []
  (let [res (:data (sushiswap-get-pools-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of sushiswap/pair-dto-spec) res st/string-transformer)
       res)))


(defn-spec sushiswap-get-pools-historical-with-http-info any?
  "Sushiswap.GetPools (historical)
  Gets list of pools for given filters."
  ([] (sushiswap-get-pools-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/pools/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec sushiswap-get-pools-historical (s/coll-of sushiswap/pair-dto-spec)
  "Sushiswap.GetPools (historical)
  Gets list of pools for given filters."
  ([] (sushiswap-get-pools-historical nil))
  ([optional-params any?]
   (let [res (:data (sushiswap-get-pools-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of sushiswap/pair-dto-spec) res st/string-transformer)
        res))))


(defn-spec sushiswap-get-swaps-current-with-http-info any?
  "Sushiswap.GetSwaps (current)
  Gets swaps."
  []
  (call-api "/dapps/sushiswap/swaps/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec sushiswap-get-swaps-current sushiswap/swap-dto-spec
  "Sushiswap.GetSwaps (current)
  Gets swaps."
  []
  (let [res (:data (sushiswap-get-swaps-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode sushiswap/swap-dto-spec res st/string-transformer)
       res)))


(defn-spec sushiswap-get-swaps-historical-with-http-info any?
  "Sushiswap.GetSwaps (historical)
  Gets list of swaps for given filters."
  ([] (sushiswap-get-swaps-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/swaps/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec sushiswap-get-swaps-historical (s/coll-of sushiswap/swap-dto-spec)
  "Sushiswap.GetSwaps (historical)
  Gets list of swaps for given filters."
  ([] (sushiswap-get-swaps-historical nil))
  ([optional-params any?]
   (let [res (:data (sushiswap-get-swaps-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of sushiswap/swap-dto-spec) res st/string-transformer)
        res))))


(defn-spec sushiswap-get-tokens-current-with-http-info any?
  "Sushiswap.GetTokens (current)
  Gets tokens."
  []
  (call-api "/dapps/sushiswap/tokens/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec sushiswap-get-tokens-current sushiswap/token-dto-spec
  "Sushiswap.GetTokens (current)
  Gets tokens."
  []
  (let [res (:data (sushiswap-get-tokens-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode sushiswap/token-dto-spec res st/string-transformer)
       res)))


(defn-spec sushiswap-get-tokens-historical-with-http-info any?
  "Sushiswap.GetTokens (historical)
  Gets list of tokens for given filters."
  ([] (sushiswap-get-tokens-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate tokenId]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/tokens/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "tokenId" tokenId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec sushiswap-get-tokens-historical (s/coll-of sushiswap/token-dto-spec)
  "Sushiswap.GetTokens (historical)
  Gets list of tokens for given filters."
  ([] (sushiswap-get-tokens-historical nil))
  ([optional-params any?]
   (let [res (:data (sushiswap-get-tokens-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of sushiswap/token-dto-spec) res st/string-transformer)
        res))))


