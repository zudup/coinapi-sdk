(ns on-chain-api.api.sushiswap
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


(defn-spec curve-get-exchanges-current-with-http-info any?
  "Exchanges (current) 🔥
  Gets exchanges."
  []
  (call-api "/dapps/sushiswap/exchanges/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec curve-get-exchanges-current (s/coll-of curve/exchange-dto-spec)
  "Exchanges (current) 🔥
  Gets exchanges."
  []
  (let [res (:data (curve-get-exchanges-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of curve/exchange-dto-spec) res st/string-transformer)
       res)))


(defn-spec dex-get-trades-current-with-http-info any?
  "Trades (current) 🔥
  Gets trades."
  []
  (call-api "/dapps/sushiswap/trades/current" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/plain" "application/json" "text/json"]
             :auth-names    []}))

(defn-spec dex-get-trades-current (s/coll-of dex/trade-dto-spec)
  "Trades (current) 🔥
  Gets trades."
  []
  (let [res (:data (dex-get-trades-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of dex/trade-dto-spec) res st/string-transformer)
       res)))


(defn-spec sushiswap-get-pools-current-with-http-info any?
  "Pools (current) 🔥
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
  "Pools (current) 🔥
  Gets pools."
  []
  (let [res (:data (sushiswap-get-pools-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of sushiswap/pair-dto-spec) res st/string-transformer)
       res)))


(defn-spec sushiswap-get-swaps-current-with-http-info any?
  "Swaps (current) 🔥
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

(defn-spec sushiswap-get-swaps-current (s/coll-of sushiswap/swap-dto-spec)
  "Swaps (current) 🔥
  Gets swaps."
  []
  (let [res (:data (sushiswap-get-swaps-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of sushiswap/swap-dto-spec) res st/string-transformer)
       res)))


(defn-spec sushiswap-get-tokens-current-with-http-info any?
  "Tokens (current) 🔥
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

(defn-spec sushiswap-get-tokens-current (s/coll-of sushiswap/token-dto-spec)
  "Tokens (current) 🔥
  Gets tokens."
  []
  (let [res (:data (sushiswap-get-tokens-current-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of sushiswap/token-dto-spec) res st/string-transformer)
       res)))


