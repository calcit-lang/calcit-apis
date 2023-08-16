
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version nil)
    :modules $ [] |lilac/compact.cirru |memof/compact.cirru |respo.calcit/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |calcit-theme.calcit/compact.cirru |reel.calcit/compact.cirru |respo-feather.calcit/
  :entries $ {}
  :files $ {}
    |app.comp.container $ {}
      :defs $ {}
        |add-tags $ quote
          defn add-tags (t data)
            map data $ fn (item)
              -> item
                update :tags $ fn (ts) (include ts t)
                assoc :source t
        |apis-data $ quote
          def apis-data $ concat
            parse-cirru-edn $ slurp-cirru-edn "\"docs/apis.cirru"
            add-tags :internal $ parse-cirru-edn (slurp-cirru-edn "\"docs/internals.cirru")
            add-tags :list $ parse-cirru-edn (slurp-cirru-edn "\"docs/class-list.cirru")
            add-tags :map $ parse-cirru-edn (slurp-cirru-edn "\"docs/class-map.cirru")
            add-tags :set $ parse-cirru-edn (slurp-cirru-edn "\"docs/class-set.cirru")
            add-tags :record $ parse-cirru-edn (slurp-cirru-edn "\"docs/class-record.cirru")
            add-tags :number $ parse-cirru-edn (slurp-cirru-edn "\"docs/class-number.cirru")
            add-tags :string $ parse-cirru-edn (slurp-cirru-edn "\"docs/class-string.cirru")
            add-tags :nil $ parse-cirru-edn (slurp-cirru-edn "\"docs/class-nil.cirru")
            add-tags :fn $ parse-cirru-edn (slurp-cirru-edn "\"docs/class-fn.cirru")
        |comp-api-entry $ quote
          defcomp comp-api-entry (info syntax)
            div
              {}
                :style $ if (:wip? info)
                  {}
                    :color $ hsl 0 0 80
                    :border-left $ str "\"8px solid " (hsl 0 0 90)
                :class-name $ str-spaced css/row css-api-entry
              div
                {} $ :class-name css/flex
                <> (:name info) css/font-code
                =< 8 nil
                div
                  {} $ :class-name (str-spaced "\"md-span" css-desc)
                  comp-md $ either (:desc info) "\"TODO"
              div
                {} (:class-name css/expand)
                  :style $ {} (:margin-left 20) (:flex 2)
                , & $ -> (:snippets info)
                  map $ fn (entry)
                    let
                        code-snippet $ if (map? entry) entry
                          {} $ :code entry
                        code $ :code code-snippet
                      div
                        {} $ :class-name css/row
                        comp-code (&cirru-quote:to-list code) syntax
                        if
                          some? $ :desc code-snippet
                          <> (:desc code-snippet)
                            {} (:margin-left 8) (:line-height "\"1.5")
                              :color $ hsl 0 0 60
                        if
                          and (map? code-snippet)
                            some? $ :result code-snippet
                          div
                            {} $ :class-name css/row
                            div
                              {} $ :style
                                {} (:width 40) (:text-align :center)
                              comp-i :arrow-right-circle 16 $ hsl 200 0 50
                            div ({})
                              comp-code
                                &cirru-quote:to-list $ :result code-snippet
                                , syntax
        |comp-cirru-ui-switcher $ quote
          defcomp comp-cirru-ui-switcher (state cursor)
            div
              {} (:class-name css-switcher)
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
        |comp-code $ quote
          defcomp comp-code (code syntax)
            assert "\"expected code in list" $ list? code
            div
              {} $ :style
                {} $ :margin-bottom 8
              case-default syntax (str "\"Unknown code: " syntax)
                :cirru $ div
                  {} $ :class-name css-theme-container
                  render-expr code
                :cirru-text $ pre
                  {} (:class-name css-code)
                    :innerHTML $ trim
                      format-cirru ([] code) true
                :lisp $ <> (lisp-style code) css-code
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
                cursor $ either (:cursor states) ([])
                state $ either (:data states)
                  {}
                    :query $ get-query!
                    :selected-tags $ #{}
                    :syntax :cirru
                    :wip? false
                visible-apis $ -> apis-data
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
                {}
                  :class-name $ str-spaced "\"calcit-tile" css/global css/fullscreen css/column
                  :style $ {}
                    :background-color $ hsl 0 0 100
                div
                  {} $ :class-name (str-spaced css/column css-nav)
                  div
                    {} $ :class-name css/row-parted
                    div
                      {} $ :class-name css/row-middle
                      a $ {} (:inner-text "\"Calcit") (:target "\"_blank") (:href "\"http://calcit-lang.org/") (:class-name css-logo)
                      =< 16 nil
                      memof-call comp-tags-list state cursor
                    a $ {} (:inner-text "\"Try & Play") (:target "\"_blank") (:href "\"http://repo.calcit-lang.org/calcit-wasm-play/")
                  div
                    {} (:class-name css/row-parted)
                      :style $ {} (:padding "\"0 8px")
                    div
                      {} $ :class-name css/row-middle
                      input $ {}
                        :class-name $ str-spaced css/input css/font-code!
                        :value $ :query state
                        :placeholder "\"search"
                        :autofocus true
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :query (:value e)
                      =< 8 nil
                      <>
                        str "\"has " (count visible-apis) "\" entries."
                        {} (:font-family ui/font-fancy)
                          :color $ hsl 0 0 70
                    div
                      {} $ :class-name css/row-middle
                      memof-call comp-cirru-ui-switcher state cursor
                      =< 12 nil
                      memof-call comp-wip-switcher state cursor
                div
                  {} (:class-name css/expand)
                    :style $ {}
                      :background-color $ hsl 0 0 100 0.6
                  =< nil 8
                  list->
                    {} $ :class-name (str-spaced css/expand css-list)
                    -> visible-apis
                      sort $ fn (a b)
                        &str:compare (:name a) (:name b)
                      map $ fn (info)
                        []
                          str (:source info) (:name info)
                          memof1-call-by info comp-api-entry info $ :syntax state
                  =< nil 400
                when dev? $ comp-reel (>> states :reel) reel ({})
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
              {} $ :class-name css/row
              <> "\"Tags:" $ {} (:font-family ui/font-fancy) (:user-select :none)
                :color $ hsl 0 0 70
              div ({}) & $ -> ([] :list :map :number :string :set :syntax :macro :record :native)
                map $ fn (tag)
                  div
                    {} (:class-name css-tag)
                      :style $ if
                        includes? (:selected-tags state) tag
                        {} $ :color (hsl 280 80 50)
                      :on-click $ fn (e d!)
                        d! cursor $ assoc state :selected-tags
                          if
                            includes? (:selected-tags state) tag
                            exclude (:selected-tags state) tag
                            include (:selected-tags state) tag
                    <> $ turn-string tag
        |comp-wip-switcher $ quote
          defcomp comp-wip-switcher (state cursor)
            div
              {} (:class-name css-wip-switcher)
                :on-click $ fn (e d!)
                  d! cursor $ update state :wip? not
              <> "\"All/WIP"
        |css-api-entry $ quote
          defstyle css-api-entry $ {}
            "\"&" $ {} (:margin "\"4px") (:padding "\"2px 12px")
            "\"&:hover" $ {}
              ; :box-shadow $ str "\"0 1px 1px " (hsl 0 0 0 0.2)
              :background-color $ hsl 0 0 96
        |css-code $ quote
          defstyle css-code $ {}
            "\"&" $ {} (:font-family ui/font-code)
              :border $ str "\"1px solid " (hsl 0 0 94)
              :border-radius "\"4px"
              :display :inline-block
              :padding "\"2px 8px"
              :line-height "\"22px"
              :margin "\"0px 0px"
              ; :background-color :white
        |css-desc $ quote
          defstyle css-desc $ {}
            "\"&" $ {}
              :color $ hsl 0 0 70
              :padding-left 16
              :line-height "\"20px"
        |css-list $ quote
          defstyle css-list $ {}
            "\"&" $ {} (:padding "\"0 0px")
        |css-logo $ quote
          defstyle css-logo $ {}
            "\"&" $ {} (:font-size 20) (:font-family ui/font-fancy) (:text-decoration :none) (:font-weight :bold)
              :color $ hsl 200 100 60
        |css-nav $ quote
          defstyle css-nav $ {}
            "\"&" $ {}
              :background-color $ hsl 0 0 100 0.6
              :padding "\"0px 8px 12px"
              :border-bottom $ str "\"1px solid " (hsl 0 0 90)
              :box-shadow $ str "\"0 0 4px " (hsl 0 0 0 0.2)
              :z-index 99
        |css-switcher $ quote
          defstyle css-switcher $ {}
            "\"&" $ merge ui/row-middle
              {} (:cursor :pointer) (:font-family ui/font-fancy)
                :color $ hsl 200 80 80
                :font-weight 300
        |css-tag $ quote
          defstyle css-tag $ {}
            "\"&" $ {} (:display :inline-block) (:margin "\"4px 4px") (:padding "\"0 4px")
              :color $ hsl 280 80 84
              :border-radius "\"4px"
              :cursor :pointer
              :line-height "\"20px"
              :user-select :none
        |css-theme-container $ quote
          defstyle css-theme-container $ {}
            "\"&" $ {}
              :background-color $ hsl 300 70 16
              :padding "\"4px 0"
              :border-radius "\"4px"
        |css-wip-switcher $ quote
          defstyle css-wip-switcher $ {}
            "\"&" $ {} (:font-family ui/font-fancy)
              :color $ hsl 200 80 70
              :font-weight 300
              :cursor :pointer
        |get-query! $ quote
          defn get-query! () $ let
              obj $ new js/URLSearchParams js/location.search
            if (.!has obj "\"q") (.!get obj "\"q") "\""
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
        |slurp-cirru-edn $ quote
          defmacro slurp-cirru-edn (file) (read-file file)
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
      :ns $ quote
        ns app.comp.container $ :require
          respo.util.format :refer $ hsl
          respo-ui.core :as ui
          respo-ui.css :as css
          respo.core :refer $ defcomp defeffect <> >> div button textarea span input pre list-> a
          respo.comp.space :refer $ =<
          reel.comp.reel :refer $ comp-reel
          respo-md.comp.md :refer $ comp-md
          app.config :refer $ dev?
          respo-md.comp.md :refer $ comp-md
          calcit-theme.comp.expr :refer $ render-expr
          memof.alias :refer $ memof-call
          memof.once :refer $ memof1-call-by
          feather.core :refer $ comp-i
          respo.css :refer $ defstyle
    |app.config $ {}
      :defs $ {}
        |dev? $ quote
          def dev? $ get-env "\"mode" "\"release"
        |site $ quote
          def site $ {} (:dev-ui "\"http://localhost:8100/main-fonts.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main-fonts.css") (:cdn-url "\"http://cdn.tiye.me/calcit-workflow/") (:title "\"APIs for calcit-runner") (:icon "\"http://cdn.tiye.me/logo/cirru.png") (:storage-key "\"calcit-runner-apis")
      :ns $ quote (ns app.config)
    |app.main $ {}
      :defs $ {}
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |dispatch! $ quote
          defn dispatch! (op)
            when (and config/dev?) (js/console.log "\"Dispatch:" op)
            reset! *reel $ reel-updater updater @*reel op
        |main! $ quote
          defn main! ()
            if config/dev? $ load-console-formatter!
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            if ssr? $ render-app! realize-ssr!
            render-app! render!
            add-watch *reel :changes $ fn (reel prev-reel) (render-app! render!)
            listen-devtools! |a dispatch!
            ; .addEventListener js/window |beforeunload persist-storage!
            ; repeat! 60 persist-storage!
            ; let
                raw $ js/localStorage.getItem (:storage-key config/site)
              when (some? raw)
                dispatch! $ :: :hydrate-storage
                  extract-cirru-data $ js/JSON.parse raw
            println "|App started."
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
        |persist-storage! $ quote
          defn persist-storage! () $ ; .setItem js/localStorage (:storage-key config/site)
            js/JSON.stringify $ to-calcit-data (:store @*reel)
        |reload! $ quote
          defn reload! () $ if (some? build-errors) (tip! "\"error" build-errors)
            do (tip! "\"inactive" nil) (remove-watch *reel :changes) (clear-cache!)
              add-watch *reel :changes $ fn (reel prev-reel) (render-app! render!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              render-app! render!
              println "|Code updated."
        |render-app! $ quote
          defn render-app! (renderer)
            renderer mount-target (comp-container @*reel) dispatch!
        |repeat! $ quote
          defn repeat! (duration cb)
            js/setTimeout
              fn () (cb) (repeat! duration cb)
              * 1000 duration
        |snippets $ quote
          defn snippets () $ println config/cdn?
        |ssr? $ quote
          def ssr? $ some? (js/document.querySelector |meta.respo-ssr)
      :ns $ quote
        ns app.main $ :require
          respo.core :refer $ render! clear-cache! realize-ssr!
          app.comp.container :refer $ comp-container
          app.updater :refer $ updater
          app.schema :as schema
          reel.util :refer $ listen-devtools!
          reel.core :refer $ reel-updater refresh-reel
          reel.schema :as reel-schema
          app.config :as config
          "\"bottom-tip" :default tip!
          "\"./calcit.build-errors" :default build-errors
    |app.schema $ {}
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
              :cursor $ []
      :ns $ quote (ns app.schema)
    |app.updater $ {}
      :defs $ {}
        |updater $ quote
          defn updater (store op op-id op-time)
            tag-match op
                :states cursor s
                update-states store cursor s
              (:hydrate-storage data) data
              _ $ do (eprintln "\"Unknown op:" op) store
      :ns $ quote
        ns app.updater $ :require
          [] respo.cursor :refer $ [] update-states
