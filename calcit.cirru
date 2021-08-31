
{}
  :configs $ {} (:reload-fn |app.main/reload!) (:port 6001) (:output |src) (:compact-output? true) (:storage-key |calcit.cirru)
    :modules $ [] |lilac/compact.cirru |memof/compact.cirru |respo.calcit/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |calcit-theme.calcit/compact.cirru |reel.calcit/compact.cirru |respo-feather.calcit/
    :init-fn |app.main/main!
    :extension |.cljs
  :ir $ {} (:package |app)
    :files $ {}
      |app.comp.container $ {}
        :defs $ {}
          |stringify-cirru $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1611040644133) (:by |rJG4IHzWf)
              |j $ {} (:text |stringify-cirru) (:type :leaf) (:at 1611040642221) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |x) (:type :leaf) (:at 1611040645324) (:by |rJG4IHzWf)
                :type :expr
                :at 1611040642221
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |cond) (:type :leaf) (:at 1611040653283) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |string?) (:type :leaf) (:at 1611040655860) (:by |rJG4IHzWf)
                          |j $ {} (:text |x) (:type :leaf) (:at 1611040656278) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1611040654118
                        :by |rJG4IHzWf
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |escape) (:type :leaf) (:at 1611040667535) (:by |rJG4IHzWf)
                          |j $ {} (:text |x) (:type :leaf) (:at 1611040668950) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1611040666158
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1611040653622
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |list?) (:type :leaf) (:at 1611040685069) (:by |rJG4IHzWf)
                          |j $ {} (:text |x) (:type :leaf) (:at 1611040685854) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1611040683849
                        :by |rJG4IHzWf
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |str) (:type :leaf) (:at 1611040696066) (:by |rJG4IHzWf)
                          |L $ {} (:text "|\"[") (:type :leaf) (:at 1611040697535) (:by |rJG4IHzWf)
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |join-str) (:type :leaf) (:at 1611040688999) (:by |rJG4IHzWf)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |map) (:type :leaf) (:at 1611040849536) (:by |rJG4IHzWf)
                                  |r $ {} (:text |x) (:type :leaf) (:at 1611040849536) (:by |rJG4IHzWf)
                                  |v $ {} (:text |stringify-cirru) (:type :leaf) (:at 1619707297058) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1611040849536
                                :by |rJG4IHzWf
                              |v $ {} (:text "|\",") (:type :leaf) (:at 1619707334443) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1611040686313
                            :by |rJG4IHzWf
                          |j $ {} (:text "|\"]") (:type :leaf) (:at 1611040700163) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1611040695383
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1611040683419
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |true) (:type :leaf) (:at 1611040739005) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |raise) (:type :leaf) (:at 1611040741984) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |str) (:type :leaf) (:at 1611040749601) (:by |rJG4IHzWf)
                              |T $ {} (:text "|\"Unknown type: ") (:type :leaf) (:at 1611040751545) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |type-of) (:type :leaf) (:at 1611040753437) (:by |rJG4IHzWf)
                                  |j $ {} (:text |x) (:type :leaf) (:at 1611040754158) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1611040752434
                                :by |rJG4IHzWf
                              |r $ {} (:text |x) (:type :leaf) (:at 1611040875349) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1611040747694
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1611040740499
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1611040737198
                    :by |rJG4IHzWf
                :type :expr
                :at 1611040645883
                :by |rJG4IHzWf
            :type :expr
            :at 1611040642221
            :by |rJG4IHzWf
          |comp-cirru-ui-switcher $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1603353265913) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-cirru-ui-switcher) (:type :leaf) (:at 1603353264317) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |state) (:type :leaf) (:at 1603353264317) (:by |rJG4IHzWf)
                  |j $ {} (:text |cursor) (:type :leaf) (:at 1603353264317) (:by |rJG4IHzWf)
                :type :expr
                :at 1603353264317
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |div) (:type :leaf) (:at 1619983919420) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1603353269371) (:by |rJG4IHzWf)
                      |b $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1603353351739) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |merge) (:type :leaf) (:at 1604978124816) (:by |rJG4IHzWf)
                              |L $ {} (:text |ui/row-middle) (:type :leaf) (:at 1604978130670) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1603353352288) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:cursor) (:type :leaf) (:at 1603353353861) (:by |rJG4IHzWf)
                                      |j $ {} (:text |:pointer) (:type :leaf) (:at 1603353355516) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1603353352673
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:font-family) (:type :leaf) (:at 1603353358969) (:by |rJG4IHzWf)
                                      |j $ {} (:text |ui/font-fancy) (:type :leaf) (:at 1603353361393) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1603353356141
                                    :by |rJG4IHzWf
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |:color) (:type :leaf) (:at 1603353378537) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |hsl) (:type :leaf) (:at 1603353379097) (:by |rJG4IHzWf)
                                          |j $ {} (:text |200) (:type :leaf) (:at 1603353380854) (:by |rJG4IHzWf)
                                          |r $ {} (:text |80) (:type :leaf) (:at 1603353381537) (:by |rJG4IHzWf)
                                          |v $ {} (:text |80) (:type :leaf) (:at 1604978435856) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1603353378755
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1603353372019
                                    :by |rJG4IHzWf
                                  |x $ {}
                                    :data $ {}
                                      |T $ {} (:text |:font-weight) (:type :leaf) (:at 1603353394408) (:by |rJG4IHzWf)
                                      |j $ {} (:text |300) (:type :leaf) (:at 1603353395303) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1603353393049
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1603353351970
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1604978123318
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1603353350858
                        :by |rJG4IHzWf
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:on-click) (:type :leaf) (:at 1603353284678) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1603353285207) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |e) (:type :leaf) (:at 1603353286027) (:by |rJG4IHzWf)
                                  |j $ {} (:text |d!) (:type :leaf) (:at 1603353286536) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1603353285724
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |d!) (:type :leaf) (:at 1603353287515) (:by |rJG4IHzWf)
                                  |j $ {} (:text |cursor) (:type :leaf) (:at 1603353288943) (:by |rJG4IHzWf)
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |update) (:type :leaf) (:at 1603353291797) (:by |rJG4IHzWf)
                                      |j $ {} (:text |state) (:type :leaf) (:at 1603353293305) (:by |rJG4IHzWf)
                                      |r $ {} (:text |:cirru-ui?) (:type :leaf) (:at 1603353340961) (:by |rJG4IHzWf)
                                      |v $ {} (:text |not) (:type :leaf) (:at 1603353297999) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1603353290168
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1603353287015
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1603353284990
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1603353281107
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1603353268222
                    :by |rJG4IHzWf
                  |l $ {} (:text |&) (:type :leaf) (:at 1619983923160) (:by |rJG4IHzWf)
                  |n $ {}
                    :data $ {}
                      |T $ {} (:text |->) (:type :leaf) (:at 1619707352349) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |[]) (:type :leaf) (:at 1604978196786) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1604978202289) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:value) (:type :leaf) (:at 1604978214927) (:by |rJG4IHzWf)
                                  |j $ {} (:text |:lisp) (:type :leaf) (:at 1604978218117) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1604978202675
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:display) (:type :leaf) (:at 1604978228060) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"Lisp") (:type :leaf) (:at 1604978230457) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1604978220558
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1604978199888
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1604978202289) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:value) (:type :leaf) (:at 1604978214927) (:by |rJG4IHzWf)
                                  |j $ {} (:text |:cirru-text) (:type :leaf) (:at 1604978241650) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1604978202675
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:display) (:type :leaf) (:at 1604978228060) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"CirruText") (:type :leaf) (:at 1604978331739) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1604978220558
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1604978199888
                            :by |rJG4IHzWf
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1604978202289) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:value) (:type :leaf) (:at 1604978214927) (:by |rJG4IHzWf)
                                  |j $ {} (:text |:cirru) (:type :leaf) (:at 1604978249001) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1604978202675
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:display) (:type :leaf) (:at 1604978228060) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"Cirru") (:type :leaf) (:at 1604978251478) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1604978220558
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1604978199888
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1604978196431
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |map) (:type :leaf) (:at 1619983933436) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1604978257669) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |item) (:type :leaf) (:at 1604978259035) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1604978258009
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |div) (:type :leaf) (:at 1604978269892) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1604978270480) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:style) (:type :leaf) (:at 1604978288656) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |D $ {} (:text |merge) (:type :leaf) (:at 1604978361510) (:by |rJG4IHzWf)
                                              |L $ {}
                                                :data $ {}
                                                  |T $ {} (:text |{}) (:type :leaf) (:at 1604978361956) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:margin) (:type :leaf) (:at 1604978361956) (:by |rJG4IHzWf)
                                                      |j $ {} (:text "|\"0 4px") (:type :leaf) (:at 1604978361956) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1604978361956
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1604978361956
                                                :by |rJG4IHzWf
                                              |T $ {}
                                                :data $ {}
                                                  |D $ {} (:text |if) (:type :leaf) (:at 1604978341571) (:by |rJG4IHzWf)
                                                  |L $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |=) (:type :leaf) (:at 1604978342033) (:by |rJG4IHzWf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |D $ {} (:text |:syntax) (:type :leaf) (:at 1604978349950) (:by |rJG4IHzWf)
                                                          |T $ {} (:text |state) (:type :leaf) (:at 1604978351187) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1604978345038
                                                        :by |rJG4IHzWf
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:value) (:type :leaf) (:at 1604978354289) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |item) (:type :leaf) (:at 1604978355334) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1604978353683
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1604978343498
                                                    :by |rJG4IHzWf
                                                  |f $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |{}) (:type :leaf) (:at 1604978363990) (:by |rJG4IHzWf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:color) (:type :leaf) (:at 1604978366389) (:by |rJG4IHzWf)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |hsl) (:type :leaf) (:at 1604978366907) (:by |rJG4IHzWf)
                                                              |j $ {} (:text |200) (:type :leaf) (:at 1604978368830) (:by |rJG4IHzWf)
                                                              |r $ {} (:text |90) (:type :leaf) (:at 1604978369305) (:by |rJG4IHzWf)
                                                              |v $ {} (:text |50) (:type :leaf) (:at 1604979430465) (:by |rJG4IHzWf)
                                                            :type :expr
                                                            :at 1604978366585
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1604978364247
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1604978363605
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1604978341082
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1604978360641
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1604978287752
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:on-click) (:type :leaf) (:at 1604978294938) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |fn) (:type :leaf) (:at 1604978295434) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |e) (:type :leaf) (:at 1604978295911) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |d!) (:type :leaf) (:at 1604978296624) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1604978295653
                                                :by |rJG4IHzWf
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |d!) (:type :leaf) (:at 1604978377992) (:by |rJG4IHzWf)
                                                  |b $ {} (:text |cursor) (:type :leaf) (:at 1604978379652) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |assoc) (:type :leaf) (:at 1604978381569) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |state) (:type :leaf) (:at 1604978383163) (:by |rJG4IHzWf)
                                                      |r $ {} (:text |:syntax) (:type :leaf) (:at 1604978385283) (:by |rJG4IHzWf)
                                                      |v $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:value) (:type :leaf) (:at 1604978392704) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |item) (:type :leaf) (:at 1604978393175) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1604978391447
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1604978380748
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1604978297212
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1604978295179
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1604978292708
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1604978270167
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |<>) (:type :leaf) (:at 1604978273090) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:display) (:type :leaf) (:at 1604978275486) (:by |rJG4IHzWf)
                                          |j $ {} (:text |item) (:type :leaf) (:at 1604978279662) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1604978273793
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1604978272481
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1604978269276
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1604978257439
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1604978256549
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1604978192208
                    :by |rJG4IHzWf
                :type :expr
                :at 1603353267038
                :by |rJG4IHzWf
            :type :expr
            :at 1603353264317
            :by |rJG4IHzWf
          |comp-container $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |comp-container) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |reel) (:type :leaf) (:at 1507461830530) (:by |root)
                :type :expr
                :at 1499755354983
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1507461833421) (:by |root)
                  |L $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |store) (:type :leaf) (:at 1507461835738) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:store) (:type :leaf) (:at 1507461837276) (:by |root)
                              |j $ {} (:text |reel) (:type :leaf) (:at 1507461838285) (:by |root)
                            :type :expr
                            :at 1507461836110
                            :by |root
                        :type :expr
                        :at 1507461834650
                        :by |root
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |states) (:type :leaf) (:at 1509727105928) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:states) (:type :leaf) (:at 1509727107223) (:by |root)
                              |j $ {} (:text |store) (:type :leaf) (:at 1509727108033) (:by |root)
                            :type :expr
                            :at 1509727106316
                            :by |root
                        :type :expr
                        :at 1509727104820
                        :by |root
                      |n $ {}
                        :data $ {}
                          |T $ {} (:text |cursor) (:type :leaf) (:at 1584780923771) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |either) (:type :leaf) (:at 1610954643038) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |:cursor) (:type :leaf) (:at 1584780925829) (:by |rJG4IHzWf)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1584780926681) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1584780923944
                                :by |rJG4IHzWf
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1584780994497) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1584780993270
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1584780991636
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1584780921790
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |state) (:type :leaf) (:at 1584780889620) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |either) (:type :leaf) (:at 1610954640683) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:data) (:type :leaf) (:at 1584780894689) (:by |rJG4IHzWf)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1584780900314) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1584780894090
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1584780901408) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:query) (:type :leaf) (:at 1603121145959) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |get-query!) (:type :leaf) (:at 1626769072728) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1626769070787
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1584780901741
                                    :by |rJG4IHzWf
                                  |n $ {}
                                    :data $ {}
                                      |T $ {} (:text |:method-target) (:type :leaf) (:at 1622633430400) (:by |rJG4IHzWf)
                                      |j $ {} (:text |nil) (:type :leaf) (:at 1622633433537) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1622633427777
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:selected-tags) (:type :leaf) (:at 1603122265288) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |#{}) (:type :leaf) (:at 1603122266980) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1603122265907
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1603122253205
                                    :by |rJG4IHzWf
                                  |w $ {}
                                    :data $ {}
                                      |T $ {} (:text |:syntax) (:type :leaf) (:at 1604977619219) (:by |rJG4IHzWf)
                                      |j $ {} (:text |:lisp) (:type :leaf) (:at 1604977622697) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1604977616603
                                    :by |rJG4IHzWf
                                  |x $ {}
                                    :data $ {}
                                      |T $ {} (:text |:wip?) (:type :leaf) (:at 1603363336121) (:by |rJG4IHzWf)
                                      |j $ {} (:text |false) (:type :leaf) (:at 1603363339355) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1603363334684
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1584780901014
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1584780889933
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1584780887905
                        :by |rJG4IHzWf
                      |u $ {}
                        :data $ {}
                          |T $ {} (:text |target) (:type :leaf) (:at 1622633770077) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:method-target) (:type :leaf) (:at 1622633776096) (:by |rJG4IHzWf)
                              |j $ {} (:text |state) (:type :leaf) (:at 1622633776674) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1622633770362
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622633767949
                        :by |rJG4IHzWf
                      |y $ {}
                        :data $ {}
                          |T $ {} (:text |visible-apis) (:type :leaf) (:at 1603122997808) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |cond) (:type :leaf) (:at 1623659415659) (:by |rJG4IHzWf)
                              |L $ {}
                                :data $ {}
                                  |T $ {}
                                    :data $ {}
                                      |D $ {} (:text |=) (:type :leaf) (:at 1623659426806) (:by |rJG4IHzWf)
                                      |L $ {} (:text |target) (:type :leaf) (:at 1623659432649) (:by |rJG4IHzWf)
                                      |T $ {} (:text |:internals) (:type :leaf) (:at 1623659426027) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1623659417160
                                    :by |rJG4IHzWf
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |->) (:type :leaf) (:at 1623659438710) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:internals) (:type :leaf) (:at 1623659456881) (:by |rJG4IHzWf)
                                          |j $ {} (:text |apis-data) (:type :leaf) (:at 1623659456881) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1623659456881
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |filter) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |fn) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |info) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1623659498401
                                                :by |rJG4IHzWf
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |and) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |if) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:wip?) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |state) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1623659498401
                                                        :by |rJG4IHzWf
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:wip?) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |info) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1623659498401
                                                        :by |rJG4IHzWf
                                                      |v $ {} (:text |true) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1623659498401
                                                    :by |rJG4IHzWf
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |or) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |empty?) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |:selected-tags) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                              |j $ {} (:text |state) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                            :type :expr
                                                            :at 1623659498401
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1623659498401
                                                        :by |rJG4IHzWf
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |->) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |:selected-tags) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                              |j $ {} (:text |state) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                            :type :expr
                                                            :at 1623659498401
                                                            :by |rJG4IHzWf
                                                          |r $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |every?) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                              |j $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |fn) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                                  |j $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |x) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                                    :type :expr
                                                                    :at 1623659498401
                                                                    :by |rJG4IHzWf
                                                                  |r $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |includes?) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                                      |j $ {}
                                                                        :data $ {}
                                                                          |T $ {} (:text |:tags) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                                          |j $ {} (:text |info) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                                        :type :expr
                                                                        :at 1623659498401
                                                                        :by |rJG4IHzWf
                                                                      |r $ {} (:text |x) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                                    :type :expr
                                                                    :at 1623659498401
                                                                    :by |rJG4IHzWf
                                                                :type :expr
                                                                :at 1623659498401
                                                                :by |rJG4IHzWf
                                                            :type :expr
                                                            :at 1623659498401
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1623659498401
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1623659498401
                                                    :by |rJG4IHzWf
                                                  |v $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |includes?) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:name) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |info) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1623659498401
                                                        :by |rJG4IHzWf
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:query) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |state) (:type :leaf) (:at 1623659498401) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1623659498401
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1623659498401
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1623659498401
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1623659498401
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1623659498401
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1623659438710
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1623659416806
                                :by |rJG4IHzWf
                              |T $ {}
                                :data $ {}
                                  |L $ {}
                                    :data $ {}
                                      |T $ {} (:text |some?) (:type :leaf) (:at 1622633764426) (:by |rJG4IHzWf)
                                      |j $ {} (:text |target) (:type :leaf) (:at 1622633780845) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1622633763769
                                    :by |rJG4IHzWf
                                  |P $ {}
                                    :data $ {}
                                      |D $ {} (:text |->) (:type :leaf) (:at 1622633825067) (:by |rJG4IHzWf)
                                      |T $ {}
                                        :data $ {}
                                          |D $ {} (:text |get) (:type :leaf) (:at 1622633800176) (:by |rJG4IHzWf)
                                          |T $ {}
                                            :data $ {}
                                              |T $ {} (:text |:methods) (:type :leaf) (:at 1622633795042) (:by |rJG4IHzWf)
                                              |j $ {} (:text |apis-data) (:type :leaf) (:at 1622633798196) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1622633781541
                                            :by |rJG4IHzWf
                                          |j $ {} (:text |target) (:type :leaf) (:at 1622633804034) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1622633799160
                                        :by |rJG4IHzWf
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |filter) (:type :leaf) (:at 1622633828776) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |fn) (:type :leaf) (:at 1622633828776) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |info) (:type :leaf) (:at 1622633828776) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1622633828776
                                                :by |rJG4IHzWf
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |includes?) (:type :leaf) (:at 1622633828776) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:name) (:type :leaf) (:at 1622633828776) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |info) (:type :leaf) (:at 1622633828776) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1622633828776
                                                    :by |rJG4IHzWf
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:query) (:type :leaf) (:at 1622633828776) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |state) (:type :leaf) (:at 1622633828776) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1622633828776
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1622633828776
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1622633828776
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1622633828776
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1622633823994
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1622633762886
                                :by |rJG4IHzWf
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |true) (:type :leaf) (:at 1623659444256) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |->) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:apis) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                          |j $ {} (:text |apis-data) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1623659444791
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |filter) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |fn) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |info) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1623659444791
                                                :by |rJG4IHzWf
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |and) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |if) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:wip?) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |state) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1623659444791
                                                        :by |rJG4IHzWf
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:wip?) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |info) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1623659444791
                                                        :by |rJG4IHzWf
                                                      |v $ {} (:text |true) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1623659444791
                                                    :by |rJG4IHzWf
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |or) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |empty?) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |:selected-tags) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                              |j $ {} (:text |state) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                            :type :expr
                                                            :at 1623659444791
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1623659444791
                                                        :by |rJG4IHzWf
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |->) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |:selected-tags) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                              |j $ {} (:text |state) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                            :type :expr
                                                            :at 1623659444791
                                                            :by |rJG4IHzWf
                                                          |r $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |every?) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                              |j $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |fn) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                                  |j $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |x) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                                    :type :expr
                                                                    :at 1623659444791
                                                                    :by |rJG4IHzWf
                                                                  |r $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |includes?) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                                      |j $ {}
                                                                        :data $ {}
                                                                          |T $ {} (:text |:tags) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                                          |j $ {} (:text |info) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                                        :type :expr
                                                                        :at 1623659444791
                                                                        :by |rJG4IHzWf
                                                                      |r $ {} (:text |x) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                                    :type :expr
                                                                    :at 1623659444791
                                                                    :by |rJG4IHzWf
                                                                :type :expr
                                                                :at 1623659444791
                                                                :by |rJG4IHzWf
                                                            :type :expr
                                                            :at 1623659444791
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1623659444791
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1623659444791
                                                    :by |rJG4IHzWf
                                                  |v $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |includes?) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:name) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |info) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1623659444791
                                                        :by |rJG4IHzWf
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:query) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |state) (:type :leaf) (:at 1623659444791) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1623659444791
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1623659444791
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1623659444791
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1623659444791
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1623659444791
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1623659444791
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1623659443528
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1623659414340
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1603122994280
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1507461834351
                    :by |root
                  |T $ {}
                    :data $ {}
                      |vD $ {}
                        :data $ {}
                          |D $ {} (:text |div) (:type :leaf) (:at 1628675532642) (:by |rJG4IHzWf)
                          |L $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1628675533313) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1628675561035) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |D $ {} (:text |merge) (:type :leaf) (:at 1628675618482) (:by |rJG4IHzWf)
                                      |L $ {} (:text |ui/expand) (:type :leaf) (:at 1628675620268) (:by |rJG4IHzWf)
                                      |T $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1628675561703) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:background-color) (:type :leaf) (:at 1628675564352) (:by |rJG4IHzWf)
                                              |j $ {} (:text |:white) (:type :leaf) (:at 1628675566528) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1628675562069
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1628675561378
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1628675617561
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1628675558395
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1628675532998
                            :by |rJG4IHzWf
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |=<) (:type :leaf) (:at 1628675549636) (:by |rJG4IHzWf)
                              |j $ {} (:text |nil) (:type :leaf) (:at 1628675550675) (:by |rJG4IHzWf)
                              |r $ {} (:text |8) (:type :leaf) (:at 1628675550961) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1628675546161
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |list->) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:style) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                                      |j $ {} (:text |ui/expand) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1628675553621
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1628675553621
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |->) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                                  |j $ {} (:text |visible-apis) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |sort) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |fn) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |a) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                                              |j $ {} (:text |b) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1628675553621
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |&str:compare) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:name) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |a) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1628675553621
                                                :by |rJG4IHzWf
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:name) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |b) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1628675553621
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1628675553621
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1628675553621
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1628675553621
                                    :by |rJG4IHzWf
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |map) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |fn) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |info) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1628675553621
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |[]) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:name) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |info) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1628675553621
                                                :by |rJG4IHzWf
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |memof-call) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |comp-api-entry) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                                                  |r $ {} (:text |info) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                                                  |v $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:syntax) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |state) (:type :leaf) (:at 1628675553621) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1628675553621
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1628675553621
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1628675553621
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1628675553621
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1628675553621
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1628675553621
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1628675553621
                            :by |rJG4IHzWf
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |=<) (:type :leaf) (:at 1628676233776) (:by |rJG4IHzWf)
                              |j $ {} (:text |nil) (:type :leaf) (:at 1628676236418) (:by |rJG4IHzWf)
                              |r $ {} (:text |400) (:type :leaf) (:at 1628676247314) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1628676230195
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1628675530786
                        :by |rJG4IHzWf
                      |T $ {} (:text |div) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1499755354983) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1499755354983) (:by |root)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |merge) (:type :leaf) (:at 1499755354983) (:by |root)
                                  |j $ {} (:text |ui/global) (:type :leaf) (:at 1521129814235) (:by |root)
                                  |n $ {} (:text |ui/fullscreen) (:type :leaf) (:at 1603121564862) (:by |rJG4IHzWf)
                                  |r $ {} (:text |ui/column) (:type :leaf) (:at 1628675475903) (:by |rJG4IHzWf)
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1603121394667) (:by |rJG4IHzWf)
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:background-color) (:type :leaf) (:at 1603121451691) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |hsl) (:type :leaf) (:at 1603121453670) (:by |rJG4IHzWf)
                                              |j $ {} (:text |0) (:type :leaf) (:at 1603121454401) (:by |rJG4IHzWf)
                                              |r $ {} (:text |0) (:type :leaf) (:at 1603121454734) (:by |rJG4IHzWf)
                                              |v $ {} (:text |96) (:type :leaf) (:at 1603121455646) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1603121453226
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1603121451691
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1603121393557
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1499755354983
                            :type :expr
                            :at 1499755354983
                        :type :expr
                        :at 1499755354983
                      |v $ {}
                        :data $ {}
                          |fT $ {}
                            :data $ {}
                              |T $ {} (:text |comp-method-targets) (:type :leaf) (:at 1622633381256) (:by |rJG4IHzWf)
                              |j $ {} (:text |state) (:type :leaf) (:at 1622633391592) (:by |rJG4IHzWf)
                              |r $ {} (:text |cursor) (:type :leaf) (:at 1622633394147) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1622633369697
                            :by |rJG4IHzWf
                          |T $ {} (:text |div) (:type :leaf) (:at 1499755354983) (:by |root)
                          |f $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1512359526843) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1535563522569) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |D $ {} (:text |merge) (:type :leaf) (:at 1603121417862) (:by |rJG4IHzWf)
                                      |T $ {} (:text |ui/column) (:type :leaf) (:at 1628677379384) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |yT $ {}
                                            :data $ {}
                                              |T $ {} (:text |:box-shadow) (:type :leaf) (:at 1628676518582) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |D $ {} (:text |str) (:type :leaf) (:at 1628676524117) (:by |rJG4IHzWf)
                                                  |T $ {} (:text "|\"0 0 6px ") (:type :leaf) (:at 1628676583346) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |hsl) (:type :leaf) (:at 1628676525612) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |0) (:type :leaf) (:at 1628676527065) (:by |rJG4IHzWf)
                                                      |r $ {} (:text |0) (:type :leaf) (:at 1628676527480) (:by |rJG4IHzWf)
                                                      |v $ {} (:text |0) (:type :leaf) (:at 1628676576539) (:by |rJG4IHzWf)
                                                      |x $ {} (:text |0.2) (:type :leaf) (:at 1628676585927) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1628676525152
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1628676523124
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1628676516202
                                            :by |rJG4IHzWf
                                          |yj $ {}
                                            :data $ {}
                                              |T $ {} (:text |:z-index) (:type :leaf) (:at 1628676554618) (:by |rJG4IHzWf)
                                              |j $ {} (:text |99) (:type :leaf) (:at 1628676555853) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1628676552556
                                            :by |rJG4IHzWf
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1603121419947) (:by |rJG4IHzWf)
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |:background-color) (:type :leaf) (:at 1603121445473) (:by |rJG4IHzWf)
                                              |j $ {} (:text |:white) (:type :leaf) (:at 1603121448332) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1603121440700
                                            :by |rJG4IHzWf
                                          |x $ {}
                                            :data $ {}
                                              |T $ {} (:text |:padding) (:type :leaf) (:at 1628675605483) (:by |rJG4IHzWf)
                                              |j $ {} (:text |8) (:type :leaf) (:at 1628675607306) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1628675603580
                                            :by |rJG4IHzWf
                                          |y $ {}
                                            :data $ {}
                                              |T $ {} (:text |:border-bottom) (:type :leaf) (:at 1628675876329) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |str) (:type :leaf) (:at 1628675877408) (:by |rJG4IHzWf)
                                                  |j $ {} (:text "|\"1px solid ") (:type :leaf) (:at 1628675882259) (:by |rJG4IHzWf)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |hsl) (:type :leaf) (:at 1628675884823) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |0) (:type :leaf) (:at 1628675885220) (:by |rJG4IHzWf)
                                                      |r $ {} (:text |0) (:type :leaf) (:at 1628675885527) (:by |rJG4IHzWf)
                                                      |v $ {} (:text |90) (:type :leaf) (:at 1628675886288) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1628675883497
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1628675876791
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1628675871185
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1603121419593
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1603121416304
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1535563521753
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1512359526483
                            :by |rJG4IHzWf
                          |g $ {}
                            :data $ {}
                              |D $ {} (:text |if) (:type :leaf) (:at 1622633739221) (:by |rJG4IHzWf)
                              |L $ {}
                                :data $ {}
                                  |D $ {} (:text |or) (:type :leaf) (:at 1623659969256) (:by |rJG4IHzWf)
                                  |T $ {}
                                    :data $ {}
                                      |T $ {} (:text |nil?) (:type :leaf) (:at 1622633741777) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:method-target) (:type :leaf) (:at 1622633745980) (:by |rJG4IHzWf)
                                          |j $ {} (:text |state) (:type :leaf) (:at 1622633747064) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1622633742825
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1622633739790
                                    :by |rJG4IHzWf
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |=) (:type :leaf) (:at 1623659972275) (:by |rJG4IHzWf)
                                      |b $ {} (:text |:internals) (:type :leaf) (:at 1623659974092) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:method-target) (:type :leaf) (:at 1622633745980) (:by |rJG4IHzWf)
                                          |j $ {} (:text |state) (:type :leaf) (:at 1622633747064) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1622633742825
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1622633739790
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1623659968608
                                :by |rJG4IHzWf
                              |T $ {}
                                :data $ {}
                                  |D $ {} (:text |memof-call) (:type :leaf) (:at 1611835331160) (:by |rJG4IHzWf)
                                  |T $ {} (:text |comp-tags-list) (:type :leaf) (:at 1603363277268) (:by |rJG4IHzWf)
                                  |j $ {} (:text |state) (:type :leaf) (:at 1603363277268) (:by |rJG4IHzWf)
                                  |r $ {} (:text |cursor) (:type :leaf) (:at 1603363277268) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1603363277268
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1622633738335
                            :by |rJG4IHzWf
                          |k $ {}
                            :data $ {}
                              |T $ {} (:text |div) (:type :leaf) (:at 1603121196598) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1603121196598) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:style) (:type :leaf) (:at 1603122359095) (:by |rJG4IHzWf)
                                      |j $ {} (:text |ui/row-parted) (:type :leaf) (:at 1604977579289) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1603122358010
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1603121196598
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |D $ {} (:text |div) (:type :leaf) (:at 1628676358203) (:by |rJG4IHzWf)
                                  |L $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1628676359438) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:style) (:type :leaf) (:at 1628676363204) (:by |rJG4IHzWf)
                                          |j $ {} (:text |ui/row-middle) (:type :leaf) (:at 1628676368158) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1628676361629
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1628676359108
                                    :by |rJG4IHzWf
                                  |T $ {}
                                    :data $ {}
                                      |T $ {} (:text |input) (:type :leaf) (:at 1603121196598) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1603121196598) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:style) (:type :leaf) (:at 1603121196598) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |D $ {} (:text |merge) (:type :leaf) (:at 1603121208693) (:by |rJG4IHzWf)
                                                  |T $ {} (:text |ui/input) (:type :leaf) (:at 1603121196598) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |{}) (:type :leaf) (:at 1603121209511) (:by |rJG4IHzWf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:font-family) (:type :leaf) (:at 1603121213529) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |ui/font-code) (:type :leaf) (:at 1603121216021) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1603121209711
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1603121209171
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1603121205816
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1603121196598
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:value) (:type :leaf) (:at 1603121196598) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:query) (:type :leaf) (:at 1603121196598) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |state) (:type :leaf) (:at 1603121196598) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1603121196598
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1603121196598
                                            :by |rJG4IHzWf
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |:placeholder) (:type :leaf) (:at 1603121196598) (:by |rJG4IHzWf)
                                              |j $ {} (:text "|\"search") (:type :leaf) (:at 1603121196598) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1603121196598
                                            :by |rJG4IHzWf
                                          |x $ {}
                                            :data $ {}
                                              |T $ {} (:text |:on-input) (:type :leaf) (:at 1603121196598) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |fn) (:type :leaf) (:at 1603121196598) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |e) (:type :leaf) (:at 1603121196598) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |d!) (:type :leaf) (:at 1603121196598) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1603121196598
                                                    :by |rJG4IHzWf
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |d!) (:type :leaf) (:at 1603121196598) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |cursor) (:type :leaf) (:at 1603121196598) (:by |rJG4IHzWf)
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |assoc) (:type :leaf) (:at 1603121196598) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |state) (:type :leaf) (:at 1603121196598) (:by |rJG4IHzWf)
                                                          |r $ {} (:text |:query) (:type :leaf) (:at 1603121196598) (:by |rJG4IHzWf)
                                                          |v $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |:value) (:type :leaf) (:at 1603121196598) (:by |rJG4IHzWf)
                                                              |j $ {} (:text |e) (:type :leaf) (:at 1603121196598) (:by |rJG4IHzWf)
                                                            :type :expr
                                                            :at 1603121196598
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1603121196598
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1603121196598
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1603121196598
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1603121196598
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1603121196598
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1603121196598
                                    :by |rJG4IHzWf
                                  |b $ {}
                                    :data $ {}
                                      |T $ {} (:text |=<) (:type :leaf) (:at 1628676371853) (:by |rJG4IHzWf)
                                      |b $ {} (:text |8) (:type :leaf) (:at 1628676375639) (:by |rJG4IHzWf)
                                      |j $ {} (:text |nil) (:type :leaf) (:at 1628676373922) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1628676370701
                                    :by |rJG4IHzWf
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |<>) (:type :leaf) (:at 1628676369876) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |str) (:type :leaf) (:at 1628676369876) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"has ") (:type :leaf) (:at 1628676398777) (:by |rJG4IHzWf)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |count) (:type :leaf) (:at 1628676369876) (:by |rJG4IHzWf)
                                              |j $ {} (:text |visible-apis) (:type :leaf) (:at 1628676369876) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1628676369876
                                            :by |rJG4IHzWf
                                          |v $ {} (:text "|\" entries.") (:type :leaf) (:at 1628676369876) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1628676369876
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1628676369876) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:font-family) (:type :leaf) (:at 1628676369876) (:by |rJG4IHzWf)
                                              |j $ {} (:text |ui/font-fancy) (:type :leaf) (:at 1628676369876) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1628676369876
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:color) (:type :leaf) (:at 1628676369876) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |hsl) (:type :leaf) (:at 1628676369876) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |0) (:type :leaf) (:at 1628676369876) (:by |rJG4IHzWf)
                                                  |r $ {} (:text |0) (:type :leaf) (:at 1628676369876) (:by |rJG4IHzWf)
                                                  |v $ {} (:text |70) (:type :leaf) (:at 1628676369876) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1628676369876
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1628676369876
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1628676369876
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1628676369876
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1628676357213
                                :by |rJG4IHzWf
                              |v $ {}
                                :data $ {}
                                  |D $ {} (:text |div) (:type :leaf) (:at 1604977550977) (:by |rJG4IHzWf)
                                  |L $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1604977551585) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:style) (:type :leaf) (:at 1604977570513) (:by |rJG4IHzWf)
                                          |j $ {} (:text |ui/row-middle) (:type :leaf) (:at 1604977573191) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1604977568568
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1604977551232
                                    :by |rJG4IHzWf
                                  |P $ {}
                                    :data $ {}
                                      |D $ {} (:text |memof-call) (:type :leaf) (:at 1611835338201) (:by |rJG4IHzWf)
                                      |T $ {} (:text |comp-cirru-ui-switcher) (:type :leaf) (:at 1604977555276) (:by |rJG4IHzWf)
                                      |j $ {} (:text |state) (:type :leaf) (:at 1604977555276) (:by |rJG4IHzWf)
                                      |r $ {} (:text |cursor) (:type :leaf) (:at 1604977555276) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1604977555276
                                    :by |rJG4IHzWf
                                  |Q $ {}
                                    :data $ {}
                                      |T $ {} (:text |=<) (:type :leaf) (:at 1604977563989) (:by |rJG4IHzWf)
                                      |j $ {} (:text |12) (:type :leaf) (:at 1604977563989) (:by |rJG4IHzWf)
                                      |r $ {} (:text |nil) (:type :leaf) (:at 1604977563989) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1604977563989
                                    :by |rJG4IHzWf
                                  |R $ {}
                                    :data $ {}
                                      |D $ {} (:text |memof-call) (:type :leaf) (:at 1611835336894) (:by |rJG4IHzWf)
                                      |T $ {} (:text |comp-wip-switcher) (:type :leaf) (:at 1604977559426) (:by |rJG4IHzWf)
                                      |j $ {} (:text |state) (:type :leaf) (:at 1604977559426) (:by |rJG4IHzWf)
                                      |r $ {} (:text |cursor) (:type :leaf) (:at 1604977559426) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1604977559426
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1604977550315
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1603121196598
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1499755354983
                      |x $ {}
                        :data $ {}
                          |D $ {} (:text |when) (:type :leaf) (:at 1521954057510) (:by |root)
                          |L $ {} (:text |dev?) (:type :leaf) (:at 1521954059290) (:by |root)
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |comp-reel) (:type :leaf) (:at 1507461815046) (:by |root)
                              |b $ {}
                                :data $ {}
                                  |D $ {} (:text |>>) (:type :leaf) (:at 1584780611347) (:by |rJG4IHzWf)
                                  |T $ {} (:text |states) (:type :leaf) (:at 1509727101297) (:by |root)
                                  |j $ {} (:text |:reel) (:type :leaf) (:at 1584780613268) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1584780610581
                                :by |rJG4IHzWf
                              |j $ {} (:text |reel) (:type :leaf) (:at 1507461840459) (:by |root)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1507461841342) (:by |root)
                                :type :expr
                                :at 1507461840980
                                :by |root
                            :type :expr
                            :at 1507461809635
                            :by |root
                        :type :expr
                        :at 1521954055333
                        :by |root
                    :type :expr
                    :at 1499755354983
                :type :expr
                :at 1507461832154
                :by |root
            :type :expr
            :at 1499755354983
          |comp-code $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1604978960000) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-code) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
              |n $ {}
                :data $ {}
                  |T $ {} (:text |code) (:type :leaf) (:at 1604978962329) (:by |rJG4IHzWf)
                  |j $ {} (:text |syntax) (:type :leaf) (:at 1604978973624) (:by |rJG4IHzWf)
                :type :expr
                :at 1604978961044
                :by |rJG4IHzWf
              |p $ {}
                :data $ {}
                  |T $ {} (:text |assert) (:type :leaf) (:at 1621704428199) (:by |rJG4IHzWf)
                  |j $ {} (:text "|\"expected code in list") (:type :leaf) (:at 1621704437260) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |list?) (:type :leaf) (:at 1621704439262) (:by |rJG4IHzWf)
                      |j $ {} (:text |code) (:type :leaf) (:at 1621704440649) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1621704438502
                    :by |rJG4IHzWf
                :type :expr
                :at 1621704426474
                :by |rJG4IHzWf
              |r $ {}
                :data $ {}
                  |T $ {} (:text |div) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |:margin-bottom) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                  |j $ {} (:text |8) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1604978958075
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1604978958075
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1604978958075
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1604978958075
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |case) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                      |j $ {} (:text |syntax) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |:cirru) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |div) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:style) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:background-color) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                              |j $ {} (:text |:black) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1604978958075
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:padding) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                              |j $ {} (:text "|\"4px 0") (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1604978958075
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1604978958075
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1604978958075
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1604978958075
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |render-expr) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                  |j $ {} (:text |code) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1604978958075
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1604978958075
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1604978958075
                        :by |rJG4IHzWf
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |:cirru-text) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |pre) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:style) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |yT $ {}
                                            :data $ {}
                                              |T $ {} (:text |:line-height) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                              |j $ {} (:text "|\"22px") (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1604978958075
                                            :by |rJG4IHzWf
                                          |yj $ {}
                                            :data $ {}
                                              |T $ {} (:text |:margin) (:type :leaf) (:at 1604979257942) (:by |rJG4IHzWf)
                                              |j $ {} (:text "|\"0px 0px") (:type :leaf) (:at 1604979266068) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1604979254899
                                            :by |rJG4IHzWf
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:font-family) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                              |j $ {} (:text |ui/font-code) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1604978958075
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:border) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |str) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                                  |j $ {} (:text "|\"1px solid ") (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |hsl) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |0) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                                      |r $ {} (:text |0) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                                      |v $ {} (:text |94) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1604978958075
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1604978958075
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1604978958075
                                            :by |rJG4IHzWf
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |:border-radius) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                              |j $ {} (:text "|\"4px") (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1604978958075
                                            :by |rJG4IHzWf
                                          |x $ {}
                                            :data $ {}
                                              |T $ {} (:text |:display) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                              |j $ {} (:text |:inline-block) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1604978958075
                                            :by |rJG4IHzWf
                                          |y $ {}
                                            :data $ {}
                                              |T $ {} (:text |:padding) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                              |j $ {} (:text "|\"2px 8px") (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1604978958075
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1604978958075
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1604978958075
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:innerHTML) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |trim) (:type :leaf) (:at 1610949501482) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |format-cirru) (:type :leaf) (:at 1623694643612) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |[]) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |code) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1604978958075
                                                :by |rJG4IHzWf
                                              |r $ {} (:text |true) (:type :leaf) (:at 1619709572587) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1604978958075
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1604978958075
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1604978958075
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1604978958075
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1604978958075
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1604978958075
                        :by |rJG4IHzWf
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |:lisp) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |<>) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |lisp-style) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                  |j $ {} (:text |code) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1604978958075
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:font-family) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                      |j $ {} (:text |ui/font-code) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1604978958075
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1604978958075
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1604978958075
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1604978958075
                        :by |rJG4IHzWf
                      |y $ {}
                        :data $ {}
                          |T $ {} (:text |<>) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |str) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                              |j $ {} (:text "|\"Unknown code: ") (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                              |r $ {} (:text |syntax) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1604978958075
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1604978958075
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1604978958075
                    :by |rJG4IHzWf
                :type :expr
                :at 1604978958075
                :by |rJG4IHzWf
            :type :expr
            :at 1604978958075
            :by |rJG4IHzWf
          |apis-data $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1611040177451) (:by |rJG4IHzWf)
              |j $ {} (:text |apis-data) (:type :leaf) (:at 1611040177451) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |D $ {} (:text |{}) (:type :leaf) (:at 1629457495353) (:by |rJG4IHzWf)
                  |T $ {}
                    :data $ {}
                      |D $ {} (:text |:apis) (:type :leaf) (:at 1629457497085) (:by |rJG4IHzWf)
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1619711337574) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |slurp-cirru-edn) (:type :leaf) (:at 1611846389472) (:by |rJG4IHzWf)
                              |j $ {} (:text "|\"docs/apis.cirru") (:type :leaf) (:at 1611846389472) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1611846389472
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1611846389472
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1629457495892
                    :by |rJG4IHzWf
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |:internals) (:type :leaf) (:at 1629457500483) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1629457503664) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |slurp-cirru-edn) (:type :leaf) (:at 1629457503664) (:by |rJG4IHzWf)
                              |j $ {} (:text "|\"docs/internals.cirru") (:type :leaf) (:at 1629457507851) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1629457503664
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1629457501677
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1629457497860
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:methods) (:type :leaf) (:at 1629457510171) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |yT $ {}
                            :data $ {}
                              |T $ {} (:text |:nil) (:type :leaf) (:at 1629457994045) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1629457527022) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |slurp-cirru-edn) (:type :leaf) (:at 1629457527022) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"docs/class-nil.cirru") (:type :leaf) (:at 1629457995986) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1629457527022
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1629457527022
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1629457512405
                            :by |rJG4IHzWf
                          |yj $ {}
                            :data $ {}
                              |T $ {} (:text |:fn) (:type :leaf) (:at 1629457997356) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1629457527022) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |slurp-cirru-edn) (:type :leaf) (:at 1629457527022) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"docs/class-fn.cirru") (:type :leaf) (:at 1629457999146) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1629457527022
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1629457527022
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1629457512405
                            :by |rJG4IHzWf
                          |T $ {} (:text |{}) (:type :leaf) (:at 1629457512192) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:list) (:type :leaf) (:at 1629457513938) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1629457527022) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |slurp-cirru-edn) (:type :leaf) (:at 1629457527022) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"docs/class-list.cirru") (:type :leaf) (:at 1629457530300) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1629457527022
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1629457527022
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1629457512405
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |:map) (:type :leaf) (:at 1629457536155) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1629457527022) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |slurp-cirru-edn) (:type :leaf) (:at 1629457527022) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"docs/class-map.cirru") (:type :leaf) (:at 1629457537957) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1629457527022
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1629457527022
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1629457512405
                            :by |rJG4IHzWf
                          |t $ {}
                            :data $ {}
                              |T $ {} (:text |:set) (:type :leaf) (:at 1629457561016) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1629457527022) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |slurp-cirru-edn) (:type :leaf) (:at 1629457527022) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"docs/class-set.cirru") (:type :leaf) (:at 1629457563370) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1629457527022
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1629457527022
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1629457512405
                            :by |rJG4IHzWf
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |:record) (:type :leaf) (:at 1629457540263) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1629457527022) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |slurp-cirru-edn) (:type :leaf) (:at 1629457527022) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"docs/class-record.cirru") (:type :leaf) (:at 1629457543240) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1629457527022
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1629457527022
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1629457512405
                            :by |rJG4IHzWf
                          |x $ {}
                            :data $ {}
                              |T $ {} (:text |:number) (:type :leaf) (:at 1629457546912) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1629457527022) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |slurp-cirru-edn) (:type :leaf) (:at 1629457527022) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"docs/class-number.cirru") (:type :leaf) (:at 1629457549142) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1629457527022
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1629457527022
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1629457512405
                            :by |rJG4IHzWf
                          |y $ {}
                            :data $ {}
                              |T $ {} (:text |:string) (:type :leaf) (:at 1629457551913) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1629457527022) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |slurp-cirru-edn) (:type :leaf) (:at 1629457527022) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"docs/class-string.cirru") (:type :leaf) (:at 1629457554505) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1629457527022
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1629457527022
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1629457512405
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1629457510553
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1629457509076
                    :by |rJG4IHzWf
                :type :expr
                :at 1629457494708
                :by |rJG4IHzWf
            :type :expr
            :at 1611040177451
            :by |rJG4IHzWf
          |slurp-cirru-edn $ {}
            :data $ {}
              |T $ {} (:text |defmacro) (:type :leaf) (:at 1610950070005) (:by |rJG4IHzWf)
              |j $ {} (:text |slurp-cirru-edn) (:type :leaf) (:at 1610950083747) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |file) (:type :leaf) (:at 1610950062962) (:by |rJG4IHzWf)
                :type :expr
                :at 1610950060783
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |read-file) (:type :leaf) (:at 1610951527391) (:by |rJG4IHzWf)
                  |j $ {} (:text |file) (:type :leaf) (:at 1610951527391) (:by |rJG4IHzWf)
                :type :expr
                :at 1610951527391
                :by |rJG4IHzWf
            :type :expr
            :at 1610950060783
            :by |rJG4IHzWf
          |comp-wip-switcher $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1603363357876) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-wip-switcher) (:type :leaf) (:at 1603363355911) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |state) (:type :leaf) (:at 1603363355911) (:by |rJG4IHzWf)
                  |j $ {} (:text |cursor) (:type :leaf) (:at 1603363355911) (:by |rJG4IHzWf)
                :type :expr
                :at 1603363355911
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |div) (:type :leaf) (:at 1603363372084) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1603363373168) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1603363384262) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1603363385650) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:font-family) (:type :leaf) (:at 1603363387907) (:by |rJG4IHzWf)
                                  |j $ {} (:text |ui/font-fancy) (:type :leaf) (:at 1603363390844) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1603363386454
                                :by |rJG4IHzWf
                              |n $ {}
                                :data $ {}
                                  |T $ {} (:text |:color) (:type :leaf) (:at 1603363441153) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |hsl) (:type :leaf) (:at 1603363441153) (:by |rJG4IHzWf)
                                      |j $ {} (:text |200) (:type :leaf) (:at 1603363441153) (:by |rJG4IHzWf)
                                      |r $ {} (:text |80) (:type :leaf) (:at 1603363441153) (:by |rJG4IHzWf)
                                      |v $ {} (:text |70) (:type :leaf) (:at 1603363441153) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1603363441153
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1603363441153
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:font-weight) (:type :leaf) (:at 1603363393970) (:by |rJG4IHzWf)
                                  |j $ {} (:text |300) (:type :leaf) (:at 1603363394971) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1603363392169
                                :by |rJG4IHzWf
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |:cursor) (:type :leaf) (:at 1603363448083) (:by |rJG4IHzWf)
                                  |j $ {} (:text |:pointer) (:type :leaf) (:at 1603363527591) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1603363446967
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1603363385341
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1603363383538
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |:on-click) (:type :leaf) (:at 1603363400418) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1603363401061) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |e) (:type :leaf) (:at 1603363401508) (:by |rJG4IHzWf)
                                  |j $ {} (:text |d!) (:type :leaf) (:at 1603363401941) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1603363401271
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |d!) (:type :leaf) (:at 1603363403118) (:by |rJG4IHzWf)
                                  |j $ {} (:text |cursor) (:type :leaf) (:at 1603363404216) (:by |rJG4IHzWf)
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |update) (:type :leaf) (:at 1603363409030) (:by |rJG4IHzWf)
                                      |j $ {} (:text |state) (:type :leaf) (:at 1603363409719) (:by |rJG4IHzWf)
                                      |r $ {} (:text |:wip?) (:type :leaf) (:at 1603363412659) (:by |rJG4IHzWf)
                                      |v $ {} (:text |not) (:type :leaf) (:at 1603363414042) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1603363404433
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1603363402723
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1603363400826
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1603363398005
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1603363372833
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |<>) (:type :leaf) (:at 1603363374770) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"All/WIP") (:type :leaf) (:at 1603363379384) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1603363373692
                    :by |rJG4IHzWf
                :type :expr
                :at 1603363359050
                :by |rJG4IHzWf
            :type :expr
            :at 1603363355911
            :by |rJG4IHzWf
          |comp-method-targets $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1622633405214) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-method-targets) (:type :leaf) (:at 1622633395234) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |state) (:type :leaf) (:at 1622633395234) (:by |rJG4IHzWf)
                  |j $ {} (:text |cursor) (:type :leaf) (:at 1622633395234) (:by |rJG4IHzWf)
                :type :expr
                :at 1622633395234
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |D $ {} (:text |div) (:type :leaf) (:at 1622633648012) (:by |rJG4IHzWf)
                  |L $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1622633648568) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1622633661887) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |merge) (:type :leaf) (:at 1628677527636) (:by |rJG4IHzWf)
                              |T $ {} (:text |ui/row) (:type :leaf) (:at 1622633662704) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1628677529682) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:user-select) (:type :leaf) (:at 1628677530217) (:by |rJG4IHzWf)
                                      |j $ {} (:text |:none) (:type :leaf) (:at 1628677530217) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1628677530217
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1628677528227
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1628677526628
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622633659934
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1622633648226
                    :by |rJG4IHzWf
                  |P $ {}
                    :data $ {}
                      |T $ {} (:text |<>) (:type :leaf) (:at 1622633653523) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"Methods:") (:type :leaf) (:at 1622633667642) (:by |rJG4IHzWf)
                      |r $ {}
                        :data $ {}
                          |D $ {} (:text |{}) (:type :leaf) (:at 1628676445558) (:by |rJG4IHzWf)
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |:font-family) (:type :leaf) (:at 1628676443818) (:by |rJG4IHzWf)
                              |j $ {} (:text |ui/font-fancy) (:type :leaf) (:at 1628676443818) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1628676443818
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1628676444799
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1622633650369
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1622633410552
                        :by |rJG4IHzWf
                      |r $ {} (:text |&) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |->) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |yr $ {} (:text |:record) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                              |yt $ {} (:text |:nil) (:type :leaf) (:at 1629457942284) (:by |rJG4IHzWf)
                              |yu $ {} (:text |:fn) (:type :leaf) (:at 1629457943672) (:by |rJG4IHzWf)
                              |T $ {} (:text |[]) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                              |b $ {} (:text |nil) (:type :leaf) (:at 1622633439475) (:by |rJG4IHzWf)
                              |f $ {} (:text |:internals) (:type :leaf) (:at 1629457954263) (:by |rJG4IHzWf)
                              |j $ {} (:text |:list) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                              |r $ {} (:text |:map) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                              |v $ {} (:text |:number) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                              |x $ {} (:text |:string) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                              |y $ {} (:text |:set) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1622633410552
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |map) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |fn) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |target) (:type :leaf) (:at 1622633461393) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1622633410552
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |div) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:style) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |merge) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |yT $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:border-radius) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                          |j $ {} (:text "|\"2px") (:type :leaf) (:at 1622633583079) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1622633410552
                                                        :by |rJG4IHzWf
                                                      |yj $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:cursor) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |:pointer) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1622633410552
                                                        :by |rJG4IHzWf
                                                      |yr $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:line-height) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                          |j $ {} (:text "|\"22px") (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1622633410552
                                                        :by |rJG4IHzWf
                                                      |T $ {} (:text |{}) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:display) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |:inline-block) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1622633410552
                                                        :by |rJG4IHzWf
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:background-color) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |hsl) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                              |j $ {} (:text |150) (:type :leaf) (:at 1622633567321) (:by |rJG4IHzWf)
                                                              |r $ {} (:text |50) (:type :leaf) (:at 1622633561842) (:by |rJG4IHzWf)
                                                              |v $ {} (:text |85) (:type :leaf) (:at 1622633572642) (:by |rJG4IHzWf)
                                                            :type :expr
                                                            :at 1622633410552
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1622633410552
                                                        :by |rJG4IHzWf
                                                      |v $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:margin) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                          |j $ {} (:text "|\"4px 4px") (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1622633410552
                                                        :by |rJG4IHzWf
                                                      |x $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:padding) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                          |j $ {} (:text "|\"0 8px") (:type :leaf) (:at 1622633579829) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1622633410552
                                                        :by |rJG4IHzWf
                                                      |y $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:color) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |hsl) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                              |j $ {} (:text |0) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                              |r $ {} (:text |0) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                              |v $ {} (:text |100) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                            :type :expr
                                                            :at 1622633410552
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1622633410552
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1622633410552
                                                    :by |rJG4IHzWf
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |if) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |=) (:type :leaf) (:at 1622633476076) (:by |rJG4IHzWf)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |:method-target) (:type :leaf) (:at 1622633472820) (:by |rJG4IHzWf)
                                                              |j $ {} (:text |state) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                            :type :expr
                                                            :at 1622633410552
                                                            :by |rJG4IHzWf
                                                          |r $ {} (:text |target) (:type :leaf) (:at 1622633474497) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1622633410552
                                                        :by |rJG4IHzWf
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |{}) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |:background-color) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                              |j $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |hsl) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                                  |j $ {} (:text |160) (:type :leaf) (:at 1622633594571) (:by |rJG4IHzWf)
                                                                  |r $ {} (:text |40) (:type :leaf) (:at 1622633598589) (:by |rJG4IHzWf)
                                                                  |v $ {} (:text |60) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                                :type :expr
                                                                :at 1622633410552
                                                                :by |rJG4IHzWf
                                                            :type :expr
                                                            :at 1622633410552
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1622633410552
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1622633410552
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1622633410552
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1622633410552
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:on-click) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |fn) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |e) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |d!) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1622633410552
                                                    :by |rJG4IHzWf
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |d!) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |cursor) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |assoc) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |state) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                          |r $ {} (:text |:method-target) (:type :leaf) (:at 1622633454967) (:by |rJG4IHzWf)
                                                          |v $ {} (:text |target) (:type :leaf) (:at 1622633464711) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1622633410552
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1622633410552
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1622633410552
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1622633410552
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1622633410552
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |D $ {} (:text |if) (:type :leaf) (:at 1622633502110) (:by |rJG4IHzWf)
                                          |L $ {}
                                            :data $ {}
                                              |T $ {} (:text |some?) (:type :leaf) (:at 1622633503348) (:by |rJG4IHzWf)
                                              |j $ {} (:text |target) (:type :leaf) (:at 1622633503784) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1622633502628
                                            :by |rJG4IHzWf
                                          |T $ {}
                                            :data $ {}
                                              |T $ {} (:text |<>) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |turn-string) (:type :leaf) (:at 1622633410552) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |target) (:type :leaf) (:at 1622633480979) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1622633410552
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1622633410552
                                            :by |rJG4IHzWf
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |<>) (:type :leaf) (:at 1622633505954) (:by |rJG4IHzWf)
                                              |j $ {} (:text "|\"None") (:type :leaf) (:at 1622633544400) (:by |rJG4IHzWf)
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |{}) (:type :leaf) (:at 1622633521193) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:font-weight) (:type :leaf) (:at 1622633523082) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |300) (:type :leaf) (:at 1622633542073) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1622633521407
                                                    :by |rJG4IHzWf
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:font-family) (:type :leaf) (:at 1622633533113) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |ui/font-fancy) (:type :leaf) (:at 1622633536806) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1622633530717
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1622633520873
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1622633505644
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1622633501484
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1622633410552
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1622633410552
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1622633410552
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622633410552
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1622633410552
                    :by |rJG4IHzWf
                :type :expr
                :at 1622633647308
                :by |rJG4IHzWf
            :type :expr
            :at 1622633395234
            :by |rJG4IHzWf
          |comp-tags-list $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1603353261417) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-tags-list) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
              |n $ {}
                :data $ {}
                  |T $ {} (:text |state) (:type :leaf) (:at 1603353201007) (:by |rJG4IHzWf)
                  |j $ {} (:text |cursor) (:type :leaf) (:at 1603353231016) (:by |rJG4IHzWf)
                :type :expr
                :at 1603353199699
                :by |rJG4IHzWf
              |r $ {}
                :data $ {}
                  |D $ {} (:text |div) (:type :leaf) (:at 1622633672054) (:by |rJG4IHzWf)
                  |L $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1622633672664) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1622633675762) (:by |rJG4IHzWf)
                          |j $ {} (:text |ui/row) (:type :leaf) (:at 1622633677585) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1622633674092
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1622633672292
                    :by |rJG4IHzWf
                  |P $ {}
                    :data $ {}
                      |T $ {} (:text |<>) (:type :leaf) (:at 1622633680827) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"Data:") (:type :leaf) (:at 1628676479262) (:by |rJG4IHzWf)
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1628676430419) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:font-family) (:type :leaf) (:at 1628676434653) (:by |rJG4IHzWf)
                              |j $ {} (:text |ui/font-fancy) (:type :leaf) (:at 1628676437689) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1628676430814
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |:user-select) (:type :leaf) (:at 1628677515110) (:by |rJG4IHzWf)
                              |j $ {} (:text |:none) (:type :leaf) (:at 1628677517355) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1628677510200
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1628676429385
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1622633678581
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1619983903061) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1603353193859
                        :by |rJG4IHzWf
                      |n $ {} (:text |&) (:type :leaf) (:at 1619983905248) (:by |rJG4IHzWf)
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |->) (:type :leaf) (:at 1619707385972) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |yT $ {} (:text |:macro) (:type :leaf) (:at 1603353223462) (:by |rJG4IHzWf)
                              |yb $ {} (:text |:record) (:type :leaf) (:at 1615024849659) (:by |rJG4IHzWf)
                              |yj $ {} (:text |:native) (:type :leaf) (:at 1603353223462) (:by |rJG4IHzWf)
                              |T $ {} (:text |[]) (:type :leaf) (:at 1603353223462) (:by |rJG4IHzWf)
                              |j $ {} (:text |:list) (:type :leaf) (:at 1603353223462) (:by |rJG4IHzWf)
                              |r $ {} (:text |:map) (:type :leaf) (:at 1603353223462) (:by |rJG4IHzWf)
                              |v $ {} (:text |:number) (:type :leaf) (:at 1603353223462) (:by |rJG4IHzWf)
                              |w $ {} (:text |:string) (:type :leaf) (:at 1603363018265) (:by |rJG4IHzWf)
                              |x $ {} (:text |:set) (:type :leaf) (:at 1603353223462) (:by |rJG4IHzWf)
                              |y $ {} (:text |:syntax) (:type :leaf) (:at 1603353223462) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1603353223462
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |map) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |fn) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |tag) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1603353193859
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |div) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:style) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |merge) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |yT $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:border-radius) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                          |j $ {} (:text "|\"4px") (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1603353193859
                                                        :by |rJG4IHzWf
                                                      |yj $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:cursor) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |:pointer) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1603353193859
                                                        :by |rJG4IHzWf
                                                      |yr $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:line-height) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                          |j $ {} (:text "|\"20px") (:type :leaf) (:at 1622633694332) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1603353193859
                                                        :by |rJG4IHzWf
                                                      |T $ {} (:text |{}) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:display) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |:inline-block) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1603353193859
                                                        :by |rJG4IHzWf
                                                      |v $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:margin) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                          |j $ {} (:text "|\"4px 4px") (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1603353193859
                                                        :by |rJG4IHzWf
                                                      |x $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:padding) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                          |j $ {} (:text "|\"0 4px") (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1603353193859
                                                        :by |rJG4IHzWf
                                                      |y $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:color) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |hsl) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                              |j $ {} (:text |280) (:type :leaf) (:at 1628676636323) (:by |rJG4IHzWf)
                                                              |r $ {} (:text |80) (:type :leaf) (:at 1628676634857) (:by |rJG4IHzWf)
                                                              |v $ {} (:text |84) (:type :leaf) (:at 1628677488175) (:by |rJG4IHzWf)
                                                            :type :expr
                                                            :at 1603353193859
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1603353193859
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1603353193859
                                                    :by |rJG4IHzWf
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |if) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |includes?) (:type :leaf) (:at 1614255229632) (:by |rJG4IHzWf)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |:selected-tags) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                              |j $ {} (:text |state) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                            :type :expr
                                                            :at 1603353193859
                                                            :by |rJG4IHzWf
                                                          |r $ {} (:text |tag) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1603353193859
                                                        :by |rJG4IHzWf
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |{}) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                          |v $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |:color) (:type :leaf) (:at 1628677478979) (:by |rJG4IHzWf)
                                                              |j $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |hsl) (:type :leaf) (:at 1628677478979) (:by |rJG4IHzWf)
                                                                  |j $ {} (:text |280) (:type :leaf) (:at 1628677478979) (:by |rJG4IHzWf)
                                                                  |r $ {} (:text |80) (:type :leaf) (:at 1628677478979) (:by |rJG4IHzWf)
                                                                  |v $ {} (:text |50) (:type :leaf) (:at 1628677483233) (:by |rJG4IHzWf)
                                                                :type :expr
                                                                :at 1628677478979
                                                                :by |rJG4IHzWf
                                                            :type :expr
                                                            :at 1628677478979
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1603353193859
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1603353193859
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1603353193859
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1603353193859
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:on-click) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |fn) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |e) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |d!) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1603353193859
                                                    :by |rJG4IHzWf
                                                  |v $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |d!) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |cursor) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |assoc) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |state) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                          |r $ {} (:text |:selected-tags) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                          |v $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |if) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                              |j $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |includes?) (:type :leaf) (:at 1614255233489) (:by |rJG4IHzWf)
                                                                  |j $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |:selected-tags) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                                      |j $ {} (:text |state) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                                    :type :expr
                                                                    :at 1603353193859
                                                                    :by |rJG4IHzWf
                                                                  |r $ {} (:text |tag) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                                :type :expr
                                                                :at 1603353193859
                                                                :by |rJG4IHzWf
                                                              |r $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |exclude) (:type :leaf) (:at 1610957549842) (:by |rJG4IHzWf)
                                                                  |j $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |:selected-tags) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                                      |j $ {} (:text |state) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                                    :type :expr
                                                                    :at 1603353193859
                                                                    :by |rJG4IHzWf
                                                                  |r $ {} (:text |tag) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                                :type :expr
                                                                :at 1603353193859
                                                                :by |rJG4IHzWf
                                                              |v $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |include) (:type :leaf) (:at 1610957547669) (:by |rJG4IHzWf)
                                                                  |j $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |:selected-tags) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                                      |j $ {} (:text |state) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                                    :type :expr
                                                                    :at 1603353193859
                                                                    :by |rJG4IHzWf
                                                                  |r $ {} (:text |tag) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                                                :type :expr
                                                                :at 1603353193859
                                                                :by |rJG4IHzWf
                                                            :type :expr
                                                            :at 1603353193859
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1603353193859
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1603353193859
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1603353193859
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1603353193859
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1603353193859
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |<>) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |turn-string) (:type :leaf) (:at 1610954536922) (:by |rJG4IHzWf)
                                              |j $ {} (:text |tag) (:type :leaf) (:at 1603353193859) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1603353193859
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1603353193859
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1603353193859
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1603353193859
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1603353193859
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1603353193859
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1603353193859
                    :by |rJG4IHzWf
                :type :expr
                :at 1622633671287
                :by |rJG4IHzWf
            :type :expr
            :at 1603353193859
            :by |rJG4IHzWf
          |get-query! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1626769075120) (:by |rJG4IHzWf)
              |j $ {} (:text |get-query!) (:type :leaf) (:at 1626769073313) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1626769073313
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |let) (:type :leaf) (:at 1626769125473) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |obj) (:type :leaf) (:at 1626769127105) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |new) (:type :leaf) (:at 1626769127598) (:by |rJG4IHzWf)
                              |j $ {} (:text |js/URLSearchParams) (:type :leaf) (:at 1626769180506) (:by |rJG4IHzWf)
                              |r $ {} (:text |js/location.search) (:type :leaf) (:at 1626769257997) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1626769127598
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1626769126136
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1626769125946
                    :by |rJG4IHzWf
                  |t $ {}
                    :data $ {}
                      |T $ {} (:text |if) (:type :leaf) (:at 1626769207273) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |.!has) (:type :leaf) (:at 1626769213020) (:by |rJG4IHzWf)
                          |T $ {} (:text |obj) (:type :leaf) (:at 1626769208482) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"q") (:type :leaf) (:at 1626769217054) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1626769208592
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |.!get) (:type :leaf) (:at 1626769219866) (:by |rJG4IHzWf)
                          |j $ {} (:text |obj) (:type :leaf) (:at 1626769220399) (:by |rJG4IHzWf)
                          |r $ {} (:text "|\"q") (:type :leaf) (:at 1626769221240) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1626769217683
                        :by |rJG4IHzWf
                      |v $ {} (:text "|\"") (:type :leaf) (:at 1626769221996) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1626769206707
                    :by |rJG4IHzWf
                :type :expr
                :at 1626769076526
                :by |rJG4IHzWf
            :type :expr
            :at 1626769073313
            :by |rJG4IHzWf
          |comp-api-entry $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1603363205264) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-api-entry) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
              |n $ {}
                :data $ {}
                  |T $ {} (:text |info) (:type :leaf) (:at 1603363216442) (:by |rJG4IHzWf)
                  |j $ {} (:text |syntax) (:type :leaf) (:at 1604977645146) (:by |rJG4IHzWf)
                :type :expr
                :at 1603363206065
                :by |rJG4IHzWf
              |r $ {}
                :data $ {}
                  |T $ {} (:text |div) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |merge) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                              |b $ {} (:text |ui/row) (:type :leaf) (:at 1628674647766) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:border-bottom) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |str) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"1px solid ") (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |hsl) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                              |j $ {} (:text |0) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                              |r $ {} (:text |0) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                              |v $ {} (:text |93) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1603363201369
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1603363201369
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1603363201369
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:margin) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"4px") (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1603363201369
                                    :by |rJG4IHzWf
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |:padding) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"0px 4px") (:type :leaf) (:at 1628676949285) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1603363201369
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1603363201369
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |if) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:wip?) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                      |j $ {} (:text |info) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1603363201369
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:color) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |hsl) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                              |j $ {} (:text |0) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                              |r $ {} (:text |0) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                              |v $ {} (:text |80) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1603363201369
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1603363201369
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:border-left) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |str) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                              |j $ {} (:text "|\"8px solid ") (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |hsl) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |0) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                                  |r $ {} (:text |0) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                                  |v $ {} (:text |90) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1603363201369
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1603363201369
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1603363201369
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1603363201369
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1603363201369
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1603363201369
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1603363201369
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1603363201369
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1628674669106) (:by |rJG4IHzWf)
                              |j $ {} (:text |ui/flex) (:type :leaf) (:at 1628676928750) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1628674665840
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1603363201369
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |<>) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:name) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                              |j $ {} (:text |info) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1603363201369
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:font-family) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                  |j $ {} (:text |ui/font-code) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1603363201369
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1603363201369
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1603363201369
                        :by |rJG4IHzWf
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |=<) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                          |j $ {} (:text |8) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                          |r $ {} (:text |nil) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1603363201369
                        :by |rJG4IHzWf
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1628674737321) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:color) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |hsl) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                              |j $ {} (:text |0) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                              |r $ {} (:text |0) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                              |v $ {} (:text |70) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1603363201369
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1603363201369
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:padding-left) (:type :leaf) (:at 1628674752338) (:by |rJG4IHzWf)
                                          |j $ {} (:text |16) (:type :leaf) (:at 1628674762306) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1628674748488
                                        :by |rJG4IHzWf
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |:line-height) (:type :leaf) (:at 1628675271448) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"20px") (:type :leaf) (:at 1628675284411) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1628675268133
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1603363201369
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1603363201369
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:class-name) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"md-span") (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1603363201369
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1603363201369
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |comp-md) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |either) (:type :leaf) (:at 1610954768582) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:desc) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                      |j $ {} (:text |info) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1603363201369
                                    :by |rJG4IHzWf
                                  |r $ {} (:text "|\"TODO") (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1603363201369
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1603363201369
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1603363201369
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1603363201369
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1619983887236) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |D $ {} (:text |merge) (:type :leaf) (:at 1628674675882) (:by |rJG4IHzWf)
                                  |L $ {} (:text |ui/expand) (:type :leaf) (:at 1628675204666) (:by |rJG4IHzWf)
                                  |T $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:margin-left) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                          |j $ {} (:text |20) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1603363201369
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:flex) (:type :leaf) (:at 1628674802560) (:by |rJG4IHzWf)
                                          |j $ {} (:text |2) (:type :leaf) (:at 1628676080961) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1628674801732
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1603363201369
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1628674674743
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1603363201369
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1603363201369
                        :by |rJG4IHzWf
                      |n $ {} (:text |&) (:type :leaf) (:at 1619983891339) (:by |rJG4IHzWf)
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |->) (:type :leaf) (:at 1619707363192) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:snippets) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                              |j $ {} (:text |info) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1603363201369
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |map) (:type :leaf) (:at 1619983957777) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |fn) (:type :leaf) (:at 1603363201369) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |j $ {} (:text |entry) (:type :leaf) (:at 1625762697650) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1603363201369
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |D $ {} (:text |let) (:type :leaf) (:at 1604978584873) (:by |rJG4IHzWf)
                                      |L $ {}
                                        :data $ {}
                                          |D $ {}
                                            :data $ {}
                                              |T $ {} (:text |code-snippet) (:type :leaf) (:at 1610954591586) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |if) (:type :leaf) (:at 1604979660078) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |map?) (:type :leaf) (:at 1625762714564) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |entry) (:type :leaf) (:at 1625762733370) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1604979663040
                                                    :by |rJG4IHzWf
                                                  |n $ {} (:text |entry) (:type :leaf) (:at 1625762737066) (:by |rJG4IHzWf)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |{}) (:type :leaf) (:at 1604979664717) (:by |rJG4IHzWf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:code) (:type :leaf) (:at 1604979665901) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |entry) (:type :leaf) (:at 1625762786084) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1604979665399
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1604979664258
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1604979659654
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1604979656134
                                            :by |rJG4IHzWf
                                          |T $ {}
                                            :data $ {}
                                              |T $ {} (:text |code) (:type :leaf) (:at 1604978585326) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:code) (:type :leaf) (:at 1604979672256) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |code-snippet) (:type :leaf) (:at 1610954593942) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1604979672256
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1604978585326
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1604978585326
                                        :by |rJG4IHzWf
                                      |T $ {}
                                        :data $ {}
                                          |D $ {} (:text |div) (:type :leaf) (:at 1604978978614) (:by |rJG4IHzWf)
                                          |L $ {}
                                            :data $ {}
                                              |T $ {} (:text |{}) (:type :leaf) (:at 1604978979108) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:style) (:type :leaf) (:at 1628674924538) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |ui/row) (:type :leaf) (:at 1628674925926) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1628674922489
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1604978978816
                                            :by |rJG4IHzWf
                                          |T $ {}
                                            :data $ {}
                                              |T $ {} (:text |comp-code) (:type :leaf) (:at 1604978958075) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |D $ {} (:text |nth) (:type :leaf) (:at 1625762825161) (:by |rJG4IHzWf)
                                                  |T $ {} (:text |code) (:type :leaf) (:at 1604978964295) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |1) (:type :leaf) (:at 1625762827619) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1625762763939
                                                :by |rJG4IHzWf
                                              |r $ {} (:text |syntax) (:type :leaf) (:at 1604978969602) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1604978963521
                                            :by |rJG4IHzWf
                                          |j $ {}
                                            :data $ {}
                                              |D $ {} (:text |if) (:type :leaf) (:at 1604979043704) (:by |rJG4IHzWf)
                                              |L $ {}
                                                :data $ {}
                                                  |D $ {} (:text |and) (:type :leaf) (:at 1604979051964) (:by |rJG4IHzWf)
                                                  |T $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |map?) (:type :leaf) (:at 1604979046170) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |code-snippet) (:type :leaf) (:at 1610954595347) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1604979044537
                                                    :by |rJG4IHzWf
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |some?) (:type :leaf) (:at 1604979062069) (:by |rJG4IHzWf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:result) (:type :leaf) (:at 1604979063200) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |code-snippet) (:type :leaf) (:at 1610954597215) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1604979062435
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1604979056497
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1604979050238
                                                :by |rJG4IHzWf
                                              |T $ {}
                                                :data $ {}
                                                  |T $ {} (:text |div) (:type :leaf) (:at 1604978982059) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |{}) (:type :leaf) (:at 1604978985628) (:by |rJG4IHzWf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:style) (:type :leaf) (:at 1604978989409) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |ui/row) (:type :leaf) (:at 1604979794461) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1604978988265
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1604978985823
                                                    :by |rJG4IHzWf
                                                  |r $ {}
                                                    :data $ {}
                                                      |D $ {} (:text |div) (:type :leaf) (:at 1604979093558) (:by |rJG4IHzWf)
                                                      |L $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |{}) (:type :leaf) (:at 1604979094136) (:by |rJG4IHzWf)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |:style) (:type :leaf) (:at 1604979096511) (:by |rJG4IHzWf)
                                                              |j $ {}
                                                                :data $ {}
                                                                  |D $ {} (:text |merge) (:type :leaf) (:at 1604979570584) (:by |rJG4IHzWf)
                                                                  |T $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |{}) (:type :leaf) (:at 1604979097070) (:by |rJG4IHzWf)
                                                                      |j $ {}
                                                                        :data $ {}
                                                                          |T $ {} (:text |:width) (:type :leaf) (:at 1604979098762) (:by |rJG4IHzWf)
                                                                          |j $ {} (:text |40) (:type :leaf) (:at 1628676092894) (:by |rJG4IHzWf)
                                                                        :type :expr
                                                                        :at 1604979097296
                                                                        :by |rJG4IHzWf
                                                                      |r $ {}
                                                                        :data $ {}
                                                                          |T $ {} (:text |:text-align) (:type :leaf) (:at 1604979634862) (:by |rJG4IHzWf)
                                                                          |j $ {} (:text |:center) (:type :leaf) (:at 1604979634862) (:by |rJG4IHzWf)
                                                                        :type :expr
                                                                        :at 1604979634862
                                                                        :by |rJG4IHzWf
                                                                    :type :expr
                                                                    :at 1604979096742
                                                                    :by |rJG4IHzWf
                                                                :type :expr
                                                                :at 1604979569766
                                                                :by |rJG4IHzWf
                                                            :type :expr
                                                            :at 1604979095216
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1604979093782
                                                        :by |rJG4IHzWf
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |comp-i) (:type :leaf) (:at 1629543938662) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |:arrow-right-circle) (:type :leaf) (:at 1629544459535) (:by |rJG4IHzWf)
                                                          |r $ {} (:text |16) (:type :leaf) (:at 1629544295606) (:by |rJG4IHzWf)
                                                          |v $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |hsl) (:type :leaf) (:at 1629544299271) (:by |rJG4IHzWf)
                                                              |j $ {} (:text |200) (:type :leaf) (:at 1629544299271) (:by |rJG4IHzWf)
                                                              |r $ {} (:text |0) (:type :leaf) (:at 1629544299271) (:by |rJG4IHzWf)
                                                              |v $ {} (:text |50) (:type :leaf) (:at 1629544299271) (:by |rJG4IHzWf)
                                                            :type :expr
                                                            :at 1629544299271
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1629543937086
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1604979092814
                                                    :by |rJG4IHzWf
                                                  |v $ {}
                                                    :data $ {}
                                                      |D $ {} (:text |div) (:type :leaf) (:at 1604979640281) (:by |rJG4IHzWf)
                                                      |L $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |{}) (:type :leaf) (:at 1604979640831) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1604979640489
                                                        :by |rJG4IHzWf
                                                      |T $ {}
                                                        :data $ {}
                                                          |D $ {} (:text |comp-code) (:type :leaf) (:at 1604979074192) (:by |rJG4IHzWf)
                                                          |T $ {}
                                                            :data $ {}
                                                              |D $ {} (:text |nth) (:type :leaf) (:at 1625762830429) (:by |rJG4IHzWf)
                                                              |T $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |:result) (:type :leaf) (:at 1604979025739) (:by |rJG4IHzWf)
                                                                  |j $ {} (:text |code-snippet) (:type :leaf) (:at 1610954599998) (:by |rJG4IHzWf)
                                                                :type :expr
                                                                :at 1604979022301
                                                                :by |rJG4IHzWf
                                                              |j $ {} (:text |1) (:type :leaf) (:at 1625762831862) (:by |rJG4IHzWf)
                                                            :type :expr
                                                            :at 1625762769430
                                                            :by |rJG4IHzWf
                                                          |j $ {} (:text |syntax) (:type :leaf) (:at 1604979076076) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1604979072642
                                                        :by |rJG4IHzWf
                                                      |j $ {}
                                                        :data $ {}
                                                          |D $ {} (:text |if) (:type :leaf) (:at 1604979756202) (:by |rJG4IHzWf)
                                                          |L $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |some?) (:type :leaf) (:at 1604979767709) (:by |rJG4IHzWf)
                                                              |j $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |:desc) (:type :leaf) (:at 1604979771020) (:by |rJG4IHzWf)
                                                                  |j $ {} (:text |code-snippet) (:type :leaf) (:at 1610954601045) (:by |rJG4IHzWf)
                                                                :type :expr
                                                                :at 1604979768078
                                                                :by |rJG4IHzWf
                                                            :type :expr
                                                            :at 1604979766305
                                                            :by |rJG4IHzWf
                                                          |T $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |<>) (:type :leaf) (:at 1604979741009) (:by |rJG4IHzWf)
                                                              |j $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |:desc) (:type :leaf) (:at 1604979779319) (:by |rJG4IHzWf)
                                                                  |j $ {} (:text |code-snippet) (:type :leaf) (:at 1610954602232) (:by |rJG4IHzWf)
                                                                :type :expr
                                                                :at 1604979777468
                                                                :by |rJG4IHzWf
                                                              |n $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |{}) (:type :leaf) (:at 1604979782226) (:by |rJG4IHzWf)
                                                                  |j $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |:color) (:type :leaf) (:at 1604979954800) (:by |rJG4IHzWf)
                                                                      |j $ {}
                                                                        :data $ {}
                                                                          |T $ {} (:text |hsl) (:type :leaf) (:at 1604979955356) (:by |rJG4IHzWf)
                                                                          |j $ {} (:text |0) (:type :leaf) (:at 1604979955967) (:by |rJG4IHzWf)
                                                                          |r $ {} (:text |0) (:type :leaf) (:at 1604979956261) (:by |rJG4IHzWf)
                                                                          |v $ {} (:text |60) (:type :leaf) (:at 1604979975073) (:by |rJG4IHzWf)
                                                                        :type :expr
                                                                        :at 1604979955046
                                                                        :by |rJG4IHzWf
                                                                    :type :expr
                                                                    :at 1604979953983
                                                                    :by |rJG4IHzWf
                                                                :type :expr
                                                                :at 1604979781880
                                                                :by |rJG4IHzWf
                                                            :type :expr
                                                            :at 1604979738582
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1604979755659
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1604979639646
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1604978981439
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1604979043131
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1604978977985
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1604978584168
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1603363201369
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1603363201369
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1603363201369
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1603363201369
                    :by |rJG4IHzWf
                :type :expr
                :at 1603363201369
                :by |rJG4IHzWf
            :type :expr
            :at 1603363201369
            :by |rJG4IHzWf
          |lisp-style $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1603121805988) (:by |rJG4IHzWf)
              |j $ {} (:text |lisp-style) (:type :leaf) (:at 1603270441191) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |xs) (:type :leaf) (:at 1603121807879) (:by |rJG4IHzWf)
                :type :expr
                :at 1603121805988
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |D $ {} (:text |cond) (:type :leaf) (:at 1610955872611) (:by |rJG4IHzWf)
                  |T $ {}
                    :data $ {}
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |string?) (:type :leaf) (:at 1603121812951) (:by |rJG4IHzWf)
                          |j $ {} (:text |xs) (:type :leaf) (:at 1603121813407) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1603121812621
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |D $ {} (:text |if) (:type :leaf) (:at 1603270447263) (:by |rJG4IHzWf)
                          |L $ {}
                            :data $ {}
                              |T $ {} (:text |or) (:type :leaf) (:at 1610949896663) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |includes?) (:type :leaf) (:at 1614255255312) (:by |rJG4IHzWf)
                                  |j $ {} (:text |xs) (:type :leaf) (:at 1610949902281) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\" ") (:type :leaf) (:at 1610949903108) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1610949897760
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |includes?) (:type :leaf) (:at 1614255257613) (:by |rJG4IHzWf)
                                  |j $ {} (:text |xs) (:type :leaf) (:at 1610949902281) (:by |rJG4IHzWf)
                                  |r $ {} (:text |&newline) (:type :leaf) (:at 1622634051027) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1610949897760
                                :by |rJG4IHzWf
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |includes?) (:type :leaf) (:at 1614255259689) (:by |rJG4IHzWf)
                                  |j $ {} (:text |xs) (:type :leaf) (:at 1610949902281) (:by |rJG4IHzWf)
                                  |r $ {} (:text "||\"") (:type :leaf) (:at 1610949910668) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1610949897760
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1610949895065
                            :by |rJG4IHzWf
                          |P $ {}
                            :data $ {}
                              |T $ {} (:text |js/JSON.stringify) (:type :leaf) (:at 1603349723145) (:by |rJG4IHzWf)
                              |j $ {} (:text |xs) (:type :leaf) (:at 1603270469067) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1603270456042
                            :by |rJG4IHzWf
                          |T $ {} (:text |xs) (:type :leaf) (:at 1603121816298) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1603270446183
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1603121809452
                    :by |rJG4IHzWf
                  |j $ {}
                    :data $ {}
                      |D $ {}
                        :data $ {}
                          |T $ {} (:text |list?) (:type :leaf) (:at 1610955876270) (:by |rJG4IHzWf)
                          |j $ {} (:text |xs) (:type :leaf) (:at 1610956040966) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1610956040329
                        :by |rJG4IHzWf
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |str) (:type :leaf) (:at 1610955874194) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"(") (:type :leaf) (:at 1610955874194) (:by |rJG4IHzWf)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |->) (:type :leaf) (:at 1619707397625) (:by |rJG4IHzWf)
                              |j $ {} (:text |xs) (:type :leaf) (:at 1610955874194) (:by |rJG4IHzWf)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |map) (:type :leaf) (:at 1610955874194) (:by |rJG4IHzWf)
                                  |j $ {} (:text |lisp-style) (:type :leaf) (:at 1610955874194) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1610955874194
                                :by |rJG4IHzWf
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |join-str) (:type :leaf) (:at 1610955874194) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\" ") (:type :leaf) (:at 1610955874194) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1610955874194
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1610955874194
                            :by |rJG4IHzWf
                          |v $ {} (:text "|\")") (:type :leaf) (:at 1610955874194) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1610955874194
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1610955875165
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |true) (:type :leaf) (:at 1610955896412) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |str) (:type :leaf) (:at 1610956027385) (:by |rJG4IHzWf)
                          |T $ {} (:text "|\"TODO: ") (:type :leaf) (:at 1610956028396) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |str) (:type :leaf) (:at 1610956029605) (:by |rJG4IHzWf)
                              |j $ {} (:text |xs) (:type :leaf) (:at 1610956031004) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1610956029796
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1610956026577
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1610955893452
                    :by |rJG4IHzWf
                :type :expr
                :at 1610955871668
                :by |rJG4IHzWf
            :type :expr
            :at 1603121805988
            :by |rJG4IHzWf
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |app.comp.container) (:type :leaf) (:at 1499755354983) (:by |root)
            |v $ {}
              :data $ {}
                |yyT $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1603351611714) (:by |rJG4IHzWf)
                    |j $ {} (:text |calcit-theme.comp.expr) (:type :leaf) (:at 1603351947552) (:by |rJG4IHzWf)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1603351613199) (:by |rJG4IHzWf)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1603351614002) (:by |rJG4IHzWf)
                        |j $ {} (:text |render-expr) (:type :leaf) (:at 1603351950756) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1603351613412
                      :by |rJG4IHzWf
                  :type :expr
                  :at 1603351611308
                  :by |rJG4IHzWf
                |yyr $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1611835320995) (:by |rJG4IHzWf)
                    |j $ {} (:text |memof.alias) (:type :leaf) (:at 1611835324953) (:by |rJG4IHzWf)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1611835325703) (:by |rJG4IHzWf)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1611835326149) (:by |rJG4IHzWf)
                        |j $ {} (:text |memof-call) (:type :leaf) (:at 1611835327378) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1611835325907
                      :by |rJG4IHzWf
                  :type :expr
                  :at 1611835320473
                  :by |rJG4IHzWf
                |yyv $ {}
                  :data $ {}
                    |T $ {} (:text |feather.core) (:type :leaf) (:at 1629544306561) (:by |rJG4IHzWf)
                    |j $ {} (:text |:refer) (:type :leaf) (:at 1629544307193) (:by |rJG4IHzWf)
                    |r $ {}
                      :data $ {}
                        |T $ {} (:text |comp-i) (:type :leaf) (:at 1629544308949) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1629544307474
                      :by |rJG4IHzWf
                  :type :expr
                  :at 1629544302190
                  :by |rJG4IHzWf
                |yT $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1519699088805) (:by |root)
                    |j $ {} (:text |respo-md.comp.md) (:type :leaf) (:at 1519699092590) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1519699093410) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1519699093922) (:by |root)
                        |j $ {} (:text |comp-md) (:type :leaf) (:at 1519699096732) (:by |root)
                      :type :expr
                      :at 1519699093683
                      :by |root
                  :type :expr
                  :at 1519699088529
                  :by |root
                |yj $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1521954061645) (:by |root)
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1527788377809) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1521954064826) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1521954065219) (:by |root)
                        |j $ {} (:text |dev?) (:type :leaf) (:at 1521954067604) (:by |root)
                      :type :expr
                      :at 1521954065004
                      :by |root
                  :type :expr
                  :at 1521954061310
                  :by |root
                |yy $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1603351469556) (:by |rJG4IHzWf)
                    |j $ {} (:text |respo-md.comp.md) (:type :leaf) (:at 1603351469899) (:by |rJG4IHzWf)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1603351471073) (:by |rJG4IHzWf)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1603351472790) (:by |rJG4IHzWf)
                        |j $ {} (:text |comp-md) (:type :leaf) (:at 1603351474965) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1603351471297
                      :by |rJG4IHzWf
                  :type :expr
                  :at 1603351469136
                  :by |rJG4IHzWf
                |T $ {} (:text |:require) (:type :leaf) (:at 1499755354983) (:by |root)
                |j $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                    |j $ {} (:text |respo.util.format) (:type :leaf) (:at 1610949416183) (:by |rJG4IHzWf)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                        |j $ {} (:text |hsl) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |r $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                    |j $ {} (:text |respo-ui.core) (:type :leaf) (:at 1516527080962) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {} (:text |ui) (:type :leaf) (:at 1499755354983) (:by |root)
                  :type :expr
                  :at 1499755354983
                |v $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1540958704705) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1508946162679) (:by |root)
                    |v $ {}
                      :data $ {}
                        |xT $ {} (:text |textarea) (:type :leaf) (:at 1512359490531) (:by |rJG4IHzWf)
                        |yT $ {} (:text |input) (:type :leaf) (:at 1552321107012) (:by |rJG4IHzWf)
                        |yr $ {} (:text |pre) (:type :leaf) (:at 1604978700418) (:by |rJG4IHzWf)
                        |yv $ {} (:text |list->) (:type :leaf) (:at 1619984504175) (:by |rJG4IHzWf)
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                        |j $ {} (:text |defcomp) (:type :leaf) (:at 1499755354983) (:by |root)
                        |l $ {} (:text |defeffect) (:type :leaf) (:at 1573355389740) (:by |rJG4IHzWf)
                        |r $ {} (:text |<>) (:type :leaf) (:at 1499755354983) (:by |root)
                        |t $ {} (:text |>>) (:type :leaf) (:at 1584780606618) (:by |rJG4IHzWf)
                        |v $ {} (:text |div) (:type :leaf) (:at 1499755354983) (:by |root)
                        |x $ {} (:text |button) (:type :leaf) (:at 1499755354983) (:by |root)
                        |y $ {} (:text |span) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |x $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                    |j $ {} (:text |respo.comp.space) (:type :leaf) (:at 1499755354983) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                        |j $ {} (:text |=<) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |y $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1507461846175) (:by |root)
                    |j $ {} (:text |reel.comp.reel) (:type :leaf) (:at 1507461855480) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1507461856264) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1507461856706) (:by |root)
                        |j $ {} (:text |comp-reel) (:type :leaf) (:at 1507461858342) (:by |root)
                      :type :expr
                      :at 1507461856484
                      :by |root
                  :type :expr
                  :at 1507461845717
                  :by |root
              :type :expr
              :at 1499755354983
          :type :expr
          :at 1499755354983
      |app.schema $ {}
        :defs $ {}
          |store $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |store) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |{}) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |:states) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1499755354983) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:cursor) (:type :leaf) (:at 1584781007054) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1584781007486) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1584781007287
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1584781004285
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1499755354983
                    :type :expr
                    :at 1499755354983
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |app.schema) (:type :leaf) (:at 1499755354983) (:by |root)
          :type :expr
          :at 1499755354983
      |app.updater $ {}
        :defs $ {}
          |updater $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |updater) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |store) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |op) (:type :leaf) (:at 1499755354983) (:by |root)
                  |r $ {} (:text |data) (:type :leaf) (:at 1584874633844) (:by |rJG4IHzWf)
                  |v $ {} (:text |op-id) (:type :leaf) (:at 1519489491135) (:by |root)
                  |x $ {} (:text |op-time) (:type :leaf) (:at 1519489492110) (:by |root)
                :type :expr
                :at 1499755354983
              |v $ {}
                :data $ {}
                  |T $ {} (:text |case) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |op) (:type :leaf) (:at 1499755354983) (:by |root)
                  |n $ {}
                    :data $ {}
                      |T $ {} (:text |:states) (:type :leaf) (:at 1507399855618) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |update-states) (:type :leaf) (:at 1584874626558) (:by |rJG4IHzWf)
                          |j $ {} (:text |store) (:type :leaf) (:at 1584874628374) (:by |rJG4IHzWf)
                          |r $ {} (:text |data) (:type :leaf) (:at 1584874632002) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1584874625235
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1507399852251
                    :by |root
                  |t $ {}
                    :data $ {}
                      |T $ {} (:text |:hydrate-storage) (:type :leaf) (:at 1518157657108) (:by |root)
                      |j $ {} (:text |data) (:type :leaf) (:at 1584874637339) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1518157547521
                    :by |root
                  |v $ {}
                    :data $ {}
                      |D $ {} (:text |op) (:type :leaf) (:at 1610949945530) (:by |rJG4IHzWf)
                      |T $ {} (:text |store) (:type :leaf) (:at 1499755354983) (:by |root)
                    :type :expr
                    :at 1610949944194
                    :by |rJG4IHzWf
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |app.updater) (:type :leaf) (:at 1499755354983) (:by |root)
            |r $ {}
              :data $ {}
                |T $ {} (:text |:require) (:type :leaf) (:at 1584874616480) (:by |rJG4IHzWf)
                |j $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1584874616895) (:by |rJG4IHzWf)
                    |j $ {} (:text |respo.cursor) (:type :leaf) (:at 1584874620034) (:by |rJG4IHzWf)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1584874621356) (:by |rJG4IHzWf)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1584874621745) (:by |rJG4IHzWf)
                        |j $ {} (:text |update-states) (:type :leaf) (:at 1584874623096) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1584874621524
                      :by |rJG4IHzWf
                  :type :expr
                  :at 1584874616720
                  :by |rJG4IHzWf
              :type :expr
              :at 1584874614885
              :by |rJG4IHzWf
          :type :expr
          :at 1499755354983
      |app.main $ {}
        :defs $ {}
          |render-app! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |render-app!) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |renderer) (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
              |v $ {}
                :data $ {}
                  |T $ {} (:text |renderer) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |mount-target) (:type :leaf) (:at 1499755354983) (:by |root)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |comp-container) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {} (:text |@*reel) (:type :leaf) (:at 1507400119272) (:by |root)
                    :type :expr
                    :at 1499755354983
                  |v $ {}
                    :data $ {}
                      |D $ {} (:text |\) (:type :leaf) (:at 1610950036106) (:by |rJG4IHzWf)
                      |T $ {} (:text |dispatch!) (:type :leaf) (:at 1511280017692) (:by |root)
                      |j $ {} (:text |%) (:type :leaf) (:at 1610950038574) (:by |rJG4IHzWf)
                      |r $ {} (:text |%2) (:type :leaf) (:at 1511280021857) (:by |root)
                    :type :expr
                    :at 1511280014006
                    :by |root
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
          |ssr? $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |ssr?) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |some?) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |js/document.querySelector) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {} (:text ||meta.respo-ssr) (:type :leaf) (:at 1499755354983) (:by |root)
                    :type :expr
                    :at 1499755354983
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
          |persist-storage! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1533919517365) (:by |rJG4IHzWf)
              |j $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1533919515671
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |D $ {} (:text |;) (:type :leaf) (:at 1610955983714) (:by |rJG4IHzWf)
                  |T $ {} (:text |.setItem) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                  |j $ {} (:text |js/localStorage) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956703087) (:by |rJG4IHzWf)
                      |j $ {} (:text |config/site) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1533919515671
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |D $ {} (:text |js/JSON.stringify) (:type :leaf) (:at 1610955960605) (:by |rJG4IHzWf)
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |to-calcit-data) (:type :leaf) (:at 1610955956856) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:store) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                              |j $ {} (:text |@*reel) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1533919515671
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1533919515671
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1610955957287
                    :by |rJG4IHzWf
                :type :expr
                :at 1533919515671
                :by |rJG4IHzWf
            :type :expr
            :at 1533919515671
            :by |rJG4IHzWf
          |mount-target $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |mount-target) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |.querySelector) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |js/document) (:type :leaf) (:at 1499755354983) (:by |root)
                  |r $ {} (:text ||.app) (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
          |*reel $ {}
            :data $ {}
              |T $ {} (:text |defatom) (:type :leaf) (:at 1610950021279) (:by |rJG4IHzWf)
              |j $ {} (:text |*reel) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |D $ {} (:text |->) (:type :leaf) (:at 1507399778895) (:by |root)
                  |T $ {} (:text |reel-schema/reel) (:type :leaf) (:at 1507399776350) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |assoc) (:type :leaf) (:at 1507399781682) (:by |root)
                      |j $ {} (:text |:base) (:type :leaf) (:at 1507401405076) (:by |root)
                      |r $ {} (:text |schema/store) (:type :leaf) (:at 1507399787471) (:by |root)
                    :type :expr
                    :at 1507399779656
                    :by |root
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |assoc) (:type :leaf) (:at 1507399781682) (:by |root)
                      |j $ {} (:text |:store) (:type :leaf) (:at 1507399793097) (:by |root)
                      |r $ {} (:text |schema/store) (:type :leaf) (:at 1507399787471) (:by |root)
                    :type :expr
                    :at 1507399779656
                    :by |root
                :type :expr
                :at 1507399777531
                :by |root
            :type :expr
            :at 1499755354983
          |main! $ {}
            :data $ {}
              |yD $ {}
                :data $ {}
                  |T $ {} (:text |listen-devtools!) (:type :leaf) (:at 1507461739167) (:by |root)
                  |j $ {} (:text ||a) (:type :leaf) (:at 1507461691211) (:by |root)
                  |r $ {} (:text |dispatch!) (:type :leaf) (:at 1507461693919) (:by |root)
                :type :expr
                :at 1507461684494
                :by |root
              |yL $ {}
                :data $ {}
                  |D $ {} (:text |;) (:type :leaf) (:at 1610955980179) (:by |rJG4IHzWf)
                  |T $ {} (:text |.addEventListener) (:type :leaf) (:at 1518157450281) (:by |root)
                  |j $ {} (:text |js/window) (:type :leaf) (:at 1518157453505) (:by |root)
                  |r $ {} (:text ||beforeunload) (:type :leaf) (:at 1518157458163) (:by |root)
                  |v $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                :type :expr
                :at 1518157357847
                :by |root
              |yN $ {}
                :data $ {}
                  |D $ {} (:text |;) (:type :leaf) (:at 1610955977102) (:by |rJG4IHzWf)
                  |T $ {} (:text |repeat!) (:type :leaf) (:at 1544956062322) (:by |rJG4IHzWf)
                  |b $ {} (:text |60) (:type :leaf) (:at 1544956066171) (:by |rJG4IHzWf)
                  |j $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919535136) (:by |rJG4IHzWf)
                :type :expr
                :at 1533919529874
                :by |rJG4IHzWf
              |yP $ {}
                :data $ {}
                  |D $ {} (:text |;) (:type :leaf) (:at 1610955974955) (:by |rJG4IHzWf)
                  |T $ {} (:text |let) (:type :leaf) (:at 1518157495438) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |raw) (:type :leaf) (:at 1518157496930) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |.getItem) (:type :leaf) (:at 1518157501316) (:by |root)
                              |j $ {} (:text |js/localStorage) (:type :leaf) (:at 1518157504638) (:by |root)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956709260) (:by |rJG4IHzWf)
                                  |j $ {} (:text |config/site) (:type :leaf) (:at 1527788293499) (:by |root)
                                :type :expr
                                :at 1518157506313
                                :by |root
                            :type :expr
                            :at 1518157497615
                            :by |root
                        :type :expr
                        :at 1518157495826
                        :by |root
                    :type :expr
                    :at 1518157495644
                    :by |root
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |when) (:type :leaf) (:at 1533919640958) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |some?) (:type :leaf) (:at 1518157515786) (:by |root)
                          |j $ {} (:text |raw) (:type :leaf) (:at 1518157516878) (:by |root)
                        :type :expr
                        :at 1518157515117
                        :by |root
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |dispatch!) (:type :leaf) (:at 1518157523818) (:by |root)
                          |j $ {} (:text |:hydrate-storage) (:type :leaf) (:at 1518157669936) (:by |root)
                          |r $ {}
                            :data $ {}
                              |D $ {} (:text |extract-cirru-data) (:type :leaf) (:at 1610955973069) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |js/JSON.parse) (:type :leaf) (:at 1610955966742) (:by |rJG4IHzWf)
                                  |j $ {} (:text |raw) (:type :leaf) (:at 1518157531240) (:by |root)
                                :type :expr
                                :at 1518157527987
                                :by |root
                            :type :expr
                            :at 1610955967874
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1518157521635
                        :by |root
                    :type :expr
                    :at 1518157514334
                    :by |root
                :type :expr
                :at 1518157492640
                :by |root
              |yT $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text "||App started.") (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |main!) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1499755354983
              |s $ {}
                :data $ {}
                  |T $ {} (:text |load-console-formatter!) (:type :leaf) (:at 1619982955984) (:by |rJG4IHzWf)
                :type :expr
                :at 1619982941704
                :by |rJG4IHzWf
              |t $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1544874434638) (:by |rJG4IHzWf)
                  |j $ {} (:text "|\"Running mode:") (:type :leaf) (:at 1544874509800) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |if) (:type :leaf) (:at 1544874440190) (:by |rJG4IHzWf)
                      |j $ {} (:text |config/dev?) (:type :leaf) (:at 1544874446442) (:by |rJG4IHzWf)
                      |r $ {} (:text "|\"dev") (:type :leaf) (:at 1544874449063) (:by |rJG4IHzWf)
                      |v $ {} (:text "|\"release") (:type :leaf) (:at 1544874452316) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1544874440404
                    :by |rJG4IHzWf
                :type :expr
                :at 1544874433785
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |if) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |ssr?) (:type :leaf) (:at 1499755354983) (:by |root)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |render-app!) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {} (:text |realize-ssr!) (:type :leaf) (:at 1499755354983) (:by |root)
                    :type :expr
                    :at 1499755354983
                :type :expr
                :at 1499755354983
              |x $ {}
                :data $ {}
                  |T $ {} (:text |render-app!) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |render!) (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
              |y $ {}
                :data $ {}
                  |T $ {} (:text |add-watch) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |*reel) (:type :leaf) (:at 1507399915531) (:by |root)
                  |r $ {} (:text |:changes) (:type :leaf) (:at 1499755354983) (:by |root)
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |reel) (:type :leaf) (:at 1612176018403) (:by |rJG4IHzWf)
                          |j $ {} (:text |prev-reel) (:type :leaf) (:at 1612176021385) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1499755354983
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |render-app!) (:type :leaf) (:at 1499755354983) (:by |root)
                          |j $ {} (:text |render!) (:type :leaf) (:at 1499755354983) (:by |root)
                        :type :expr
                        :at 1499755354983
                    :type :expr
                    :at 1499755354983
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
          |snippets $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1551977434239) (:by |rJG4IHzWf)
              |j $ {} (:text |snippets) (:type :leaf) (:at 1551977434239) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1551977434239
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1551977458023) (:by |rJG4IHzWf)
                  |j $ {} (:text |config/cdn?) (:type :leaf) (:at 1551977477010) (:by |rJG4IHzWf)
                :type :expr
                :at 1551977444630
                :by |rJG4IHzWf
            :type :expr
            :at 1551977434239
            :by |rJG4IHzWf
          |dispatch! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |dispatch!) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |op) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |op-data) (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
              |t $ {}
                :data $ {}
                  |D $ {} (:text |when) (:type :leaf) (:at 1547437687530) (:by |root)
                  |L $ {}
                    :data $ {}
                      |D $ {} (:text |and) (:type :leaf) (:at 1584874662518) (:by |rJG4IHzWf)
                      |T $ {} (:text |config/dev?) (:type :leaf) (:at 1547437691006) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |not=) (:type :leaf) (:at 1584874664551) (:by |rJG4IHzWf)
                          |j $ {} (:text |op) (:type :leaf) (:at 1584874665829) (:by |rJG4IHzWf)
                          |r $ {} (:text |:states) (:type :leaf) (:at 1584874671745) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1584874663522
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1584874661674
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |j $ {} (:text |println) (:type :leaf) (:at 1518156276516) (:by |root)
                      |r $ {} (:text "|\"Dispatch:") (:type :leaf) (:at 1547437698992) (:by |root)
                      |v $ {} (:text |op) (:type :leaf) (:at 1518156280471) (:by |root)
                    :type :expr
                    :at 1518156274050
                    :by |root
                :type :expr
                :at 1547437686766
                :by |root
              |v $ {}
                :data $ {}
                  |T $ {} (:text |reset!) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |*reel) (:type :leaf) (:at 1507399899641) (:by |root)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |reel-updater) (:type :leaf) (:at 1507399887573) (:by |root)
                      |j $ {} (:text |updater) (:type :leaf) (:at 1507399888500) (:by |root)
                      |r $ {} (:text |@*reel) (:type :leaf) (:at 1507399891576) (:by |root)
                      |v $ {} (:text |op) (:type :leaf) (:at 1507399892687) (:by |root)
                      |x $ {} (:text |op-data) (:type :leaf) (:at 1507399894594) (:by |root)
                    :type :expr
                    :at 1507399884621
                    :by |root
                :type :expr
                :at 1584780634192
                :by |rJG4IHzWf
            :type :expr
            :at 1499755354983
          |reload! $ {}
            :data $ {}
              |D $ {} (:text |defn) (:type :leaf) (:at 1626769371841) (:by |rJG4IHzWf)
              |L $ {} (:text |reload!) (:type :leaf) (:at 1626769373262) (:by |rJG4IHzWf)
              |P $ {}
                :data $ {}
                :type :expr
                :at 1626769373822
                :by |rJG4IHzWf
              |T $ {}
                :data $ {}
                  |D $ {} (:text |if) (:type :leaf) (:at 1626769376072) (:by |rJG4IHzWf)
                  |L $ {}
                    :data $ {}
                      |T $ {} (:text |some?) (:type :leaf) (:at 1626769377296) (:by |rJG4IHzWf)
                      |j $ {} (:text |build-errors) (:type :leaf) (:at 1626769380429) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1626769376464
                    :by |rJG4IHzWf
                  |P $ {}
                    :data $ {}
                      |T $ {} (:text |tip!) (:type :leaf) (:at 1626769383551) (:by |rJG4IHzWf)
                      |b $ {} (:text "|\"error") (:type :leaf) (:at 1626769407621) (:by |rJG4IHzWf)
                      |j $ {} (:text |build-errors) (:type :leaf) (:at 1626769386097) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1626769381420
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |D $ {} (:text |do) (:type :leaf) (:at 1626769388962) (:by |rJG4IHzWf)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |tip!) (:type :leaf) (:at 1626769431965) (:by |rJG4IHzWf)
                          |b $ {} (:text "|\"inactive") (:type :leaf) (:at 1626769399420) (:by |rJG4IHzWf)
                          |j $ {} (:text |nil) (:type :leaf) (:at 1626769395996) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1626769389912
                        :by |rJG4IHzWf
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |remove-watch) (:type :leaf) (:at 1614610461848) (:by |rJG4IHzWf)
                          |j $ {} (:text |*reel) (:type :leaf) (:at 1614610463332) (:by |rJG4IHzWf)
                          |r $ {} (:text |:changes) (:type :leaf) (:at 1614610465053) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1614610459743
                        :by |rJG4IHzWf
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |clear-cache!) (:type :leaf) (:at 1507461702453) (:by |root)
                        :type :expr
                        :at 1507461699387
                        :by |root
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |add-watch) (:type :leaf) (:at 1614610456287) (:by |rJG4IHzWf)
                          |j $ {} (:text |*reel) (:type :leaf) (:at 1614610456287) (:by |rJG4IHzWf)
                          |r $ {} (:text |:changes) (:type :leaf) (:at 1614610456287) (:by |rJG4IHzWf)
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1614610456287) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |reel) (:type :leaf) (:at 1614610456287) (:by |rJG4IHzWf)
                                  |j $ {} (:text |prev-reel) (:type :leaf) (:at 1626769447598) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1614610456287
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |render-app!) (:type :leaf) (:at 1626769449990) (:by |rJG4IHzWf)
                                  |j $ {} (:text |render!) (:type :leaf) (:at 1614610456287) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1614610456287
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1614610456287
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1614610456287
                        :by |rJG4IHzWf
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |reset!) (:type :leaf) (:at 1507461706990) (:by |root)
                          |j $ {} (:text |*reel) (:type :leaf) (:at 1507461708965) (:by |root)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |refresh-reel) (:type :leaf) (:at 1507461730190) (:by |root)
                              |j $ {} (:text |@*reel) (:type :leaf) (:at 1507461719097) (:by |root)
                              |r $ {} (:text |schema/store) (:type :leaf) (:at 1507461721870) (:by |root)
                              |v $ {} (:text |updater) (:type :leaf) (:at 1507461722724) (:by |root)
                            :type :expr
                            :at 1507461710020
                            :by |root
                        :type :expr
                        :at 1507461704162
                        :by |root
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |render-app!) (:type :leaf) (:at 1615024896477) (:by |rJG4IHzWf)
                          |j $ {} (:text |render!) (:type :leaf) (:at 1615024896477) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1615024896477
                        :by |rJG4IHzWf
                      |y $ {}
                        :data $ {}
                          |T $ {} (:text |println) (:type :leaf) (:at 1499755354983) (:by |root)
                          |j $ {} (:text "||Code updated.") (:type :leaf) (:at 1596818890934) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1499755354983
                    :type :expr
                    :at 1626769388510
                    :by |rJG4IHzWf
                :type :expr
                :at 1626769375567
                :by |rJG4IHzWf
            :type :expr
            :at 1626769370991
            :by |rJG4IHzWf
          |repeat! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1610949959548) (:by |rJG4IHzWf)
              |j $ {} (:text |repeat!) (:type :leaf) (:at 1610949959548) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |duration) (:type :leaf) (:at 1610949961510) (:by |rJG4IHzWf)
                  |j $ {} (:text |cb) (:type :leaf) (:at 1610949962481) (:by |rJG4IHzWf)
                :type :expr
                :at 1610949959548
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |js/setTimeout) (:type :leaf) (:at 1610949967510) (:by |rJG4IHzWf)
                  |b $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1610949974737) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                        :type :expr
                        :at 1610949974965
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |cb) (:type :leaf) (:at 1610949976824) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1610949977007
                        :by |rJG4IHzWf
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |repeat!) (:type :leaf) (:at 1610949982234) (:by |rJG4IHzWf)
                          |j $ {} (:text |duration) (:type :leaf) (:at 1610949985594) (:by |rJG4IHzWf)
                          |r $ {} (:text |cb) (:type :leaf) (:at 1610949988057) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1610949978097
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1610949974428
                    :by |rJG4IHzWf
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |*) (:type :leaf) (:at 1610949970800) (:by |rJG4IHzWf)
                      |j $ {} (:text |1000) (:type :leaf) (:at 1610949972139) (:by |rJG4IHzWf)
                      |r $ {} (:text |duration) (:type :leaf) (:at 1610949973380) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1610949970393
                    :by |rJG4IHzWf
                :type :expr
                :at 1610949963443
                :by |rJG4IHzWf
            :type :expr
            :at 1610949959548
            :by |rJG4IHzWf
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |app.main) (:type :leaf) (:at 1499755354983) (:by |root)
            |r $ {}
              :data $ {}
                |yyT $ {}
                  :data $ {}
                    |T $ {} (:text "|\"bottom-tip") (:type :leaf) (:at 1626769365198) (:by |rJG4IHzWf)
                    |j $ {} (:text |:default) (:type :leaf) (:at 1626769424391) (:by |rJG4IHzWf)
                    |r $ {} (:text |tip!) (:type :leaf) (:at 1626769367052) (:by |rJG4IHzWf)
                  :type :expr
                  :at 1626769361295
                  :by |rJG4IHzWf
                |yyj $ {}
                  :data $ {}
                    |T $ {} (:text "|\"./calcit.build-errors") (:type :leaf) (:at 1626769418150) (:by |rJG4IHzWf)
                    |j $ {} (:text |:default) (:type :leaf) (:at 1626769421231) (:by |rJG4IHzWf)
                    |r $ {} (:text |build-errors) (:type :leaf) (:at 1626769421925) (:by |rJG4IHzWf)
                  :type :expr
                  :at 1626769410401
                  :by |rJG4IHzWf
                |yT $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                    |j $ {} (:text |app.schema) (:type :leaf) (:at 1499755354983) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {} (:text |schema) (:type :leaf) (:at 1499755354983) (:by |root)
                  :type :expr
                  :at 1499755354983
                |yj $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1507399674614) (:by |root)
                    |j $ {} (:text |reel.util) (:type :leaf) (:at 1507399678694) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1507399680625) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1507399681518) (:by |root)
                        |j $ {} (:text |listen-devtools!) (:type :leaf) (:at 1518156292092) (:by |root)
                      :type :expr
                      :at 1507399680857
                      :by |root
                  :type :expr
                  :at 1507399674125
                  :by |root
                |yr $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1507399684313) (:by |root)
                    |j $ {} (:text |reel.core) (:type :leaf) (:at 1507399687162) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1507399688098) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1507399688928) (:by |root)
                        |j $ {} (:text |reel-updater) (:type :leaf) (:at 1507399691010) (:by |root)
                        |q $ {} (:text |refresh-reel) (:type :leaf) (:at 1518156288482) (:by |root)
                      :type :expr
                      :at 1507399688322
                      :by |root
                  :type :expr
                  :at 1507399683930
                  :by |root
                |yv $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1507399715600) (:by |root)
                    |j $ {} (:text |reel.schema) (:type :leaf) (:at 1507399717674) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1507399755750) (:by |root)
                    |v $ {} (:text |reel-schema) (:type :leaf) (:at 1507399757678) (:by |root)
                  :type :expr
                  :at 1507399715229
                  :by |root
                |yy $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1527788303612) (:by |root)
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1527788304925) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1527788306048) (:by |root)
                    |v $ {} (:text |config) (:type :leaf) (:at 1527788306884) (:by |root)
                  :type :expr
                  :at 1527788302920
                  :by |root
                |T $ {} (:text |:require) (:type :leaf) (:at 1499755354983) (:by |root)
                |j $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1499755354983) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                        |j $ {} (:text |render!) (:type :leaf) (:at 1499755354983) (:by |root)
                        |r $ {} (:text |clear-cache!) (:type :leaf) (:at 1499755354983) (:by |root)
                        |v $ {} (:text |realize-ssr!) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |v $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                    |j $ {} (:text |app.comp.container) (:type :leaf) (:at 1499755354983) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                        |j $ {} (:text |comp-container) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |y $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                    |j $ {} (:text |app.updater) (:type :leaf) (:at 1508556737455) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                        |j $ {} (:text |updater) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
              :type :expr
              :at 1499755354983
          :type :expr
          :at 1499755354983
      |app.config $ {}
        :defs $ {}
          |dev? $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1544873875614) (:by |rJG4IHzWf)
              |j $ {} (:text |dev?) (:type :leaf) (:at 1544873875614) (:by |rJG4IHzWf)
              |r $ {} (:text |true) (:type :leaf) (:at 1610950001316) (:by |rJG4IHzWf)
            :type :expr
            :at 1544873875614
            :by |rJG4IHzWf
          |site $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1518157345496) (:by |root)
              |j $ {} (:text |site) (:type :leaf) (:at 1518157327696) (:by |root)
              |r $ {}
                :data $ {}
                  |yT $ {}
                    :data $ {}
                      |T $ {} (:text |:icon) (:type :leaf) (:at 1527868458476) (:by |root)
                      |j $ {} (:text "|\"http://cdn.tiye.me/logo/cirru.png") (:type :leaf) (:at 1603422163889) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1527868457696
                    :by |root
                  |yf $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956719115) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"calcit-runner-apis") (:type :leaf) (:at 1603167514094) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1544956719115
                    :by |rJG4IHzWf
                  |T $ {} (:text |{}) (:type :leaf) (:at 1518157346643) (:by |root)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:dev-ui) (:type :leaf) (:at 1527526864597) (:by |root)
                      |x $ {} (:text "|\"http://localhost:8100/main-fonts.css") (:type :leaf) (:at 1556700447561) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1527526861413
                    :by |root
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:release-ui) (:type :leaf) (:at 1527526868617) (:by |root)
                      |j $ {} (:text "|\"http://cdn.tiye.me/favored-fonts/main-fonts.css") (:type :leaf) (:at 1556700443008) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1527526865931
                    :by |root
                  |w $ {}
                    :data $ {}
                      |T $ {} (:text |:cdn-url) (:type :leaf) (:at 1528008962775) (:by |root)
                      |j $ {} (:text "|\"http://cdn.tiye.me/calcit-workflow/") (:type :leaf) (:at 1528008965359) (:by |root)
                    :type :expr
                    :at 1528008960614
                    :by |root
                  |y $ {}
                    :data $ {}
                      |T $ {} (:text |:title) (:type :leaf) (:at 1527868457305) (:by |root)
                      |j $ {} (:text "|\"APIs for calcit-runner") (:type :leaf) (:at 1603167524702) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1527868456422
                    :by |root
                :type :expr
                :at 1518157327696
                :by |root
            :type :expr
            :at 1545933382603
            :by |root
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1527788237503
          :by |root
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1527788237503) (:by |root)
            |j $ {} (:text |app.config) (:type :leaf) (:at 1527788237503) (:by |root)
          :type :expr
          :at 1527788237503
          :by |root
  :users $ {}
    |root $ {} (:avatar nil) (:name |root) (:nickname |root) (:id |root) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
    |rJG4IHzWf $ {} (:avatar nil) (:name |chen) (:nickname |chen) (:id |rJG4IHzWf) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
