(ns on-chain-api.api.dex
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


(defn-spec dex-get-batchs-historical-with-http-info any?
  "Batchs (historical) 🔥
  Gets batchs."
  ([] (dex-get-batchs-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/batchs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dex-get-batchs-historical (s/coll-of dex/batch-dto-spec)
  "Batchs (historical) 🔥
  Gets batchs."
  ([] (dex-get-batchs-historical nil))
  ([optional-params any?]
   (let [res (:data (dex-get-batchs-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of dex/batch-dto-spec) res st/string-transformer)
        res))))


(defn-spec dex-get-deposits-historical-with-http-info any?
  "Deposits (historical) 🔥
  Gets deposits."
  ([] (dex-get-deposits-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id user]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/deposits/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "user" user }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dex-get-deposits-historical (s/coll-of dex/deposit-dto-spec)
  "Deposits (historical) 🔥
  Gets deposits."
  ([] (dex-get-deposits-historical nil))
  ([optional-params any?]
   (let [res (:data (dex-get-deposits-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of dex/deposit-dto-spec) res st/string-transformer)
        res))))


(defn-spec dex-get-orders-historical-with-http-info any?
  "Orders (historical) 🔥
  Gets orders."
  ([] (dex-get-orders-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id buy_token sell_token]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/orders/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "buy_token" buy_token "sell_token" sell_token }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dex-get-orders-historical (s/coll-of dex/order-dto-spec)
  "Orders (historical) 🔥
  Gets orders."
  ([] (dex-get-orders-historical nil))
  ([optional-params any?]
   (let [res (:data (dex-get-orders-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of dex/order-dto-spec) res st/string-transformer)
        res))))


(defn-spec dex-get-prices-historical-with-http-info any?
  "Prices (historical) 🔥
  Gets prices."
  ([] (dex-get-prices-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/prices/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dex-get-prices-historical (s/coll-of dex/price-dto-spec)
  "Prices (historical) 🔥
  Gets prices."
  ([] (dex-get-prices-historical nil))
  ([optional-params any?]
   (let [res (:data (dex-get-prices-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of dex/price-dto-spec) res st/string-transformer)
        res))))


(defn-spec dex-get-solutions-historical-with-http-info any?
  "Solutions (historical) 🔥
  Gets solutions."
  ([] (dex-get-solutions-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/solutions/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dex-get-solutions-historical (s/coll-of dex/solution-dto-spec)
  "Solutions (historical) 🔥
  Gets solutions."
  ([] (dex-get-solutions-historical nil))
  ([optional-params any?]
   (let [res (:data (dex-get-solutions-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of dex/solution-dto-spec) res st/string-transformer)
        res))))


(defn-spec dex-get-statss-historical-with-http-info any?
  "Statss (historical) 🔥
  Gets statss."
  ([] (dex-get-statss-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/statss/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dex-get-statss-historical (s/coll-of dex/stats-dto-spec)
  "Statss (historical) 🔥
  Gets statss."
  ([] (dex-get-statss-historical nil))
  ([optional-params any?]
   (let [res (:data (dex-get-statss-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of dex/stats-dto-spec) res st/string-transformer)
        res))))


(defn-spec dex-get-tokens-historical-with-http-info any?
  "Tokens (historical) 🔥
  Gets tokens."
  ([] (dex-get-tokens-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id address symbol name]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/tokens/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "address" address "symbol" symbol "name" name }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dex-get-tokens-historical (s/coll-of dex/token-dto-spec)
  "Tokens (historical) 🔥
  Gets tokens."
  ([] (dex-get-tokens-historical nil))
  ([optional-params any?]
   (let [res (:data (dex-get-tokens-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of dex/token-dto-spec) res st/string-transformer)
        res))))


(defn-spec dex-get-trades-historical-with-http-info any?
  "Trades (historical) 🔥
  Gets trades."
  ([] (dex-get-trades-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id buy_token sell_token]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/trades/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "buy_token" buy_token "sell_token" sell_token }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dex-get-trades-historical (s/coll-of dex/trade-dto-spec)
  "Trades (historical) 🔥
  Gets trades."
  ([] (dex-get-trades-historical nil))
  ([optional-params any?]
   (let [res (:data (dex-get-trades-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of dex/trade-dto-spec) res st/string-transformer)
        res))))


(defn-spec dex-get-users-historical-with-http-info any?
  "Users (historical) 🔥
  Gets users."
  ([] (dex-get-users-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/users/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dex-get-users-historical (s/coll-of dex/user-dto-spec)
  "Users (historical) 🔥
  Gets users."
  ([] (dex-get-users-historical nil))
  ([optional-params any?]
   (let [res (:data (dex-get-users-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of dex/user-dto-spec) res st/string-transformer)
        res))))


(defn-spec dex-get-withdraw-requests-historical-with-http-info any?
  "WithdrawRequests (historical) 🔥
  Gets withdrawrequests."
  ([] (dex-get-withdraw-requests-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id user]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/withdrawrequests/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "user" user }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dex-get-withdraw-requests-historical (s/coll-of dex/withdraw-request-dto-spec)
  "WithdrawRequests (historical) 🔥
  Gets withdrawrequests."
  ([] (dex-get-withdraw-requests-historical nil))
  ([optional-params any?]
   (let [res (:data (dex-get-withdraw-requests-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of dex/withdraw-request-dto-spec) res st/string-transformer)
        res))))


(defn-spec dex-get-withdraws-historical-with-http-info any?
  "Withdraws (historical) 🔥
  Gets withdraws."
  ([] (dex-get-withdraws-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id user]} (s/map-of keyword? any?)]
   (call-api "/dapps/dex/withdraws/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "user" user }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec dex-get-withdraws-historical (s/coll-of dex/withdraw-dto-spec)
  "Withdraws (historical) 🔥
  Gets withdraws."
  ([] (dex-get-withdraws-historical nil))
  ([optional-params any?]
   (let [res (:data (dex-get-withdraws-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of dex/withdraw-dto-spec) res st/string-transformer)
        res))))


