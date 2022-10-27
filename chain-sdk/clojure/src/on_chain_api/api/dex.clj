(ns on-chain-api.api.dex
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


(defn-spec dapps-dex-batch-historical-get-with-http-info any?
  ""
  ([] (dapps-dex-batch-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/batch/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-dex-batch-historical-get any?
  ""
  ([] (dapps-dex-batch-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-dex-batch-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-dex-orders-historical-get-with-http-info any?
  ""
  ([] (dapps-dex-orders-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate tokenId]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/orders/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "tokenId" tokenId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-dex-orders-historical-get any?
  ""
  ([] (dapps-dex-orders-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-dex-orders-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-dex-poi-historical-get-with-http-info any?
  ""
  ([] (dapps-dex-poi-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/poi/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-dex-poi-historical-get any?
  ""
  ([] (dapps-dex-poi-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-dex-poi-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-dex-prices-historical-get-with-http-info any?
  ""
  ([] (dapps-dex-prices-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate tokenId]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/prices/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "tokenId" tokenId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-dex-prices-historical-get any?
  ""
  ([] (dapps-dex-prices-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-dex-prices-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-dex-solution-historical-get-with-http-info any?
  ""
  ([] (dapps-dex-solution-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate tokenId]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/solution/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "tokenId" tokenId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-dex-solution-historical-get any?
  ""
  ([] (dapps-dex-solution-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-dex-solution-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-dex-stats-historical-get-with-http-info any?
  ""
  ([] (dapps-dex-stats-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/stats/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-dex-stats-historical-get any?
  ""
  ([] (dapps-dex-stats-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-dex-stats-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-dex-tokens-historical-get-with-http-info any?
  ""
  ([] (dapps-dex-tokens-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate tokenId]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/tokens/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "tokenId" tokenId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-dex-tokens-historical-get any?
  ""
  ([] (dapps-dex-tokens-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-dex-tokens-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-dex-trades-historical-get-with-http-info any?
  ""
  ([] (dapps-dex-trades-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/trades/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-dex-trades-historical-get any?
  ""
  ([] (dapps-dex-trades-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-dex-trades-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-dex-users-historical-get-with-http-info any?
  ""
  ([] (dapps-dex-users-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/users/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-dex-users-historical-get any?
  ""
  ([] (dapps-dex-users-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-dex-users-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-dex-withdraw-historical-get-with-http-info any?
  ""
  ([] (dapps-dex-withdraw-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate tokenId]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/withdraw/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "tokenId" tokenId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-dex-withdraw-historical-get any?
  ""
  ([] (dapps-dex-withdraw-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-dex-withdraw-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-dex-withdraw-request-historical-get-with-http-info any?
  ""
  ([] (dapps-dex-withdraw-request-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate tokenId]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/withdrawRequest/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "tokenId" tokenId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-dex-withdraw-request-historical-get any?
  ""
  ([] (dapps-dex-withdraw-request-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-dex-withdraw-request-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


