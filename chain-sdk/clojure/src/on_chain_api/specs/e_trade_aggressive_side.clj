(ns on-chain-api.specs.e-trade-aggressive-side
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def e-trade-aggressive-side-data
  {
   })

(def e-trade-aggressive-side-spec
  (ds/spec
    {:name ::e-trade-aggressive-side
     :spec e-trade-aggressive-side-data}))
