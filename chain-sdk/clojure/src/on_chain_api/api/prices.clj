(ns on-chain-api.api.prices
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


(defn-spec chains-chain-id-dapps-dex-prices-historical-get-with-http-info any?
  ""
  ([chain_id string?, ] (chains-chain-id-dapps-dex-prices-historical-get-with-http-info chain_id nil))
  ([chain_id string?, {:keys [startBlock endBlock startDate endDate tokenId]} (s/map-of keyword? any?)]
   (check-required-params chain_id)
   (call-api "/chains/{chain_id}/dapps/dex/prices/historical" :get
             {:path-params   {"chain_id" chain_id }
              :header-params {}
              :query-params  {"startBlock" startBlock "endBlock" endBlock "startDate" startDate "endDate" endDate "tokenId" tokenId }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    []})))

(defn-spec chains-chain-id-dapps-dex-prices-historical-get any?
  ""
  ([chain_id string?, ] (chains-chain-id-dapps-dex-prices-historical-get chain_id nil))
  ([chain_id string?, optional-params any?]
   (let [res (:data (chains-chain-id-dapps-dex-prices-historical-get-with-http-info chain_id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


