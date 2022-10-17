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


(defn-spec chains-chain-id-dapps-sushiswap-pools-current-get-with-http-info any?
  "GetPools
  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."
  [chain_id string?]
  (check-required-params chain_id)
  (call-api "/chains/{chain_id}/dapps/sushiswap/pools/current" :get
            {:path-params   {"chain_id" chain_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec chains-chain-id-dapps-sushiswap-pools-current-get (s/coll-of pair-dto-spec)
  "GetPools
  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."
  [chain_id string?]
  (let [res (:data (chains-chain-id-dapps-sushiswap-pools-current-get-with-http-info chain_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of pair-dto-spec) res st/string-transformer)
       res)))


(defn-spec chains-chain-id-dapps-sushiswap-swaps-current-get-with-http-info any?
  "GetSwaps"
  [chain_id string?]
  (check-required-params chain_id)
  (call-api "/chains/{chain_id}/dapps/sushiswap/swaps/current" :get
            {:path-params   {"chain_id" chain_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec chains-chain-id-dapps-sushiswap-swaps-current-get (s/coll-of swap-dto-spec)
  "GetSwaps"
  [chain_id string?]
  (let [res (:data (chains-chain-id-dapps-sushiswap-swaps-current-get-with-http-info chain_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of swap-dto-spec) res st/string-transformer)
       res)))


(defn-spec chains-chain-id-dapps-sushiswap-tokens-current-get-with-http-info any?
  "GetTokens"
  [chain_id string?]
  (check-required-params chain_id)
  (call-api "/chains/{chain_id}/dapps/sushiswap/tokens/current" :get
            {:path-params   {"chain_id" chain_id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec chains-chain-id-dapps-sushiswap-tokens-current-get (s/coll-of token-dto-spec)
  "GetTokens"
  [chain_id string?]
  (let [res (:data (chains-chain-id-dapps-sushiswap-tokens-current-get-with-http-info chain_id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of token-dto-spec) res st/string-transformer)
       res)))


