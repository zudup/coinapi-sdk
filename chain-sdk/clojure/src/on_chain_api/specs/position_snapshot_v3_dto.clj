(ns on-chain-api.specs.position-snapshot-v3-dto
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def position-snapshot-v3-dto-data
  {
   (ds/opt :entry_time) inst?
   (ds/opt :recv_time) inst?
   (ds/opt :block_number) int?
   (ds/opt :id) string?
   (ds/opt :owner) string?
   (ds/opt :pool) string?
   (ds/opt :position) string?
   (ds/opt :timestamp) string?
   (ds/opt :liquidity) string?
   (ds/opt :deposited_token_0) string?
   (ds/opt :deposited_token_1) string?
   (ds/opt :withdrawn_token_0) string?
   (ds/opt :withdrawn_token_1) string?
   (ds/opt :collected_fees_token_0) string?
   (ds/opt :collected_fees_token_1) string?
   (ds/opt :transaction) string?
   (ds/opt :fee_growth_inside_0_last_x128) string?
   (ds/opt :fee_growth_inside_1_last_x128) string?
   (ds/opt :vid) int?
   })

(def position-snapshot-v3-dto-spec
  (ds/spec
    {:name ::position-snapshot-v3-dto
     :spec position-snapshot-v3-dto-data}))
