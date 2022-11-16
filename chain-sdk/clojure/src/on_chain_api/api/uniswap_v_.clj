(ns on-chain-api.api.uniswap-v-
  (:require [on-chain-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [on-chain-api.specs.uniswap-v2/swap-v2-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/token-v2-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/factory-v3-dto :refer :all]
            [on-chain-api.specs.sushiswap/swap-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/bundle-v3-dto :refer :all]
            [on-chain-api.specs.sushiswap/pair-dto :refer :all]
            [on-chain-api.specs.curve/exchange-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/uniswap-day-data-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/swap-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/burn-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/tick-day-data-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/position-snapshot-v3-dto :refer :all]
            [on-chain-api.specs.numerics/big-integer :refer :all]
            [on-chain-api.specs.uniswap-v3/pool-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/pool-day-data-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/token-v3-dto :refer :all]
            [on-chain-api.specs.transactions/e-trade-aggressive-side :refer :all]
            [on-chain-api.specs.sushiswap/token-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/tick-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/token-hour-data-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/position-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/token-v3-day-data-dto :refer :all]
            [on-chain-api.specs.dex/trade-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/pool-hour-data-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v2/pair-v2-dto :refer :all]
            [on-chain-api.specs.uniswap-v3/mint-v3-dto :refer :all]
            )
  (:import (java.io File)))


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


