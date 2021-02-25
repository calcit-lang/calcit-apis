
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!)
    :modules $ [] |lilac/compact.cirru |memof/compact.cirru |respo.calcit/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |calcit-theme.calcit/compact.cirru |writer.calcit/compact.cirru |reel.calcit/compact.cirru
    :version nil
  :files $ {}
    |app.comp.container $ {}
      :ns $ quote
        ns app.comp.container
          :require
            [] respo.util.format :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp defeffect <> >> div button textarea span input list-> pre
            [] respo.comp.space :refer $ [] =<
            [] reel.comp.reel :refer $ [] comp-reel
            [] respo-md.comp.md :refer $ [] comp-md
            [] app.config :refer $ [] dev?
            [] respo-md.comp.md :refer $ [] comp-md
            [] calcit-theme.comp.expr :refer $ [] render-expr
            [] cirru-writer.core :refer $ [] write-code
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
                  join-str "\"," $ map stringify-cirru x
                  , "\"]"
              true $ raise
                str "\"Unknown type: " (type-of x) x
        |comp-cirru-ui-switcher $ quote
          defcomp comp-cirru-ui-switcher (state cursor)
            list->
              {}
                :style $ merge ui/row-middle
                  {} (:cursor :pointer) (:font-family ui/font-fancy)
                    :color $ hsl 200 80 80
                    :font-weight 300
                :on-click $ fn (e d!)
                  d! cursor $ update state :cirru-ui? not
              ->>
                []
                  {} (:value :lisp) (:display "\"Lisp")
                  {} (:value :cirru-text) (:display "\"CirruText")
                  {} (:value :cirru) (:display "\"Cirru")
                map-indexed $ fn (idx item)
                  [] idx $ div
                    {}
                      :style $ merge
                        {} $ :margin "\"0 4px"
                        if
                          = (:syntax state) (:value item)
                          {} $ :color (hsl 200 90 50)
                      :on-click $ fn (e d!)
                        d! cursor $ assoc state :syntax (:value item)
                    <> $ :display item
        |apis-data $ quote
          def apis-data $ extract-cirru-edn
            js/JSON.parse $ slurp-cirru-edn "\"docs/apis.cirru"
        |comp-api-entry $ quote
          defcomp comp-api-entry (info syntax)
            div
              {} $ :style
                merge
                  {}
                    :border-bottom $ str "\"1px solid " (hsl 0 0 93)
                    :margin "\"4px"
                    :padding "\"4px 4px"
                  if (:wip? info)
                    {}
                      :color $ hsl 0 0 80
                      :border-left $ str "\"8px solid " (hsl 0 0 90)
              div ({})
                <> (:name info)
                  {} $ :font-family ui/font-code
                =< 8 nil
                span
                  {}
                    :style $ {}
                      :color $ hsl 0 0 70
                    :class-name "\"md-span"
                  comp-md $ either (:desc info) "\"TODO"
              list->
                {} $ :style
                  {} $ :margin-left 20
                ->> (:snippets info)
                  map-indexed $ fn (idx snippet)
                    [] idx $ let
                        code-snippet $ if (list? snippet)
                          {} $ :code snippet
                          , snippet
                        code $ :code code-snippet
                      div ({}) (comp-code code syntax)
                        if
                          and (map? code-snippet)
                            some? $ :result code-snippet
                          div
                            {} $ :style ui/row
                            div
                              {} $ :style
                                merge $ {} (:width 80) (:text-align :center)
                              <> "\"=>" $ {}
                                :color $ hsl 200 80 76
                                :font-size 16
                            div ({})
                              comp-code (:result code-snippet) syntax
                              if
                                some? $ :desc code-snippet
                                <> (:desc code-snippet)
                                  {} $ :color (hsl 0 0 60)
        |comp-code $ quote
          defcomp comp-code (code syntax)
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
                      write-code $ [] code
                :lisp $ <> (lisp-style code)
                  {} $ :font-family ui/font-code
                <> $ str "\"Unknown code: " syntax
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
                cursor $ either (:cursor states) ([])
                state $ either (:data states)
                  {} (:query "\"")
                    :selected-tags $ #{}
                    :syntax :lisp
                    :wip? false
                visible-apis $ ->> (:apis apis-data)
                  filter $ fn (info)
                    and
                      if (:wip? state) (:wip? info) true
                      or
                        empty? $ :selected-tags state
                        ->> (:selected-tags state)
                          every? $ fn (x)
                            includes? (:tags info) x
                      includes? (:name info) (:query state)
              div
                {} $ :style
                  merge ui/global ui/fullscreen ui/row $ {}
                    :background-color $ hsl 0 0 96
                div
                  {} $ :style
                    merge ui/expand ui/column $ {} (:max-width 800) (:margin "\"0 auto") (:background-color :white) (:padding "\"20px 20px")
                  memof-call comp-tags-list state cursor
                  =< nil 8
                  div
                    {} $ :style ui/row-parted
                    input $ {}
                      :style $ merge ui/input
                        {} $ :font-family ui/font-code
                      :value $ :query state
                      :placeholder "\"search"
                      :on-input $ fn (e d!)
                        d! cursor $ assoc state :query (:value e)
                    div
                      {} $ :style ui/row-middle
                      memof-call comp-cirru-ui-switcher state cursor
                      =< 12 nil
                      memof-call comp-wip-switcher state cursor
                  =< nil 8
                  div ({})
                    <>
                      str "\"Found " (count visible-apis) "\" entries."
                      {} (:font-family ui/font-fancy)
                        :color $ hsl 0 0 70
                  =< nil 8
                  list->
                    {} $ :style ui/expand
                    ->> visible-apis
                      sort $ fn (a b)
                        compare-string (:name a) (:name b)
                      map $ fn (info)
                        [] (:name info)
                          memof-call comp-api-entry info $ :syntax state
                when dev? $ comp-reel (>> states :reel) reel ({})
        |comp-tags-list $ quote
          defcomp comp-tags-list (state cursor)
            list-> ({})
              ->> ([] :list :map :number :string :set :syntax :macro :native)
                map $ fn (tag)
                  [] tag $ div
                    {}
                      :style $ merge
                        {} (:display :inline-block)
                          :background-color $ hsl 200 80 84
                          :margin "\"4px 4px"
                          :padding "\"0 4px"
                          :color $ hsl 0 0 100
                          :border-radius "\"4px"
                          :cursor :pointer
                          :line-height "\"22px"
                        if
                          includes? (:selected-tags state) tag
                          {} $ :background-color (hsl 200 80 60)
                      :on-click $ fn (e d!)
                        d! cursor $ assoc state :selected-tags
                          if
                            includes? (:selected-tags state) tag
                            exclude (:selected-tags state) tag
                            include (:selected-tags state) tag
                    <> $ turn-string tag
        |lisp-style $ quote
          defn lisp-style (xs)
            cond
                string? xs
                if
                  or (includes? xs "\" ") (includes? xs "\"\\n") (includes? xs "|\"")
                  js/JSON.stringify xs
                  , xs
              (list? xs)
                str "\"("
                  ->> xs (map lisp-style) (join-str "\" ")
                  , "\")"
              true $ str "\"TODO: " (str xs)
        |slurp-cirru-edn $ quote
          defmacro slurp-cirru-edn (file)
            stringify-cirru $ first
              parse-cirru $ read-file file
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
      :proc $ quote ()
    |app.config $ {}
      :ns $ quote (ns app.config)
      :defs $ {}
        |dev? $ quote (def dev? true)
        |site $ quote
          def site $ {} (:dev-ui "\"http://localhost:8100/main-fonts.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main-fonts.css") (:cdn-url "\"http://cdn.tiye.me/calcit-workflow/") (:title "\"APIs for calcit-runner") (:icon "\"http://cdn.tiye.me/logo/cirru.png") (:storage-key "\"calcit-runner-apis")
      :proc $ quote ()
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
      :defs $ {}
        |ssr? $ quote
          def ssr? $ some? (js/document.querySelector |meta.respo-ssr)
        |repeat! $ quote
          defn repeat! (duration cb)
            js/setTimeout
              fn () (cb) (repeat! duration cb)
              * 1000 duration
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              println "\"Dispatch:" op
            reset! *reel $ reel-updater updater @*reel op op-data
        |main! $ quote
          defn main! ()
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
        |persist-storage! $ quote
          defn persist-storage! () $ ; .setItem js/localStorage (:storage-key config/site)
            js/JSON.stringify $ to-calcit-data (:store @*reel)
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |snippets $ quote
          defn snippets () $ println config/cdn?
        |render-app! $ quote
          defn render-app! (renderer)
            renderer mount-target (comp-container @*reel) (\ dispatch! % %2)
        |reload! $ quote
          defn reload! () (clear-cache!)
            reset! *reel $ refresh-reel @*reel schema/store updater
            println "|Code updated."
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
      :proc $ quote ()
    |app.schema $ {}
      :ns $ quote (ns app.schema)
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
              :cursor $ []
      :proc $ quote ()
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
      :proc $ quote ()
