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


(defn-spec curve-get-account-dtos-historical-with-http-info any?
  "AccountDTOs (historical) 🔥
  Gets AccountDTOs."
  ([] (curve-get-account-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/AccountDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-account-dtos-historical (s/coll-of curve/account-dto-spec)
  "AccountDTOs (historical) 🔥
  Gets AccountDTOs."
  ([] (curve-get-account-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-account-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/account-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-accounts-historical-with-http-info any?
  "Accounts (historical)
  Gets accounts."
  ([] (curve-get-accounts-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/accounts/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-accounts-historical (s/coll-of curve/account-dto-spec)
  "Accounts (historical)
  Gets accounts."
  ([] (curve-get-accounts-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-accounts-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/account-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-add-liquidity-event-dtos-historical-with-http-info any?
  "AddLiquidityEventDTOs (historical) 🔥
  Gets AddLiquidityEventDTOs."
  ([] (curve-get-add-liquidity-event-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/AddLiquidityEventDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-add-liquidity-event-dtos-historical (s/coll-of curve/add-liquidity-event-dto-spec)
  "AddLiquidityEventDTOs (historical) 🔥
  Gets AddLiquidityEventDTOs."
  ([] (curve-get-add-liquidity-event-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-add-liquidity-event-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/add-liquidity-event-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-add-liquidity-events-historical-with-http-info any?
  "AddLiquidityEvents (historical)
  Gets add liquidity events."
  ([] (curve-get-add-liquidity-events-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/addLiquidityEvents/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-add-liquidity-events-historical (s/coll-of curve/add-liquidity-event-dto-spec)
  "AddLiquidityEvents (historical)
  Gets add liquidity events."
  ([] (curve-get-add-liquidity-events-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-add-liquidity-events-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/add-liquidity-event-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-admin-fee-change-log-dtos-historical-with-http-info any?
  "AdminFeeChangeLogDTOs (historical) 🔥
  Gets AdminFeeChangeLogDTOs."
  ([] (curve-get-admin-fee-change-log-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/AdminFeeChangeLogDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-admin-fee-change-log-dtos-historical (s/coll-of curve/admin-fee-change-log-dto-spec)
  "AdminFeeChangeLogDTOs (historical) 🔥
  Gets AdminFeeChangeLogDTOs."
  ([] (curve-get-admin-fee-change-log-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-admin-fee-change-log-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/admin-fee-change-log-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-admin-fee-change-logs-historical-with-http-info any?
  "AdminFeeChangeLogs (historical)
  Gets admin fee change logs."
  ([] (curve-get-admin-fee-change-logs-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/adminFeeChangeLogs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-admin-fee-change-logs-historical (s/coll-of curve/admin-fee-change-log-dto-spec)
  "AdminFeeChangeLogs (historical)
  Gets admin fee change logs."
  ([] (curve-get-admin-fee-change-logs-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-admin-fee-change-logs-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/admin-fee-change-log-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-amplification-coeff-change-log-dtos-historical-with-http-info any?
  "AmplificationCoeffChangeLogDTOs (historical) 🔥
  Gets AmplificationCoeffChangeLogDTOs."
  ([] (curve-get-amplification-coeff-change-log-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/AmplificationCoeffChangeLogDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-amplification-coeff-change-log-dtos-historical (s/coll-of curve/amplification-coeff-change-log-dto-spec)
  "AmplificationCoeffChangeLogDTOs (historical) 🔥
  Gets AmplificationCoeffChangeLogDTOs."
  ([] (curve-get-amplification-coeff-change-log-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-amplification-coeff-change-log-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/amplification-coeff-change-log-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-amplification-coeff-change-logs-historical-with-http-info any?
  "AmplificationCoeffChangeLogs (historical)
  Gets amplification coeff change logs."
  ([] (curve-get-amplification-coeff-change-logs-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/amplificationCoeffChangeLogs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-amplification-coeff-change-logs-historical (s/coll-of curve/amplification-coeff-change-log-dto-spec)
  "AmplificationCoeffChangeLogs (historical)
  Gets amplification coeff change logs."
  ([] (curve-get-amplification-coeff-change-logs-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-amplification-coeff-change-logs-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/amplification-coeff-change-log-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-coin-dtos-historical-with-http-info any?
  "CoinDTOs (historical) 🔥
  Gets CoinDTOs."
  ([] (curve-get-coin-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/CoinDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-coin-dtos-historical (s/coll-of curve/coin-dto-spec)
  "CoinDTOs (historical) 🔥
  Gets CoinDTOs."
  ([] (curve-get-coin-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-coin-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/coin-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-coins-historical-with-http-info any?
  "Coins (historical)
  Gets coins."
  ([] (curve-get-coins-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/coins/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-coins-historical (s/coll-of curve/coin-dto-spec)
  "Coins (historical)
  Gets coins."
  ([] (curve-get-coins-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-coins-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/coin-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-contract-dtos-historical-with-http-info any?
  "ContractDTOs (historical) 🔥
  Gets ContractDTOs."
  ([] (curve-get-contract-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/ContractDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-contract-dtos-historical (s/coll-of curve/contract-dto-spec)
  "ContractDTOs (historical) 🔥
  Gets ContractDTOs."
  ([] (curve-get-contract-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-contract-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/contract-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-contract-version-dtos-historical-with-http-info any?
  "ContractVersionDTOs (historical) 🔥
  Gets ContractVersionDTOs."
  ([] (curve-get-contract-version-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/ContractVersionDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-contract-version-dtos-historical (s/coll-of curve/contract-version-dto-spec)
  "ContractVersionDTOs (historical) 🔥
  Gets ContractVersionDTOs."
  ([] (curve-get-contract-version-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-contract-version-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/contract-version-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-contracts-historical-with-http-info any?
  "Contracts (historical)
  Gets contracts."
  ([] (curve-get-contracts-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/contracts/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-contracts-historical (s/coll-of curve/contract-dto-spec)
  "Contracts (historical)
  Gets contracts."
  ([] (curve-get-contracts-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-contracts-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/contract-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-contracts-versions-historical-with-http-info any?
  "ContractsVersions (historical)
  Gets contracts versions."
  ([] (curve-get-contracts-versions-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/contractsVersions/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-contracts-versions-historical (s/coll-of curve/contract-version-dto-spec)
  "ContractsVersions (historical)
  Gets contracts versions."
  ([] (curve-get-contracts-versions-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-contracts-versions-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/contract-version-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-daily-volume-dtos-historical-with-http-info any?
  "DailyVolumeDTOs (historical) 🔥
  Gets DailyVolumeDTOs."
  ([] (curve-get-daily-volume-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/DailyVolumeDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-daily-volume-dtos-historical (s/coll-of curve/daily-volume-dto-spec)
  "DailyVolumeDTOs (historical) 🔥
  Gets DailyVolumeDTOs."
  ([] (curve-get-daily-volume-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-daily-volume-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/daily-volume-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-daily-volumes-historical-with-http-info any?
  "DailyVolumes (historical)
  Gets daily volumes."
  ([] (curve-get-daily-volumes-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/dailyVolumes/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-daily-volumes-historical (s/coll-of curve/daily-volume-dto-spec)
  "DailyVolumes (historical)
  Gets daily volumes."
  ([] (curve-get-daily-volumes-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-daily-volumes-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/daily-volume-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-exchange-dtos-historical-with-http-info any?
  "ExchangeDTOs (historical) 🔥
  Gets ExchangeDTOs."
  ([] (curve-get-exchange-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/ExchangeDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-exchange-dtos-historical (s/coll-of curve/exchange-dto-spec)
  "ExchangeDTOs (historical) 🔥
  Gets ExchangeDTOs."
  ([] (curve-get-exchange-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-exchange-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/exchange-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-exchanges-historical-with-http-info any?
  "Exchanges (historical) 🔥
  Gets exchanges."
  ([] (curve-get-exchanges-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/exchanges/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
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


(defn-spec curve-get-fee-change-log-dtos-historical-with-http-info any?
  "FeeChangeLogDTOs (historical) 🔥
  Gets FeeChangeLogDTOs."
  ([] (curve-get-fee-change-log-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/FeeChangeLogDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-fee-change-log-dtos-historical (s/coll-of curve/fee-change-log-dto-spec)
  "FeeChangeLogDTOs (historical) 🔥
  Gets FeeChangeLogDTOs."
  ([] (curve-get-fee-change-log-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-fee-change-log-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/fee-change-log-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-fee-change-logs-historical-with-http-info any?
  "FeeChangeLogs (historical)
  Gets fee change logs."
  ([] (curve-get-fee-change-logs-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/feeChangeLogs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-fee-change-logs-historical (s/coll-of curve/fee-change-log-dto-spec)
  "FeeChangeLogs (historical)
  Gets fee change logs."
  ([] (curve-get-fee-change-logs-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-fee-change-logs-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/fee-change-log-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauge-deposit-dtos-historical-with-http-info any?
  "GaugeDepositDTOs (historical) 🔥
  Gets GaugeDepositDTOs."
  ([] (curve-get-gauge-deposit-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/GaugeDepositDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauge-deposit-dtos-historical (s/coll-of curve/gauge-deposit-dto-spec)
  "GaugeDepositDTOs (historical) 🔥
  Gets GaugeDepositDTOs."
  ([] (curve-get-gauge-deposit-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauge-deposit-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-deposit-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauge-dtos-historical-with-http-info any?
  "GaugeDTOs (historical) 🔥
  Gets GaugeDTOs."
  ([] (curve-get-gauge-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/GaugeDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauge-dtos-historical (s/coll-of curve/gauge-dto-spec)
  "GaugeDTOs (historical) 🔥
  Gets GaugeDTOs."
  ([] (curve-get-gauge-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauge-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauge-liquidity-dtos-historical-with-http-info any?
  "GaugeLiquidityDTOs (historical) 🔥
  Gets GaugeLiquidityDTOs."
  ([] (curve-get-gauge-liquidity-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/GaugeLiquidityDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauge-liquidity-dtos-historical (s/coll-of curve/gauge-liquidity-dto-spec)
  "GaugeLiquidityDTOs (historical) 🔥
  Gets GaugeLiquidityDTOs."
  ([] (curve-get-gauge-liquidity-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauge-liquidity-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-liquidity-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauge-total-weight-dtos-historical-with-http-info any?
  "GaugeTotalWeightDTOs (historical) 🔥
  Gets GaugeTotalWeightDTOs."
  ([] (curve-get-gauge-total-weight-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/GaugeTotalWeightDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauge-total-weight-dtos-historical (s/coll-of curve/gauge-total-weight-dto-spec)
  "GaugeTotalWeightDTOs (historical) 🔥
  Gets GaugeTotalWeightDTOs."
  ([] (curve-get-gauge-total-weight-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauge-total-weight-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-total-weight-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauge-type-dtos-historical-with-http-info any?
  "GaugeTypeDTOs (historical) 🔥
  Gets GaugeTypeDTOs."
  ([] (curve-get-gauge-type-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/GaugeTypeDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauge-type-dtos-historical (s/coll-of curve/gauge-type-dto-spec)
  "GaugeTypeDTOs (historical) 🔥
  Gets GaugeTypeDTOs."
  ([] (curve-get-gauge-type-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauge-type-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-type-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauge-type-weight-dtos-historical-with-http-info any?
  "GaugeTypeWeightDTOs (historical) 🔥
  Gets GaugeTypeWeightDTOs."
  ([] (curve-get-gauge-type-weight-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/GaugeTypeWeightDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauge-type-weight-dtos-historical (s/coll-of curve/gauge-type-weight-dto-spec)
  "GaugeTypeWeightDTOs (historical) 🔥
  Gets GaugeTypeWeightDTOs."
  ([] (curve-get-gauge-type-weight-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauge-type-weight-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-type-weight-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauge-weight-dtos-historical-with-http-info any?
  "GaugeWeightDTOs (historical) 🔥
  Gets GaugeWeightDTOs."
  ([] (curve-get-gauge-weight-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/GaugeWeightDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauge-weight-dtos-historical (s/coll-of curve/gauge-weight-dto-spec)
  "GaugeWeightDTOs (historical) 🔥
  Gets GaugeWeightDTOs."
  ([] (curve-get-gauge-weight-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauge-weight-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-weight-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauge-weight-vote-dtos-historical-with-http-info any?
  "GaugeWeightVoteDTOs (historical) 🔥
  Gets GaugeWeightVoteDTOs."
  ([] (curve-get-gauge-weight-vote-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/GaugeWeightVoteDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauge-weight-vote-dtos-historical (s/coll-of curve/gauge-weight-vote-dto-spec)
  "GaugeWeightVoteDTOs (historical) 🔥
  Gets GaugeWeightVoteDTOs."
  ([] (curve-get-gauge-weight-vote-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauge-weight-vote-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-weight-vote-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauge-withdraw-dtos-historical-with-http-info any?
  "GaugeWithdrawDTOs (historical) 🔥
  Gets GaugeWithdrawDTOs."
  ([] (curve-get-gauge-withdraw-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/GaugeWithdrawDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauge-withdraw-dtos-historical (s/coll-of curve/gauge-withdraw-dto-spec)
  "GaugeWithdrawDTOs (historical) 🔥
  Gets GaugeWithdrawDTOs."
  ([] (curve-get-gauge-withdraw-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauge-withdraw-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-withdraw-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauges-deposits-historical-with-http-info any?
  "GaugesDeposits (historical)
  Gets gauges deposits."
  ([] (curve-get-gauges-deposits-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugesDeposits/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauges-deposits-historical (s/coll-of curve/gauge-deposit-dto-spec)
  "GaugesDeposits (historical)
  Gets gauges deposits."
  ([] (curve-get-gauges-deposits-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauges-deposits-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-deposit-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauges-historical-with-http-info any?
  "Gauges (historical)
  Gets gauges."
  ([] (curve-get-gauges-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gauges/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauges-historical (s/coll-of curve/gauge-dto-spec)
  "Gauges (historical)
  Gets gauges."
  ([] (curve-get-gauges-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauges-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauges-liquidity-historical-with-http-info any?
  "GaugesLiquidity (historical)
  Gets gauges liquidity."
  ([] (curve-get-gauges-liquidity-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugesLiquidity/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauges-liquidity-historical (s/coll-of curve/gauge-liquidity-dto-spec)
  "GaugesLiquidity (historical)
  Gets gauges liquidity."
  ([] (curve-get-gauges-liquidity-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauges-liquidity-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-liquidity-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauges-total-weights-historical-with-http-info any?
  "GaugesTotalWeights (historical)
  Gets gauges total weights."
  ([] (curve-get-gauges-total-weights-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugesTotalWeights/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauges-total-weights-historical (s/coll-of curve/gauge-total-weight-dto-spec)
  "GaugesTotalWeights (historical)
  Gets gauges total weights."
  ([] (curve-get-gauges-total-weights-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauges-total-weights-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-total-weight-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauges-types-historical-with-http-info any?
  "GaugesTypes (historical)
  Gets gauges types."
  ([] (curve-get-gauges-types-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugesTypes/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauges-types-historical (s/coll-of curve/gauge-type-dto-spec)
  "GaugesTypes (historical)
  Gets gauges types."
  ([] (curve-get-gauges-types-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauges-types-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-type-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauges-types-weights-historical-with-http-info any?
  "GaugesTypesWeights (historical)
  Gets gauges types weights."
  ([] (curve-get-gauges-types-weights-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugesTypesWeights/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauges-types-weights-historical (s/coll-of curve/gauge-type-weight-dto-spec)
  "GaugesTypesWeights (historical)
  Gets gauges types weights."
  ([] (curve-get-gauges-types-weights-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauges-types-weights-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-type-weight-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauges-weights-historical-with-http-info any?
  "GaugesWeights (historical)
  Gets gauges weights."
  ([] (curve-get-gauges-weights-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugesWeights/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauges-weights-historical (s/coll-of curve/gauge-weight-dto-spec)
  "GaugesWeights (historical)
  Gets gauges weights."
  ([] (curve-get-gauges-weights-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauges-weights-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-weight-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauges-weights-votes-historical-with-http-info any?
  "GaugesWeightsVotes (historical)
  Gets gauges weights votes."
  ([] (curve-get-gauges-weights-votes-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugesWeightsVotes/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauges-weights-votes-historical (s/coll-of curve/gauge-weight-vote-dto-spec)
  "GaugesWeightsVotes (historical)
  Gets gauges weights votes."
  ([] (curve-get-gauges-weights-votes-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauges-weights-votes-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-weight-vote-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-gauges-withdraw-historical-with-http-info any?
  "GaugesWithdraw (historical)
  Gets gauges withdraws."
  ([] (curve-get-gauges-withdraw-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugesWithdraws/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-gauges-withdraw-historical (s/coll-of curve/gauge-withdraw-dto-spec)
  "GaugesWithdraw (historical)
  Gets gauges withdraws."
  ([] (curve-get-gauges-withdraw-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-gauges-withdraw-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/gauge-withdraw-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-hourly-volume-dtos-historical-with-http-info any?
  "HourlyVolumeDTOs (historical) 🔥
  Gets HourlyVolumeDTOs."
  ([] (curve-get-hourly-volume-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/HourlyVolumeDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-hourly-volume-dtos-historical (s/coll-of curve/hourly-volume-dto-spec)
  "HourlyVolumeDTOs (historical) 🔥
  Gets HourlyVolumeDTOs."
  ([] (curve-get-hourly-volume-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-hourly-volume-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/hourly-volume-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-hourly-volumes-historical-with-http-info any?
  "HourlyVolumes (historical)
  Gets hourly volumes."
  ([] (curve-get-hourly-volumes-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/hourlyVolumes/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-hourly-volumes-historical (s/coll-of curve/hourly-volume-dto-spec)
  "HourlyVolumes (historical)
  Gets hourly volumes."
  ([] (curve-get-hourly-volumes-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-hourly-volumes-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/hourly-volume-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-lp-token-dtos-historical-with-http-info any?
  "LpTokenDTOs (historical) 🔥
  Gets LpTokenDTOs."
  ([] (curve-get-lp-token-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/LpTokenDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-lp-token-dtos-historical (s/coll-of curve/lp-token-dto-spec)
  "LpTokenDTOs (historical) 🔥
  Gets LpTokenDTOs."
  ([] (curve-get-lp-token-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-lp-token-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/lp-token-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-lp-tokens-historical-with-http-info any?
  "LpTokens (historical)
  Gets lp tokens."
  ([] (curve-get-lp-tokens-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/lpTokens/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-lp-tokens-historical (s/coll-of curve/lp-token-dto-spec)
  "LpTokens (historical)
  Gets lp tokens."
  ([] (curve-get-lp-tokens-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-lp-tokens-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/lp-token-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-pool-dtos-historical-with-http-info any?
  "PoolDTOs (historical) 🔥
  Gets PoolDTOs."
  ([] (curve-get-pool-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/PoolDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-pool-dtos-historical (s/coll-of curve/pool-dto-spec)
  "PoolDTOs (historical) 🔥
  Gets PoolDTOs."
  ([] (curve-get-pool-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-pool-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/pool-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-pools-historical-with-http-info any?
  "Pools (historical) 🔥
  Gets pools."
  ([] (curve-get-pools-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/pools/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
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


(defn-spec curve-get-proposal-dtos-historical-with-http-info any?
  "ProposalDTOs (historical) 🔥
  Gets ProposalDTOs."
  ([] (curve-get-proposal-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/ProposalDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-proposal-dtos-historical (s/coll-of curve/proposal-dto-spec)
  "ProposalDTOs (historical) 🔥
  Gets ProposalDTOs."
  ([] (curve-get-proposal-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-proposal-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/proposal-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-proposal-vote-dtos-historical-with-http-info any?
  "ProposalVoteDTOs (historical) 🔥
  Gets ProposalVoteDTOs."
  ([] (curve-get-proposal-vote-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/ProposalVoteDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-proposal-vote-dtos-historical (s/coll-of curve/proposal-vote-dto-spec)
  "ProposalVoteDTOs (historical) 🔥
  Gets ProposalVoteDTOs."
  ([] (curve-get-proposal-vote-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-proposal-vote-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/proposal-vote-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-proposals-historical-with-http-info any?
  "Proposals (historical)
  Gets proposals."
  ([] (curve-get-proposals-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/proposals/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-proposals-historical (s/coll-of curve/proposal-dto-spec)
  "Proposals (historical)
  Gets proposals."
  ([] (curve-get-proposals-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-proposals-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/proposal-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-proposals-votes-historical-with-http-info any?
  "ProposalsVotes (historical)
  Gets proposals votes."
  ([] (curve-get-proposals-votes-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/proposalsVotes/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-proposals-votes-historical (s/coll-of curve/proposal-vote-dto-spec)
  "ProposalsVotes (historical)
  Gets proposals votes."
  ([] (curve-get-proposals-votes-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-proposals-votes-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/proposal-vote-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-remove-liquidity-event-dtos-historical-with-http-info any?
  "RemoveLiquidityEventDTOs (historical) 🔥
  Gets RemoveLiquidityEventDTOs."
  ([] (curve-get-remove-liquidity-event-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/RemoveLiquidityEventDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-remove-liquidity-event-dtos-historical (s/coll-of curve/remove-liquidity-event-dto-spec)
  "RemoveLiquidityEventDTOs (historical) 🔥
  Gets RemoveLiquidityEventDTOs."
  ([] (curve-get-remove-liquidity-event-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-remove-liquidity-event-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/remove-liquidity-event-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-remove-liquidity-events-historical-with-http-info any?
  "RemoveLiquidityEvents (historical)
  Gets remove liquidity events."
  ([] (curve-get-remove-liquidity-events-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/removeLiquidityEvents/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-remove-liquidity-events-historical (s/coll-of curve/remove-liquidity-event-dto-spec)
  "RemoveLiquidityEvents (historical)
  Gets remove liquidity events."
  ([] (curve-get-remove-liquidity-events-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-remove-liquidity-events-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/remove-liquidity-event-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-remove-liquidity-one-event-dtos-historical-with-http-info any?
  "RemoveLiquidityOneEventDTOs (historical) 🔥
  Gets RemoveLiquidityOneEventDTOs."
  ([] (curve-get-remove-liquidity-one-event-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/RemoveLiquidityOneEventDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-remove-liquidity-one-event-dtos-historical (s/coll-of curve/remove-liquidity-one-event-dto-spec)
  "RemoveLiquidityOneEventDTOs (historical) 🔥
  Gets RemoveLiquidityOneEventDTOs."
  ([] (curve-get-remove-liquidity-one-event-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-remove-liquidity-one-event-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/remove-liquidity-one-event-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-remove-liquidity-one-events-historical-with-http-info any?
  "RemoveLiquidityOneEvents (historical)
  Gets remove liquidity one events."
  ([] (curve-get-remove-liquidity-one-events-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/removeLiquidityOneEvents/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-remove-liquidity-one-events-historical (s/coll-of curve/remove-liquidity-one-event-dto-spec)
  "RemoveLiquidityOneEvents (historical)
  Gets remove liquidity one events."
  ([] (curve-get-remove-liquidity-one-events-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-remove-liquidity-one-events-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/remove-liquidity-one-event-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-system-state-dtos-historical-with-http-info any?
  "SystemStateDTOs (historical) 🔥
  Gets SystemStateDTOs."
  ([] (curve-get-system-state-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/SystemStateDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-system-state-dtos-historical (s/coll-of curve/system-state-dto-spec)
  "SystemStateDTOs (historical) 🔥
  Gets SystemStateDTOs."
  ([] (curve-get-system-state-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-system-state-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/system-state-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-system-states-historical-with-http-info any?
  "SystemStates (historical)
  Gets system states."
  ([] (curve-get-system-states-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/systemStates/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-system-states-historical (s/coll-of curve/system-state-dto-spec)
  "SystemStates (historical)
  Gets system states."
  ([] (curve-get-system-states-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-system-states-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/system-state-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-token-dtos-historical-with-http-info any?
  "TokenDTOs (historical) 🔥
  Gets TokenDTOs."
  ([] (curve-get-token-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/TokenDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-token-dtos-historical (s/coll-of curve/token-dto-spec)
  "TokenDTOs (historical) 🔥
  Gets TokenDTOs."
  ([] (curve-get-token-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-token-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/token-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-tokens-historical-with-http-info any?
  "Tokens (historical) 🔥
  Gets tokens."
  ([] (curve-get-tokens-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate tokenId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/tokens/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "tokenId" tokenId }
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


(defn-spec curve-get-transfer-ownership-event-dtos-historical-with-http-info any?
  "TransferOwnershipEventDTOs (historical) 🔥
  Gets TransferOwnershipEventDTOs."
  ([] (curve-get-transfer-ownership-event-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/TransferOwnershipEventDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-transfer-ownership-event-dtos-historical (s/coll-of curve/transfer-ownership-event-dto-spec)
  "TransferOwnershipEventDTOs (historical) 🔥
  Gets TransferOwnershipEventDTOs."
  ([] (curve-get-transfer-ownership-event-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-transfer-ownership-event-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/transfer-ownership-event-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-transfer-ownership-events-historical-with-http-info any?
  "TransferOwnershipEvents (historical)
  Gets transfer ownership events."
  ([] (curve-get-transfer-ownership-events-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/transferOwnershipEvents/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-transfer-ownership-events-historical (s/coll-of curve/transfer-ownership-event-dto-spec)
  "TransferOwnershipEvents (historical)
  Gets transfer ownership events."
  ([] (curve-get-transfer-ownership-events-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-transfer-ownership-events-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/transfer-ownership-event-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-underlying-coin-dtos-historical-with-http-info any?
  "UnderlyingCoinDTOs (historical) 🔥
  Gets UnderlyingCoinDTOs."
  ([] (curve-get-underlying-coin-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/UnderlyingCoinDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-underlying-coin-dtos-historical (s/coll-of curve/underlying-coin-dto-spec)
  "UnderlyingCoinDTOs (historical) 🔥
  Gets UnderlyingCoinDTOs."
  ([] (curve-get-underlying-coin-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-underlying-coin-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/underlying-coin-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-underlying-coins-historical-with-http-info any?
  "UnderlyingCoins (historical)
  Gets underlying coins."
  ([] (curve-get-underlying-coins-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/underlyingCoins/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-underlying-coins-historical (s/coll-of curve/underlying-coin-dto-spec)
  "UnderlyingCoins (historical)
  Gets underlying coins."
  ([] (curve-get-underlying-coins-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-underlying-coins-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/underlying-coin-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-voting-app-dtos-historical-with-http-info any?
  "VotingAppDTOs (historical) 🔥
  Gets VotingAppDTOs."
  ([] (curve-get-voting-app-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/VotingAppDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-voting-app-dtos-historical (s/coll-of curve/voting-app-dto-spec)
  "VotingAppDTOs (historical) 🔥
  Gets VotingAppDTOs."
  ([] (curve-get-voting-app-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-voting-app-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/voting-app-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-voting-apps-historical-with-http-info any?
  "VotingApps (historical)
  Gets voting apps."
  ([] (curve-get-voting-apps-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/votingApps/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-voting-apps-historical (s/coll-of curve/voting-app-dto-spec)
  "VotingApps (historical)
  Gets voting apps."
  ([] (curve-get-voting-apps-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-voting-apps-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/voting-app-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-weekly-volume-dtos-historical-with-http-info any?
  "WeeklyVolumeDTOs (historical) 🔥
  Gets WeeklyVolumeDTOs."
  ([] (curve-get-weekly-volume-dtos-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/WeeklyVolumeDTOs/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-weekly-volume-dtos-historical (s/coll-of curve/weekly-volume-dto-spec)
  "WeeklyVolumeDTOs (historical) 🔥
  Gets WeeklyVolumeDTOs."
  ([] (curve-get-weekly-volume-dtos-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-weekly-volume-dtos-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/weekly-volume-dto-spec) res st/string-transformer)
        res))))


(defn-spec curve-get-weekly-volumes-historical-with-http-info any?
  "WeeklyVolumes (historical)
  Gets weekly volumes."
  ([] (curve-get-weekly-volumes-historical-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/weeklyVolumes/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       ["text/plain" "application/json" "text/json"]
              :auth-names    []})))

(defn-spec curve-get-weekly-volumes-historical (s/coll-of curve/weekly-volume-dto-spec)
  "WeeklyVolumes (historical)
  Gets weekly volumes."
  ([] (curve-get-weekly-volumes-historical nil))
  ([optional-params any?]
   (let [res (:data (curve-get-weekly-volumes-historical-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of curve/weekly-volume-dto-spec) res st/string-transformer)
        res))))


