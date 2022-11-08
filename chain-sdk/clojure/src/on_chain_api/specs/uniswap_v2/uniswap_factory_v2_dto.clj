(ns on-chain-api.specs.uniswap-v2/uniswap-factory-v2-dto
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def uniswap-v2/uniswap-factory-v2-dto-data
  {
   (ds/opt :entry_time) inst?
   (ds/opt :recv_time) inst?
   (ds/opt :block_number) int?
   (ds/opt :id) string?
   (ds/opt :pair_count) int?
   (ds/opt :total_volume_usd) string?
   (ds/opt :total_volume_eth) string?
   (ds/opt :untracked_volume_usd) string?
   (ds/opt :total_liquidity_usd) string?
   (ds/opt :total_liquidity_eth) string?
   (ds/opt :tx_count) string?
   (ds/opt :vid) int?
   })

(def uniswap-v2/uniswap-factory-v2-dto-spec
  (ds/spec
    {:name ::uniswap-v2/uniswap-factory-v2-dto
     :spec uniswap-v2/uniswap-factory-v2-dto-data}))
