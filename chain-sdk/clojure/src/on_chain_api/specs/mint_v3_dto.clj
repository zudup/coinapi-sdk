(ns on-chain-api.specs.mint-v3-dto
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def mint-v3-dto-data
  {
   (ds/opt :entry_time) inst?
   (ds/opt :recv_time) inst?
   (ds/opt :block_number) int?
   (ds/opt :id) string?
   (ds/opt :transaction) string?
   (ds/opt :timestamp) string?
   (ds/opt :pool) string?
   (ds/opt :token_0) string?
   (ds/opt :token_1) string?
   (ds/opt :owner) string?
   (ds/opt :sender) string?
   (ds/opt :origin) string?
   (ds/opt :amount) string?
   (ds/opt :amount_0) string?
   (ds/opt :amount_1) string?
   (ds/opt :amount_usd) string?
   (ds/opt :tick_lower) string?
   (ds/opt :tick_upper) string?
   (ds/opt :log_index) string?
   (ds/opt :vid) int?
   })

(def mint-v3-dto-spec
  (ds/spec
    {:name ::mint-v3-dto
     :spec mint-v3-dto-data}))
