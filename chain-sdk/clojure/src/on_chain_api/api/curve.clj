(ns on-chain-api.api.curve
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


(defn-spec dapps-curve-accounts-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-accounts-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/accounts/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-accounts-historical-get any?
  ""
  ([] (dapps-curve-accounts-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-accounts-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-add-liquidity-event-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-add-liquidity-event-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/addLiquidityEvent/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-add-liquidity-event-historical-get any?
  ""
  ([] (dapps-curve-add-liquidity-event-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-add-liquidity-event-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-admin-fee-change-log-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-admin-fee-change-log-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/adminFeeChangeLog/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-admin-fee-change-log-historical-get any?
  ""
  ([] (dapps-curve-admin-fee-change-log-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-admin-fee-change-log-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-amplification-coeff-change-log-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-amplification-coeff-change-log-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/amplificationCoeffChangeLog/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-amplification-coeff-change-log-historical-get any?
  ""
  ([] (dapps-curve-amplification-coeff-change-log-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-amplification-coeff-change-log-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-coins-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-coins-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/coins/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-coins-historical-get any?
  ""
  ([] (dapps-curve-coins-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-coins-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-contracts-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-contracts-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/contracts/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-contracts-historical-get any?
  ""
  ([] (dapps-curve-contracts-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-contracts-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-contracts-version-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-contracts-version-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/contractsVersion/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-contracts-version-historical-get any?
  ""
  ([] (dapps-curve-contracts-version-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-contracts-version-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-daily-volume-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-daily-volume-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/dailyVolume/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-daily-volume-historical-get any?
  ""
  ([] (dapps-curve-daily-volume-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-daily-volume-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-fee-change-log-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-fee-change-log-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/feeChangeLog/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-fee-change-log-historical-get any?
  ""
  ([] (dapps-curve-fee-change-log-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-fee-change-log-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-gauge-deposit-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-gauge-deposit-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugeDeposit/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-gauge-deposit-historical-get any?
  ""
  ([] (dapps-curve-gauge-deposit-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-gauge-deposit-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-gauge-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-gauge-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gauge/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-gauge-historical-get any?
  ""
  ([] (dapps-curve-gauge-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-gauge-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-gauge-liquidity-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-gauge-liquidity-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugeLiquidity/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-gauge-liquidity-historical-get any?
  ""
  ([] (dapps-curve-gauge-liquidity-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-gauge-liquidity-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-gauge-total-weight-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-gauge-total-weight-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugeTotalWeight/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-gauge-total-weight-historical-get any?
  ""
  ([] (dapps-curve-gauge-total-weight-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-gauge-total-weight-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-gauge-type-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-gauge-type-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugeType/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-gauge-type-historical-get any?
  ""
  ([] (dapps-curve-gauge-type-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-gauge-type-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-gauge-type-weight-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-gauge-type-weight-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugeTypeWeight/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-gauge-type-weight-historical-get any?
  ""
  ([] (dapps-curve-gauge-type-weight-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-gauge-type-weight-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-gauge-weight-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-gauge-weight-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugeWeight/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-gauge-weight-historical-get any?
  ""
  ([] (dapps-curve-gauge-weight-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-gauge-weight-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-gauge-weight-vote-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-gauge-weight-vote-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugeWeightVote/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-gauge-weight-vote-historical-get any?
  ""
  ([] (dapps-curve-gauge-weight-vote-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-gauge-weight-vote-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-gauge-withdraw-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-gauge-withdraw-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/gaugeWithdraw/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-gauge-withdraw-historical-get any?
  ""
  ([] (dapps-curve-gauge-withdraw-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-gauge-withdraw-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-hourly-volume-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-hourly-volume-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/hourlyVolume/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-hourly-volume-historical-get any?
  ""
  ([] (dapps-curve-hourly-volume-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-hourly-volume-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-lp-token-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-lp-token-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/lpToken/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-lp-token-historical-get any?
  ""
  ([] (dapps-curve-lp-token-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-lp-token-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-pools-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-pools-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/pools/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-pools-historical-get any?
  ""
  ([] (dapps-curve-pools-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-pools-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-proposals-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-proposals-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/proposals/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-proposals-historical-get any?
  ""
  ([] (dapps-curve-proposals-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-proposals-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-proposals-vote-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-proposals-vote-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/proposalsVote/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-proposals-vote-historical-get any?
  ""
  ([] (dapps-curve-proposals-vote-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-proposals-vote-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-remove-liquidity-event-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-remove-liquidity-event-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/removeLiquidityEvent/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-remove-liquidity-event-historical-get any?
  ""
  ([] (dapps-curve-remove-liquidity-event-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-remove-liquidity-event-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-remove-liquidity-one-event-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-remove-liquidity-one-event-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/removeLiquidityOneEvent/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-remove-liquidity-one-event-historical-get any?
  ""
  ([] (dapps-curve-remove-liquidity-one-event-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-remove-liquidity-one-event-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-swaps-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-swaps-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/swaps/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-swaps-historical-get any?
  ""
  ([] (dapps-curve-swaps-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-swaps-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-system-state-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-system-state-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/systemState/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-system-state-historical-get any?
  ""
  ([] (dapps-curve-system-state-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-system-state-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-tokens-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-tokens-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate tokenId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/tokens/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "tokenId" tokenId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-tokens-historical-get any?
  ""
  ([] (dapps-curve-tokens-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-tokens-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-transfer-ownership-event-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-transfer-ownership-event-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/transferOwnershipEvent/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-transfer-ownership-event-historical-get any?
  ""
  ([] (dapps-curve-transfer-ownership-event-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-transfer-ownership-event-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-underlying-coin-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-underlying-coin-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/underlyingCoin/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-underlying-coin-historical-get any?
  ""
  ([] (dapps-curve-underlying-coin-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-underlying-coin-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-voting-app-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-voting-app-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/votingApp/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-voting-app-historical-get any?
  ""
  ([] (dapps-curve-voting-app-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-voting-app-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec dapps-curve-weekly-volume-historical-get-with-http-info any?
  ""
  ([] (dapps-curve-weekly-volume-historical-get-with-http-info nil))
  ([{:keys [startBlock endBlock startDate endDate poolId]} (s/map-of keyword? any?)]
   (call-api "/dapps/curve/weeklyVolume/historical" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "poolId" poolId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec dapps-curve-weekly-volume-historical-get any?
  ""
  ([] (dapps-curve-weekly-volume-historical-get nil))
  ([optional-params any?]
   (let [res (:data (dapps-curve-weekly-volume-historical-get-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


