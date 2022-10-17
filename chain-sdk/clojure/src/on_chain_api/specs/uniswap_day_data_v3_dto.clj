(ns on-chain-api.specs.uniswap-day-data-v3-dto
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [on-chain-api.specs.big-integer :refer :all]
            )
  (:import (java.io File)))


(def uniswap-day-data-v3-dto-data
  {
   (ds/opt :entry_time) inst?
   (ds/opt :recv_time) inst?
   (ds/opt :block_number) int?
   (ds/opt :vid) int?
   (ds/opt :id) string?
   (ds/opt :date) int?
   (ds/opt :volume_eth) string?
   (ds/opt :volume_usd) string?
   (ds/opt :volume_usd_untracked) string?
   (ds/opt :fees_usd) string?
   (ds/opt :tx_count) big-integer-spec
   (ds/opt :tvl_usd) string?
   })

(def uniswap-day-data-v3-dto-spec
  (ds/spec
    {:name ::uniswap-day-data-v3-dto
     :spec uniswap-day-data-v3-dto-data}))
