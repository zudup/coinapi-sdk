(ns on-chain-api.api.cow
  (:require [on-chain-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [on-chain-api.specs.uniswap-v3-tick-day-data-v3-dto :refer :all]
            [on-chain-api.specs.sushiswap-pair-dto :refer :all]
            [on-chain-api.specs.transactions-e-trade-aggressive-side :refer :all]
            [on-chain-api.specs.uniswap-v3-token-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v2-token-v2-dto :refer :all]
            [on-chain-api.specs.uniswap-v3-position-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3-token-v3-day-data-dto :refer :all]
            [on-chain-api.specs.sushiswap-swap-dto :refer :all]
            [on-chain-api.specs.uniswap-v3-bundle-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3-swap-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3-token-hour-data-v3-dto :refer :all]
            [on-chain-api.specs.sushiswap-token-dto :refer :all]
            [on-chain-api.specs.uniswap-v3-uniswap-day-data-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3-burn-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3-pool-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3-tick-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3-pool-hour-data-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3-position-snapshot-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v3-pool-day-data-v3-dto :refer :all]
            [on-chain-api.specs.uniswap-v2-pair-v2-dto :refer :all]
            [on-chain-api.specs.uniswap-v2-swap-v2-dto :refer :all]
            [on-chain-api.specs.uniswap-v3-factory-v3-dto :refer :all]
            [on-chain-api.specs.numerics-big-integer :refer :all]
            [on-chain-api.specs.uniswap-v3-mint-v3-dto :refer :all]
            )
  (:import (java.io File)))


(defn-spec dapps-cow-orders-historical-get-with-http-info any?
  ""
  ([] (dapps-cow-orders-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/cow/orders/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-cow-orders-historical-get any?
  ""
  ([] (dapps-cow-orders-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-cow-orders-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-cow-settlement-historical-get-with-http-info any?
  ""
  ([] (dapps-cow-settlement-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/cow/settlement/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-cow-settlement-historical-get any?
  ""
  ([] (dapps-cow-settlement-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-cow-settlement-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-cow-tokens-historical-get-with-http-info any?
  ""
  ([] (dapps-cow-tokens-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate tokenId]} (s/map-of keyword? any?)]
   (call-api "/dapps/cow/tokens/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "tokenId" tokenId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-cow-tokens-historical-get any?
  ""
  ([] (dapps-cow-tokens-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-cow-tokens-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-cow-trades-historical-get-with-http-info any?
  ""
  ([] (dapps-cow-trades-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/cow/trades/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-cow-trades-historical-get any?
  ""
  ([] (dapps-cow-trades-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-cow-trades-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-cow-users-historical-get-with-http-info any?
  ""
  ([] (dapps-cow-users-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/cow/users/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-cow-users-historical-get any?
  ""
  ([] (dapps-cow-users-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-cow-users-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


