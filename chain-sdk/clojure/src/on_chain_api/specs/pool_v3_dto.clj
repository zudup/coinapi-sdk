(ns on-chain-api.specs.pool-v3-dto
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [on-chain-api.specs.big-integer :refer :all]
            [on-chain-api.specs.big-integer :refer :all]
            [on-chain-api.specs.big-integer :refer :all]
            [on-chain-api.specs.big-integer :refer :all]
            [on-chain-api.specs.big-integer :refer :all]
            [on-chain-api.specs.big-integer :refer :all]
            [on-chain-api.specs.big-integer :refer :all]
            [on-chain-api.specs.big-integer :refer :all]
            )
  (:import (java.io File)))


(def pool-v3-dto-data
  {
   (ds/opt :entry_time) inst?
   (ds/opt :recv_time) inst?
   (ds/opt :block_number) int?
   (ds/opt :vid) int?
   (ds/opt :id) string?
   (ds/opt :created_at_timestamp) inst?
   (ds/opt :token_0) string?
   (ds/opt :token_1) string?
   (ds/opt :fee_tier) big-integer-spec
   (ds/opt :liquidity) big-integer-spec
   (ds/opt :sqrt_price) big-integer-spec
   (ds/opt :fee_growth_global_0x128) big-integer-spec
   (ds/opt :fee_growth_global_1x128) big-integer-spec
   (ds/opt :token_0_price) string?
   (ds/opt :token_1_price) string?
   (ds/opt :tick) big-integer-spec
   (ds/opt :observation_index) big-integer-spec
   (ds/opt :volume_token_0) string?
   (ds/opt :volume_token_1) string?
   (ds/opt :volume_usd) string?
   (ds/opt :untracked_volume_usd) string?
   (ds/opt :fees_usd) string?
   (ds/opt :tx_count) big-integer-spec
   (ds/opt :collected_fees_token_0) string?
   (ds/opt :collected_fees_token_1) string?
   (ds/opt :collected_fees_usd) string?
   (ds/opt :total_value_locked_token_0) string?
   (ds/opt :total_value_locked_token_1) string?
   (ds/opt :total_value_locked_eth) string?
   (ds/opt :total_value_locked_usd) string?
   (ds/opt :total_value_locked_usd_untracked) string?
   (ds/opt :liquidity_provider_count) string?
   (ds/opt :evaluated_ask) float?
   })

(def pool-v3-dto-spec
  (ds/spec
    {:name ::pool-v3-dto
     :spec pool-v3-dto-data}))
