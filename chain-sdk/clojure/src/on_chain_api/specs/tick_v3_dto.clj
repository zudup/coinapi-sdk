(ns on-chain-api.specs.tick-v3-dto
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [on-chain-api.specs.big-integer :refer :all]
            [on-chain-api.specs.big-integer :refer :all]
            [on-chain-api.specs.big-integer :refer :all]
            [on-chain-api.specs.big-integer :refer :all]
            [on-chain-api.specs.big-integer :refer :all]
            [on-chain-api.specs.big-integer :refer :all]
            )
  (:import (java.io File)))


(def tick-v3-dto-data
  {
   (ds/opt :entry_time) inst?
   (ds/opt :recv_time) inst?
   (ds/opt :block_number) int?
   (ds/opt :vid) int?
   (ds/opt :id) string?
   (ds/opt :pool_address) string?
   (ds/opt :tick_idx) big-integer-spec
   (ds/opt :pool) string?
   (ds/opt :liquidity_gross) big-integer-spec
   (ds/opt :liquidity_net) big-integer-spec
   (ds/opt :price_0) string?
   (ds/opt :price_1) string?
   (ds/opt :volume_token_0) string?
   (ds/opt :volume_token_1) string?
   (ds/opt :volume_usd) string?
   (ds/opt :untracked_volume_usd) string?
   (ds/opt :fees_usd) string?
   (ds/opt :collected_fees_token_0) string?
   (ds/opt :collected_fees_token_1) string?
   (ds/opt :collected_fees_usd) string?
   (ds/opt :created_at_timestamp) inst?
   (ds/opt :liquidity_provider_count) big-integer-spec
   (ds/opt :fee_growth_outside_0x128) big-integer-spec
   (ds/opt :fee_growth_outside_1x128) big-integer-spec
   })

(def tick-v3-dto-spec
  (ds/spec
    {:name ::tick-v3-dto
     :spec tick-v3-dto-data}))
