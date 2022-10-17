(ns on-chain-api.specs.token-dto
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def token-dto-data
  {
   (ds/opt :entry_time) inst?
   (ds/opt :recv_time) inst?
   (ds/opt :block_number) int?
   (ds/opt :id) string?
   (ds/opt :factory) string?
   (ds/opt :symbol) string?
   (ds/opt :name) string?
   (ds/opt :decimals) string?
   (ds/opt :total_supply) string?
   (ds/opt :volume) string?
   (ds/opt :volume_usd) string?
   (ds/opt :untracked_volume_usd) string?
   (ds/opt :tx_count) string?
   (ds/opt :liquidity) string?
   (ds/opt :derived_eth) string?
   (ds/opt :whitelist_pairs) (s/coll-of string?)
   (ds/opt :vid) int?
   (ds/opt :token_symbol) string?
   })

(def token-dto-spec
  (ds/spec
    {:name ::token-dto
     :spec token-dto-data}))
