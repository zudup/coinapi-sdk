(ns on-chain-api.api.curve
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


(defn-spec curve-get-accounts-historical-with-http-info any?
  "Accounts (historical) 🔥
  Gets accounts."
  ([] (curve-get-accounts-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id address]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/accounts/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "address" address }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-accounts-historical (s/coll-of curve/account-dto-spec)
  "Accounts (historical) 🔥
  Gets accounts."
  ([] (curve-get-accounts-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-accounts-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/account-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-add-liquidity-events-historical-with-http-info any?
  "AddLiquidityEvents (historical) 🔥
  Gets addliquidityevents."
  ([] (curve-get-add-liquidity-events-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/addliquidityevents/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-add-liquidity-events-historical (s/coll-of curve/add-liquidity-event-dto-spec)
  "AddLiquidityEvents (historical) 🔥
  Gets addliquidityevents."
  ([] (curve-get-add-liquidity-events-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-add-liquidity-events-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/add-liquidity-event-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-admin-fee-change-logs-historical-with-http-info any?
  "AdminFeeChangeLogs (historical) 🔥
  Gets adminfeechangelogs."
  ([] (curve-get-admin-fee-change-logs-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/adminfeechangelogs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-admin-fee-change-logs-historical (s/coll-of curve/admin-fee-change-log-dto-spec)
  "AdminFeeChangeLogs (historical) 🔥
  Gets adminfeechangelogs."
  ([] (curve-get-admin-fee-change-logs-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-admin-fee-change-logs-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/admin-fee-change-log-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-amplification-coeff-change-logs-historical-with-http-info any?
  "AmplificationCoeffChangeLogs (historical) 🔥
  Gets amplificationcoeffchangelogs."
  ([] (curve-get-amplification-coeff-change-logs-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/amplificationcoeffchangelogs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-amplification-coeff-change-logs-historical (s/coll-of curve/amplification-coeff-change-log-dto-spec)
  "AmplificationCoeffChangeLogs (historical) 🔥
  Gets amplificationcoeffchangelogs."
  ([] (curve-get-amplification-coeff-change-logs-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-amplification-coeff-change-logs-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/amplification-coeff-change-log-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-coins-historical-with-http-info any?
  "Coins (historical) 🔥
  Gets coins."
  ([] (curve-get-coins-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/coins/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-coins-historical (s/coll-of curve/coin-dto-spec)
  "Coins (historical) 🔥
  Gets coins."
  ([] (curve-get-coins-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-coins-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/coin-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-contract-versions-historical-with-http-info any?
  "ContractVersions (historical) 🔥
  Gets contractversions."
  ([] (curve-get-contract-versions-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id address]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/contractversions/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "address" address }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-contract-versions-historical (s/coll-of curve/contract-version-dto-spec)
  "ContractVersions (historical) 🔥
  Gets contractversions."
  ([] (curve-get-contract-versions-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-contract-versions-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/contract-version-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-contracts-historical-with-http-info any?
  "Contracts (historical) 🔥
  Gets contracts."
  ([] (curve-get-contracts-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/contracts/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-contracts-historical (s/coll-of curve/contract-dto-spec)
  "Contracts (historical) 🔥
  Gets contracts."
  ([] (curve-get-contracts-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-contracts-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/contract-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-daily-volumes-historical-with-http-info any?
  "DailyVolumes (historical) 🔥
  Gets dailyvolumes."
  ([] (curve-get-daily-volumes-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/dailyvolumes/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-daily-volumes-historical (s/coll-of curve/daily-volume-dto-spec)
  "DailyVolumes (historical) 🔥
  Gets dailyvolumes."
  ([] (curve-get-daily-volumes-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-daily-volumes-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/daily-volume-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-exchanges-historical-with-http-info any?
  "Exchanges (historical) 🔥
  Gets exchanges."
  ([] (curve-get-exchanges-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/exchanges/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-exchanges-historical (s/coll-of curve/exchange-dto-spec)
  "Exchanges (historical) 🔥
  Gets exchanges."
  ([] (curve-get-exchanges-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-exchanges-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/exchange-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-fee-change-logs-historical-with-http-info any?
  "FeeChangeLogs (historical) 🔥
  Gets feechangelogs."
  ([] (curve-get-fee-change-logs-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/feechangelogs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-fee-change-logs-historical (s/coll-of curve/fee-change-log-dto-spec)
  "FeeChangeLogs (historical) 🔥
  Gets feechangelogs."
  ([] (curve-get-fee-change-logs-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-fee-change-logs-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/fee-change-log-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauge-deposits-historical-with-http-info any?
  "GaugeDeposits (historical) 🔥
  Gets gaugedeposits."
  ([] (curve-get-gauge-deposits-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugedeposits/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauge-deposits-historical (s/coll-of curve/gauge-deposit-dto-spec)
  "GaugeDeposits (historical) 🔥
  Gets gaugedeposits."
  ([] (curve-get-gauge-deposits-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauge-deposits-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-deposit-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauge-liquiditys-historical-with-http-info any?
  "GaugeLiquiditys (historical) 🔥
  Gets gaugeliquiditys."
  ([] (curve-get-gauge-liquiditys-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id user]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugeliquiditys/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "user" user }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauge-liquiditys-historical (s/coll-of curve/gauge-liquidity-dto-spec)
  "GaugeLiquiditys (historical) 🔥
  Gets gaugeliquiditys."
  ([] (curve-get-gauge-liquiditys-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauge-liquiditys-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-liquidity-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauge-total-weights-historical-with-http-info any?
  "GaugeTotalWeights (historical) 🔥
  Gets gaugetotalweights."
  ([] (curve-get-gauge-total-weights-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugetotalweights/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauge-total-weights-historical (s/coll-of curve/gauge-total-weight-dto-spec)
  "GaugeTotalWeights (historical) 🔥
  Gets gaugetotalweights."
  ([] (curve-get-gauge-total-weights-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauge-total-weights-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-total-weight-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauge-type-weights-historical-with-http-info any?
  "GaugeTypeWeights (historical) 🔥
  Gets gaugetypeweights."
  ([] (curve-get-gauge-type-weights-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugetypeweights/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauge-type-weights-historical (s/coll-of curve/gauge-type-weight-dto-spec)
  "GaugeTypeWeights (historical) 🔥
  Gets gaugetypeweights."
  ([] (curve-get-gauge-type-weights-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauge-type-weights-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-type-weight-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauge-types-historical-with-http-info any?
  "GaugeTypes (historical) 🔥
  Gets gaugetypes."
  ([] (curve-get-gauge-types-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id name]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugetypes/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "name" name }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauge-types-historical (s/coll-of curve/gauge-type-dto-spec)
  "GaugeTypes (historical) 🔥
  Gets gaugetypes."
  ([] (curve-get-gauge-types-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauge-types-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-type-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauge-weight-votes-historical-with-http-info any?
  "GaugeWeightVotes (historical) 🔥
  Gets gaugeweightvotes."
  ([] (curve-get-gauge-weight-votes-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id user]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugeweightvotes/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "user" user }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauge-weight-votes-historical (s/coll-of curve/gauge-weight-vote-dto-spec)
  "GaugeWeightVotes (historical) 🔥
  Gets gaugeweightvotes."
  ([] (curve-get-gauge-weight-votes-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauge-weight-votes-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-weight-vote-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauge-weights-historical-with-http-info any?
  "GaugeWeights (historical) 🔥
  Gets gaugeweights."
  ([] (curve-get-gauge-weights-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugeweights/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauge-weights-historical (s/coll-of curve/gauge-weight-dto-spec)
  "GaugeWeights (historical) 🔥
  Gets gaugeweights."
  ([] (curve-get-gauge-weights-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauge-weights-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-weight-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauge-withdraws-historical-with-http-info any?
  "GaugeWithdraws (historical) 🔥
  Gets gaugewithdraws."
  ([] (curve-get-gauge-withdraws-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugewithdraws/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauge-withdraws-historical (s/coll-of curve/gauge-withdraw-dto-spec)
  "GaugeWithdraws (historical) 🔥
  Gets gaugewithdraws."
  ([] (curve-get-gauge-withdraws-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauge-withdraws-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-withdraw-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauges-historical-with-http-info any?
  "Gauges (historical) 🔥
  Gets gauges."
  ([] (curve-get-gauges-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id address pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gauges/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "address" address "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauges-historical (s/coll-of curve/gauge-dto-spec)
  "Gauges (historical) 🔥
  Gets gauges."
  ([] (curve-get-gauges-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauges-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-hourly-volumes-historical-with-http-info any?
  "HourlyVolumes (historical) 🔥
  Gets hourlyvolumes."
  ([] (curve-get-hourly-volumes-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/hourlyvolumes/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-hourly-volumes-historical (s/coll-of curve/hourly-volume-dto-spec)
  "HourlyVolumes (historical) 🔥
  Gets hourlyvolumes."
  ([] (curve-get-hourly-volumes-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-hourly-volumes-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/hourly-volume-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-lp-tokens-historical-with-http-info any?
  "LpTokens (historical) 🔥
  Gets lptokens."
  ([] (curve-get-lp-tokens-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id address name symbol pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/lptokens/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "address" address "name" name "symbol" symbol "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-lp-tokens-historical (s/coll-of curve/lp-token-dto-spec)
  "LpTokens (historical) 🔥
  Gets lptokens."
  ([] (curve-get-lp-tokens-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-lp-tokens-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/lp-token-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-pools-historical-with-http-info any?
  "Pools (historical) 🔥
  Gets pools."
  ([] (curve-get-pools-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id name]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/pools/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "name" name }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-pools-historical (s/coll-of curve/pool-dto-spec)
  "Pools (historical) 🔥
  Gets pools."
  ([] (curve-get-pools-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-pools-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/pool-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-proposal-votes-historical-with-http-info any?
  "ProposalVotes (historical) 🔥
  Gets proposalvotes."
  ([] (curve-get-proposal-votes-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/proposalvotes/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-proposal-votes-historical (s/coll-of curve/proposal-vote-dto-spec)
  "ProposalVotes (historical) 🔥
  Gets proposalvotes."
  ([] (curve-get-proposal-votes-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-proposal-votes-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/proposal-vote-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-proposals-historical-with-http-info any?
  "Proposals (historical) 🔥
  Gets proposals."
  ([] (curve-get-proposals-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/proposals/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-proposals-historical (s/coll-of curve/proposal-dto-spec)
  "Proposals (historical) 🔥
  Gets proposals."
  ([] (curve-get-proposals-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-proposals-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/proposal-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-remove-liquidity-events-historical-with-http-info any?
  "RemoveLiquidityEvents (historical) 🔥
  Gets removeliquidityevents."
  ([] (curve-get-remove-liquidity-events-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/removeliquidityevents/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-remove-liquidity-events-historical (s/coll-of curve/remove-liquidity-event-dto-spec)
  "RemoveLiquidityEvents (historical) 🔥
  Gets removeliquidityevents."
  ([] (curve-get-remove-liquidity-events-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-remove-liquidity-events-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/remove-liquidity-event-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-remove-liquidity-one-events-historical-with-http-info any?
  "RemoveLiquidityOneEvents (historical) 🔥
  Gets removeliquidityoneevents."
  ([] (curve-get-remove-liquidity-one-events-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/removeliquidityoneevents/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-remove-liquidity-one-events-historical (s/coll-of curve/remove-liquidity-one-event-dto-spec)
  "RemoveLiquidityOneEvents (historical) 🔥
  Gets removeliquidityoneevents."
  ([] (curve-get-remove-liquidity-one-events-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-remove-liquidity-one-events-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/remove-liquidity-one-event-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-system-states-historical-with-http-info any?
  "SystemStates (historical) 🔥
  Gets systemstates."
  ([] (curve-get-system-states-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/systemstates/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-system-states-historical (s/coll-of curve/system-state-dto-spec)
  "SystemStates (historical) 🔥
  Gets systemstates."
  ([] (curve-get-system-states-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-system-states-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/system-state-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-tokens-historical-with-http-info any?
  "Tokens (historical) 🔥
  Gets tokens."
  ([] (curve-get-tokens-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id address name symbol]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/tokens/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "address" address "name" name "symbol" symbol }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-tokens-historical (s/coll-of curve/token-dto-spec)
  "Tokens (historical) 🔥
  Gets tokens."
  ([] (curve-get-tokens-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-tokens-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/token-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-transfer-ownership-events-historical-with-http-info any?
  "TransferOwnershipEvents (historical) 🔥
  Gets transferownershipevents."
  ([] (curve-get-transfer-ownership-events-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/transferownershipevents/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-transfer-ownership-events-historical (s/coll-of curve/transfer-ownership-event-dto-spec)
  "TransferOwnershipEvents (historical) 🔥
  Gets transferownershipevents."
  ([] (curve-get-transfer-ownership-events-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-transfer-ownership-events-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/transfer-ownership-event-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-underlying-coins-historical-with-http-info any?
  "UnderlyingCoins (historical) 🔥
  Gets underlyingcoins."
  ([] (curve-get-underlying-coins-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/underlyingcoins/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-underlying-coins-historical (s/coll-of curve/underlying-coin-dto-spec)
  "UnderlyingCoins (historical) 🔥
  Gets underlyingcoins."
  ([] (curve-get-underlying-coins-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-underlying-coins-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/underlying-coin-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-voting-apps-historical-with-http-info any?
  "VotingApps (historical) 🔥
  Gets votingapps."
  ([] (curve-get-voting-apps-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id address]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/votingapps/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "address" address }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-voting-apps-historical (s/coll-of curve/voting-app-dto-spec)
  "VotingApps (historical) 🔥
  Gets votingapps."
  ([] (curve-get-voting-apps-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-voting-apps-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/voting-app-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-weekly-volumes-historical-with-http-info any?
  "WeeklyVolumes (historical) 🔥
  Gets weeklyvolumes."
  ([] (curve-get-weekly-volumes-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate id pool]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/weeklyvolumes/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "id" id "pool" pool }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-weekly-volumes-historical (s/coll-of curve/weekly-volume-dto-spec)
  "WeeklyVolumes (historical) 🔥
  Gets weeklyvolumes."
  ([] (curve-get-weekly-volumes-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-weekly-volumes-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/weekly-volume-dto-spec) res st/string-transformer)
        res))))


