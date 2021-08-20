
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!)
    :modules $ [] |lilac/compact.cirru |memof/compact.cirru |respo.calcit/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |calcit-theme.calcit/compact.cirru |reel.calcit/compact.cirru
    :version nil
  :files $ {}
    |app.comp.container $ {}
      :ns $ quote
        ns app.comp.container
          :require
            [] respo.util.format :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp defeffect <> >> div button textarea span input pre list->
            [] respo.comp.space :refer $ [] =<
            [] reel.comp.reel :refer $ [] comp-reel
            [] respo-md.comp.md :refer $ [] comp-md
            [] app.config :refer $ [] dev?
            [] respo-md.comp.md :refer $ [] comp-md
            [] calcit-theme.comp.expr :refer $ [] render-expr
            [] memof.alias :refer $ [] memof-call
          :require-macros $ [] clojure.core.strint :refer ([] <<)
      :defs $ {}
        |stringify-cirru $ quote
          defn stringify-cirru (x)
            cond
                string? x
                escape x
              (list? x)
                str "\"["
                  join-str (map x stringify-cirru) "\","
                  , "\"]"
              true $ raise
                str "\"Unknown type: " (type-of x) x
        |comp-cirru-ui-switcher $ quote
          defcomp comp-cirru-ui-switcher (state cursor)
            div
              {}
                :style $ merge ui/row-middle
                  {} (:cursor :pointer) (:font-family ui/font-fancy)
                    :color $ hsl 200 80 80
                    :font-weight 300
                :on-click $ fn (e d!)
                  d! cursor $ update state :cirru-ui? not
              , & $ ->
                []
                  {} (:value :lisp) (:display "\"Lisp")
                  {} (:value :cirru-text) (:display "\"CirruText")
                  {} (:value :cirru) (:display "\"Cirru")
                map $ fn (item)
                  div
                    {}
                      :style $ merge
                        {} $ :margin "\"0 4px"
                        if
                          = (:syntax state) (:value item)
                          {} $ :color (hsl 200 90 50)
                      :on-click $ fn (e d!)
                        d! cursor $ assoc state :syntax (:value item)
                    <> $ :display item
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
                cursor $ either (:cursor states) ([])
                state $ either (:data states)
                  {}
                    :query $ get-query!
                    :method-target nil
                    :selected-tags $ #{}
                    :syntax :lisp
                    :wip? false
                target $ :method-target state
                visible-apis $ cond
                    = target :internals
                    -> (:internals apis-data)
                      filter $ fn (info)
                        and
                          if (:wip? state) (:wip? info) true
                          or
                            empty? $ :selected-tags state
                            -> (:selected-tags state)
                              every? $ fn (x)
                                includes? (:tags info) x
                          includes? (:name info) (:query state)
                  (some? target)
                    ->
                      get (:methods apis-data) target
                      filter $ fn (info)
                        includes? (:name info) (:query state)
                  true $ -> (:apis apis-data)
                    filter $ fn (info)
                      and
                        if (:wip? state) (:wip? info) true
                        or
                          empty? $ :selected-tags state
                          -> (:selected-tags state)
                            every? $ fn (x)
                              includes? (:tags info) x
                        includes? (:name info) (:query state)
              div
                {} $ :style
                  merge ui/global ui/fullscreen ui/column $ {}
                    :background-color $ hsl 0 0 96
                div
                  {} $ :style
                    merge ui/column $ {} (:background-color :white) (:padding 8)
                      :border-bottom $ str "\"1px solid " (hsl 0 0 90)
                      :box-shadow $ str "\"0 0 6px " (hsl 0 0 0 0.2)
                      :z-index 99
                  comp-method-targets state cursor
                  if
                    or
                      nil? $ :method-target state
                      = :internals $ :method-target state
                    memof-call comp-tags-list state cursor
                  div
                    {} $ :style ui/row-parted
                    div
                      {} $ :style ui/row-middle
                      input $ {}
                        :style $ merge ui/input
                          {} $ :font-family ui/font-code
                        :value $ :query state
                        :placeholder "\"search"
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :query (:value e)
                      =< 8 nil
                      <>
                        str "\"has " (count visible-apis) "\" entries."
                        {} (:font-family ui/font-fancy)
                          :color $ hsl 0 0 70
                    div
                      {} $ :style ui/row-middle
                      memof-call comp-cirru-ui-switcher state cursor
                      =< 12 nil
                      memof-call comp-wip-switcher state cursor
                div
                  {} $ :style
                    merge ui/expand $ {} (:background-color :white)
                  =< nil 8
                  list->
                    {} $ :style ui/expand
                    -> visible-apis
                      sort $ fn (a b)
                        &str:compare (:name a) (:name b)
                      map $ fn (info)
                        [] (:name info)
                          memof-call comp-api-entry info $ :syntax state
                  =< nil 400
                when dev? $ comp-reel (>> states :reel) reel ({})
        |comp-code $ quote
          defcomp comp-code (code syntax)
            assert "\"expected code in list" $ list? code
            div
              {} $ :style
                {} $ :margin-bottom 8
              case syntax
                :cirru $ div
                  {} $ :style
                    {} (:background-color :black) (:padding "\"4px 0")
                  render-expr code
                :cirru-text $ pre
                  {}
                    :style $ {} (:font-family ui/font-code)
                      :border $ str "\"1px solid " (hsl 0 0 94)
                      :border-radius "\"4px"
                      :display :inline-block
                      :padding "\"2px 8px"
                      :line-height "\"22px"
                      :margin "\"0px 0px"
                    :innerHTML $ trim
                      format-cirru ([] code) true
                :lisp $ <> (lisp-style code)
                  {} $ :font-family ui/font-code
                <> $ str "\"Unknown code: " syntax
        |apis-data $ quote
          def apis-data $ {}
            :apis $ parse-cirru-edn (slurp-cirru-edn "\"docs/apis.cirru")
            :internals $ parse-cirru-edn (slurp-cirru-edn "\"docs/internals.cirru")
            :methods $ {}
              :list $ parse-cirru-edn (slurp-cirru-edn "\"docs/class-list.cirru")
              :map $ parse-cirru-edn (slurp-cirru-edn "\"docs/class-map.cirru")
              :set $ parse-cirru-edn (slurp-cirru-edn "\"docs/class-set.cirru")
              :record $ parse-cirru-edn (slurp-cirru-edn "\"docs/class-record.cirru")
              :number $ parse-cirru-edn (slurp-cirru-edn "\"docs/class-number.cirru")
              :string $ parse-cirru-edn (slurp-cirru-edn "\"docs/class-string.cirru")
              :nil $ parse-cirru-edn (slurp-cirru-edn "\"docs/class-nil.cirru")
              :fn $ parse-cirru-edn (slurp-cirru-edn "\"docs/class-fn.cirru")
        |slurp-cirru-edn $ quote
          defmacro slurp-cirru-edn (file) (read-file file)
        |comp-wip-switcher $ quote
          defcomp comp-wip-switcher (state cursor)
            div
              {}
                :style $ {} (:font-family ui/font-fancy)
                  :color $ hsl 200 80 70
                  :font-weight 300
                  :cursor :pointer
                :on-click $ fn (e d!)
                  d! cursor $ update state :wip? not
              <> "\"All/WIP"
        |comp-method-targets $ quote
          defcomp comp-method-targets (state cursor)
            div
              {} $ :style
                merge ui/row $ {} (:user-select :none)
              <> "\"Methods:" $ {} (:font-family ui/font-fancy)
              div ({}) & $ -> ([] nil :internals :list :map :number :string :set :record :nil :fn)
                map $ fn (target)
                  div
                    {}
                      :style $ merge
                        {} (:display :inline-block)
                          :background-color $ hsl 150 50 85
                          :margin "\"4px 4px"
                          :padding "\"0 8px"
                          :color $ hsl 0 0 100
                          :border-radius "\"2px"
                          :cursor :pointer
                          :line-height "\"22px"
                        if
                          = (:method-target state) target
                          {} $ :background-color (hsl 160 40 60)
                      :on-click $ fn (e d!)
                        d! cursor $ assoc state :method-target target
                    if (some? target)
                      <> $ turn-string target
                      <> "\"None" $ {} (:font-weight 300) (:font-family ui/font-fancy)
        |comp-tags-list $ quote
          defcomp comp-tags-list (state cursor)
            div
              {} $ :style ui/row
              <> "\"Data:" $ {} (:font-family ui/font-fancy) (:user-select :none)
              div ({}) & $ -> ([] :list :map :number :string :set :syntax :macro :record :native)
                map $ fn (tag)
                  div
                    {}
                      :style $ merge
                        {} (:display :inline-block) (:margin "\"4px 4px") (:padding "\"0 4px")
                          :color $ hsl 280 80 84
                          :border-radius "\"4px"
                          :cursor :pointer
                          :line-height "\"20px"
                        if
                          includes? (:selected-tags state) tag
                          {} $ :color (hsl 280 80 50)
                      :on-click $ fn (e d!)
                        d! cursor $ assoc state :selected-tags
                          if
                            includes? (:selected-tags state) tag
                            exclude (:selected-tags state) tag
                            include (:selected-tags state) tag
                    <> $ turn-string tag
        |get-query! $ quote
          defn get-query! () $ let
              obj $ new js/URLSearchParams js/location.search
            if (.!has obj "\"q") (.!get obj "\"q") "\""
        |comp-api-entry $ quote
          defcomp comp-api-entry (info syntax)
            div
              {} $ :style
                merge ui/row
                  {}
                    :border-bottom $ str "\"1px solid " (hsl 0 0 93)
                    :margin "\"4px"
                    :padding "\"0px 4px"
                  if (:wip? info)
                    {}
                      :color $ hsl 0 0 80
                      :border-left $ str "\"8px solid " (hsl 0 0 90)
              div
                {} $ :style ui/flex
                <> (:name info)
                  {} $ :font-family ui/font-code
                =< 8 nil
                div
                  {}
                    :style $ {}
                      :color $ hsl 0 0 70
                      :padding-left 16
                      :line-height "\"20px"
                    :class-name "\"md-span"
                  comp-md $ either (:desc info) "\"TODO"
              div
                {} $ :style
                  merge ui/expand $ {} (:margin-left 20) (:flex 2)
                , & $ -> (:snippets info)
                  map $ fn (entry)
                    let
                        code-snippet $ if (map? entry) entry
                          {} $ :code entry
                        code $ :code code-snippet
                      div
                        {} $ :style ui/row
                        comp-code (nth code 1) syntax
                        if
                          and (map? code-snippet)
                            some? $ :result code-snippet
                          div
                            {} $ :style ui/row
                            div
                              {} $ :style
                                merge $ {} (:width 40) (:text-align :center)
                              <> "\"⮕" $ {}
                                :color $ hsl 200 0 50
                                :font-size 16
                            div ({})
                              comp-code
                                nth (:result code-snippet) 1
                                , syntax
                              if
                                some? $ :desc code-snippet
                                <> (:desc code-snippet)
                                  {} $ :color (hsl 0 0 60)
        |lisp-style $ quote
          defn lisp-style (xs)
            cond
                string? xs
                if
                  or (includes? xs "\" ") (includes? xs &newline) (includes? xs "|\"")
                  js/JSON.stringify xs
                  , xs
              (list? xs)
                str "\"("
                  -> xs (map lisp-style) (join-str "\" ")
                  , "\")"
              true $ str "\"TODO: " (str xs)
    |app.schema $ {}
      :ns $ quote (ns app.schema)
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
              :cursor $ []
    |app.updater $ {}
      :ns $ quote
        ns app.updater $ :require
          [] respo.cursor :refer $ [] update-states
      :defs $ {}
        |updater $ quote
          defn updater (store op data op-id op-time)
            case op
              :states $ update-states store data
              :hydrate-storage data
              op store
    |app.main $ {}
      :ns $ quote
        ns app.main $ :require
          [] respo.core :refer $ [] render! clear-cache! realize-ssr!
          [] app.comp.container :refer $ [] comp-container
          [] app.updater :refer $ [] updater
          [] app.schema :as schema
          [] reel.util :refer $ [] listen-devtools!
          [] reel.core :refer $ [] reel-updater refresh-reel
          [] reel.schema :as reel-schema
          [] app.config :as config
          "\"bottom-tip" :default tip!
          "\"./calcit.build-errors" :default build-errors
      :defs $ {}
        |render-app! $ quote
          defn render-app! (renderer)
            renderer mount-target (comp-container @*reel) (\ dispatch! % %2)
        |ssr? $ quote
          def ssr? $ some? (js/document.querySelector |meta.respo-ssr)
        |persist-storage! $ quote
          defn persist-storage! () $ ; .setItem js/localStorage (:storage-key config/site)
            js/JSON.stringify $ to-calcit-data (:store @*reel)
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |main! $ quote
          defn main! () (load-console-formatter!)
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            if ssr? $ render-app! realize-ssr!
            render-app! render!
            add-watch *reel :changes $ fn (reel prev-reel) (render-app! render!)
            listen-devtools! |a dispatch!
            ; .addEventListener js/window |beforeunload persist-storage!
            ; repeat! 60 persist-storage!
            ; let
                raw $ .getItem js/localStorage (:storage-key config/site)
              when (some? raw)
                dispatch! :hydrate-storage $ extract-cirru-data (js/JSON.parse raw)
            println "|App started."
        |snippets $ quote
          defn snippets () $ println config/cdn?
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              println "\"Dispatch:" op
            reset! *reel $ reel-updater updater @*reel op op-data
        |reload! $ quote
          defn reload! () $ if (some? build-errors) (tip! "\"error" build-errors)
            do (tip! "\"inactive" nil) (remove-watch *reel :changes) (clear-cache!)
              add-watch *reel :changes $ fn (reel prev-reel) (render-app! render!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              render-app! render!
              println "|Code updated."
        |repeat! $ quote
          defn repeat! (duration cb)
            js/setTimeout
              fn () (cb) (repeat! duration cb)
              * 1000 duration
    |app.config $ {}
      :ns $ quote (ns app.config)
      :defs $ {}
        |dev? $ quote (def dev? true)
        |site $ quote
          def site $ {} (:dev-ui "\"http://localhost:8100/main-fonts.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main-fonts.css") (:cdn-url "\"http://cdn.tiye.me/calcit-workflow/") (:title "\"APIs for calcit-runner") (:icon "\"http://cdn.tiye.me/logo/cirru.png") (:storage-key "\"calcit-runner-apis")
