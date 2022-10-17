(ns on-chain-api.specs.swap-v3-dto
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [on-chain-api.specs.big-integer :refer :all]
            [on-chain-api.specs.big-integer :refer :all]
            [on-chain-api.specs.big-integer :refer :all]
            [on-chain-api.specs.e-trade-aggressive-side :refer :all]
            )
  (:import (java.io File)))


(def swap-v3-dto-data
  {
   (ds/opt :entry_time) inst?
   (ds/opt :recv_time) inst?
   (ds/opt :block_number) int?
   (ds/opt :vid) int?
   (ds/opt :id) string?
   (ds/opt :transaction) string?
   (ds/opt :timestamp) inst?
   (ds/opt :pool) string?
   (ds/opt :token_0) string?
   (ds/opt :token_1) string?
   (ds/opt :sender) string?
   (ds/opt :recipient) string?
   (ds/opt :origin) string?
   (ds/opt :amount_0) string?
   (ds/opt :amount_1) string?
   (ds/opt :amount_usd) string?
   (ds/opt :sqrt_price_x96) big-integer-spec
   (ds/opt :tick) big-integer-spec
   (ds/opt :log_index) big-integer-spec
   (ds/opt :evaluated_price) float?
   (ds/opt :evaluated_amount) float?
   (ds/opt :evaluated_aggressor) e-trade-aggressive-side-spec
   (ds/opt :pool_id) string?
   (ds/opt :transaction_id) string?
   })

(def swap-v3-dto-spec
  (ds/spec
    {:name ::swap-v3-dto
     :spec swap-v3-dto-data}))
