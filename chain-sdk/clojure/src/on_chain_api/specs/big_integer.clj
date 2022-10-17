(ns on-chain-api.specs.big-integer
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def big-integer-data
  {
   (ds/opt :is_power_of_two) boolean?
   (ds/opt :is_zero) boolean?
   (ds/opt :is_one) boolean?
   (ds/opt :is_even) boolean?
   (ds/opt :sign) int?
   })

(def big-integer-spec
  (ds/spec
    {:name ::big-integer
     :spec big-integer-data}))
