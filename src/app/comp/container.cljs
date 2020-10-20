
(ns app.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.core
             :refer
             [defcomp defeffect <> >> div button textarea span input list->]]
            [respo.comp.space :refer [=<]]
            [reel.comp.reel :refer [comp-reel]]
            [respo-md.comp.md :refer [comp-md]]
            [app.config :refer [dev?]]
            [shadow.resource :refer [inline]]
            [cirru-edn.core :refer [parse]]
            [clojure.string :as string])
  (:require-macros [clojure.core.strint :refer [<<]]))

(defn list-style [xs]
  (if (string? xs) xs (str "(" (->> xs (map list-style) (string/join " ")) ")")))

(defcomp
 comp-container
 (reel)
 (let [store (:store reel)
       states (:states store)
       cursor (or (:cursor states) [])
       state (or (:data states) {:query "", :selected-tags #{}})
       data (parse (inline "apis.cirru"))
       current-tags #{:syntax :native :macro :list :map :number}
       visible-apis (->> (:apis data)
                         (filter
                          (fn [info]
                            (and (or (empty? (:selected-tags state))
                                     (->> (:selected-tags state)
                                          (every? (fn [x] (contains? (:tags info) x)))))
                                 (string/includes? (:name info) (:query state))))))]
   (div
    {:style (merge ui/global ui/fullscreen ui/row {:background-color (hsl 0 0 96)})}
    (div
     {:style (merge
              ui/expand
              ui/column
              {:max-width 800,
               :margin "0 auto",
               :background-color :white,
               :padding "40px 20px"})}
     (div
      {:style ui/row-middle}
      (input
       {:style (merge ui/input {:font-family ui/font-code}),
        :value (:query state),
        :placeholder "search",
        :on-input (fn [e d!] (d! cursor (assoc state :query (:value e))))})
      (=< 8 nil)
      (list->
       {}
       (->> current-tags
            (map
             (fn [tag]
               [tag
                (div
                 {:style (merge
                          {:display :inline-block,
                           :background-color (hsl 200 80 84),
                           :margin "4px 4px",
                           :padding "0 4px",
                           :color (hsl 0 0 100),
                           :border-radius "6px",
                           :cursor :pointer}
                          (if (contains? (:selected-tags state) tag)
                            {:background-color (hsl 200 80 60)})),
                  :on-click (fn [e d!]
                    (if (contains? (:selected-tags state) tag)
                      (d!
                       cursor
                       (assoc
                        state
                        :selected-tags
                        (disj (or (:selected-tags state) #{}) tag)))
                      (d!
                       cursor
                       (assoc
                        state
                        :selected-tags
                        (conj (or (:selected-tags state) #{}) tag)))))}
                 (<> (name tag)))])))))
     (=< nil 8)
     (div
      {}
      (<>
       (<< "Found ~(count visible-apis) entries.")
       {:font-family ui/font-fancy, :color (hsl 0 0 70)}))
     (=< nil 8)
     (list->
      {:style ui/expand}
      (->> visible-apis
           (sort-by (fn [info] (:name info)))
           (map
            (fn [info]
              [(:name info)
               (div
                {:style (merge
                         {:border-bottom (str "1px solid " (hsl 0 0 93)),
                          :margin "4px",
                          :padding "4px 4px"}
                         (if (:wip? info)
                           {:color (hsl 0 0 80), :border-left (str "8px solid " (hsl 0 0 90))}))}
                (div
                 {}
                 (<> (:name info) {:font-family ui/font-code})
                 (=< 8 nil)
                 (<> (or (:desc info) "TODO") {:color (hsl 0 0 70)}))
                (list->
                 {:style {:margin-left 20}}
                 (->> (:snippets info)
                      (map-indexed
                       (fn [idx snippet]
                         [idx
                          (<>
                           (if (vector? snippet)
                             (list-style snippet)
                             (list-style (:code snippet)))
                           {:font-family ui/font-code})])))))])))))
    (when dev? (comp-reel (>> states :reel) reel {})))))
