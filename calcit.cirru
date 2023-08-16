
{}
  :configs $ {} (:compact-output? true) (:extension |.cljs) (:init-fn |app.main/main!) (:output |src) (:port 6001) (:reload-fn |app.main/reload!) (:storage-key |calcit.cirru)
    :modules $ [] |lilac/compact.cirru |memof/compact.cirru |respo.calcit/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |calcit-theme.calcit/compact.cirru |reel.calcit/compact.cirru |respo-feather.calcit/
  :entries $ {}
  :ir $ {} (:package |app)
    :files $ {}
      |app.comp.container $ {}
        :defs $ {}
          |add-tags $ {} (:at 1690396592220) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1690396592220) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |b $ {} (:at 1690396592220) (:by |rJG4IHzWf) (:text |add-tags) (:type :leaf)
              |h $ {} (:at 1690396592220) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1690396596425) (:by |rJG4IHzWf) (:text |t) (:type :leaf)
                  |b $ {} (:at 1690396598716) (:by |rJG4IHzWf) (:text |data) (:type :leaf)
              |l $ {} (:at 1690396599666) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1690396599666) (:by |rJG4IHzWf) (:text |map) (:type :leaf)
                  |X $ {} (:at 1690396602099) (:by |rJG4IHzWf) (:text |data) (:type :leaf)
                  |b $ {} (:at 1690396599666) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1690396599666) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                      |b $ {} (:at 1690396599666) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1690396599666) (:by |rJG4IHzWf) (:text |item) (:type :leaf)
                      |h $ {} (:at 1690397342432) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1690397343128) (:by |rJG4IHzWf) (:text |->) (:type :leaf)
                          |L $ {} (:at 1690397351298) (:by |rJG4IHzWf) (:text |item) (:type :leaf)
                          |T $ {} (:at 1690396599666) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690396599666) (:by |rJG4IHzWf) (:text |update) (:type :leaf)
                              |h $ {} (:at 1690396599666) (:by |rJG4IHzWf) (:text |:tags) (:type :leaf)
                              |l $ {} (:at 1690396599666) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1690396599666) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                                  |b $ {} (:at 1690396599666) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1690396607809) (:by |rJG4IHzWf) (:text |ts) (:type :leaf)
                                  |h $ {} (:at 1690396599666) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1690396840115) (:by |rJG4IHzWf) (:text |include) (:type :leaf)
                                      |b $ {} (:at 1690396608823) (:by |rJG4IHzWf) (:text |ts) (:type :leaf)
                                      |h $ {} (:at 1690396609659) (:by |rJG4IHzWf) (:text |t) (:type :leaf)
                          |b $ {} (:at 1690397354041) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690397354777) (:by |rJG4IHzWf) (:text |assoc) (:type :leaf)
                              |b $ {} (:at 1690397356737) (:by |rJG4IHzWf) (:text |:source) (:type :leaf)
                              |h $ {} (:at 1690397358109) (:by |rJG4IHzWf) (:text |t) (:type :leaf)
          |apis-data $ {} (:at 1611040177451) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1611040177451) (:by |rJG4IHzWf) (:text |def) (:type :leaf)
              |j $ {} (:at 1611040177451) (:by |rJG4IHzWf) (:text |apis-data) (:type :leaf)
              |r $ {} (:at 1629457494708) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1690396695379) (:by |rJG4IHzWf) (:text |concat) (:type :leaf)
                  |L $ {} (:at 1690396698440) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1690396698440) (:by |rJG4IHzWf) (:text |parse-cirru-edn) (:type :leaf)
                      |b $ {} (:at 1690396698440) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1690396698440) (:by |rJG4IHzWf) (:text |slurp-cirru-edn) (:type :leaf)
                          |b $ {} (:at 1690396698440) (:by |rJG4IHzWf) (:text "|\"docs/apis.cirru") (:type :leaf)
                  |P $ {} (:at 1690396701918) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1690396701918) (:by |rJG4IHzWf) (:text |add-tags) (:type :leaf)
                      |b $ {} (:at 1690396701918) (:by |rJG4IHzWf) (:text |:internal) (:type :leaf)
                      |h $ {} (:at 1690396701918) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1690396701918) (:by |rJG4IHzWf) (:text |parse-cirru-edn) (:type :leaf)
                          |b $ {} (:at 1690396701918) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690396701918) (:by |rJG4IHzWf) (:text |slurp-cirru-edn) (:type :leaf)
                              |b $ {} (:at 1690396701918) (:by |rJG4IHzWf) (:text "|\"docs/internals.cirru") (:type :leaf)
                  |R $ {} (:at 1690396704389) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1690396704389) (:by |rJG4IHzWf) (:text |add-tags) (:type :leaf)
                      |b $ {} (:at 1690396704389) (:by |rJG4IHzWf) (:text |:list) (:type :leaf)
                      |h $ {} (:at 1690396704389) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1690396704389) (:by |rJG4IHzWf) (:text |parse-cirru-edn) (:type :leaf)
                          |b $ {} (:at 1690396704389) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690396704389) (:by |rJG4IHzWf) (:text |slurp-cirru-edn) (:type :leaf)
                              |b $ {} (:at 1690396704389) (:by |rJG4IHzWf) (:text "|\"docs/class-list.cirru") (:type :leaf)
                  |S $ {} (:at 1690396706754) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1690396706754) (:by |rJG4IHzWf) (:text |add-tags) (:type :leaf)
                      |b $ {} (:at 1690396706754) (:by |rJG4IHzWf) (:text |:map) (:type :leaf)
                      |h $ {} (:at 1690396706754) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1690396706754) (:by |rJG4IHzWf) (:text |parse-cirru-edn) (:type :leaf)
                          |b $ {} (:at 1690396706754) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690396706754) (:by |rJG4IHzWf) (:text |slurp-cirru-edn) (:type :leaf)
                              |b $ {} (:at 1690396706754) (:by |rJG4IHzWf) (:text "|\"docs/class-map.cirru") (:type :leaf)
                  |ST $ {} (:at 1690396710486) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1690396710486) (:by |rJG4IHzWf) (:text |add-tags) (:type :leaf)
                      |b $ {} (:at 1690396710486) (:by |rJG4IHzWf) (:text |:set) (:type :leaf)
                      |h $ {} (:at 1690396710486) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1690396710486) (:by |rJG4IHzWf) (:text |parse-cirru-edn) (:type :leaf)
                          |b $ {} (:at 1690396710486) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690396710486) (:by |rJG4IHzWf) (:text |slurp-cirru-edn) (:type :leaf)
                              |b $ {} (:at 1690396710486) (:by |rJG4IHzWf) (:text "|\"docs/class-set.cirru") (:type :leaf)
                  |Sj $ {} (:at 1690396720852) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1690396720852) (:by |rJG4IHzWf) (:text |add-tags) (:type :leaf)
                      |b $ {} (:at 1690396720852) (:by |rJG4IHzWf) (:text |:record) (:type :leaf)
                      |h $ {} (:at 1690396720852) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1690396720852) (:by |rJG4IHzWf) (:text |parse-cirru-edn) (:type :leaf)
                          |b $ {} (:at 1690396720852) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690396720852) (:by |rJG4IHzWf) (:text |slurp-cirru-edn) (:type :leaf)
                              |b $ {} (:at 1690396720852) (:by |rJG4IHzWf) (:text "|\"docs/class-record.cirru") (:type :leaf)
                  |Sr $ {} (:at 1690396724393) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1690396724393) (:by |rJG4IHzWf) (:text |add-tags) (:type :leaf)
                      |b $ {} (:at 1690396724393) (:by |rJG4IHzWf) (:text |:number) (:type :leaf)
                      |h $ {} (:at 1690396724393) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1690396724393) (:by |rJG4IHzWf) (:text |parse-cirru-edn) (:type :leaf)
                          |b $ {} (:at 1690396724393) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690396724393) (:by |rJG4IHzWf) (:text |slurp-cirru-edn) (:type :leaf)
                              |b $ {} (:at 1690396724393) (:by |rJG4IHzWf) (:text "|\"docs/class-number.cirru") (:type :leaf)
                  |Sv $ {} (:at 1690396727604) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1690396727604) (:by |rJG4IHzWf) (:text |add-tags) (:type :leaf)
                      |b $ {} (:at 1690396727604) (:by |rJG4IHzWf) (:text |:string) (:type :leaf)
                      |h $ {} (:at 1690396727604) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1690396727604) (:by |rJG4IHzWf) (:text |parse-cirru-edn) (:type :leaf)
                          |b $ {} (:at 1690396727604) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690396727604) (:by |rJG4IHzWf) (:text |slurp-cirru-edn) (:type :leaf)
                              |b $ {} (:at 1690396727604) (:by |rJG4IHzWf) (:text "|\"docs/class-string.cirru") (:type :leaf)
                  |Sx $ {} (:at 1690396731333) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1690396731333) (:by |rJG4IHzWf) (:text |add-tags) (:type :leaf)
                      |b $ {} (:at 1690396731333) (:by |rJG4IHzWf) (:text |:nil) (:type :leaf)
                      |h $ {} (:at 1690396731333) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1690396731333) (:by |rJG4IHzWf) (:text |parse-cirru-edn) (:type :leaf)
                          |b $ {} (:at 1690396731333) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690396731333) (:by |rJG4IHzWf) (:text |slurp-cirru-edn) (:type :leaf)
                              |b $ {} (:at 1690396731333) (:by |rJG4IHzWf) (:text "|\"docs/class-nil.cirru") (:type :leaf)
                  |T $ {} (:at 1690396735263) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1690396735263) (:by |rJG4IHzWf) (:text |add-tags) (:type :leaf)
                      |b $ {} (:at 1690396735263) (:by |rJG4IHzWf) (:text |:fn) (:type :leaf)
                      |h $ {} (:at 1690396735263) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1690396735263) (:by |rJG4IHzWf) (:text |parse-cirru-edn) (:type :leaf)
                          |b $ {} (:at 1690396735263) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690396735263) (:by |rJG4IHzWf) (:text |slurp-cirru-edn) (:type :leaf)
                              |b $ {} (:at 1690396735263) (:by |rJG4IHzWf) (:text "|\"docs/class-fn.cirru") (:type :leaf)
          |comp-api-entry $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1603363205264) (:by |rJG4IHzWf) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |comp-api-entry) (:type :leaf)
              |n $ {} (:at 1603363206065) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1603363216442) (:by |rJG4IHzWf) (:text |info) (:type :leaf)
                  |j $ {} (:at 1604977645146) (:by |rJG4IHzWf) (:text |syntax) (:type :leaf)
              |r $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |div) (:type :leaf)
                  |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                              |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |:wip?) (:type :leaf)
                                  |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |info) (:type :leaf)
                              |r $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |:color) (:type :leaf)
                                      |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |hsl) (:type :leaf)
                                          |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                          |r $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                          |v $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |80) (:type :leaf)
                                  |r $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |:border-left) (:type :leaf)
                                      |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |str) (:type :leaf)
                                          |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text "|\"8px solid ") (:type :leaf)
                                          |r $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |hsl) (:type :leaf)
                                              |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                              |r $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                              |v $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |90) (:type :leaf)
                      |n $ {} (:at 1690397601895) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1690397604707) (:by |rJG4IHzWf) (:text |:class-name) (:type :leaf)
                          |b $ {} (:at 1690397703647) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1690397705338) (:by |rJG4IHzWf) (:text |str-spaced) (:type :leaf)
                              |L $ {} (:at 1690397706535) (:by |rJG4IHzWf) (:text |css/row) (:type :leaf)
                              |T $ {} (:at 1690397606673) (:by |rJG4IHzWf) (:text |css-api-entry) (:type :leaf)
                  |r $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |div) (:type :leaf)
                      |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1628674665840) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690476029822) (:by |rJG4IHzWf) (:text |:class-name) (:type :leaf)
                              |j $ {} (:at 1690476032097) (:by |rJG4IHzWf) (:text |css/flex) (:type :leaf)
                      |r $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |:name) (:type :leaf)
                              |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |info) (:type :leaf)
                          |n $ {} (:at 1690476193816) (:by |rJG4IHzWf) (:text |css/font-code) (:type :leaf)
                      |v $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |8) (:type :leaf)
                          |r $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |nil) (:type :leaf)
                      |x $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1628674737321) (:by |rJG4IHzWf) (:text |div) (:type :leaf)
                          |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                              |r $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |:class-name) (:type :leaf)
                                  |j $ {} (:at 1690476049770) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1690476053722) (:by |rJG4IHzWf) (:text |str-spaced) (:type :leaf)
                                      |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text "|\"md-span") (:type :leaf)
                                      |b $ {} (:at 1690476057295) (:by |rJG4IHzWf) (:text |css-desc) (:type :leaf)
                          |r $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |comp-md) (:type :leaf)
                              |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610954768582) (:by |rJG4IHzWf) (:text |either) (:type :leaf)
                                  |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |:desc) (:type :leaf)
                                      |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |info) (:type :leaf)
                                  |r $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text "|\"TODO") (:type :leaf)
                  |v $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1619983887236) (:by |rJG4IHzWf) (:text |div) (:type :leaf)
                      |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1690476174178) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690476176909) (:by |rJG4IHzWf) (:text |:class-name) (:type :leaf)
                              |b $ {} (:at 1690476179276) (:by |rJG4IHzWf) (:text |css/expand) (:type :leaf)
                          |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |:margin-left) (:type :leaf)
                                      |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |20) (:type :leaf)
                                  |r $ {} (:at 1628674801732) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1628674802560) (:by |rJG4IHzWf) (:text |:flex) (:type :leaf)
                                      |j $ {} (:at 1628676080961) (:by |rJG4IHzWf) (:text |2) (:type :leaf)
                      |n $ {} (:at 1619983891339) (:by |rJG4IHzWf) (:text |&) (:type :leaf)
                      |r $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1619707363192) (:by |rJG4IHzWf) (:text |->) (:type :leaf)
                          |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |:snippets) (:type :leaf)
                              |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |info) (:type :leaf)
                          |r $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1619983957777) (:by |rJG4IHzWf) (:text |map) (:type :leaf)
                              |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1603363201369) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |j $ {} (:at 1625762697650) (:by |rJG4IHzWf) (:text |entry) (:type :leaf)
                                  |r $ {} (:at 1604978584168) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1604978584873) (:by |rJG4IHzWf) (:text |let) (:type :leaf)
                                      |L $ {} (:at 1604978585326) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1604979656134) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610954591586) (:by |rJG4IHzWf) (:text |code-snippet) (:type :leaf)
                                              |j $ {} (:at 1604979659654) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1604979660078) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                                                  |j $ {} (:at 1604979663040) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1625762714564) (:by |rJG4IHzWf) (:text |map?) (:type :leaf)
                                                      |j $ {} (:at 1625762733370) (:by |rJG4IHzWf) (:text |entry) (:type :leaf)
                                                  |n $ {} (:at 1625762737066) (:by |rJG4IHzWf) (:text |entry) (:type :leaf)
                                                  |r $ {} (:at 1604979664258) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1604979664717) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                                      |j $ {} (:at 1604979665399) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1604979665901) (:by |rJG4IHzWf) (:text |:code) (:type :leaf)
                                                          |j $ {} (:at 1625762786084) (:by |rJG4IHzWf) (:text |entry) (:type :leaf)
                                          |T $ {} (:at 1604978585326) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1604978585326) (:by |rJG4IHzWf) (:text |code) (:type :leaf)
                                              |j $ {} (:at 1604979672256) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1604979672256) (:by |rJG4IHzWf) (:text |:code) (:type :leaf)
                                                  |j $ {} (:at 1610954593942) (:by |rJG4IHzWf) (:text |code-snippet) (:type :leaf)
                                      |T $ {} (:at 1604978977985) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1604978978614) (:by |rJG4IHzWf) (:text |div) (:type :leaf)
                                          |L $ {} (:at 1604978978816) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1604978979108) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1628674922489) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1690476333902) (:by |rJG4IHzWf) (:text |:class-name) (:type :leaf)
                                                  |j $ {} (:at 1690476336403) (:by |rJG4IHzWf) (:text |css/row) (:type :leaf)
                                          |T $ {} (:at 1604978963521) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:text |comp-code) (:type :leaf)
                                              |j $ {} (:at 1625762763939) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1658160410767) (:by |rJG4IHzWf) (:text |&cirru-quote:to-list) (:type :leaf)
                                                  |T $ {} (:at 1604978964295) (:by |rJG4IHzWf) (:text |code) (:type :leaf)
                                              |r $ {} (:at 1604978969602) (:by |rJG4IHzWf) (:text |syntax) (:type :leaf)
                                          |b $ {} (:at 1650965722772) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1650965722772) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                                              |b $ {} (:at 1650965722772) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1650965722772) (:by |rJG4IHzWf) (:text |some?) (:type :leaf)
                                                  |b $ {} (:at 1650965722772) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1650965722772) (:by |rJG4IHzWf) (:text |:desc) (:type :leaf)
                                                      |b $ {} (:at 1650965722772) (:by |rJG4IHzWf) (:text |code-snippet) (:type :leaf)
                                              |h $ {} (:at 1650965722772) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1650965722772) (:by |rJG4IHzWf) (:text |<>) (:type :leaf)
                                                  |b $ {} (:at 1650965722772) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1650965722772) (:by |rJG4IHzWf) (:text |:desc) (:type :leaf)
                                                      |b $ {} (:at 1650965722772) (:by |rJG4IHzWf) (:text |code-snippet) (:type :leaf)
                                                  |h $ {} (:at 1650965722772) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1650965722772) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                                      |b $ {} (:at 1650965722772) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1650965722772) (:by |rJG4IHzWf) (:text |:margin-left) (:type :leaf)
                                                          |b $ {} (:at 1650965722772) (:by |rJG4IHzWf) (:text |8) (:type :leaf)
                                                      |e $ {} (:at 1653642960091) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1653642966424) (:by |rJG4IHzWf) (:text |:line-height) (:type :leaf)
                                                          |b $ {} (:at 1653642973595) (:by |rJG4IHzWf) (:text "|\"1.5") (:type :leaf)
                                                      |h $ {} (:at 1650965722772) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1650965722772) (:by |rJG4IHzWf) (:text |:color) (:type :leaf)
                                                          |b $ {} (:at 1650965722772) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1650965722772) (:by |rJG4IHzWf) (:text |hsl) (:type :leaf)
                                                              |b $ {} (:at 1650965722772) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                                              |h $ {} (:at 1650965722772) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                                              |l $ {} (:at 1650965722772) (:by |rJG4IHzWf) (:text |60) (:type :leaf)
                                          |j $ {} (:at 1604979043131) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1604979043704) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                                              |L $ {} (:at 1604979050238) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1604979051964) (:by |rJG4IHzWf) (:text |and) (:type :leaf)
                                                  |T $ {} (:at 1604979044537) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1604979046170) (:by |rJG4IHzWf) (:text |map?) (:type :leaf)
                                                      |j $ {} (:at 1610954595347) (:by |rJG4IHzWf) (:text |code-snippet) (:type :leaf)
                                                  |j $ {} (:at 1604979056497) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1604979062069) (:by |rJG4IHzWf) (:text |some?) (:type :leaf)
                                                      |j $ {} (:at 1604979062435) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1604979063200) (:by |rJG4IHzWf) (:text |:result) (:type :leaf)
                                                          |j $ {} (:at 1610954597215) (:by |rJG4IHzWf) (:text |code-snippet) (:type :leaf)
                                              |T $ {} (:at 1604978981439) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1604978982059) (:by |rJG4IHzWf) (:text |div) (:type :leaf)
                                                  |j $ {} (:at 1604978985823) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1604978985628) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                                      |j $ {} (:at 1604978988265) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1690476340902) (:by |rJG4IHzWf) (:text |:class-name) (:type :leaf)
                                                          |j $ {} (:at 1690476342731) (:by |rJG4IHzWf) (:text |css/row) (:type :leaf)
                                                  |r $ {} (:at 1604979092814) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1604979093558) (:by |rJG4IHzWf) (:text |div) (:type :leaf)
                                                      |L $ {} (:at 1604979093782) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1604979094136) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                                          |j $ {} (:at 1604979095216) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1604979096511) (:by |rJG4IHzWf) (:text |:style) (:type :leaf)
                                                              |j $ {} (:at 1604979096742) (:by |rJG4IHzWf) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1604979097070) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                                                  |j $ {} (:at 1604979097296) (:by |rJG4IHzWf) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1604979098762) (:by |rJG4IHzWf) (:text |:width) (:type :leaf)
                                                                      |j $ {} (:at 1628676092894) (:by |rJG4IHzWf) (:text |40) (:type :leaf)
                                                                  |r $ {} (:at 1604979634862) (:by |rJG4IHzWf) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1604979634862) (:by |rJG4IHzWf) (:text |:text-align) (:type :leaf)
                                                                      |j $ {} (:at 1604979634862) (:by |rJG4IHzWf) (:text |:center) (:type :leaf)
                                                      |j $ {} (:at 1629543937086) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1629543938662) (:by |rJG4IHzWf) (:text |comp-i) (:type :leaf)
                                                          |j $ {} (:at 1629544459535) (:by |rJG4IHzWf) (:text |:arrow-right-circle) (:type :leaf)
                                                          |r $ {} (:at 1629544295606) (:by |rJG4IHzWf) (:text |16) (:type :leaf)
                                                          |v $ {} (:at 1629544299271) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1629544299271) (:by |rJG4IHzWf) (:text |hsl) (:type :leaf)
                                                              |j $ {} (:at 1629544299271) (:by |rJG4IHzWf) (:text |200) (:type :leaf)
                                                              |r $ {} (:at 1629544299271) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                                              |v $ {} (:at 1629544299271) (:by |rJG4IHzWf) (:text |50) (:type :leaf)
                                                  |v $ {} (:at 1604979639646) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1604979640281) (:by |rJG4IHzWf) (:text |div) (:type :leaf)
                                                      |L $ {} (:at 1604979640489) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1604979640831) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                                      |T $ {} (:at 1604979072642) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1604979074192) (:by |rJG4IHzWf) (:text |comp-code) (:type :leaf)
                                                          |T $ {} (:at 1625762769430) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1658160425929) (:by |rJG4IHzWf) (:text |&cirru-quote:to-list) (:type :leaf)
                                                              |X $ {} (:at 1658160430911) (:by |rJG4IHzWf) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1658160430911) (:by |rJG4IHzWf) (:text |:result) (:type :leaf)
                                                                  |b $ {} (:at 1658160430911) (:by |rJG4IHzWf) (:text |code-snippet) (:type :leaf)
                                                          |j $ {} (:at 1604979076076) (:by |rJG4IHzWf) (:text |syntax) (:type :leaf)
          |comp-cirru-ui-switcher $ {} (:at 1603353264317) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1603353265913) (:by |rJG4IHzWf) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1603353264317) (:by |rJG4IHzWf) (:text |comp-cirru-ui-switcher) (:type :leaf)
              |r $ {} (:at 1603353264317) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1603353264317) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                  |j $ {} (:at 1603353264317) (:by |rJG4IHzWf) (:text |cursor) (:type :leaf)
              |v $ {} (:at 1603353267038) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1619983919420) (:by |rJG4IHzWf) (:text |div) (:type :leaf)
                  |j $ {} (:at 1603353268222) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1603353269371) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1603353350858) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1690476372758) (:by |rJG4IHzWf) (:text |:class-name) (:type :leaf)
                          |b $ {} (:at 1690476375705) (:by |rJG4IHzWf) (:text |css-switcher) (:type :leaf)
                      |j $ {} (:at 1603353281107) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1603353284678) (:by |rJG4IHzWf) (:text |:on-click) (:type :leaf)
                          |j $ {} (:at 1603353284990) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1603353285207) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1603353285724) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1603353286027) (:by |rJG4IHzWf) (:text |e) (:type :leaf)
                                  |j $ {} (:at 1603353286536) (:by |rJG4IHzWf) (:text |d!) (:type :leaf)
                              |r $ {} (:at 1603353287015) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1603353287515) (:by |rJG4IHzWf) (:text |d!) (:type :leaf)
                                  |j $ {} (:at 1603353288943) (:by |rJG4IHzWf) (:text |cursor) (:type :leaf)
                                  |r $ {} (:at 1603353290168) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1603353291797) (:by |rJG4IHzWf) (:text |update) (:type :leaf)
                                      |j $ {} (:at 1603353293305) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                                      |r $ {} (:at 1603353340961) (:by |rJG4IHzWf) (:text |:cirru-ui?) (:type :leaf)
                                      |v $ {} (:at 1603353297999) (:by |rJG4IHzWf) (:text |not) (:type :leaf)
                  |l $ {} (:at 1619983923160) (:by |rJG4IHzWf) (:text |&) (:type :leaf)
                  |n $ {} (:at 1604978192208) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1619707352349) (:by |rJG4IHzWf) (:text |->) (:type :leaf)
                      |j $ {} (:at 1604978196431) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1604978196786) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1604978199888) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1604978202289) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1604978202675) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1604978214927) (:by |rJG4IHzWf) (:text |:value) (:type :leaf)
                                  |j $ {} (:at 1604978218117) (:by |rJG4IHzWf) (:text |:lisp) (:type :leaf)
                              |r $ {} (:at 1604978220558) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1604978228060) (:by |rJG4IHzWf) (:text |:display) (:type :leaf)
                                  |j $ {} (:at 1604978230457) (:by |rJG4IHzWf) (:text "|\"Lisp") (:type :leaf)
                          |r $ {} (:at 1604978199888) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1604978202289) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1604978202675) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1604978214927) (:by |rJG4IHzWf) (:text |:value) (:type :leaf)
                                  |j $ {} (:at 1604978241650) (:by |rJG4IHzWf) (:text |:cirru-text) (:type :leaf)
                              |r $ {} (:at 1604978220558) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1604978228060) (:by |rJG4IHzWf) (:text |:display) (:type :leaf)
                                  |j $ {} (:at 1604978331739) (:by |rJG4IHzWf) (:text "|\"CirruText") (:type :leaf)
                          |v $ {} (:at 1604978199888) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1604978202289) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1604978202675) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1604978214927) (:by |rJG4IHzWf) (:text |:value) (:type :leaf)
                                  |j $ {} (:at 1604978249001) (:by |rJG4IHzWf) (:text |:cirru) (:type :leaf)
                              |r $ {} (:at 1604978220558) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1604978228060) (:by |rJG4IHzWf) (:text |:display) (:type :leaf)
                                  |j $ {} (:at 1604978251478) (:by |rJG4IHzWf) (:text "|\"Cirru") (:type :leaf)
                      |r $ {} (:at 1604978256549) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1619983933436) (:by |rJG4IHzWf) (:text |map) (:type :leaf)
                          |j $ {} (:at 1604978257439) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1604978257669) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1604978258009) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1604978259035) (:by |rJG4IHzWf) (:text |item) (:type :leaf)
                              |r $ {} (:at 1604978269276) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1604978269892) (:by |rJG4IHzWf) (:text |div) (:type :leaf)
                                  |j $ {} (:at 1604978270167) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1604978270480) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1604978287752) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1604978288656) (:by |rJG4IHzWf) (:text |:style) (:type :leaf)
                                          |j $ {} (:at 1604978360641) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1604978361510) (:by |rJG4IHzWf) (:text |merge) (:type :leaf)
                                              |L $ {} (:at 1604978361956) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1604978361956) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1604978361956) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1604978361956) (:by |rJG4IHzWf) (:text |:margin) (:type :leaf)
                                                      |j $ {} (:at 1604978361956) (:by |rJG4IHzWf) (:text "|\"0 4px") (:type :leaf)
                                              |T $ {} (:at 1604978341082) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1604978341571) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                                                  |L $ {} (:at 1604978343498) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1604978342033) (:by |rJG4IHzWf) (:text |=) (:type :leaf)
                                                      |j $ {} (:at 1604978345038) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1604978349950) (:by |rJG4IHzWf) (:text |:syntax) (:type :leaf)
                                                          |T $ {} (:at 1604978351187) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                                                      |r $ {} (:at 1604978353683) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1604978354289) (:by |rJG4IHzWf) (:text |:value) (:type :leaf)
                                                          |j $ {} (:at 1604978355334) (:by |rJG4IHzWf) (:text |item) (:type :leaf)
                                                  |f $ {} (:at 1604978363605) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1604978363990) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                                      |j $ {} (:at 1604978364247) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1604978366389) (:by |rJG4IHzWf) (:text |:color) (:type :leaf)
                                                          |j $ {} (:at 1604978366585) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1604978366907) (:by |rJG4IHzWf) (:text |hsl) (:type :leaf)
                                                              |j $ {} (:at 1604978368830) (:by |rJG4IHzWf) (:text |200) (:type :leaf)
                                                              |r $ {} (:at 1604978369305) (:by |rJG4IHzWf) (:text |90) (:type :leaf)
                                                              |v $ {} (:at 1604979430465) (:by |rJG4IHzWf) (:text |50) (:type :leaf)
                                      |r $ {} (:at 1604978292708) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1604978294938) (:by |rJG4IHzWf) (:text |:on-click) (:type :leaf)
                                          |j $ {} (:at 1604978295179) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1604978295434) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                                              |j $ {} (:at 1604978295653) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1604978295911) (:by |rJG4IHzWf) (:text |e) (:type :leaf)
                                                  |j $ {} (:at 1604978296624) (:by |rJG4IHzWf) (:text |d!) (:type :leaf)
                                              |r $ {} (:at 1604978297212) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1604978377992) (:by |rJG4IHzWf) (:text |d!) (:type :leaf)
                                                  |b $ {} (:at 1604978379652) (:by |rJG4IHzWf) (:text |cursor) (:type :leaf)
                                                  |j $ {} (:at 1604978380748) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1604978381569) (:by |rJG4IHzWf) (:text |assoc) (:type :leaf)
                                                      |j $ {} (:at 1604978383163) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                                                      |r $ {} (:at 1604978385283) (:by |rJG4IHzWf) (:text |:syntax) (:type :leaf)
                                                      |v $ {} (:at 1604978391447) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1604978392704) (:by |rJG4IHzWf) (:text |:value) (:type :leaf)
                                                          |j $ {} (:at 1604978393175) (:by |rJG4IHzWf) (:text |item) (:type :leaf)
                                  |r $ {} (:at 1604978272481) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1604978273090) (:by |rJG4IHzWf) (:text |<>) (:type :leaf)
                                      |j $ {} (:at 1604978273793) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1604978275486) (:by |rJG4IHzWf) (:text |:display) (:type :leaf)
                                          |j $ {} (:at 1604978279662) (:by |rJG4IHzWf) (:text |item) (:type :leaf)
          |comp-code $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1604978960000) (:by |rJG4IHzWf) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:text |comp-code) (:type :leaf)
              |n $ {} (:at 1604978961044) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1604978962329) (:by |rJG4IHzWf) (:text |code) (:type :leaf)
                  |j $ {} (:at 1604978973624) (:by |rJG4IHzWf) (:text |syntax) (:type :leaf)
              |p $ {} (:at 1621704426474) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1621704428199) (:by |rJG4IHzWf) (:text |assert) (:type :leaf)
                  |j $ {} (:at 1621704437260) (:by |rJG4IHzWf) (:text "|\"expected code in list") (:type :leaf)
                  |r $ {} (:at 1621704438502) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1621704439262) (:by |rJG4IHzWf) (:text |list?) (:type :leaf)
                      |j $ {} (:at 1621704440649) (:by |rJG4IHzWf) (:text |code) (:type :leaf)
              |r $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:text |div) (:type :leaf)
                  |j $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                              |v $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:text |:margin-bottom) (:type :leaf)
                                  |j $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:text |8) (:type :leaf)
                  |r $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1646665765117) (:by |rJG4IHzWf) (:text |case-default) (:type :leaf)
                      |j $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:text |syntax) (:type :leaf)
                      |n $ {} (:at 1646665765947) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1646665765947) (:by |rJG4IHzWf) (:text |str) (:type :leaf)
                          |b $ {} (:at 1646665765947) (:by |rJG4IHzWf) (:text "|\"Unknown code: ") (:type :leaf)
                          |h $ {} (:at 1646665765947) (:by |rJG4IHzWf) (:text |syntax) (:type :leaf)
                      |r $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:text |:cirru) (:type :leaf)
                          |j $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:text |div) (:type :leaf)
                              |j $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1692120876958) (:by |rJG4IHzWf) (:text |:class-name) (:type :leaf)
                                      |b $ {} (:at 1692120883467) (:by |rJG4IHzWf) (:text |css-theme-container) (:type :leaf)
                              |r $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:text |render-expr) (:type :leaf)
                                  |j $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:text |code) (:type :leaf)
                      |v $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:text |:cirru-text) (:type :leaf)
                          |j $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:text |pre) (:type :leaf)
                              |j $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1690476100650) (:by |rJG4IHzWf) (:text |:class-name) (:type :leaf)
                                      |j $ {} (:at 1690476097266) (:by |rJG4IHzWf) (:text |css-code) (:type :leaf)
                                  |r $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:text |:innerHTML) (:type :leaf)
                                      |j $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610949501482) (:by |rJG4IHzWf) (:text |trim) (:type :leaf)
                                          |j $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1623694643612) (:by |rJG4IHzWf) (:text |format-cirru) (:type :leaf)
                                              |j $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                                  |j $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:text |code) (:type :leaf)
                                              |r $ {} (:at 1619709572587) (:by |rJG4IHzWf) (:text |true) (:type :leaf)
                      |x $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:text |:lisp) (:type :leaf)
                          |j $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:text |<>) (:type :leaf)
                              |j $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:text |lisp-style) (:type :leaf)
                                  |j $ {} (:at 1604978958075) (:by |rJG4IHzWf) (:text |code) (:type :leaf)
                              |n $ {} (:at 1690476105297) (:by |rJG4IHzWf) (:text |css-code) (:type :leaf)
          |comp-container $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |comp-container) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1507461830530) (:by |root) (:text |reel) (:type :leaf)
              |v $ {} (:at 1507461832154) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1507461833421) (:by |root) (:text |let) (:type :leaf)
                  |L $ {} (:at 1507461834351) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507461834650) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507461835738) (:by |root) (:text |store) (:type :leaf)
                          |j $ {} (:at 1507461836110) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507461837276) (:by |root) (:text |:store) (:type :leaf)
                              |j $ {} (:at 1507461838285) (:by |root) (:text |reel) (:type :leaf)
                      |j $ {} (:at 1509727104820) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1509727105928) (:by |root) (:text |states) (:type :leaf)
                          |j $ {} (:at 1509727106316) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1509727107223) (:by |root) (:text |:states) (:type :leaf)
                              |j $ {} (:at 1509727108033) (:by |root) (:text |store) (:type :leaf)
                      |n $ {} (:at 1584780921790) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584780923771) (:by |rJG4IHzWf) (:text |cursor) (:type :leaf)
                          |j $ {} (:at 1584780991636) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1610954643038) (:by |rJG4IHzWf) (:text |either) (:type :leaf)
                              |T $ {} (:at 1584780923944) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1584780925829) (:by |rJG4IHzWf) (:text |:cursor) (:type :leaf)
                                  |j $ {} (:at 1584780926681) (:by |rJG4IHzWf) (:text |states) (:type :leaf)
                              |j $ {} (:at 1584780993270) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1584780994497) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                      |r $ {} (:at 1584780887905) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584780889620) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                          |j $ {} (:at 1584780889933) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610954640683) (:by |rJG4IHzWf) (:text |either) (:type :leaf)
                              |j $ {} (:at 1584780894090) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1584780894689) (:by |rJG4IHzWf) (:text |:data) (:type :leaf)
                                  |j $ {} (:at 1584780900314) (:by |rJG4IHzWf) (:text |states) (:type :leaf)
                              |r $ {} (:at 1584780901014) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1584780901408) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1584780901741) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1603121145959) (:by |rJG4IHzWf) (:text |:query) (:type :leaf)
                                      |j $ {} (:at 1626769070787) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1626769072728) (:by |rJG4IHzWf) (:text |get-query!) (:type :leaf)
                                  |r $ {} (:at 1603122253205) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1603122265288) (:by |rJG4IHzWf) (:text |:selected-tags) (:type :leaf)
                                      |j $ {} (:at 1603122265907) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1603122266980) (:by |rJG4IHzWf) (:text |#{}) (:type :leaf)
                                  |w $ {} (:at 1604977616603) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1604977619219) (:by |rJG4IHzWf) (:text |:syntax) (:type :leaf)
                                      |j $ {} (:at 1692121003514) (:by |rJG4IHzWf) (:text |:cirru) (:type :leaf)
                                  |x $ {} (:at 1603363334684) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1603363336121) (:by |rJG4IHzWf) (:text |:wip?) (:type :leaf)
                                      |j $ {} (:at 1603363339355) (:by |rJG4IHzWf) (:text |false) (:type :leaf)
                      |y $ {} (:at 1603122994280) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1603122997808) (:by |rJG4IHzWf) (:text |visible-apis) (:type :leaf)
                          |b $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |->) (:type :leaf)
                              |b $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |apis-data) (:type :leaf)
                              |h $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |filter) (:type :leaf)
                                  |b $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                                      |b $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |info) (:type :leaf)
                                      |h $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |and) (:type :leaf)
                                          |b $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                                              |b $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |:wip?) (:type :leaf)
                                                  |b $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                                              |h $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |:wip?) (:type :leaf)
                                                  |b $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |info) (:type :leaf)
                                              |l $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |true) (:type :leaf)
                                          |h $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |or) (:type :leaf)
                                              |b $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |empty?) (:type :leaf)
                                                  |b $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |:selected-tags) (:type :leaf)
                                                      |b $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                                              |h $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |->) (:type :leaf)
                                                  |b $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |:selected-tags) (:type :leaf)
                                                      |b $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                                                  |h $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |every?) (:type :leaf)
                                                      |b $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                                                          |b $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |x) (:type :leaf)
                                                          |h $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |includes?) (:type :leaf)
                                                              |b $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |:tags) (:type :leaf)
                                                                  |b $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |info) (:type :leaf)
                                                              |h $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |x) (:type :leaf)
                                          |l $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |includes?) (:type :leaf)
                                              |b $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |:name) (:type :leaf)
                                                  |b $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |info) (:type :leaf)
                                              |h $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |:query) (:type :leaf)
                                                  |b $ {} (:at 1690396762206) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                  |T $ {} (:at 1499755354983) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1499755354983) (:by |root) (:text |div) (:type :leaf)
                      |j $ {} (:at 1499755354983) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1499755354983) (:by |root) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1646665602400) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1646665605288) (:by |rJG4IHzWf) (:text |:class-name) (:type :leaf)
                              |b $ {} (:at 1690475865258) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1690475868481) (:by |rJG4IHzWf) (:text |str-spaced) (:type :leaf)
                                  |T $ {} (:at 1646665609636) (:by |rJG4IHzWf) (:text "|\"calcit-tile") (:type :leaf)
                                  |b $ {} (:at 1690475876315) (:by |rJG4IHzWf) (:text |css/global) (:type :leaf)
                                  |h $ {} (:at 1690475879643) (:by |rJG4IHzWf) (:text |css/fullscreen) (:type :leaf)
                                  |l $ {} (:at 1690475881899) (:by |rJG4IHzWf) (:text |css/column) (:type :leaf)
                          |j $ {} (:at 1499755354983) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1499755354983) (:by |root) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1603121393557) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1603121394667) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1603121451691) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1603121451691) (:by |rJG4IHzWf) (:text |:background-color) (:type :leaf)
                                      |j $ {} (:at 1603121453226) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1603121453670) (:by |rJG4IHzWf) (:text |hsl) (:type :leaf)
                                          |j $ {} (:at 1603121454401) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                          |r $ {} (:at 1603121454734) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                          |v $ {} (:at 1646665902912) (:by |rJG4IHzWf) (:text |100) (:type :leaf)
                      |v $ {} (:at 1499755354983) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1499755354983) (:by |root) (:text |div) (:type :leaf)
                          |f $ {} (:at 1512359526483) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1512359526843) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1535563521753) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1690475898907) (:by |rJG4IHzWf) (:text |:class-name) (:type :leaf)
                                  |j $ {} (:at 1603121416304) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1690475904343) (:by |rJG4IHzWf) (:text |str-spaced) (:type :leaf)
                                      |T $ {} (:at 1690476217415) (:by |rJG4IHzWf) (:text |css/column) (:type :leaf)
                                      |b $ {} (:at 1690475908528) (:by |rJG4IHzWf) (:text |css-nav) (:type :leaf)
                          |fT $ {} (:at 1637252361870) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1637252362456) (:by |rJG4IHzWf) (:text |div) (:type :leaf)
                              |L $ {} (:at 1637252362681) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637252362968) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1637252363234) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1690475925225) (:by |rJG4IHzWf) (:text |:class-name) (:type :leaf)
                                      |j $ {} (:at 1690475926984) (:by |rJG4IHzWf) (:text |css/row-parted) (:type :leaf)
                              |T $ {} (:at 1637252453224) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1637252454413) (:by |rJG4IHzWf) (:text |div) (:type :leaf)
                                  |L $ {} (:at 1637252454671) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637252454986) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1637252455233) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1690475929615) (:by |rJG4IHzWf) (:text |:class-name) (:type :leaf)
                                          |j $ {} (:at 1690475931317) (:by |rJG4IHzWf) (:text |css/row-middle) (:type :leaf)
                                  |P $ {} (:at 1637252518113) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637252518113) (:by |rJG4IHzWf) (:text |a) (:type :leaf)
                                      |j $ {} (:at 1637252518113) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637252518113) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1637252518113) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1637252518113) (:by |rJG4IHzWf) (:text |:inner-text) (:type :leaf)
                                              |j $ {} (:at 1637252522201) (:by |rJG4IHzWf) (:text "|\"Calcit") (:type :leaf)
                                          |r $ {} (:at 1637252518113) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1637252518113) (:by |rJG4IHzWf) (:text |:target) (:type :leaf)
                                              |j $ {} (:at 1637252518113) (:by |rJG4IHzWf) (:text "|\"_blank") (:type :leaf)
                                          |v $ {} (:at 1637252518113) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1637252518113) (:by |rJG4IHzWf) (:text |:href) (:type :leaf)
                                              |j $ {} (:at 1637252528550) (:by |rJG4IHzWf) (:text "|\"http://calcit-lang.org/") (:type :leaf)
                                          |x $ {} (:at 1637252545288) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1690475941252) (:by |rJG4IHzWf) (:text |:class-name) (:type :leaf)
                                              |b $ {} (:at 1690475945409) (:by |rJG4IHzWf) (:text |css-logo) (:type :leaf)
                                  |T $ {} (:at 1690477102094) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1690477102623) (:by |rJG4IHzWf) (:text |=<) (:type :leaf)
                                      |b $ {} (:at 1690477107569) (:by |rJG4IHzWf) (:text |16) (:type :leaf)
                                      |h $ {} (:at 1690477104275) (:by |rJG4IHzWf) (:text |nil) (:type :leaf)
                                  |Y $ {} (:at 1690397198162) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1690397198162) (:by |rJG4IHzWf) (:text |memof-call) (:type :leaf)
                                      |b $ {} (:at 1690397198162) (:by |rJG4IHzWf) (:text |comp-tags-list) (:type :leaf)
                                      |h $ {} (:at 1690397198162) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                                      |l $ {} (:at 1690397198162) (:by |rJG4IHzWf) (:text |cursor) (:type :leaf)
                              |j $ {} (:at 1637252367945) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637252369275) (:by |rJG4IHzWf) (:text |a) (:type :leaf)
                                  |j $ {} (:at 1637252370008) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637252370321) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1637252370714) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637252375965) (:by |rJG4IHzWf) (:text |:inner-text) (:type :leaf)
                                          |j $ {} (:at 1637252443762) (:by |rJG4IHzWf) (:text "|\"Try & Play") (:type :leaf)
                                      |r $ {} (:at 1637252404884) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637252406152) (:by |rJG4IHzWf) (:text |:target) (:type :leaf)
                                          |j $ {} (:at 1637252411581) (:by |rJG4IHzWf) (:text "|\"_blank") (:type :leaf)
                                      |v $ {} (:at 1637252423792) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637252425006) (:by |rJG4IHzWf) (:text |:href) (:type :leaf)
                                          |j $ {} (:at 1637252426251) (:by |rJG4IHzWf) (:text "|\"http://repo.calcit-lang.org/calcit-wasm-play/") (:type :leaf)
                          |k $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:text |div) (:type :leaf)
                              |j $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1690475957585) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1690475960623) (:by |rJG4IHzWf) (:text |:class-name) (:type :leaf)
                                      |b $ {} (:at 1690475963319) (:by |rJG4IHzWf) (:text |css/row-parted) (:type :leaf)
                                  |j $ {} (:at 1603122358010) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1603122359095) (:by |rJG4IHzWf) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1690397942311) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1690397942311) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                          |b $ {} (:at 1690397942311) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1690397942311) (:by |rJG4IHzWf) (:text |:padding) (:type :leaf)
                                              |b $ {} (:at 1690397942311) (:by |rJG4IHzWf) (:text "|\"0 8px") (:type :leaf)
                              |r $ {} (:at 1628676357213) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1628676358203) (:by |rJG4IHzWf) (:text |div) (:type :leaf)
                                  |L $ {} (:at 1628676359108) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1628676359438) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1628676361629) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1690476226492) (:by |rJG4IHzWf) (:text |:class-name) (:type :leaf)
                                          |j $ {} (:at 1690476228237) (:by |rJG4IHzWf) (:text |css/row-middle) (:type :leaf)
                                  |T $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:text |input) (:type :leaf)
                                      |j $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                          |b $ {} (:at 1690475971925) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1690475974375) (:by |rJG4IHzWf) (:text |:class-name) (:type :leaf)
                                              |b $ {} (:at 1690476144260) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1690476146678) (:by |rJG4IHzWf) (:text |str-spaced) (:type :leaf)
                                                  |T $ {} (:at 1690475978644) (:by |rJG4IHzWf) (:text |css/input) (:type :leaf)
                                                  |b $ {} (:at 1692121026511) (:by |rJG4IHzWf) (:text |css/font-code!) (:type :leaf)
                                          |r $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:text |:value) (:type :leaf)
                                              |j $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:text |:query) (:type :leaf)
                                                  |j $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                                          |v $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:text |:placeholder) (:type :leaf)
                                              |j $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:text "|\"search") (:type :leaf)
                                          |w $ {} (:at 1692120236414) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1692120243598) (:by |rJG4IHzWf) (:text |:autofocus) (:type :leaf)
                                              |b $ {} (:at 1692120244206) (:by |rJG4IHzWf) (:text |true) (:type :leaf)
                                          |x $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:text |:on-input) (:type :leaf)
                                              |j $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:text |e) (:type :leaf)
                                                      |j $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:text |d!) (:type :leaf)
                                                  |r $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:text |d!) (:type :leaf)
                                                      |j $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:text |cursor) (:type :leaf)
                                                      |r $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:text |assoc) (:type :leaf)
                                                          |j $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                                                          |r $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:text |:query) (:type :leaf)
                                                          |v $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:text |:value) (:type :leaf)
                                                              |j $ {} (:at 1603121196598) (:by |rJG4IHzWf) (:text |e) (:type :leaf)
                                  |b $ {} (:at 1628676370701) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1628676371853) (:by |rJG4IHzWf) (:text |=<) (:type :leaf)
                                      |b $ {} (:at 1628676375639) (:by |rJG4IHzWf) (:text |8) (:type :leaf)
                                      |j $ {} (:at 1628676373922) (:by |rJG4IHzWf) (:text |nil) (:type :leaf)
                                  |j $ {} (:at 1628676369876) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1628676369876) (:by |rJG4IHzWf) (:text |<>) (:type :leaf)
                                      |j $ {} (:at 1628676369876) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1628676369876) (:by |rJG4IHzWf) (:text |str) (:type :leaf)
                                          |j $ {} (:at 1628676398777) (:by |rJG4IHzWf) (:text "|\"has ") (:type :leaf)
                                          |r $ {} (:at 1628676369876) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1628676369876) (:by |rJG4IHzWf) (:text |count) (:type :leaf)
                                              |j $ {} (:at 1628676369876) (:by |rJG4IHzWf) (:text |visible-apis) (:type :leaf)
                                          |v $ {} (:at 1628676369876) (:by |rJG4IHzWf) (:text "|\" entries.") (:type :leaf)
                                      |r $ {} (:at 1628676369876) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1628676369876) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1628676369876) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1628676369876) (:by |rJG4IHzWf) (:text |:font-family) (:type :leaf)
                                              |j $ {} (:at 1628676369876) (:by |rJG4IHzWf) (:text |ui/font-fancy) (:type :leaf)
                                          |r $ {} (:at 1628676369876) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1628676369876) (:by |rJG4IHzWf) (:text |:color) (:type :leaf)
                                              |j $ {} (:at 1628676369876) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1628676369876) (:by |rJG4IHzWf) (:text |hsl) (:type :leaf)
                                                  |j $ {} (:at 1628676369876) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                                  |r $ {} (:at 1628676369876) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                                  |v $ {} (:at 1628676369876) (:by |rJG4IHzWf) (:text |70) (:type :leaf)
                              |v $ {} (:at 1604977550315) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1604977550977) (:by |rJG4IHzWf) (:text |div) (:type :leaf)
                                  |L $ {} (:at 1604977551232) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1604977551585) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1604977568568) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1690476233496) (:by |rJG4IHzWf) (:text |:class-name) (:type :leaf)
                                          |j $ {} (:at 1690476235096) (:by |rJG4IHzWf) (:text |css/row-middle) (:type :leaf)
                                  |P $ {} (:at 1604977555276) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1611835338201) (:by |rJG4IHzWf) (:text |memof-call) (:type :leaf)
                                      |T $ {} (:at 1604977555276) (:by |rJG4IHzWf) (:text |comp-cirru-ui-switcher) (:type :leaf)
                                      |j $ {} (:at 1604977555276) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                                      |r $ {} (:at 1604977555276) (:by |rJG4IHzWf) (:text |cursor) (:type :leaf)
                                  |Q $ {} (:at 1604977563989) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1604977563989) (:by |rJG4IHzWf) (:text |=<) (:type :leaf)
                                      |j $ {} (:at 1604977563989) (:by |rJG4IHzWf) (:text |12) (:type :leaf)
                                      |r $ {} (:at 1604977563989) (:by |rJG4IHzWf) (:text |nil) (:type :leaf)
                                  |R $ {} (:at 1604977559426) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1611835336894) (:by |rJG4IHzWf) (:text |memof-call) (:type :leaf)
                                      |T $ {} (:at 1604977559426) (:by |rJG4IHzWf) (:text |comp-wip-switcher) (:type :leaf)
                                      |j $ {} (:at 1604977559426) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                                      |r $ {} (:at 1604977559426) (:by |rJG4IHzWf) (:text |cursor) (:type :leaf)
                      |vD $ {} (:at 1628675530786) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1628675532642) (:by |rJG4IHzWf) (:text |div) (:type :leaf)
                          |L $ {} (:at 1628675532998) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1628675533313) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                              |b $ {} (:at 1690475999022) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1690476000827) (:by |rJG4IHzWf) (:text |:class-name) (:type :leaf)
                                  |b $ {} (:at 1690476005941) (:by |rJG4IHzWf) (:text |css/expand) (:type :leaf)
                              |j $ {} (:at 1628675558395) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1628675561035) (:by |rJG4IHzWf) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1628675561378) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1628675561703) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1628675562069) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1628675564352) (:by |rJG4IHzWf) (:text |:background-color) (:type :leaf)
                                          |j $ {} (:at 1646665651014) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1646665651014) (:by |rJG4IHzWf) (:text |hsl) (:type :leaf)
                                              |b $ {} (:at 1646665651014) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                              |h $ {} (:at 1646665651014) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                              |l $ {} (:at 1646665651014) (:by |rJG4IHzWf) (:text |100) (:type :leaf)
                                              |o $ {} (:at 1646665651014) (:by |rJG4IHzWf) (:text |0.6) (:type :leaf)
                          |j $ {} (:at 1628675546161) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1628675549636) (:by |rJG4IHzWf) (:text |=<) (:type :leaf)
                              |j $ {} (:at 1628675550675) (:by |rJG4IHzWf) (:text |nil) (:type :leaf)
                              |r $ {} (:at 1628675550961) (:by |rJG4IHzWf) (:text |8) (:type :leaf)
                          |r $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:text |list->) (:type :leaf)
                              |j $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1690397882923) (:by |rJG4IHzWf) (:text |:class-name) (:type :leaf)
                                      |b $ {} (:at 1690397883203) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1690397886324) (:by |rJG4IHzWf) (:text |str-spaced) (:type :leaf)
                                          |b $ {} (:at 1690397888739) (:by |rJG4IHzWf) (:text |css/expand) (:type :leaf)
                                          |h $ {} (:at 1690397891826) (:by |rJG4IHzWf) (:text |css-list) (:type :leaf)
                              |r $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:text |->) (:type :leaf)
                                  |j $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:text |visible-apis) (:type :leaf)
                                  |r $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:text |sort) (:type :leaf)
                                      |j $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:text |a) (:type :leaf)
                                              |j $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:text |b) (:type :leaf)
                                          |r $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:text |&str:compare) (:type :leaf)
                                              |j $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:text |:name) (:type :leaf)
                                                  |j $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:text |a) (:type :leaf)
                                              |r $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:text |:name) (:type :leaf)
                                                  |j $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:text |b) (:type :leaf)
                                  |v $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:text |map) (:type :leaf)
                                      |j $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:text |info) (:type :leaf)
                                          |r $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                              |j $ {} (:at 1690397398118) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1690397398885) (:by |rJG4IHzWf) (:text |str) (:type :leaf)
                                                  |L $ {} (:at 1690397400054) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1690397404143) (:by |rJG4IHzWf) (:text |:source) (:type :leaf)
                                                      |b $ {} (:at 1690397404698) (:by |rJG4IHzWf) (:text |info) (:type :leaf)
                                                  |T $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:text |:name) (:type :leaf)
                                                      |j $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:text |info) (:type :leaf)
                                              |r $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1650965466957) (:by |rJG4IHzWf) (:text |memof1-call-by) (:type :leaf)
                                                  |b $ {} (:at 1650965468169) (:by |rJG4IHzWf) (:text |info) (:type :leaf)
                                                  |j $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:text |comp-api-entry) (:type :leaf)
                                                  |r $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:text |info) (:type :leaf)
                                                  |v $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:text |:syntax) (:type :leaf)
                                                      |j $ {} (:at 1628675553621) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                          |v $ {} (:at 1628676230195) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1628676233776) (:by |rJG4IHzWf) (:text |=<) (:type :leaf)
                              |j $ {} (:at 1628676236418) (:by |rJG4IHzWf) (:text |nil) (:type :leaf)
                              |r $ {} (:at 1628676247314) (:by |rJG4IHzWf) (:text |400) (:type :leaf)
                      |x $ {} (:at 1521954055333) (:by |root) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1521954057510) (:by |root) (:text |when) (:type :leaf)
                          |L $ {} (:at 1521954059290) (:by |root) (:text |dev?) (:type :leaf)
                          |T $ {} (:at 1507461809635) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507461815046) (:by |root) (:text |comp-reel) (:type :leaf)
                              |b $ {} (:at 1584780610581) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1584780611347) (:by |rJG4IHzWf) (:text |>>) (:type :leaf)
                                  |T $ {} (:at 1509727101297) (:by |root) (:text |states) (:type :leaf)
                                  |j $ {} (:at 1584780613268) (:by |rJG4IHzWf) (:text |:reel) (:type :leaf)
                              |j $ {} (:at 1507461840459) (:by |root) (:text |reel) (:type :leaf)
                              |r $ {} (:at 1507461840980) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507461841342) (:by |root) (:text |{}) (:type :leaf)
          |comp-method-targets $ {} (:at 1622633395234) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1622633405214) (:by |rJG4IHzWf) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1622633395234) (:by |rJG4IHzWf) (:text |comp-method-targets) (:type :leaf)
              |r $ {} (:at 1622633395234) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1622633395234) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                  |j $ {} (:at 1622633395234) (:by |rJG4IHzWf) (:text |cursor) (:type :leaf)
              |v $ {} (:at 1622633647308) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1622633648012) (:by |rJG4IHzWf) (:text |div) (:type :leaf)
                  |L $ {} (:at 1622633648226) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1622633648568) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1622633659934) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1622633661887) (:by |rJG4IHzWf) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1628677526628) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1628677527636) (:by |rJG4IHzWf) (:text |merge) (:type :leaf)
                              |T $ {} (:at 1622633662704) (:by |rJG4IHzWf) (:text |ui/row) (:type :leaf)
                              |j $ {} (:at 1628677528227) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1628677529682) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1628677530217) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1628677530217) (:by |rJG4IHzWf) (:text |:user-select) (:type :leaf)
                                      |j $ {} (:at 1628677530217) (:by |rJG4IHzWf) (:text |:none) (:type :leaf)
                  |P $ {} (:at 1622633650369) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1622633653523) (:by |rJG4IHzWf) (:text |<>) (:type :leaf)
                      |j $ {} (:at 1622633667642) (:by |rJG4IHzWf) (:text "|\"Methods:") (:type :leaf)
                      |r $ {} (:at 1628676444799) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1628676445558) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                          |T $ {} (:at 1628676443818) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1628676443818) (:by |rJG4IHzWf) (:text |:font-family) (:type :leaf)
                              |j $ {} (:at 1628676443818) (:by |rJG4IHzWf) (:text |ui/font-fancy) (:type :leaf)
                  |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |div) (:type :leaf)
                      |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |r $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |&) (:type :leaf)
                      |v $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |->) (:type :leaf)
                          |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                              |b $ {} (:at 1622633439475) (:by |rJG4IHzWf) (:text |nil) (:type :leaf)
                              |f $ {} (:at 1629457954263) (:by |rJG4IHzWf) (:text |:internals) (:type :leaf)
                              |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |:list) (:type :leaf)
                              |r $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |:map) (:type :leaf)
                              |v $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |:number) (:type :leaf)
                              |x $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |:string) (:type :leaf)
                              |y $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |:set) (:type :leaf)
                              |yr $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |:record) (:type :leaf)
                              |yt $ {} (:at 1629457942284) (:by |rJG4IHzWf) (:text |:nil) (:type :leaf)
                              |yu $ {} (:at 1629457943672) (:by |rJG4IHzWf) (:text |:fn) (:type :leaf)
                          |r $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |map) (:type :leaf)
                              |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1622633461393) (:by |rJG4IHzWf) (:text |target) (:type :leaf)
                                  |r $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |div) (:type :leaf)
                                      |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |:style) (:type :leaf)
                                              |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |merge) (:type :leaf)
                                                  |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                                      |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |:display) (:type :leaf)
                                                          |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |:inline-block) (:type :leaf)
                                                      |r $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |:background-color) (:type :leaf)
                                                          |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |hsl) (:type :leaf)
                                                              |j $ {} (:at 1622633567321) (:by |rJG4IHzWf) (:text |150) (:type :leaf)
                                                              |r $ {} (:at 1622633561842) (:by |rJG4IHzWf) (:text |50) (:type :leaf)
                                                              |v $ {} (:at 1622633572642) (:by |rJG4IHzWf) (:text |85) (:type :leaf)
                                                      |v $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |:margin) (:type :leaf)
                                                          |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text "|\"4px 4px") (:type :leaf)
                                                      |x $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |:padding) (:type :leaf)
                                                          |j $ {} (:at 1622633579829) (:by |rJG4IHzWf) (:text "|\"0 8px") (:type :leaf)
                                                      |y $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |:color) (:type :leaf)
                                                          |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |hsl) (:type :leaf)
                                                              |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                                              |r $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                                              |v $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |100) (:type :leaf)
                                                      |yT $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |:border-radius) (:type :leaf)
                                                          |j $ {} (:at 1622633583079) (:by |rJG4IHzWf) (:text "|\"2px") (:type :leaf)
                                                      |yj $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |:cursor) (:type :leaf)
                                                          |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |:pointer) (:type :leaf)
                                                      |yr $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |:line-height) (:type :leaf)
                                                          |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text "|\"22px") (:type :leaf)
                                                  |r $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                                                      |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1622633476076) (:by |rJG4IHzWf) (:text |=) (:type :leaf)
                                                          |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1622633472820) (:by |rJG4IHzWf) (:text |:method-target) (:type :leaf)
                                                              |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                                                          |r $ {} (:at 1622633474497) (:by |rJG4IHzWf) (:text |target) (:type :leaf)
                                                      |r $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                                          |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |:background-color) (:type :leaf)
                                                              |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |hsl) (:type :leaf)
                                                                  |j $ {} (:at 1622633594571) (:by |rJG4IHzWf) (:text |160) (:type :leaf)
                                                                  |r $ {} (:at 1622633598589) (:by |rJG4IHzWf) (:text |40) (:type :leaf)
                                                                  |v $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |60) (:type :leaf)
                                          |r $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |:on-click) (:type :leaf)
                                              |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |e) (:type :leaf)
                                                      |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |d!) (:type :leaf)
                                                  |r $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |d!) (:type :leaf)
                                                      |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |cursor) (:type :leaf)
                                                      |r $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |assoc) (:type :leaf)
                                                          |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                                                          |r $ {} (:at 1622633454967) (:by |rJG4IHzWf) (:text |:method-target) (:type :leaf)
                                                          |v $ {} (:at 1622633464711) (:by |rJG4IHzWf) (:text |target) (:type :leaf)
                                      |r $ {} (:at 1622633501484) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1622633502110) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                                          |L $ {} (:at 1622633502628) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1622633503348) (:by |rJG4IHzWf) (:text |some?) (:type :leaf)
                                              |j $ {} (:at 1622633503784) (:by |rJG4IHzWf) (:text |target) (:type :leaf)
                                          |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |<>) (:type :leaf)
                                              |j $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1622633410552) (:by |rJG4IHzWf) (:text |turn-string) (:type :leaf)
                                                  |j $ {} (:at 1622633480979) (:by |rJG4IHzWf) (:text |target) (:type :leaf)
                                          |j $ {} (:at 1622633505644) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1622633505954) (:by |rJG4IHzWf) (:text |<>) (:type :leaf)
                                              |j $ {} (:at 1622633544400) (:by |rJG4IHzWf) (:text "|\"None") (:type :leaf)
                                              |r $ {} (:at 1622633520873) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1622633521193) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1622633521407) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1622633523082) (:by |rJG4IHzWf) (:text |:font-weight) (:type :leaf)
                                                      |j $ {} (:at 1622633542073) (:by |rJG4IHzWf) (:text |300) (:type :leaf)
                                                  |r $ {} (:at 1622633530717) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1622633533113) (:by |rJG4IHzWf) (:text |:font-family) (:type :leaf)
                                                      |j $ {} (:at 1622633536806) (:by |rJG4IHzWf) (:text |ui/font-fancy) (:type :leaf)
          |comp-tags-list $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1603353261417) (:by |rJG4IHzWf) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |comp-tags-list) (:type :leaf)
              |n $ {} (:at 1603353199699) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1603353201007) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                  |j $ {} (:at 1603353231016) (:by |rJG4IHzWf) (:text |cursor) (:type :leaf)
              |r $ {} (:at 1622633671287) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1622633672054) (:by |rJG4IHzWf) (:text |div) (:type :leaf)
                  |L $ {} (:at 1622633672292) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1622633672664) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1622633674092) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1690476252099) (:by |rJG4IHzWf) (:text |:class-name) (:type :leaf)
                          |j $ {} (:at 1690476255160) (:by |rJG4IHzWf) (:text |css/row) (:type :leaf)
                  |P $ {} (:at 1622633678581) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1622633680827) (:by |rJG4IHzWf) (:text |<>) (:type :leaf)
                      |j $ {} (:at 1690477115626) (:by |rJG4IHzWf) (:text "|\"Tags:") (:type :leaf)
                      |r $ {} (:at 1628676429385) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1628676430419) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1628676430814) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1628676434653) (:by |rJG4IHzWf) (:text |:font-family) (:type :leaf)
                              |j $ {} (:at 1628676437689) (:by |rJG4IHzWf) (:text |ui/font-fancy) (:type :leaf)
                          |r $ {} (:at 1628677510200) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1628677515110) (:by |rJG4IHzWf) (:text |:user-select) (:type :leaf)
                              |j $ {} (:at 1628677517355) (:by |rJG4IHzWf) (:text |:none) (:type :leaf)
                          |t $ {} (:at 1690477132788) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690477135140) (:by |rJG4IHzWf) (:text |:color) (:type :leaf)
                              |b $ {} (:at 1690477135427) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1690477135707) (:by |rJG4IHzWf) (:text |hsl) (:type :leaf)
                                  |b $ {} (:at 1690477136114) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                  |h $ {} (:at 1690477136298) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                  |l $ {} (:at 1690477140138) (:by |rJG4IHzWf) (:text |70) (:type :leaf)
                  |T $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1619983903061) (:by |rJG4IHzWf) (:text |div) (:type :leaf)
                      |j $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |n $ {} (:at 1619983905248) (:by |rJG4IHzWf) (:text |&) (:type :leaf)
                      |r $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1619707385972) (:by |rJG4IHzWf) (:text |->) (:type :leaf)
                          |j $ {} (:at 1603353223462) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1603353223462) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1603353223462) (:by |rJG4IHzWf) (:text |:list) (:type :leaf)
                              |r $ {} (:at 1603353223462) (:by |rJG4IHzWf) (:text |:map) (:type :leaf)
                              |v $ {} (:at 1603353223462) (:by |rJG4IHzWf) (:text |:number) (:type :leaf)
                              |w $ {} (:at 1603363018265) (:by |rJG4IHzWf) (:text |:string) (:type :leaf)
                              |x $ {} (:at 1603353223462) (:by |rJG4IHzWf) (:text |:set) (:type :leaf)
                              |y $ {} (:at 1603353223462) (:by |rJG4IHzWf) (:text |:syntax) (:type :leaf)
                              |yT $ {} (:at 1603353223462) (:by |rJG4IHzWf) (:text |:macro) (:type :leaf)
                              |yb $ {} (:at 1615024849659) (:by |rJG4IHzWf) (:text |:record) (:type :leaf)
                              |yj $ {} (:at 1603353223462) (:by |rJG4IHzWf) (:text |:native) (:type :leaf)
                          |r $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |map) (:type :leaf)
                              |j $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |tag) (:type :leaf)
                                  |r $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |div) (:type :leaf)
                                      |j $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                          |b $ {} (:at 1690476279343) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1690476282379) (:by |rJG4IHzWf) (:text |:class-name) (:type :leaf)
                                              |b $ {} (:at 1690476284194) (:by |rJG4IHzWf) (:text |css-tag) (:type :leaf)
                                          |j $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |:style) (:type :leaf)
                                              |j $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                                                  |j $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1614255229632) (:by |rJG4IHzWf) (:text |includes?) (:type :leaf)
                                                      |j $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |:selected-tags) (:type :leaf)
                                                          |j $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                                                      |r $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |tag) (:type :leaf)
                                                  |r $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                                      |v $ {} (:at 1628677478979) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1628677478979) (:by |rJG4IHzWf) (:text |:color) (:type :leaf)
                                                          |j $ {} (:at 1628677478979) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1628677478979) (:by |rJG4IHzWf) (:text |hsl) (:type :leaf)
                                                              |j $ {} (:at 1628677478979) (:by |rJG4IHzWf) (:text |280) (:type :leaf)
                                                              |r $ {} (:at 1628677478979) (:by |rJG4IHzWf) (:text |80) (:type :leaf)
                                                              |v $ {} (:at 1628677483233) (:by |rJG4IHzWf) (:text |50) (:type :leaf)
                                          |r $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |:on-click) (:type :leaf)
                                              |j $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |e) (:type :leaf)
                                                      |j $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |d!) (:type :leaf)
                                                  |v $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |d!) (:type :leaf)
                                                      |j $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |cursor) (:type :leaf)
                                                      |r $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |assoc) (:type :leaf)
                                                          |j $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                                                          |r $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |:selected-tags) (:type :leaf)
                                                          |v $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                                                              |j $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1614255233489) (:by |rJG4IHzWf) (:text |includes?) (:type :leaf)
                                                                  |j $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |:selected-tags) (:type :leaf)
                                                                      |j $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                                                                  |r $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |tag) (:type :leaf)
                                                              |r $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1610957549842) (:by |rJG4IHzWf) (:text |exclude) (:type :leaf)
                                                                  |j $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |:selected-tags) (:type :leaf)
                                                                      |j $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                                                                  |r $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |tag) (:type :leaf)
                                                              |v $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1610957547669) (:by |rJG4IHzWf) (:text |include) (:type :leaf)
                                                                  |j $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |:selected-tags) (:type :leaf)
                                                                      |j $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                                                                  |r $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |tag) (:type :leaf)
                                      |r $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |<>) (:type :leaf)
                                          |j $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610954536922) (:by |rJG4IHzWf) (:text |turn-string) (:type :leaf)
                                              |j $ {} (:at 1603353193859) (:by |rJG4IHzWf) (:text |tag) (:type :leaf)
          |comp-wip-switcher $ {} (:at 1603363355911) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1603363357876) (:by |rJG4IHzWf) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1603363355911) (:by |rJG4IHzWf) (:text |comp-wip-switcher) (:type :leaf)
              |r $ {} (:at 1603363355911) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1603363355911) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                  |j $ {} (:at 1603363355911) (:by |rJG4IHzWf) (:text |cursor) (:type :leaf)
              |v $ {} (:at 1603363359050) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1603363372084) (:by |rJG4IHzWf) (:text |div) (:type :leaf)
                  |j $ {} (:at 1603363372833) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1603363373168) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1603363383538) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1690476408755) (:by |rJG4IHzWf) (:text |:class-name) (:type :leaf)
                          |b $ {} (:at 1690476413691) (:by |rJG4IHzWf) (:text |css-wip-switcher) (:type :leaf)
                      |r $ {} (:at 1603363398005) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1603363400418) (:by |rJG4IHzWf) (:text |:on-click) (:type :leaf)
                          |j $ {} (:at 1603363400826) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1603363401061) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1603363401271) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1603363401508) (:by |rJG4IHzWf) (:text |e) (:type :leaf)
                                  |j $ {} (:at 1603363401941) (:by |rJG4IHzWf) (:text |d!) (:type :leaf)
                              |r $ {} (:at 1603363402723) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1603363403118) (:by |rJG4IHzWf) (:text |d!) (:type :leaf)
                                  |j $ {} (:at 1603363404216) (:by |rJG4IHzWf) (:text |cursor) (:type :leaf)
                                  |r $ {} (:at 1603363404433) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1603363409030) (:by |rJG4IHzWf) (:text |update) (:type :leaf)
                                      |j $ {} (:at 1603363409719) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                                      |r $ {} (:at 1603363412659) (:by |rJG4IHzWf) (:text |:wip?) (:type :leaf)
                                      |v $ {} (:at 1603363414042) (:by |rJG4IHzWf) (:text |not) (:type :leaf)
                  |r $ {} (:at 1603363373692) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1603363374770) (:by |rJG4IHzWf) (:text |<>) (:type :leaf)
                      |j $ {} (:at 1603363379384) (:by |rJG4IHzWf) (:text "|\"All/WIP") (:type :leaf)
          |css-api-entry $ {} (:at 1690397607719) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1690397609221) (:by |rJG4IHzWf) (:text |defstyle) (:type :leaf)
              |b $ {} (:at 1690397607719) (:by |rJG4IHzWf) (:text |css-api-entry) (:type :leaf)
              |h $ {} (:at 1690397607719) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1690397620349) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                  |X $ {} (:at 1690397680819) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1690397681973) (:by |rJG4IHzWf) (:text "|\"&") (:type :leaf)
                      |b $ {} (:at 1690397683233) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1690397683233) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1690397683233) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690397683233) (:by |rJG4IHzWf) (:text |:margin) (:type :leaf)
                              |b $ {} (:at 1690397683233) (:by |rJG4IHzWf) (:text "|\"4px") (:type :leaf)
                          |h $ {} (:at 1690397683233) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690397683233) (:by |rJG4IHzWf) (:text |:padding) (:type :leaf)
                              |b $ {} (:at 1692120936798) (:by |rJG4IHzWf) (:text "|\"2px 12px") (:type :leaf)
                  |b $ {} (:at 1690397623431) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1690397627807) (:by |rJG4IHzWf) (:text "|\"&:hover") (:type :leaf)
                      |b $ {} (:at 1690397628180) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1690397628463) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1690397763527) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1692120817036) (:by |rJG4IHzWf) (:text |;) (:type :leaf)
                              |T $ {} (:at 1690397765792) (:by |rJG4IHzWf) (:text |:box-shadow) (:type :leaf)
                              |b $ {} (:at 1690397776673) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1690397777345) (:by |rJG4IHzWf) (:text |str) (:type :leaf)
                                  |T $ {} (:at 1690397797352) (:by |rJG4IHzWf) (:text "|\"0 1px 1px ") (:type :leaf)
                                  |b $ {} (:at 1690397778604) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1690397778961) (:by |rJG4IHzWf) (:text |hsl) (:type :leaf)
                                      |b $ {} (:at 1690397779496) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                      |h $ {} (:at 1690397779801) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                      |l $ {} (:at 1690397780126) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                      |o $ {} (:at 1690397784444) (:by |rJG4IHzWf) (:text |0.2) (:type :leaf)
                          |h $ {} (:at 1692120789006) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1692120792901) (:by |rJG4IHzWf) (:text |:background-color) (:type :leaf)
                              |b $ {} (:at 1692120793196) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1692120793501) (:by |rJG4IHzWf) (:text |hsl) (:type :leaf)
                                  |b $ {} (:at 1692120793791) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                  |h $ {} (:at 1692120793977) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                  |l $ {} (:at 1692120971785) (:by |rJG4IHzWf) (:text |96) (:type :leaf)
          |css-code $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1692120757121) (:by |rJG4IHzWf) (:text |defstyle) (:type :leaf)
              |b $ {} (:at 1690476093745) (:by |rJG4IHzWf) (:text |css-code) (:type :leaf)
              |h $ {} (:at 1692120758806) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1692120759282) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                  |T $ {} (:at 1692120760096) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1692120763384) (:by |rJG4IHzWf) (:text "|\"&") (:type :leaf)
                      |T $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:text |:font-family) (:type :leaf)
                              |b $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:text |ui/font-code) (:type :leaf)
                          |h $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:text |:border) (:type :leaf)
                              |b $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:text |str) (:type :leaf)
                                  |b $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:text "|\"1px solid ") (:type :leaf)
                                  |h $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:text |hsl) (:type :leaf)
                                      |b $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                      |h $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                      |l $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:text |94) (:type :leaf)
                          |l $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:text |:border-radius) (:type :leaf)
                              |b $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:text "|\"4px") (:type :leaf)
                          |o $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:text |:display) (:type :leaf)
                              |b $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:text |:inline-block) (:type :leaf)
                          |q $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:text |:padding) (:type :leaf)
                              |b $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:text "|\"2px 8px") (:type :leaf)
                          |s $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:text |:line-height) (:type :leaf)
                              |b $ {} (:at 1692120742722) (:by |rJG4IHzWf) (:text "|\"22px") (:type :leaf)
                          |t $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:text |:margin) (:type :leaf)
                              |b $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:text "|\"0px 0px") (:type :leaf)
                          |u $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1692120838924) (:by |rJG4IHzWf) (:text |;) (:type :leaf)
                              |T $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:text |:background-color) (:type :leaf)
                              |b $ {} (:at 1646665859894) (:by |rJG4IHzWf) (:text |:white) (:type :leaf)
          |css-desc $ {} (:at 1690476057756) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1690476060478) (:by |rJG4IHzWf) (:text |defstyle) (:type :leaf)
              |b $ {} (:at 1690476057756) (:by |rJG4IHzWf) (:text |css-desc) (:type :leaf)
              |h $ {} (:at 1690476062032) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1690476062594) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                  |T $ {} (:at 1690476062996) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1690476064228) (:by |rJG4IHzWf) (:text "|\"&") (:type :leaf)
                      |T $ {} (:at 1690476061708) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1690476061708) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1690476061708) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690476061708) (:by |rJG4IHzWf) (:text |:color) (:type :leaf)
                              |b $ {} (:at 1690476061708) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1690476061708) (:by |rJG4IHzWf) (:text |hsl) (:type :leaf)
                                  |b $ {} (:at 1690476061708) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                  |h $ {} (:at 1690476061708) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                  |l $ {} (:at 1690476061708) (:by |rJG4IHzWf) (:text |70) (:type :leaf)
                          |h $ {} (:at 1690476061708) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690476061708) (:by |rJG4IHzWf) (:text |:padding-left) (:type :leaf)
                              |b $ {} (:at 1690476061708) (:by |rJG4IHzWf) (:text |16) (:type :leaf)
                          |l $ {} (:at 1690476061708) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690476061708) (:by |rJG4IHzWf) (:text |:line-height) (:type :leaf)
                              |b $ {} (:at 1690476061708) (:by |rJG4IHzWf) (:text "|\"20px") (:type :leaf)
          |css-list $ {} (:at 1690397892285) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1690397893731) (:by |rJG4IHzWf) (:text |defstyle) (:type :leaf)
              |b $ {} (:at 1690397892285) (:by |rJG4IHzWf) (:text |css-list) (:type :leaf)
              |h $ {} (:at 1690397892285) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1690397894742) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                  |b $ {} (:at 1690397895442) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1690397896013) (:by |rJG4IHzWf) (:text "|\"&") (:type :leaf)
                      |b $ {} (:at 1690397896399) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1690397896694) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1690397896971) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690397899089) (:by |rJG4IHzWf) (:text |:padding) (:type :leaf)
                              |b $ {} (:at 1692120951245) (:by |rJG4IHzWf) (:text "|\"0 0px") (:type :leaf)
          |css-logo $ {} (:at 1690475945701) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1690475947239) (:by |rJG4IHzWf) (:text |defstyle) (:type :leaf)
              |b $ {} (:at 1690475945701) (:by |rJG4IHzWf) (:text |css-logo) (:type :leaf)
              |h $ {} (:at 1690475945701) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1690475948395) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                  |b $ {} (:at 1690475949058) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1690475950127) (:by |rJG4IHzWf) (:text "|\"&") (:type :leaf)
                      |b $ {} (:at 1690475951090) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1690475951090) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1690475951090) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690475951090) (:by |rJG4IHzWf) (:text |:font-size) (:type :leaf)
                              |b $ {} (:at 1690475951090) (:by |rJG4IHzWf) (:text |20) (:type :leaf)
                          |h $ {} (:at 1690475951090) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690475951090) (:by |rJG4IHzWf) (:text |:font-family) (:type :leaf)
                              |b $ {} (:at 1690475951090) (:by |rJG4IHzWf) (:text |ui/font-fancy) (:type :leaf)
                          |l $ {} (:at 1690475951090) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690475951090) (:by |rJG4IHzWf) (:text |:text-decoration) (:type :leaf)
                              |b $ {} (:at 1690475951090) (:by |rJG4IHzWf) (:text |:none) (:type :leaf)
                          |o $ {} (:at 1690475951090) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690475951090) (:by |rJG4IHzWf) (:text |:font-weight) (:type :leaf)
                              |b $ {} (:at 1690475951090) (:by |rJG4IHzWf) (:text |:bold) (:type :leaf)
                          |q $ {} (:at 1690475951090) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690475951090) (:by |rJG4IHzWf) (:text |:color) (:type :leaf)
                              |b $ {} (:at 1690475951090) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1690475951090) (:by |rJG4IHzWf) (:text |hsl) (:type :leaf)
                                  |b $ {} (:at 1690475951090) (:by |rJG4IHzWf) (:text |200) (:type :leaf)
                                  |h $ {} (:at 1690475951090) (:by |rJG4IHzWf) (:text |100) (:type :leaf)
                                  |l $ {} (:at 1690475951090) (:by |rJG4IHzWf) (:text |60) (:type :leaf)
          |css-nav $ {} (:at 1690475909420) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1690475910705) (:by |rJG4IHzWf) (:text |defstyle) (:type :leaf)
              |b $ {} (:at 1690475909420) (:by |rJG4IHzWf) (:text |css-nav) (:type :leaf)
              |h $ {} (:at 1690475912472) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1690475913114) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                  |T $ {} (:at 1690475913548) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1690475915021) (:by |rJG4IHzWf) (:text "|\"&") (:type :leaf)
                      |T $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text |:background-color) (:type :leaf)
                              |b $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text |hsl) (:type :leaf)
                                  |b $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                  |h $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                  |l $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text |100) (:type :leaf)
                                  |o $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text |0.6) (:type :leaf)
                          |h $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text |:padding) (:type :leaf)
                              |b $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text "|\"0px 8px 12px") (:type :leaf)
                          |l $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text |:border-bottom) (:type :leaf)
                              |b $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text |str) (:type :leaf)
                                  |b $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text "|\"1px solid ") (:type :leaf)
                                  |h $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text |hsl) (:type :leaf)
                                      |b $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                      |h $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                      |l $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text |90) (:type :leaf)
                          |o $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text |:box-shadow) (:type :leaf)
                              |b $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text |str) (:type :leaf)
                                  |b $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text "|\"0 0 4px ") (:type :leaf)
                                  |h $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text |hsl) (:type :leaf)
                                      |b $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                      |h $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                      |l $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                      |o $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text |0.2) (:type :leaf)
                          |q $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text |:z-index) (:type :leaf)
                              |b $ {} (:at 1690475912074) (:by |rJG4IHzWf) (:text |99) (:type :leaf)
          |css-switcher $ {} (:at 1690476376062) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1690476377447) (:by |rJG4IHzWf) (:text |defstyle) (:type :leaf)
              |b $ {} (:at 1690476376062) (:by |rJG4IHzWf) (:text |css-switcher) (:type :leaf)
              |h $ {} (:at 1690476378381) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1690476379473) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                  |T $ {} (:at 1690476379846) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1690476381098) (:by |rJG4IHzWf) (:text "|\"&") (:type :leaf)
                      |T $ {} (:at 1690476378086) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1690476378086) (:by |rJG4IHzWf) (:text |merge) (:type :leaf)
                          |b $ {} (:at 1690476378086) (:by |rJG4IHzWf) (:text |ui/row-middle) (:type :leaf)
                          |h $ {} (:at 1690476378086) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690476378086) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                              |b $ {} (:at 1690476378086) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1690476378086) (:by |rJG4IHzWf) (:text |:cursor) (:type :leaf)
                                  |b $ {} (:at 1690476378086) (:by |rJG4IHzWf) (:text |:pointer) (:type :leaf)
                              |h $ {} (:at 1690476378086) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1690476378086) (:by |rJG4IHzWf) (:text |:font-family) (:type :leaf)
                                  |b $ {} (:at 1690476378086) (:by |rJG4IHzWf) (:text |ui/font-fancy) (:type :leaf)
                              |l $ {} (:at 1690476378086) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1690476378086) (:by |rJG4IHzWf) (:text |:color) (:type :leaf)
                                  |b $ {} (:at 1690476378086) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1690476378086) (:by |rJG4IHzWf) (:text |hsl) (:type :leaf)
                                      |b $ {} (:at 1690476378086) (:by |rJG4IHzWf) (:text |200) (:type :leaf)
                                      |h $ {} (:at 1690476378086) (:by |rJG4IHzWf) (:text |80) (:type :leaf)
                                      |l $ {} (:at 1690476378086) (:by |rJG4IHzWf) (:text |80) (:type :leaf)
                              |o $ {} (:at 1690476378086) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1690476378086) (:by |rJG4IHzWf) (:text |:font-weight) (:type :leaf)
                                  |b $ {} (:at 1690476378086) (:by |rJG4IHzWf) (:text |300) (:type :leaf)
          |css-tag $ {} (:at 1690476284640) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1690476286685) (:by |rJG4IHzWf) (:text |defstyle) (:type :leaf)
              |b $ {} (:at 1690476284640) (:by |rJG4IHzWf) (:text |css-tag) (:type :leaf)
              |h $ {} (:at 1690476287750) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1690476288318) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                  |T $ {} (:at 1690476288706) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1690476289843) (:by |rJG4IHzWf) (:text "|\"&") (:type :leaf)
                      |T $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:text |:display) (:type :leaf)
                              |b $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:text |:inline-block) (:type :leaf)
                          |h $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:text |:margin) (:type :leaf)
                              |b $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:text "|\"4px 4px") (:type :leaf)
                          |l $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:text |:padding) (:type :leaf)
                              |b $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:text "|\"0 4px") (:type :leaf)
                          |o $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:text |:color) (:type :leaf)
                              |b $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:text |hsl) (:type :leaf)
                                  |b $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:text |280) (:type :leaf)
                                  |h $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:text |80) (:type :leaf)
                                  |l $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:text |84) (:type :leaf)
                          |q $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:text |:border-radius) (:type :leaf)
                              |b $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:text "|\"4px") (:type :leaf)
                          |s $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:text |:cursor) (:type :leaf)
                              |b $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:text |:pointer) (:type :leaf)
                          |t $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:text |:line-height) (:type :leaf)
                              |b $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:text "|\"20px") (:type :leaf)
                          |u $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:text |:user-select) (:type :leaf)
                              |b $ {} (:at 1690476287425) (:by |rJG4IHzWf) (:text |:none) (:type :leaf)
          |css-theme-container $ {} (:at 1692120883789) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1692120884852) (:by |rJG4IHzWf) (:text |defstyle) (:type :leaf)
              |b $ {} (:at 1692120883789) (:by |rJG4IHzWf) (:text |css-theme-container) (:type :leaf)
              |h $ {} (:at 1692120886425) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1692120888554) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                  |T $ {} (:at 1692120888947) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1692120890272) (:by |rJG4IHzWf) (:text "|\"&") (:type :leaf)
                      |T $ {} (:at 1692120886173) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1692120886173) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1692120886173) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1692120886173) (:by |rJG4IHzWf) (:text |:background-color) (:type :leaf)
                              |b $ {} (:at 1692120886173) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1692120886173) (:by |rJG4IHzWf) (:text |hsl) (:type :leaf)
                                  |b $ {} (:at 1692120886173) (:by |rJG4IHzWf) (:text |300) (:type :leaf)
                                  |h $ {} (:at 1692120886173) (:by |rJG4IHzWf) (:text |70) (:type :leaf)
                                  |l $ {} (:at 1692120886173) (:by |rJG4IHzWf) (:text |16) (:type :leaf)
                          |h $ {} (:at 1692120886173) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1692120886173) (:by |rJG4IHzWf) (:text |:padding) (:type :leaf)
                              |b $ {} (:at 1692120886173) (:by |rJG4IHzWf) (:text "|\"4px 0") (:type :leaf)
                          |l $ {} (:at 1692120886173) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1692120886173) (:by |rJG4IHzWf) (:text |:border-radius) (:type :leaf)
                              |b $ {} (:at 1692120886173) (:by |rJG4IHzWf) (:text "|\"4px") (:type :leaf)
          |css-wip-switcher $ {} (:at 1690476414036) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1690476415640) (:by |rJG4IHzWf) (:text |defstyle) (:type :leaf)
              |b $ {} (:at 1690476414036) (:by |rJG4IHzWf) (:text |css-wip-switcher) (:type :leaf)
              |h $ {} (:at 1690476417173) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1690476417678) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                  |T $ {} (:at 1690476419328) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1690476420450) (:by |rJG4IHzWf) (:text "|\"&") (:type :leaf)
                      |T $ {} (:at 1690476416931) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1690476416931) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1690476416931) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690476416931) (:by |rJG4IHzWf) (:text |:font-family) (:type :leaf)
                              |b $ {} (:at 1690476416931) (:by |rJG4IHzWf) (:text |ui/font-fancy) (:type :leaf)
                          |h $ {} (:at 1690476416931) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690476416931) (:by |rJG4IHzWf) (:text |:color) (:type :leaf)
                              |b $ {} (:at 1690476416931) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1690476416931) (:by |rJG4IHzWf) (:text |hsl) (:type :leaf)
                                  |b $ {} (:at 1690476416931) (:by |rJG4IHzWf) (:text |200) (:type :leaf)
                                  |h $ {} (:at 1690476416931) (:by |rJG4IHzWf) (:text |80) (:type :leaf)
                                  |l $ {} (:at 1690476416931) (:by |rJG4IHzWf) (:text |70) (:type :leaf)
                          |l $ {} (:at 1690476416931) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690476416931) (:by |rJG4IHzWf) (:text |:font-weight) (:type :leaf)
                              |b $ {} (:at 1690476416931) (:by |rJG4IHzWf) (:text |300) (:type :leaf)
                          |o $ {} (:at 1690476416931) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690476416931) (:by |rJG4IHzWf) (:text |:cursor) (:type :leaf)
                              |b $ {} (:at 1690476416931) (:by |rJG4IHzWf) (:text |:pointer) (:type :leaf)
          |get-query! $ {} (:at 1626769073313) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1626769075120) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |j $ {} (:at 1626769073313) (:by |rJG4IHzWf) (:text |get-query!) (:type :leaf)
              |r $ {} (:at 1626769073313) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
              |v $ {} (:at 1626769076526) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1626769125473) (:by |rJG4IHzWf) (:text |let) (:type :leaf)
                  |j $ {} (:at 1626769125946) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1626769126136) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1626769127105) (:by |rJG4IHzWf) (:text |obj) (:type :leaf)
                          |j $ {} (:at 1626769127598) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1626769127598) (:by |rJG4IHzWf) (:text |new) (:type :leaf)
                              |j $ {} (:at 1626769180506) (:by |rJG4IHzWf) (:text |js/URLSearchParams) (:type :leaf)
                              |r $ {} (:at 1626769257997) (:by |rJG4IHzWf) (:text |js/location.search) (:type :leaf)
                  |t $ {} (:at 1626769206707) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1626769207273) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                      |j $ {} (:at 1626769208592) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1626769213020) (:by |rJG4IHzWf) (:text |.!has) (:type :leaf)
                          |T $ {} (:at 1626769208482) (:by |rJG4IHzWf) (:text |obj) (:type :leaf)
                          |j $ {} (:at 1626769217054) (:by |rJG4IHzWf) (:text "|\"q") (:type :leaf)
                      |r $ {} (:at 1626769217683) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1626769219866) (:by |rJG4IHzWf) (:text |.!get) (:type :leaf)
                          |j $ {} (:at 1626769220399) (:by |rJG4IHzWf) (:text |obj) (:type :leaf)
                          |r $ {} (:at 1626769221240) (:by |rJG4IHzWf) (:text "|\"q") (:type :leaf)
                      |v $ {} (:at 1626769221996) (:by |rJG4IHzWf) (:text "|\"") (:type :leaf)
          |lisp-style $ {} (:at 1603121805988) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1603121805988) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |j $ {} (:at 1603270441191) (:by |rJG4IHzWf) (:text |lisp-style) (:type :leaf)
              |r $ {} (:at 1603121805988) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1603121807879) (:by |rJG4IHzWf) (:text |xs) (:type :leaf)
              |v $ {} (:at 1610955871668) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1610955872611) (:by |rJG4IHzWf) (:text |cond) (:type :leaf)
                  |T $ {} (:at 1603121809452) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |j $ {} (:at 1603121812621) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1603121812951) (:by |rJG4IHzWf) (:text |string?) (:type :leaf)
                          |j $ {} (:at 1603121813407) (:by |rJG4IHzWf) (:text |xs) (:type :leaf)
                      |r $ {} (:at 1603270446183) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1603270447263) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                          |L $ {} (:at 1610949895065) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610949896663) (:by |rJG4IHzWf) (:text |or) (:type :leaf)
                              |j $ {} (:at 1610949897760) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1614255255312) (:by |rJG4IHzWf) (:text |includes?) (:type :leaf)
                                  |j $ {} (:at 1610949902281) (:by |rJG4IHzWf) (:text |xs) (:type :leaf)
                                  |r $ {} (:at 1610949903108) (:by |rJG4IHzWf) (:text "|\" ") (:type :leaf)
                              |r $ {} (:at 1610949897760) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1614255257613) (:by |rJG4IHzWf) (:text |includes?) (:type :leaf)
                                  |j $ {} (:at 1610949902281) (:by |rJG4IHzWf) (:text |xs) (:type :leaf)
                                  |r $ {} (:at 1622634051027) (:by |rJG4IHzWf) (:text |&newline) (:type :leaf)
                              |v $ {} (:at 1610949897760) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1614255259689) (:by |rJG4IHzWf) (:text |includes?) (:type :leaf)
                                  |j $ {} (:at 1610949902281) (:by |rJG4IHzWf) (:text |xs) (:type :leaf)
                                  |r $ {} (:at 1610949910668) (:by |rJG4IHzWf) (:text "||\"") (:type :leaf)
                          |P $ {} (:at 1603270456042) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1603349723145) (:by |rJG4IHzWf) (:text |js/JSON.stringify) (:type :leaf)
                              |j $ {} (:at 1603270469067) (:by |rJG4IHzWf) (:text |xs) (:type :leaf)
                          |T $ {} (:at 1603121816298) (:by |rJG4IHzWf) (:text |xs) (:type :leaf)
                  |j $ {} (:at 1610955875165) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1610956040329) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610955876270) (:by |rJG4IHzWf) (:text |list?) (:type :leaf)
                          |j $ {} (:at 1610956040966) (:by |rJG4IHzWf) (:text |xs) (:type :leaf)
                      |T $ {} (:at 1610955874194) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610955874194) (:by |rJG4IHzWf) (:text |str) (:type :leaf)
                          |j $ {} (:at 1610955874194) (:by |rJG4IHzWf) (:text "|\"(") (:type :leaf)
                          |r $ {} (:at 1610955874194) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1619707397625) (:by |rJG4IHzWf) (:text |->) (:type :leaf)
                              |j $ {} (:at 1610955874194) (:by |rJG4IHzWf) (:text |xs) (:type :leaf)
                              |r $ {} (:at 1610955874194) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610955874194) (:by |rJG4IHzWf) (:text |map) (:type :leaf)
                                  |j $ {} (:at 1610955874194) (:by |rJG4IHzWf) (:text |lisp-style) (:type :leaf)
                              |v $ {} (:at 1610955874194) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610955874194) (:by |rJG4IHzWf) (:text |join-str) (:type :leaf)
                                  |j $ {} (:at 1610955874194) (:by |rJG4IHzWf) (:text "|\" ") (:type :leaf)
                          |v $ {} (:at 1610955874194) (:by |rJG4IHzWf) (:text "|\")") (:type :leaf)
                  |r $ {} (:at 1610955893452) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610955896412) (:by |rJG4IHzWf) (:text |true) (:type :leaf)
                      |j $ {} (:at 1610956026577) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1610956027385) (:by |rJG4IHzWf) (:text |str) (:type :leaf)
                          |T $ {} (:at 1610956028396) (:by |rJG4IHzWf) (:text "|\"TODO: ") (:type :leaf)
                          |j $ {} (:at 1610956029796) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610956029605) (:by |rJG4IHzWf) (:text |str) (:type :leaf)
                              |j $ {} (:at 1610956031004) (:by |rJG4IHzWf) (:text |xs) (:type :leaf)
          |slurp-cirru-edn $ {} (:at 1610950060783) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610950070005) (:by |rJG4IHzWf) (:text |defmacro) (:type :leaf)
              |j $ {} (:at 1610950083747) (:by |rJG4IHzWf) (:text |slurp-cirru-edn) (:type :leaf)
              |r $ {} (:at 1610950060783) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610950062962) (:by |rJG4IHzWf) (:text |file) (:type :leaf)
              |v $ {} (:at 1610951527391) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610951527391) (:by |rJG4IHzWf) (:text |read-file) (:type :leaf)
                  |j $ {} (:at 1610951527391) (:by |rJG4IHzWf) (:text |file) (:type :leaf)
          |stringify-cirru $ {} (:at 1611040642221) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1611040644133) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |j $ {} (:at 1611040642221) (:by |rJG4IHzWf) (:text |stringify-cirru) (:type :leaf)
              |r $ {} (:at 1611040642221) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1611040645324) (:by |rJG4IHzWf) (:text |x) (:type :leaf)
              |v $ {} (:at 1611040645883) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1611040653283) (:by |rJG4IHzWf) (:text |cond) (:type :leaf)
                  |j $ {} (:at 1611040653622) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1611040654118) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1611040655860) (:by |rJG4IHzWf) (:text |string?) (:type :leaf)
                          |j $ {} (:at 1611040656278) (:by |rJG4IHzWf) (:text |x) (:type :leaf)
                      |j $ {} (:at 1611040666158) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1611040667535) (:by |rJG4IHzWf) (:text |escape) (:type :leaf)
                          |j $ {} (:at 1611040668950) (:by |rJG4IHzWf) (:text |x) (:type :leaf)
                  |r $ {} (:at 1611040683419) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1611040683849) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1611040685069) (:by |rJG4IHzWf) (:text |list?) (:type :leaf)
                          |j $ {} (:at 1611040685854) (:by |rJG4IHzWf) (:text |x) (:type :leaf)
                      |j $ {} (:at 1611040695383) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1611040696066) (:by |rJG4IHzWf) (:text |str) (:type :leaf)
                          |L $ {} (:at 1611040697535) (:by |rJG4IHzWf) (:text "|\"[") (:type :leaf)
                          |T $ {} (:at 1611040686313) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1611040688999) (:by |rJG4IHzWf) (:text |join-str) (:type :leaf)
                              |r $ {} (:at 1611040849536) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1611040849536) (:by |rJG4IHzWf) (:text |map) (:type :leaf)
                                  |r $ {} (:at 1611040849536) (:by |rJG4IHzWf) (:text |x) (:type :leaf)
                                  |v $ {} (:at 1619707297058) (:by |rJG4IHzWf) (:text |stringify-cirru) (:type :leaf)
                              |v $ {} (:at 1619707334443) (:by |rJG4IHzWf) (:text "|\",") (:type :leaf)
                          |j $ {} (:at 1611040700163) (:by |rJG4IHzWf) (:text "|\"]") (:type :leaf)
                  |v $ {} (:at 1611040737198) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1611040739005) (:by |rJG4IHzWf) (:text |true) (:type :leaf)
                      |j $ {} (:at 1611040740499) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1611040741984) (:by |rJG4IHzWf) (:text |raise) (:type :leaf)
                          |j $ {} (:at 1611040747694) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1611040749601) (:by |rJG4IHzWf) (:text |str) (:type :leaf)
                              |T $ {} (:at 1611040751545) (:by |rJG4IHzWf) (:text "|\"Unknown type: ") (:type :leaf)
                              |j $ {} (:at 1611040752434) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1611040753437) (:by |rJG4IHzWf) (:text |type-of) (:type :leaf)
                                  |j $ {} (:at 1611040754158) (:by |rJG4IHzWf) (:text |x) (:type :leaf)
                              |r $ {} (:at 1611040875349) (:by |rJG4IHzWf) (:text |x) (:type :leaf)
        :ns $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
            |T $ {} (:at 1499755354983) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1499755354983) (:by |root) (:text |app.comp.container) (:type :leaf)
            |v $ {} (:at 1499755354983) (:type :expr)
              :data $ {}
                |T $ {} (:at 1499755354983) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1499755354983) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1610949416183) (:by |rJG4IHzWf) (:text |respo.util.format) (:type :leaf)
                    |r $ {} (:at 1499755354983) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1499755354983) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1499755354983) (:by |root) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1499755354983) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1516527080962) (:by |root) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1499755354983) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1499755354983) (:by |root) (:text |ui) (:type :leaf)
                |t $ {} (:at 1690397693174) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1690397696666) (:by |rJG4IHzWf) (:text |respo-ui.css) (:type :leaf)
                    |b $ {} (:at 1690397697537) (:by |rJG4IHzWf) (:text |:as) (:type :leaf)
                    |h $ {} (:at 1690397698179) (:by |rJG4IHzWf) (:text |css) (:type :leaf)
                |v $ {} (:at 1499755354983) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1540958704705) (:by |root) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1508946162679) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1499755354983) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1499755354983) (:by |root) (:text |defcomp) (:type :leaf)
                        |l $ {} (:at 1573355389740) (:by |rJG4IHzWf) (:text |defeffect) (:type :leaf)
                        |r $ {} (:at 1499755354983) (:by |root) (:text |<>) (:type :leaf)
                        |t $ {} (:at 1584780606618) (:by |rJG4IHzWf) (:text |>>) (:type :leaf)
                        |v $ {} (:at 1499755354983) (:by |root) (:text |div) (:type :leaf)
                        |x $ {} (:at 1499755354983) (:by |root) (:text |button) (:type :leaf)
                        |xT $ {} (:at 1512359490531) (:by |rJG4IHzWf) (:text |textarea) (:type :leaf)
                        |y $ {} (:at 1499755354983) (:by |root) (:text |span) (:type :leaf)
                        |yT $ {} (:at 1552321107012) (:by |rJG4IHzWf) (:text |input) (:type :leaf)
                        |yr $ {} (:at 1604978700418) (:by |rJG4IHzWf) (:text |pre) (:type :leaf)
                        |yv $ {} (:at 1619984504175) (:by |rJG4IHzWf) (:text |list->) (:type :leaf)
                        |yx $ {} (:at 1637252390744) (:by |rJG4IHzWf) (:text |a) (:type :leaf)
                |x $ {} (:at 1499755354983) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1499755354983) (:by |root) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1499755354983) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1499755354983) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1499755354983) (:by |root) (:text |=<) (:type :leaf)
                |y $ {} (:at 1507461845717) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1507461855480) (:by |root) (:text |reel.comp.reel) (:type :leaf)
                    |r $ {} (:at 1507461856264) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507461856484) (:by |root) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1507461858342) (:by |root) (:text |comp-reel) (:type :leaf)
                |yT $ {} (:at 1519699088529) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1519699092590) (:by |root) (:text |respo-md.comp.md) (:type :leaf)
                    |r $ {} (:at 1519699093410) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1519699093683) (:by |root) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1519699096732) (:by |root) (:text |comp-md) (:type :leaf)
                |yj $ {} (:at 1521954061310) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1527788377809) (:by |root) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1521954064826) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1521954065004) (:by |root) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1521954067604) (:by |root) (:text |dev?) (:type :leaf)
                |yy $ {} (:at 1603351469136) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1603351469899) (:by |rJG4IHzWf) (:text |respo-md.comp.md) (:type :leaf)
                    |r $ {} (:at 1603351471073) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1603351471297) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1603351474965) (:by |rJG4IHzWf) (:text |comp-md) (:type :leaf)
                |yyT $ {} (:at 1603351611308) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1603351947552) (:by |rJG4IHzWf) (:text |calcit-theme.comp.expr) (:type :leaf)
                    |r $ {} (:at 1603351613199) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1603351613412) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1603351950756) (:by |rJG4IHzWf) (:text |render-expr) (:type :leaf)
                |yyr $ {} (:at 1611835320473) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1611835324953) (:by |rJG4IHzWf) (:text |memof.alias) (:type :leaf)
                    |r $ {} (:at 1611835325703) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1611835325907) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1611835327378) (:by |rJG4IHzWf) (:text |memof-call) (:type :leaf)
                |yyt $ {} (:at 1650965456891) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1650965458750) (:by |rJG4IHzWf) (:text |memof.once) (:type :leaf)
                    |b $ {} (:at 1650965460560) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1650965460875) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1650965464740) (:by |rJG4IHzWf) (:text |memof1-call-by) (:type :leaf)
                |yyv $ {} (:at 1629544302190) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629544306561) (:by |rJG4IHzWf) (:text |feather.core) (:type :leaf)
                    |j $ {} (:at 1629544307193) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1629544307474) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1629544308949) (:by |rJG4IHzWf) (:text |comp-i) (:type :leaf)
                |z $ {} (:at 1690397612605) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1690397614133) (:by |rJG4IHzWf) (:text |respo.css) (:type :leaf)
                    |b $ {} (:at 1690397614847) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1690397615084) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1690397616800) (:by |rJG4IHzWf) (:text |defstyle) (:type :leaf)
        :proc $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
      |app.config $ {}
        :defs $ {}
          |dev? $ {} (:at 1544873875614) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1544873875614) (:by |rJG4IHzWf) (:text |def) (:type :leaf)
              |j $ {} (:at 1544873875614) (:by |rJG4IHzWf) (:text |dev?) (:type :leaf)
              |r $ {} (:at 1664705533264) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1664705534987) (:by |rJG4IHzWf) (:text |get-env) (:type :leaf)
                  |b $ {} (:at 1664705536279) (:by |rJG4IHzWf) (:text "|\"mode") (:type :leaf)
                  |h $ {} (:at 1664705539040) (:by |rJG4IHzWf) (:text "|\"release") (:type :leaf)
          |site $ {} (:at 1545933382603) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1518157345496) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1518157327696) (:by |root) (:text |site) (:type :leaf)
              |r $ {} (:at 1518157327696) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1518157346643) (:by |root) (:text |{}) (:type :leaf)
                  |r $ {} (:at 1527526861413) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1527526864597) (:by |root) (:text |:dev-ui) (:type :leaf)
                      |x $ {} (:at 1556700447561) (:by |rJG4IHzWf) (:text "|\"http://localhost:8100/main-fonts.css") (:type :leaf)
                  |v $ {} (:at 1527526865931) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1527526868617) (:by |root) (:text |:release-ui) (:type :leaf)
                      |j $ {} (:at 1556700443008) (:by |rJG4IHzWf) (:text "|\"http://cdn.tiye.me/favored-fonts/main-fonts.css") (:type :leaf)
                  |w $ {} (:at 1528008960614) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1528008962775) (:by |root) (:text |:cdn-url) (:type :leaf)
                      |j $ {} (:at 1528008965359) (:by |root) (:text "|\"http://cdn.tiye.me/calcit-workflow/") (:type :leaf)
                  |y $ {} (:at 1527868456422) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1527868457305) (:by |root) (:text |:title) (:type :leaf)
                      |j $ {} (:at 1603167524702) (:by |rJG4IHzWf) (:text "|\"APIs for calcit-runner") (:type :leaf)
                  |yT $ {} (:at 1527868457696) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1527868458476) (:by |root) (:text |:icon) (:type :leaf)
                      |j $ {} (:at 1603422163889) (:by |rJG4IHzWf) (:text "|\"http://cdn.tiye.me/logo/cirru.png") (:type :leaf)
                  |yf $ {} (:at 1544956719115) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1544956719115) (:by |rJG4IHzWf) (:text |:storage-key) (:type :leaf)
                      |j $ {} (:at 1603167514094) (:by |rJG4IHzWf) (:text "|\"calcit-runner-apis") (:type :leaf)
        :ns $ {} (:at 1527788237503) (:by |root) (:type :expr)
          :data $ {}
            |T $ {} (:at 1527788237503) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1527788237503) (:by |root) (:text |app.config) (:type :leaf)
        :proc $ {} (:at 1527788237503) (:by |root) (:type :expr)
          :data $ {}
      |app.main $ {}
        :defs $ {}
          |*reel $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610950021279) (:by |rJG4IHzWf) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |*reel) (:type :leaf)
              |r $ {} (:at 1507399777531) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1507399778895) (:by |root) (:text |->) (:type :leaf)
                  |T $ {} (:at 1507399776350) (:by |root) (:text |reel-schema/reel) (:type :leaf)
                  |j $ {} (:at 1507399779656) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507399781682) (:by |root) (:text |assoc) (:type :leaf)
                      |j $ {} (:at 1507401405076) (:by |root) (:text |:base) (:type :leaf)
                      |r $ {} (:at 1507399787471) (:by |root) (:text |schema/store) (:type :leaf)
                  |r $ {} (:at 1507399779656) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507399781682) (:by |root) (:text |assoc) (:type :leaf)
                      |j $ {} (:at 1507399793097) (:by |root) (:text |:store) (:type :leaf)
                      |r $ {} (:at 1507399787471) (:by |root) (:text |schema/store) (:type :leaf)
          |dispatch! $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |dispatch!) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |op) (:type :leaf)
              |t $ {} (:at 1547437686766) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1547437687530) (:by |root) (:text |when) (:type :leaf)
                  |L $ {} (:at 1584874661674) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1584874662518) (:by |rJG4IHzWf) (:text |and) (:type :leaf)
                      |T $ {} (:at 1547437691006) (:by |root) (:text |config/dev?) (:type :leaf)
                  |T $ {} (:at 1518156274050) (:by |root) (:type :expr)
                    :data $ {}
                      |j $ {} (:at 1690397259142) (:by |rJG4IHzWf) (:text |js/console.log) (:type :leaf)
                      |r $ {} (:at 1547437698992) (:by |root) (:text "|\"Dispatch:") (:type :leaf)
                      |v $ {} (:at 1518156280471) (:by |root) (:text |op) (:type :leaf)
              |v $ {} (:at 1584780634192) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |reset!) (:type :leaf)
                  |j $ {} (:at 1507399899641) (:by |root) (:text |*reel) (:type :leaf)
                  |r $ {} (:at 1507399884621) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507399887573) (:by |root) (:text |reel-updater) (:type :leaf)
                      |j $ {} (:at 1507399888500) (:by |root) (:text |updater) (:type :leaf)
                      |r $ {} (:at 1507399891576) (:by |root) (:text |@*reel) (:type :leaf)
                      |v $ {} (:at 1507399892687) (:by |root) (:text |op) (:type :leaf)
          |main! $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |main!) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
              |s $ {} (:at 1690397240784) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1690397241360) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                  |L $ {} (:at 1690397249823) (:by |rJG4IHzWf) (:text |config/dev?) (:type :leaf)
                  |T $ {} (:at 1619982941704) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1619982955984) (:by |rJG4IHzWf) (:text |load-console-formatter!) (:type :leaf)
              |t $ {} (:at 1544874433785) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1544874434638) (:by |rJG4IHzWf) (:text |println) (:type :leaf)
                  |j $ {} (:at 1544874509800) (:by |rJG4IHzWf) (:text "|\"Running mode:") (:type :leaf)
                  |r $ {} (:at 1544874440404) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1544874440190) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                      |j $ {} (:at 1544874446442) (:by |rJG4IHzWf) (:text |config/dev?) (:type :leaf)
                      |r $ {} (:at 1544874449063) (:by |rJG4IHzWf) (:text "|\"dev") (:type :leaf)
                      |v $ {} (:at 1544874452316) (:by |rJG4IHzWf) (:text "|\"release") (:type :leaf)
              |v $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |if) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |ssr?) (:type :leaf)
                  |r $ {} (:at 1499755354983) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1499755354983) (:by |root) (:text |render-app!) (:type :leaf)
                      |j $ {} (:at 1499755354983) (:by |root) (:text |realize-ssr!) (:type :leaf)
              |x $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |render-app!) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |render!) (:type :leaf)
              |y $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |add-watch) (:type :leaf)
                  |j $ {} (:at 1507399915531) (:by |root) (:text |*reel) (:type :leaf)
                  |r $ {} (:at 1499755354983) (:by |root) (:text |:changes) (:type :leaf)
                  |v $ {} (:at 1499755354983) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1499755354983) (:by |root) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1499755354983) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612176018403) (:by |rJG4IHzWf) (:text |reel) (:type :leaf)
                          |j $ {} (:at 1612176021385) (:by |rJG4IHzWf) (:text |prev-reel) (:type :leaf)
                      |r $ {} (:at 1499755354983) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1499755354983) (:by |root) (:text |render-app!) (:type :leaf)
                          |j $ {} (:at 1499755354983) (:by |root) (:text |render!) (:type :leaf)
              |yD $ {} (:at 1507461684494) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1507461739167) (:by |root) (:text |listen-devtools!) (:type :leaf)
                  |j $ {} (:at 1507461691211) (:by |root) (:text ||a) (:type :leaf)
                  |r $ {} (:at 1507461693919) (:by |root) (:text |dispatch!) (:type :leaf)
              |yL $ {} (:at 1518157357847) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1610955980179) (:by |rJG4IHzWf) (:text |;) (:type :leaf)
                  |T $ {} (:at 1518157450281) (:by |root) (:text |.addEventListener) (:type :leaf)
                  |j $ {} (:at 1518157453505) (:by |root) (:text |js/window) (:type :leaf)
                  |r $ {} (:at 1518157458163) (:by |root) (:text ||beforeunload) (:type :leaf)
                  |v $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!) (:type :leaf)
              |yN $ {} (:at 1533919529874) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1610955977102) (:by |rJG4IHzWf) (:text |;) (:type :leaf)
                  |T $ {} (:at 1544956062322) (:by |rJG4IHzWf) (:text |repeat!) (:type :leaf)
                  |b $ {} (:at 1544956066171) (:by |rJG4IHzWf) (:text |60) (:type :leaf)
                  |j $ {} (:at 1533919535136) (:by |rJG4IHzWf) (:text |persist-storage!) (:type :leaf)
              |yP $ {} (:at 1518157492640) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1610955974955) (:by |rJG4IHzWf) (:text |;) (:type :leaf)
                  |T $ {} (:at 1518157495438) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1518157495644) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1518157495826) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1518157496930) (:by |root) (:text |raw) (:type :leaf)
                          |j $ {} (:at 1518157497615) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690396415616) (:by |rJG4IHzWf) (:text |js/localStorage.getItem) (:type :leaf)
                              |r $ {} (:at 1518157506313) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1544956709260) (:by |rJG4IHzWf) (:text |:storage-key) (:type :leaf)
                                  |j $ {} (:at 1527788293499) (:by |root) (:text |config/site) (:type :leaf)
                  |r $ {} (:at 1518157514334) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1533919640958) (:by |rJG4IHzWf) (:text |when) (:type :leaf)
                      |j $ {} (:at 1518157515117) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1518157515786) (:by |root) (:text |some?) (:type :leaf)
                          |j $ {} (:at 1518157516878) (:by |root) (:text |raw) (:type :leaf)
                      |r $ {} (:at 1518157521635) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1518157523818) (:by |root) (:text |dispatch!) (:type :leaf)
                          |r $ {} (:at 1690396418455) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1690396419037) (:by |rJG4IHzWf) (:text |::) (:type :leaf)
                              |L $ {} (:at 1690396419422) (:by |rJG4IHzWf) (:text |:hydrate-storage) (:type :leaf)
                              |T $ {} (:at 1610955967874) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1610955973069) (:by |rJG4IHzWf) (:text |extract-cirru-data) (:type :leaf)
                                  |T $ {} (:at 1518157527987) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610955966742) (:by |rJG4IHzWf) (:text |js/JSON.parse) (:type :leaf)
                                      |j $ {} (:at 1518157531240) (:by |root) (:text |raw) (:type :leaf)
              |yT $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |println) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text "||App started.") (:type :leaf)
          |mount-target $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |mount-target) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |.querySelector) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |js/document) (:type :leaf)
                  |r $ {} (:at 1499755354983) (:by |root) (:text ||.app) (:type :leaf)
          |persist-storage! $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1533919517365) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |j $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!) (:type :leaf)
              |r $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
              |v $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1610955983714) (:by |rJG4IHzWf) (:text |;) (:type :leaf)
                  |T $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |.setItem) (:type :leaf)
                  |j $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |js/localStorage) (:type :leaf)
                  |r $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1544956703087) (:by |rJG4IHzWf) (:text |:storage-key) (:type :leaf)
                      |j $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |config/site) (:type :leaf)
                  |v $ {} (:at 1610955957287) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1610955960605) (:by |rJG4IHzWf) (:text |js/JSON.stringify) (:type :leaf)
                      |T $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610955956856) (:by |rJG4IHzWf) (:text |to-calcit-data) (:type :leaf)
                          |j $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |:store) (:type :leaf)
                              |j $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |@*reel) (:type :leaf)
          |reload! $ {} (:at 1626769370991) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |D $ {} (:at 1626769371841) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |L $ {} (:at 1626769373262) (:by |rJG4IHzWf) (:text |reload!) (:type :leaf)
              |P $ {} (:at 1626769373822) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
              |T $ {} (:at 1626769375567) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1626769376072) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                  |L $ {} (:at 1626769376464) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1626769377296) (:by |rJG4IHzWf) (:text |some?) (:type :leaf)
                      |j $ {} (:at 1626769380429) (:by |rJG4IHzWf) (:text |build-errors) (:type :leaf)
                  |P $ {} (:at 1626769381420) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1626769383551) (:by |rJG4IHzWf) (:text |tip!) (:type :leaf)
                      |b $ {} (:at 1626769407621) (:by |rJG4IHzWf) (:text "|\"error") (:type :leaf)
                      |j $ {} (:at 1626769386097) (:by |rJG4IHzWf) (:text |build-errors) (:type :leaf)
                  |T $ {} (:at 1626769388510) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1626769388962) (:by |rJG4IHzWf) (:text |do) (:type :leaf)
                      |L $ {} (:at 1626769389912) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1626769431965) (:by |rJG4IHzWf) (:text |tip!) (:type :leaf)
                          |b $ {} (:at 1626769399420) (:by |rJG4IHzWf) (:text "|\"inactive") (:type :leaf)
                          |j $ {} (:at 1626769395996) (:by |rJG4IHzWf) (:text |nil) (:type :leaf)
                      |T $ {} (:at 1614610459743) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1614610461848) (:by |rJG4IHzWf) (:text |remove-watch) (:type :leaf)
                          |j $ {} (:at 1614610463332) (:by |rJG4IHzWf) (:text |*reel) (:type :leaf)
                          |r $ {} (:at 1614610465053) (:by |rJG4IHzWf) (:text |:changes) (:type :leaf)
                      |j $ {} (:at 1507461699387) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507461702453) (:by |root) (:text |clear-cache!) (:type :leaf)
                      |r $ {} (:at 1614610456287) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1614610456287) (:by |rJG4IHzWf) (:text |add-watch) (:type :leaf)
                          |j $ {} (:at 1614610456287) (:by |rJG4IHzWf) (:text |*reel) (:type :leaf)
                          |r $ {} (:at 1614610456287) (:by |rJG4IHzWf) (:text |:changes) (:type :leaf)
                          |v $ {} (:at 1614610456287) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1614610456287) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1614610456287) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1614610456287) (:by |rJG4IHzWf) (:text |reel) (:type :leaf)
                                  |j $ {} (:at 1626769447598) (:by |rJG4IHzWf) (:text |prev-reel) (:type :leaf)
                              |r $ {} (:at 1614610456287) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1626769449990) (:by |rJG4IHzWf) (:text |render-app!) (:type :leaf)
                                  |j $ {} (:at 1614610456287) (:by |rJG4IHzWf) (:text |render!) (:type :leaf)
                      |v $ {} (:at 1507461704162) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507461706990) (:by |root) (:text |reset!) (:type :leaf)
                          |j $ {} (:at 1507461708965) (:by |root) (:text |*reel) (:type :leaf)
                          |r $ {} (:at 1507461710020) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507461730190) (:by |root) (:text |refresh-reel) (:type :leaf)
                              |j $ {} (:at 1507461719097) (:by |root) (:text |@*reel) (:type :leaf)
                              |r $ {} (:at 1507461721870) (:by |root) (:text |schema/store) (:type :leaf)
                              |v $ {} (:at 1507461722724) (:by |root) (:text |updater) (:type :leaf)
                      |x $ {} (:at 1615024896477) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1615024896477) (:by |rJG4IHzWf) (:text |render-app!) (:type :leaf)
                          |j $ {} (:at 1615024896477) (:by |rJG4IHzWf) (:text |render!) (:type :leaf)
                      |y $ {} (:at 1499755354983) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1499755354983) (:by |root) (:text |println) (:type :leaf)
                          |j $ {} (:at 1596818890934) (:by |rJG4IHzWf) (:text "||Code updated.") (:type :leaf)
          |render-app! $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |render-app!) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |renderer) (:type :leaf)
              |v $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |renderer) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |mount-target) (:type :leaf)
                  |r $ {} (:at 1499755354983) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1499755354983) (:by |root) (:text |comp-container) (:type :leaf)
                      |j $ {} (:at 1507400119272) (:by |root) (:text |@*reel) (:type :leaf)
                  |v $ {} (:at 1511280017692) (:by |root) (:text |dispatch!) (:type :leaf)
          |repeat! $ {} (:at 1610949959548) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610949959548) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610949959548) (:by |rJG4IHzWf) (:text |repeat!) (:type :leaf)
              |r $ {} (:at 1610949959548) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610949961510) (:by |rJG4IHzWf) (:text |duration) (:type :leaf)
                  |j $ {} (:at 1610949962481) (:by |rJG4IHzWf) (:text |cb) (:type :leaf)
              |v $ {} (:at 1610949963443) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610949967510) (:by |rJG4IHzWf) (:text |js/setTimeout) (:type :leaf)
                  |b $ {} (:at 1610949974428) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610949974737) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1610949974965) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                      |r $ {} (:at 1610949977007) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610949976824) (:by |rJG4IHzWf) (:text |cb) (:type :leaf)
                      |v $ {} (:at 1610949978097) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610949982234) (:by |rJG4IHzWf) (:text |repeat!) (:type :leaf)
                          |j $ {} (:at 1610949985594) (:by |rJG4IHzWf) (:text |duration) (:type :leaf)
                          |r $ {} (:at 1610949988057) (:by |rJG4IHzWf) (:text |cb) (:type :leaf)
                  |j $ {} (:at 1610949970393) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610949970800) (:by |rJG4IHzWf) (:text |*) (:type :leaf)
                      |j $ {} (:at 1610949972139) (:by |rJG4IHzWf) (:text |1000) (:type :leaf)
                      |r $ {} (:at 1610949973380) (:by |rJG4IHzWf) (:text |duration) (:type :leaf)
          |snippets $ {} (:at 1551977434239) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1551977434239) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |j $ {} (:at 1551977434239) (:by |rJG4IHzWf) (:text |snippets) (:type :leaf)
              |r $ {} (:at 1551977434239) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
              |v $ {} (:at 1551977444630) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1551977458023) (:by |rJG4IHzWf) (:text |println) (:type :leaf)
                  |j $ {} (:at 1551977477010) (:by |rJG4IHzWf) (:text |config/cdn?) (:type :leaf)
          |ssr? $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |ssr?) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |some?) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1499755354983) (:by |root) (:text |js/document.querySelector) (:type :leaf)
                      |j $ {} (:at 1499755354983) (:by |root) (:text ||meta.respo-ssr) (:type :leaf)
        :ns $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
            |T $ {} (:at 1499755354983) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1499755354983) (:by |root) (:text |app.main) (:type :leaf)
            |r $ {} (:at 1499755354983) (:type :expr)
              :data $ {}
                |T $ {} (:at 1499755354983) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1499755354983) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1499755354983) (:by |root) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1499755354983) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1499755354983) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1499755354983) (:by |root) (:text |render!) (:type :leaf)
                        |r $ {} (:at 1499755354983) (:by |root) (:text |clear-cache!) (:type :leaf)
                        |v $ {} (:at 1499755354983) (:by |root) (:text |realize-ssr!) (:type :leaf)
                |v $ {} (:at 1499755354983) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1499755354983) (:by |root) (:text |app.comp.container) (:type :leaf)
                    |r $ {} (:at 1499755354983) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1499755354983) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1499755354983) (:by |root) (:text |comp-container) (:type :leaf)
                |y $ {} (:at 1499755354983) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1508556737455) (:by |root) (:text |app.updater) (:type :leaf)
                    |r $ {} (:at 1499755354983) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1499755354983) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1499755354983) (:by |root) (:text |updater) (:type :leaf)
                |yT $ {} (:at 1499755354983) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1499755354983) (:by |root) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1499755354983) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1499755354983) (:by |root) (:text |schema) (:type :leaf)
                |yj $ {} (:at 1507399674125) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1507399678694) (:by |root) (:text |reel.util) (:type :leaf)
                    |r $ {} (:at 1507399680625) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507399680857) (:by |root) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1518156292092) (:by |root) (:text |listen-devtools!) (:type :leaf)
                |yr $ {} (:at 1507399683930) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1507399687162) (:by |root) (:text |reel.core) (:type :leaf)
                    |r $ {} (:at 1507399688098) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507399688322) (:by |root) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1507399691010) (:by |root) (:text |reel-updater) (:type :leaf)
                        |q $ {} (:at 1518156288482) (:by |root) (:text |refresh-reel) (:type :leaf)
                |yv $ {} (:at 1507399715229) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1507399717674) (:by |root) (:text |reel.schema) (:type :leaf)
                    |r $ {} (:at 1507399755750) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1507399757678) (:by |root) (:text |reel-schema) (:type :leaf)
                |yy $ {} (:at 1527788302920) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1664705581604) (:by |rJG4IHzWf) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1527788306048) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1527788306884) (:by |root) (:text |config) (:type :leaf)
                |yyT $ {} (:at 1626769361295) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1626769365198) (:by |rJG4IHzWf) (:text "|\"bottom-tip") (:type :leaf)
                    |j $ {} (:at 1626769424391) (:by |rJG4IHzWf) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1626769367052) (:by |rJG4IHzWf) (:text |tip!) (:type :leaf)
                |yyj $ {} (:at 1626769410401) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1626769418150) (:by |rJG4IHzWf) (:text "|\"./calcit.build-errors") (:type :leaf)
                    |j $ {} (:at 1626769421231) (:by |rJG4IHzWf) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1626769421925) (:by |rJG4IHzWf) (:text |build-errors) (:type :leaf)
        :proc $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
      |app.schema $ {}
        :defs $ {}
          |store $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |store) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1499755354983) (:by |root) (:text |:states) (:type :leaf)
                      |j $ {} (:at 1499755354983) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1499755354983) (:by |root) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1584781004285) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1584781007054) (:by |rJG4IHzWf) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1584781007287) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1584781007486) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
        :ns $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
            |T $ {} (:at 1499755354983) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1499755354983) (:by |root) (:text |app.schema) (:type :leaf)
        :proc $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
      |app.updater $ {}
        :defs $ {}
          |updater $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |updater) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |store) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |op) (:type :leaf)
                  |v $ {} (:at 1519489491135) (:by |root) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1519489492110) (:by |root) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1690396381989) (:by |rJG4IHzWf) (:text |tag-match) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |op) (:type :leaf)
                  |n $ {} (:at 1507399852251) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1690396401917) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507399855618) (:by |root) (:text |:states) (:type :leaf)
                          |b $ {} (:at 1690396403745) (:by |rJG4IHzWf) (:text |cursor) (:type :leaf)
                          |h $ {} (:at 1690396404019) (:by |rJG4IHzWf) (:text |s) (:type :leaf)
                      |j $ {} (:at 1584874625235) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584874626558) (:by |rJG4IHzWf) (:text |update-states) (:type :leaf)
                          |j $ {} (:at 1584874628374) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                          |r $ {} (:at 1690396407352) (:by |rJG4IHzWf) (:text |cursor) (:type :leaf)
                          |t $ {} (:at 1690396407928) (:by |rJG4IHzWf) (:text |s) (:type :leaf)
                  |t $ {} (:at 1518157547521) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1690396399392) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1518157657108) (:by |root) (:text |:hydrate-storage) (:type :leaf)
                          |b $ {} (:at 1690396400285) (:by |rJG4IHzWf) (:text |data) (:type :leaf)
                      |j $ {} (:at 1584874637339) (:by |rJG4IHzWf) (:text |data) (:type :leaf)
                  |u $ {} (:at 1690396386706) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1690396387138) (:by |rJG4IHzWf) (:text |_) (:type :leaf)
                      |b $ {} (:at 1690396387692) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1690396389165) (:by |rJG4IHzWf) (:text |do) (:type :leaf)
                          |L $ {} (:at 1690396389540) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1690396390847) (:by |rJG4IHzWf) (:text |eprintln) (:type :leaf)
                              |b $ {} (:at 1690396396025) (:by |rJG4IHzWf) (:text "|\"Unknown op:") (:type :leaf)
                              |h $ {} (:at 1690396397197) (:by |rJG4IHzWf) (:text |op) (:type :leaf)
                          |T $ {} (:at 1690396387692) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
        :ns $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
            |T $ {} (:at 1499755354983) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1499755354983) (:by |root) (:text |app.updater) (:type :leaf)
            |r $ {} (:at 1584874614885) (:by |rJG4IHzWf) (:type :expr)
              :data $ {}
                |T $ {} (:at 1584874616480) (:by |rJG4IHzWf) (:text |:require) (:type :leaf)
                |j $ {} (:at 1584874616720) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1584874616895) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1584874620034) (:by |rJG4IHzWf) (:text |respo.cursor) (:type :leaf)
                    |r $ {} (:at 1584874621356) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1584874621524) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1584874621745) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1584874623096) (:by |rJG4IHzWf) (:text |update-states) (:type :leaf)
        :proc $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
  :users $ {}
    |rJG4IHzWf $ {} (:avatar nil) (:id |rJG4IHzWf) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
