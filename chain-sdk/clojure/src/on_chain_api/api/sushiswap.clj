(ns on-chain-api.api.sushiswap
  (:require [on-chain-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [on-chain-api.specs.factory-v3-dto :refer :all]
            [on-chain-api.specs.token-hour-data-v3-dto :refer :all]
            [on-chain-api.specs.swap-v3-dto :refer :all]
            [on-chain-api.specs.token-v2-dto :refer :all]
            [on-chain-api.specs.pair-dto :refer :all]
            [on-chain-api.specs.pair-v2-dto :refer :all]
            [on-chain-api.specs.bundle-v3-dto :refer :all]
            [on-chain-api.specs.position-snapshot-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-day-data-v3-dto :refer :all]
            [on-chain-api.specs.pool-day-data-v3-dto :refer :all]
            [on-chain-api.specs.pool-v3-dto :refer :all]
            [on-chain-api.specs.big-integer :refer :all]
            [on-chain-api.specs.pool-hour-data-v3-dto :refer :all]
            [on-chain-api.specs.tick-v3-dto :refer :all]
            [on-chain-api.specs.mint-v3-dto :refer :all]
            [on-chain-api.specs.tick-day-data-v3-dto :refer :all]
            [on-chain-api.specs.swap-v2-dto :refer :all]
            [on-chain-api.specs.swap-dto :refer :all]
            [on-chain-api.specs.token-dto :refer :all]
            [on-chain-api.specs.token-v3-dto :refer :all]
            [on-chain-api.specs.e-trade-aggressive-side :refer :all]
            [on-chain-api.specs.position-v3-dto :refer :all]
            [on-chain-api.specs.burn-v3-dto :refer :all]
            [on-chain-api.specs.token-v3-day-data-dto :refer :all]
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


(defn-spec dapps-sushiswap-pools-current-get-with-http-info any?
  "GetPools
  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."
  []
  (call-api "/dapps/sushiswap/pools/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec dapps-sushiswap-pools-current-get (s/coll-of pair-dto-spec)
  "GetPools
  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."
  []
  (let [res (:data (dapps-sushiswap-pools-current-get-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of pair-dto-spec) res st/string-transformer)
       res)))


(defn-spec dapps-sushiswap-pools-historical-get-with-http-info any?
  "GetPools"
  ([] (dapps-sushiswap-pools-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/pools/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dapps-sushiswap-pools-historical-get (s/coll-of pair-dto-spec)
  "GetPools"
  ([] (dapps-sushiswap-pools-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-sushiswap-pools-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of pair-dto-spec) res st/string-transformer)
        res))))


(defn-spec dapps-sushiswap-swaps-current-get-with-http-info any?
  "GetSwaps"
  []
  (call-api "/dapps/sushiswap/swaps/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec dapps-sushiswap-swaps-current-get (s/coll-of swap-dto-spec)
  "GetSwaps"
  []
  (let [res (:data (dapps-sushiswap-swaps-current-get-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of swap-dto-spec) res st/string-transformer)
       res)))


(defn-spec dapps-sushiswap-swaps-historical-get-with-http-info any?
  "GetSwaps (historical)"
  ([] (dapps-sushiswap-swaps-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/swaps/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dapps-sushiswap-swaps-historical-get (s/coll-of swap-dto-spec)
  "GetSwaps (historical)"
  ([] (dapps-sushiswap-swaps-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-sushiswap-swaps-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of swap-dto-spec) res st/string-transformer)
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


(defn-spec dapps-sushiswap-tokens-current-get-with-http-info any?
  "GetTokens"
  []
  (call-api "/dapps/sushiswap/tokens/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec dapps-sushiswap-tokens-current-get (s/coll-of token-dto-spec)
  "GetTokens"
  []
  (let [res (:data (dapps-sushiswap-tokens-current-get-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of token-dto-spec) res st/string-transformer)
       res)))


(defn-spec dapps-sushiswap-tokens-historical-get-with-http-info any?
  "GetTokens"
  ([] (dapps-sushiswap-tokens-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate tokenId]} (s/map-of keyword? any?)]
   (call-api "/dapps/sushiswap/tokens/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "tokenId" tokenId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dapps-sushiswap-tokens-historical-get (s/coll-of token-dto-spec)
  "GetTokens"
  ([] (dapps-sushiswap-tokens-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-sushiswap-tokens-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of token-dto-spec) res st/string-transformer)
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


