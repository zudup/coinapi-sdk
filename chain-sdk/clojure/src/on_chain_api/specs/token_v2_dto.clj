(ns on-chain-api.specs.token-v2-dto
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [on-chain-api.specs.big-integer :refer :all]
            [on-chain-api.specs.big-integer :refer :all]
            )
  (:import (java.io File)))


(def token-v2-dto-data
  {
   (ds/opt :entry_time) inst?
   (ds/opt :recv_time) inst?
   (ds/opt :block_number) int?
   (ds/opt :vid) int?
   (ds/opt :id) string?
   (ds/opt :symbol) string?
   (ds/opt :name) string?
   (ds/opt :decimals) int?
   (ds/opt :total_supply) big-integer-spec
   (ds/opt :trade_volume) string?
   (ds/opt :trade_volume_usd) string?
   (ds/opt :untracked_volume_usd) string?
   (ds/opt :tx_count) big-integer-spec
   (ds/opt :total_liquidity) string?
   (ds/opt :derived_eth) string?
   (ds/opt :token_symbol) string?
   })

(def token-v2-dto-spec
  (ds/spec
    {:name ::token-v2-dto
     :spec token-v2-dto-data}))
