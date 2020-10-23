
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
            [clojure.string :as string]
            [respo-md.comp.md :refer [comp-md]]
            [calcit-theme.comp.expr :refer [render-expr]])
  (:require-macros [clojure.core.strint :refer [<<]]))

(defn lisp-style [xs]
  (if (string? xs)
    (if (re-find #"[\s\"]" xs) (js/JSON.stringify xs) xs)
    (str "(" (->> xs (map lisp-style) (string/join " ")) ")")))

(defcomp
 comp-api-entry
 (info cirru-ui?)
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
   (span
    {:style {:color (hsl 0 0 70)}, :class-name "md-span"}
    (comp-md (or (:desc info) "TODO"))))
  (list->
   {:style {:margin-left 20}}
   (->> (:snippets info)
        (map-indexed
         (fn [idx snippet]
           [idx
            (div
             {}
             (if cirru-ui?
               (div
                {:style {:background-color :black, :padding "4px 0"}}
                (render-expr (if (vector? snippet) snippet (:code snippet))))
               (<>
                (if (vector? snippet) (lisp-style snippet) (lisp-style (:code snippet)))
                {:font-family ui/font-code})))]))))))

(defcomp
 comp-cirru-ui-switcher
 (state cursor)
 (div
  {:style {:cursor :pointer,
           :font-family ui/font-fancy,
           :color (hsl 200 80 70),
           :font-weight 300},
   :on-click (fn [e d!] (d! cursor (update state :cirru-ui? not)))}
  (<> "Text/Cirru")))

(defcomp
 comp-tags-list
 (state cursor)
 (list->
  {}
  (->> [:list :map :number :string :set :syntax :macro :native]
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
                      :border-radius "4px",
                      :cursor :pointer,
                      :line-height "22px"}
                     (if (contains? (:selected-tags state) tag)
                       {:background-color (hsl 200 80 60)})),
             :on-click (fn [e d!]
               (d!
                cursor
                (assoc
                 state
                 :selected-tags
                 (if (contains? (:selected-tags state) tag)
                   (disj (:selected-tags state) tag)
                   (conj (:selected-tags state) tag)))))}
            (<> (name tag)))])))))

(defcomp
 comp-wip-switcher
 (state cursor)
 (div
  {:style {:font-family ui/font-fancy,
           :color (hsl 200 80 70),
           :font-weight 300,
           :cursor :pointer},
   :on-click (fn [e d!] (d! cursor (update state :wip? not)))}
  (<> "All/WIP")))

(defcomp
 comp-container
 (reel)
 (let [store (:store reel)
       states (:states store)
       cursor (or (:cursor states) [])
       state (or (:data states)
                 {:query "", :selected-tags #{}, :cirru-ui? false, :wip? false})
       data (parse (inline "apis.cirru"))
       visible-apis (->> (:apis data)
                         (filter
                          (fn [info]
                            (and (if (:wip? state) (:wip? info) true)
                                 (or (empty? (:selected-tags state))
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
               :padding "20px 20px"})}
     (comp-tags-list state cursor)
     (=< nil 8)
     (div
      {:style ui/row-middle}
      (input
       {:style (merge ui/input {:font-family ui/font-code}),
        :value (:query state),
        :placeholder "search",
        :on-input (fn [e d!] (d! cursor (assoc state :query (:value e))))})
      (=< 8 nil)
      (comp-cirru-ui-switcher state cursor)
      (=< 12 nil)
      (comp-wip-switcher state cursor))
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
           (map (fn [info] [(:name info) (comp-api-entry info (:cirru-ui? state))])))))
    (when dev? (comp-reel (>> states :reel) reel {})))))
