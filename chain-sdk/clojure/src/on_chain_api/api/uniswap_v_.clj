(ns on-chain-api.api.uniswap-v-
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


(defn-spec chains-chain-id-dapps-uniswapv2-pools-current-get-with-http-info any?
  "GetPools"
  [chain_id string?]
  (check-required-params chain_id)
  (call-api "/chains/{chain_id}/dapps/uniswapv2/pools/current" :get
            {:path-params   {"chain_id" chain_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec chains-chain-id-dapps-uniswapv2-pools-current-get (s/coll-of pair-v2-dto-spec)
  "GetPools"
  [chain_id string?]
  (let [res (:data (chains-chain-id-dapps-uniswapv2-pools-current-get-with-http-info chain_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of pair-v2-dto-spec) res st/string-transformer)
       res)))


(defn-spec chains-chain-id-dapps-uniswapv2-swaps-current-get-with-http-info any?
  "GetSwaps"
  [chain_id string?]
  (check-required-params chain_id)
  (call-api "/chains/{chain_id}/dapps/uniswapv2/swaps/current" :get
            {:path-params   {"chain_id" chain_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec chains-chain-id-dapps-uniswapv2-swaps-current-get (s/coll-of swap-v2-dto-spec)
  "GetSwaps"
  [chain_id string?]
  (let [res (:data (chains-chain-id-dapps-uniswapv2-swaps-current-get-with-http-info chain_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of swap-v2-dto-spec) res st/string-transformer)
       res)))


(defn-spec chains-chain-id-dapps-uniswapv2-tokens-current-get-with-http-info any?
  "GetTokens"
  [chain_id string?]
  (check-required-params chain_id)
  (call-api "/chains/{chain_id}/dapps/uniswapv2/tokens/current" :get
            {:path-params   {"chain_id" chain_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec chains-chain-id-dapps-uniswapv2-tokens-current-get (s/coll-of token-v2-dto-spec)
  "GetTokens"
  [chain_id string?]
  (let [res (:data (chains-chain-id-dapps-uniswapv2-tokens-current-get-with-http-info chain_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of token-v2-dto-spec) res st/string-transformer)
       res)))


(defn-spec chains-chain-id-dapps-uniswapv3-bundle-current-get-with-http-info any?
  "GetBundles"
  [chain_id string?]
  (check-required-params chain_id)
  (call-api "/chains/{chain_id}/dapps/uniswapv3/bundle/current" :get
            {:path-params   {"chain_id" chain_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec chains-chain-id-dapps-uniswapv3-bundle-current-get (s/coll-of bundle-v3-dto-spec)
  "GetBundles"
  [chain_id string?]
  (let [res (:data (chains-chain-id-dapps-uniswapv3-bundle-current-get-with-http-info chain_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of bundle-v3-dto-spec) res st/string-transformer)
       res)))


(defn-spec chains-chain-id-dapps-uniswapv3-burns-current-get-with-http-info any?
  "GetBurns"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-burns-current-get-with-http-info chain_id nil))
  ([chain_id string?, {:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (check-required-params chain_id)
   (call-api "/chains/{chain_id}/dapps/uniswapv3/burns/current" :get
             {:path-params   {"chain_id" chain_id }
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec chains-chain-id-dapps-uniswapv3-burns-current-get (s/coll-of burn-v3-dto-spec)
  "GetBurns"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-burns-current-get chain_id nil))
  ([chain_id string?, optional-params any?]
   (let [res (:data (chains-chain-id-dapps-uniswapv3-burns-current-get-with-http-info chain_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of burn-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec chains-chain-id-dapps-uniswapv3-factory-current-get-with-http-info any?
  "GetFactory"
  [chain_id string?]
  (check-required-params chain_id)
  (call-api "/chains/{chain_id}/dapps/uniswapv3/factory/current" :get
            {:path-params   {"chain_id" chain_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec chains-chain-id-dapps-uniswapv3-factory-current-get (s/coll-of factory-v3-dto-spec)
  "GetFactory"
  [chain_id string?]
  (let [res (:data (chains-chain-id-dapps-uniswapv3-factory-current-get-with-http-info chain_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of factory-v3-dto-spec) res st/string-transformer)
       res)))


(defn-spec chains-chain-id-dapps-uniswapv3-mints-current-get-with-http-info any?
  "GetMints"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-mints-current-get-with-http-info chain_id nil))
  ([chain_id string?, {:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (check-required-params chain_id)
   (call-api "/chains/{chain_id}/dapps/uniswapv3/mints/current" :get
             {:path-params   {"chain_id" chain_id }
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec chains-chain-id-dapps-uniswapv3-mints-current-get (s/coll-of mint-v3-dto-spec)
  "GetMints"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-mints-current-get chain_id nil))
  ([chain_id string?, optional-params any?]
   (let [res (:data (chains-chain-id-dapps-uniswapv3-mints-current-get-with-http-info chain_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of mint-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec chains-chain-id-dapps-uniswapv3-pools-current-get-with-http-info any?
  "GetPools"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-pools-current-get-with-http-info chain_id nil))
  ([chain_id string?, {:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (check-required-params chain_id)
   (call-api "/chains/{chain_id}/dapps/uniswapv3/pools/current" :get
             {:path-params   {"chain_id" chain_id }
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec chains-chain-id-dapps-uniswapv3-pools-current-get (s/coll-of pool-v3-dto-spec)
  "GetPools"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-pools-current-get chain_id nil))
  ([chain_id string?, optional-params any?]
   (let [res (:data (chains-chain-id-dapps-uniswapv3-pools-current-get-with-http-info chain_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of pool-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec chains-chain-id-dapps-uniswapv3-pools-day-data-current-get-with-http-info any?
  "GetPoolsDayData"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-pools-day-data-current-get-with-http-info chain_id nil))
  ([chain_id string?, {:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (check-required-params chain_id)
   (call-api "/chains/{chain_id}/dapps/uniswapv3/poolsDayData/current" :get
             {:path-params   {"chain_id" chain_id }
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec chains-chain-id-dapps-uniswapv3-pools-day-data-current-get (s/coll-of pool-day-data-v3-dto-spec)
  "GetPoolsDayData"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-pools-day-data-current-get chain_id nil))
  ([chain_id string?, optional-params any?]
   (let [res (:data (chains-chain-id-dapps-uniswapv3-pools-day-data-current-get-with-http-info chain_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of pool-day-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec chains-chain-id-dapps-uniswapv3-pools-hour-data-current-get-with-http-info any?
  "GetPoolsHourData"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-pools-hour-data-current-get-with-http-info chain_id nil))
  ([chain_id string?, {:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (check-required-params chain_id)
   (call-api "/chains/{chain_id}/dapps/uniswapv3/poolsHourData/current" :get
             {:path-params   {"chain_id" chain_id }
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec chains-chain-id-dapps-uniswapv3-pools-hour-data-current-get (s/coll-of pool-hour-data-v3-dto-spec)
  "GetPoolsHourData"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-pools-hour-data-current-get chain_id nil))
  ([chain_id string?, optional-params any?]
   (let [res (:data (chains-chain-id-dapps-uniswapv3-pools-hour-data-current-get-with-http-info chain_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of pool-hour-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec chains-chain-id-dapps-uniswapv3-position-snapshots-current-get-with-http-info any?
  "GetPositionSnapshot"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-position-snapshots-current-get-with-http-info chain_id nil))
  ([chain_id string?, {:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (check-required-params chain_id)
   (call-api "/chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current" :get
             {:path-params   {"chain_id" chain_id }
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec chains-chain-id-dapps-uniswapv3-position-snapshots-current-get (s/coll-of position-snapshot-v3-dto-spec)
  "GetPositionSnapshot"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-position-snapshots-current-get chain_id nil))
  ([chain_id string?, optional-params any?]
   (let [res (:data (chains-chain-id-dapps-uniswapv3-position-snapshots-current-get-with-http-info chain_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of position-snapshot-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec chains-chain-id-dapps-uniswapv3-positions-current-get-with-http-info any?
  "GetPositions"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-positions-current-get-with-http-info chain_id nil))
  ([chain_id string?, {:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (check-required-params chain_id)
   (call-api "/chains/{chain_id}/dapps/uniswapv3/positions/current" :get
             {:path-params   {"chain_id" chain_id }
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec chains-chain-id-dapps-uniswapv3-positions-current-get (s/coll-of position-v3-dto-spec)
  "GetPositions"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-positions-current-get chain_id nil))
  ([chain_id string?, optional-params any?]
   (let [res (:data (chains-chain-id-dapps-uniswapv3-positions-current-get-with-http-info chain_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of position-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec chains-chain-id-dapps-uniswapv3-swaps-current-get-with-http-info any?
  "GetSwaps"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-swaps-current-get-with-http-info chain_id nil))
  ([chain_id string?, {:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (check-required-params chain_id)
   (call-api "/chains/{chain_id}/dapps/uniswapv3/swaps/current" :get
             {:path-params   {"chain_id" chain_id }
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec chains-chain-id-dapps-uniswapv3-swaps-current-get (s/coll-of swap-v3-dto-spec)
  "GetSwaps"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-swaps-current-get chain_id nil))
  ([chain_id string?, optional-params any?]
   (let [res (:data (chains-chain-id-dapps-uniswapv3-swaps-current-get-with-http-info chain_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of swap-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec chains-chain-id-dapps-uniswapv3-ticks-current-get-with-http-info any?
  "GetTicks"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-ticks-current-get-with-http-info chain_id nil))
  ([chain_id string?, {:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (check-required-params chain_id)
   (call-api "/chains/{chain_id}/dapps/uniswapv3/ticks/current" :get
             {:path-params   {"chain_id" chain_id }
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec chains-chain-id-dapps-uniswapv3-ticks-current-get (s/coll-of tick-v3-dto-spec)
  "GetTicks"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-ticks-current-get chain_id nil))
  ([chain_id string?, optional-params any?]
   (let [res (:data (chains-chain-id-dapps-uniswapv3-ticks-current-get-with-http-info chain_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of tick-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec chains-chain-id-dapps-uniswapv3-ticks-day-data-current-get-with-http-info any?
  "GetTicksDayData"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-ticks-day-data-current-get-with-http-info chain_id nil))
  ([chain_id string?, {:keys [filter_pool_id]} (s/map-of keyword? any?)]
   (check-required-params chain_id)
   (call-api "/chains/{chain_id}/dapps/uniswapv3/ticksDayData/current" :get
             {:path-params   {"chain_id" chain_id }
              :header-params {}
              :query-params  {"filter_pool_id" filter_pool_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec chains-chain-id-dapps-uniswapv3-ticks-day-data-current-get (s/coll-of tick-day-data-v3-dto-spec)
  "GetTicksDayData"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-ticks-day-data-current-get chain_id nil))
  ([chain_id string?, optional-params any?]
   (let [res (:data (chains-chain-id-dapps-uniswapv3-ticks-day-data-current-get-with-http-info chain_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of tick-day-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec chains-chain-id-dapps-uniswapv3-tokens-current-get-with-http-info any?
  "GetTokens"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-tokens-current-get-with-http-info chain_id nil))
  ([chain_id string?, {:keys [filter_token_id]} (s/map-of keyword? any?)]
   (check-required-params chain_id)
   (call-api "/chains/{chain_id}/dapps/uniswapv3/tokens/current" :get
             {:path-params   {"chain_id" chain_id }
              :header-params {}
              :query-params  {"filter_token_id" filter_token_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec chains-chain-id-dapps-uniswapv3-tokens-current-get (s/coll-of token-v3-dto-spec)
  "GetTokens"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-tokens-current-get chain_id nil))
  ([chain_id string?, optional-params any?]
   (let [res (:data (chains-chain-id-dapps-uniswapv3-tokens-current-get-with-http-info chain_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of token-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec chains-chain-id-dapps-uniswapv3-tokens-day-data-current-get-with-http-info any?
  "GetTokensDayData"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-tokens-day-data-current-get-with-http-info chain_id nil))
  ([chain_id string?, {:keys [filter_token_id]} (s/map-of keyword? any?)]
   (check-required-params chain_id)
   (call-api "/chains/{chain_id}/dapps/uniswapv3/tokensDayData/current" :get
             {:path-params   {"chain_id" chain_id }
              :header-params {}
              :query-params  {"filter_token_id" filter_token_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec chains-chain-id-dapps-uniswapv3-tokens-day-data-current-get (s/coll-of token-v3-day-data-dto-spec)
  "GetTokensDayData"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-tokens-day-data-current-get chain_id nil))
  ([chain_id string?, optional-params any?]
   (let [res (:data (chains-chain-id-dapps-uniswapv3-tokens-day-data-current-get-with-http-info chain_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of token-v3-day-data-dto-spec) res st/string-transformer)
        res))))


(defn-spec chains-chain-id-dapps-uniswapv3-tokens-hour-data-current-get-with-http-info any?
  "GetTokensHourData"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-tokens-hour-data-current-get-with-http-info chain_id nil))
  ([chain_id string?, {:keys [filter_token_id]} (s/map-of keyword? any?)]
   (check-required-params chain_id)
   (call-api "/chains/{chain_id}/dapps/uniswapv3/tokensHourData/current" :get
             {:path-params   {"chain_id" chain_id }
              :header-params {}
              :query-params  {"filter_token_id" filter_token_id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec chains-chain-id-dapps-uniswapv3-tokens-hour-data-current-get (s/coll-of token-hour-data-v3-dto-spec)
  "GetTokensHourData"
  ([chain_id string?, ] (chains-chain-id-dapps-uniswapv3-tokens-hour-data-current-get chain_id nil))
  ([chain_id string?, optional-params any?]
   (let [res (:data (chains-chain-id-dapps-uniswapv3-tokens-hour-data-current-get-with-http-info chain_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of token-hour-data-v3-dto-spec) res st/string-transformer)
        res))))


(defn-spec chains-chain-id-dapps-uniswapv3-uniswap-day-data-current-get-with-http-info any?
  "GetUniswapDayData"
  [chain_id string?]
  (check-required-params chain_id)
  (call-api "/chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current" :get
            {:path-params   {"chain_id" chain_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec chains-chain-id-dapps-uniswapv3-uniswap-day-data-current-get (s/coll-of uniswap-day-data-v3-dto-spec)
  "GetUniswapDayData"
  [chain_id string?]
  (let [res (:data (chains-chain-id-dapps-uniswapv3-uniswap-day-data-current-get-with-http-info chain_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of uniswap-day-data-v3-dto-spec) res st/string-transformer)
       res)))


