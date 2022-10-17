(ns on-chain-api.specs.token-v3-dto
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [on-chain-api.specs.big-integer :refer :all]
            [on-chain-api.specs.big-integer :refer :all]
            [on-chain-api.specs.big-integer :refer :all]
            )
  (:import (java.io File)))


(def token-v3-dto-data
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
   (ds/opt :volume) string?
   (ds/opt :volume_usd) string?
   (ds/opt :untracked_volume_usd) string?
   (ds/opt :fees_usd) string?
   (ds/opt :tx_count) big-integer-spec
   (ds/opt :pool_count) big-integer-spec
   (ds/opt :total_value_locked) string?
   (ds/opt :total_value_locked_usd) string?
   (ds/opt :total_value_locked_usd_untracked) string?
   (ds/opt :derived_eth) string?
   (ds/opt :whitelist_pools) (s/coll-of string?)
   (ds/opt :token_symbol) string?
   })

(def token-v3-dto-spec
  (ds/spec
    {:name ::token-v3-dto
     :spec token-v3-dto-data}))
