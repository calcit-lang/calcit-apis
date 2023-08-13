
[]
  {}
    :name |defn
    :tags $ #{} :syntax
    :desc "|create functions on namespaces"
    :snippets $ []
      quote $ defn (a b) $ + a b
      quote $ defn (a $ xs)
        echo a xs
  {}
    :name |fn
    :tags $ #{} :macro
    :desc "|create anounymous functions"
    :snippets $ []
      quote $ fn (a b) $ + a b
      {}
        :code $ quote $ macroexpand $ quote $ fn (a $ xs) $ echo a xs
        :desc "|expands to function"
        :result $ quote $ quote $ defn generated-fn (a $ xs) $ echo a xs
  {}
    :name |quote
    :tags $ #{} :syntax
    :desc "|return quoted data, mainly lists that are not evaludated"
    :snippets $ []
      quote $ quote $ [] + 1 2 3
  {}
    :name |quasiquote
    :tags $ #{} :syntax
    :desc "|used in defmacro, togather with `~` for replacing in quoted data"
    :snippets $ []
      {}
        :code $ quote $ quasiquote $ + 1 2 3 (~ a)
        :result $ quote $ quote $ + 1 2 3 a
  {}
    :name |&
    :tags $ #{} :syntax
    :desc "|argument spread operator, used in function creating or calling"
    :snippets $ []
      {}
        :desc "|use `&` to collect arguments into a list named `xs`"
        :code $ quote $ defn f (x0 & xs) $ echo xs
      {}
        :desc "|use `&` to flatten `xs` into multiple arguments"
        :code $ quote $ f x0 & xs
  {}
    :name |~
    :tags $ #{} :syntax
    :desc "|replaces variables in quoted data"
    :snippets $ []
      {}
        :code $ quote $ quasiquote $ + 1 2 (~ a)
        :result $ quote $ quote $ + 1 2 a
  {}
    :name |~@
    :tags $ #{} :syntax
    :desc "|like `~` but turns a list into multiple symbols beforing inserting"
    :snippets $ []
      quote $ quasiquote $ + 1 2 (~@ xs)
      {}
        :code $ quote $ quasiquote $ + 1 2 (~@ $ quote $ [] a b)
        :result $ quote $ quote $ + 1 2 a b
  {}
    :name |do
    :tags $ #{} :macro
    :desc "|do for multiple expressions and return value from last one. internally its using `&let`"
    :snippets $ []
      quote $ do
        echo 1
        echo 2
  {}
    :name |defmacro
    :tags $ #{} :syntax
    :desc "|defines macros"
    :snippets $ []
      quote $ defmacro m1 (a b)
        quasiquote $ + (~ a) (~ b)
  {}
    :name |[,]
    :tags $ #{} :macro
    :desc "|macro for creating lists, `,` children are removed"
    :snippets $ []
      quote $ [,] 1 , 2 , 3
  {}
    :name |[]
    :tags $ #{} :native
    :desc "|operator for creating lists, internally it's ternary tree list"
    :snippets $ []
      quote $ [] 1 2 3 4 (+ 1 2)
  {}
    :name |{}
    :tags $ #{} :macro
    :desc "|operator for creating maps based on `&{}`, internally it's ternary tree map"
    :snippets $ []
      {}
        :code $ quote $ {} (:a 1) (:b $ + 2 3)
        :desc "|creates a map"
      {}
        :code $ quote $ macroexpand $ quote $ {} (:a 1) (:b $ + 2 3)
        :desc "|expands to &{}, which creates a map"
        :result $ quote $ quote $ &{} :a 1 :b $ + 2 3
  {}
    :name |::
    :tags $ #{} :tuple
    :desc "|operator for creating tuples, tuple takes 1 or more parameters, first argument used as tag. internally it has a base class with no methods"
    :snippets $ []
      quote $ :: :tag
      quote $ :: :tag 1 2 3 4
  {}
    :name |%::
    :tags $ #{} :tuple
    :desc "|operator for creating tuples, tuple takes 2 or more parameters, first argument is class, second argument used as tag"
    :snippets $ []
      quote $ :: %class :tag
      quote $ :: %class :tag 1 2 3 4
  {}
    :name |if
    :tags $ #{} :syntax
    :desc "|if syntax, any value other than `false` and `nil` are treated as `true`"
    :snippets $ []
      quote $ if (> a 1) |true |false
      quote $ if (> a 1) |just-true
  {}
    :name |;
    :tags $ #{} :syntax
    :desc "|add a comment"
    :snippets $ []
      quote $ ; "this will not be evaludated" "more comments"
  {}
    :name |;nil
    :tags $ #{} :macro
    :desc "|add a comment with nil placeholder"
    :snippets $ []
      quote $ assert= nil
        ;nil "this will not be evaludated" "more comments"
  {}
    :name |let
    :tags $ #{} :macro
    :desc "|local variable bindings, using Clojure syntax"
    :snippets $ []
      quote $ let
          a 1
          b $ + a 1
        + a b
  {}
    :name |if-let
    :tags $ #{} :macro
    :desc "|bind expression to local variable, check not nil, then run like if"
    :snippets $ []
      quote $ if-let
        a $ get (&{} :a 1) :aa
        + a 10
        , nil
  {}
    :name |when-let
    :tags $ #{} :macro
    :desc "|bind expression to local variable, check not nil, then run like when"
    :snippets $ []
      quote $ when-let
        a $ get (&{} :a 1) :aa
        + a 10
  {}
    :name |loop
    :tags $ #{} :macro
    :desc "|like Clojure `loop`, use tail recursion to loop inside expressions, implemented with macro"
    :snippets $ []
      quote $ loop
          idx 0
          acc $ []
        if (< idx 10)
          recur (+ idx 1) (append acc idx)
          , acc
      quote $ loop () (echo "|never ends") (recur)
      {}
        :code $ quote $ macroexpand $ quote
          loop
              acc 0
              x 0
            if (> x 10) acc (recur (+ acc x) (inc x))
        :result $ quote
          apply
            defn generated-loop (acc x)
              if (> x 10) acc
                recur (+ acc x) (inc x)
            &[] 0 0
  {}
    :name |assert
    :tags $ #{} :macro
    :desc "|like Clojure `assert`, but string is placed first"
    :snippets $ []
      quote $ assert "|x > 0" (> x 0)
  {}
    :name |not
    :tags $ #{} :native :bool
    :desc "|just `not`"
    :snippets $ []
      quote $ not true
  {}
    :name |count
    :tags $ #{} :native :map :list :string
    :desc "|just `count`"
    :snippets $ []
      quote $ count $ []
      quote $ count $ {}
      quote $ count |abc
  {}
    :name |nth
    :tags $ #{} :native :map :list
    :desc "|like Clojure `nth`"
    :snippets $ []
      quote $ nth ([] 1 2 3) 1
      quote $ nth |abc 1
  {}
    :name |get
    :tags $ #{} :native :map :list :string
    :desc "|wrapped `&get` and `nth`, like Clojure `get`"
    :snippets $ []
      quote $ get ([] 1 2 3) 1
      quote $ get
        {}
          :a 1
          :b 2
        , :a
      quote $ get (:: :tag |data) 0
  {}
    :name |rest
    :tags $ #{} :native :list
    :desc "|slice list without first item, return empty list if `nil`"
    :snippets $ []
      quote $ rest $ [] 1 2 3 4
  {}
    :name |slice
    :tags $ #{} :native :list
    :desc "|call `.slice` on list or string"
    :snippets $ []
      quote $ slice ([] 1 2 3 4) 1 3
  {}
    :name |concat
    :tags $ #{} :native :list
    :desc "|call `.concat` on list or string"
    :snippets $ []
      quote $ concat ([] 1 2 3 4) ([] 2 3)
  {}
    :name |raise
    :tags $ #{} :native
    :desc "|raise exception with a message"
    :snippets $ []
      quote $ raise "|xs has error"
  {}
    :name |type-of
    :tags $ #{} :native
    :desc "|gets type of a value, returns in a tag"
    :snippets $ []
      quote $ type-of a
  {}
    :name |read-file
    :tags $ #{} :native :io
    :desc "|read string from a relative file path"
    :snippets $ []
      quote $ read-file |demo.md
  {}
    :name |write-file
    :tags $ #{} :native :io
    :desc "|write string content to a relative file path"
    :snippets $ []
      quote $ write-file |demo.md "|some content"
  {}
    :name |macroexpand
    :tags $ #{} :native :macro
    :desc "|expand quoted code for debugging purpose, notice that quote is required"
    :snippets $ []
      {}
        :code $ quote $ macroexpand $ quote $ when true 1 2 3
        :result $ quote $ quote $ if true $ &let nil 1 2 3
  {}
    :name |macroexpand-1
    :tags $ #{} :native :macro
    :desc "|expand quoted code only once(even it's a `Recur`), notice that quote is required"
    :snippets $ []
      {}
        :code $ quote $ macroexpand-1 $ quote $ when true 1 2 3
        :result $ quote $ quote $ if true $ &let nil 1 2 3
  {}
    :name |macroexpand-all
    :tags $ #{} :native :macro
    :desc "|expand quoted code recursively, notice that quote is required"
    :snippets $ []
      {}
        :code $ quote $ macroexpand-all $ quote $ when true 1 2 3
        :result $ quote $ quote $ if true $ &let nil 1 2 3
      {}
        :code $ quote $ macroexpand-all
          quote
            case (+ 1 2)
              1 |one
              2 |two
              3 |three
        :result $ quote
          quote
            &let (v__1 (+ 1 2))
              if (&= v__1 1) |one
                if (&= v__1 2) |two
                  if (&= v__1 3) |three nil
  {}
    :name |print
    :tags $ #{} :native
    :desc "|write string values to stdout(not avaliable after refactor)"
    :wip? true
    :snippets $ []
      quote $ print 1 2 3
  {}
    :name |println
    :tags $ #{} :native
    :desc "|displays values with newline at end"
    :snippets $ []
      quote $ println 1 2 3
  {}
    :name |echo
    :tags $ #{} :native :injection
    :desc "|alias for println"
    :snippets $ []
      quote $ echo 1 2 3
  {}
    :name |print-values
    :tags $ #{} :debug
    :desc "|displays formatted values with newline at end"
    :snippets $ []
      quote $ print-values 1 2 3
  {}
    :name |pr-str
    :tags $ #{} :string
    :desc "|return string value with more details, string being escaped"
    :snippets $ []
      {}
        :code $ quote $ pr-str "|demo with space"
        :result $ quote $ do "\"|demo with space\""
      {}
        :code $ quote $ pr-str $ [] 1 2 3 4
        :result $ quote $ do "|([] 1 2 3 4)"
  {}
    :name |prepend
    :tags $ #{} :native :list
    :desc "|returns new list, with new item at first"
    :snippets $ []
      quote $ prepend ([] 1 2 3) 0
  {}
    :name |append
    :tags $ #{} :native :list
    :desc "|returns new list, with new item at tail"
    :snippets $ []
      quote $ append ([] 1 2 3) 4
  {}
    :name |conj
    :tags $ #{} :list
    :desc "|like for `append`, returns new list, with new items at tail"
    :snippets $ []
      quote $ conj ([] 1 2 3) 4
      quote $ conj ([] 1 2 3) 4 5 6
  {}
    :name |first
    :tags $ #{} :native
    :desc "|return first item of list"
    :snippets $ []
      quote $ first $ [] 1 2 3 4
  {}
    :name |empty?
    :tags $ #{} :native :list :map :set
    :desc "|detects empty list or map, returns `true` for `nil`"
    :snippets $ []
      quote $ empty? nil
      quote $ empty? $ []
      quote $ empty? $ {}
  {}
    :name |empty
    :tags $ #{} :native :list :map :set :string
    :desc "|return an empty piece of data from given data"
    :snippets $ []
      {}
        :code $ quote $ empty nil
        :result $ quote $ do nil
      {}
        :code $ quote $ empty $ [] 1 2 3
        :result $ quote $ []
      {}
        :code $ quote $ empty $ #{} 1 2 3
        :result $ quote $ #{}
      {}
        :code $ quote $ empty $ {} (:a 1)
        :result $ quote $ {}
  {}
    :name |blank?
    :tags $ #{} :native :string
    :desc "|detects empty string or only whitespaces"
    :snippets $ []
      quote $ blank? nil
      quote $ blank? |
      quote $ blank? "| "
      quote $ blank? "|\n"
  {}
    :name |last
    :tags $ #{} :native :list
    :desc "|return last item of list"
    :snippets $ []
      quote $ last $ [] 1 2 3 4
  {}
    :name |butlast
    :tags $ #{} :native :list
    :desc "|slice list without last item, return empty list if `nil`"
    :snippets $ []
      quote $ butlast $ [] 1 2 3 4
  {}
    :name |turn-string
    :tags $ #{} :native
    :desc "|turn something into a string"
    :snippets $ []
      quote $ turn-string :key
      quote $ turn-string 'key
      quote $ turn-string 1
  {}
    :name |turn-symbol
    :tags $ #{} :native
    :desc "|turn something into a symbol"
    :snippets $ []
      quote $ turn-symbol |a
      quote $ turn-symbol :a
  {}
    :name |turn-tag
    :tags $ #{} :native
    :desc "|turn something into a tag"
    :snippets $ []
      quote $ turn-tag |k
      quote $ turn-tag 'k
  {}
    :name |identical?
    :tags $ #{} :native :list :map
    :desc "|detects if items share the same pointer, mainly for lists and maps"
    :snippets $ []
      quote $ identical? a b
  {}
    :name |range
    :tags $ #{} :native :list
    :desc "|return a range numbers"
    :snippets $ []
      quote $ range 10
      quote $ range 1 10
      quote $ range 1 10 2
  {}
    :name |range-bothway
    :tags $ #{} :native :list
    :desc "|return a range numbers, generate in both ways"
    :snippets $ []
      {}
        :code $ quote $ range 3
        :result $ quote $ -2 -1 0 1 2
        :desc "|when 1 argument is passed, by default, `0` is the number in the middle"
      {}
        :code $ quote $ range 1 3
        :result $ quote $ 0 1 2
        :desc "|when 2 arguments are passed, `1` is the number in the middle, `3 - 1` is that last number"
  {}
    :name |format-ternary-tree
    :tags $ #{} :native :list :map
    :desc "|display string form of internal ternary tree structure, currently js only"
    :wip? true
    :snippets $ []
      quote $ format-ternary-tree $ [] 1 2 3 4 5 6
      quote $ format-ternary-tree $ {}
        :a 1
        :b 2
        :c 3
  {}
    :name |merge
    :tags $ #{} :native :map
    :desc "|merge multiple lists"
    :snippets $ []
      quote $ merge
        {} (:a 1)
        {} (:b 2)
  {}
    :name |contains?
    :tags $ #{} :native :map :set
    :desc "|check if key is contained in a structure, like indexes of a list"
    :snippets $ []
      quote $ contains? ({} (:a 1) (:b 2)) :a
      quote $ contains? ([] :a :b :c) 1
  {}
    :name |contains-in?
    :tags $ #{} :native :map
    :desc "|check if a path is contained in a nexted structure"
    :snippets $ []
      quote $ contains-in? (&{} :a ([] 1 2 3)) $ [] :a 1
      quote $ contains? ([] 1 2 $ [] 3 4) ([] 2 1)
  {}
    :name |includes?
    :tags $ #{} :native :map :set
    :desc "|check if values is included in a structure, like items of a list"
    :snippets $ []
      quote $ contains? ({} (:a 1) (:b 2)) 2
      quote $ contains? |abc |bc
  {}
    :name |keys
    :tags $ #{} :map
    :desc "|returns a set of keys of a map"
    :snippets $ []
      quote $ keys $ {} (:a 1) (:b 2)
  {}
    :name |keys-non-nil
    :tags $ #{} :map
    :desc "|returns a set of keys of a map whose values are not nil"
    :snippets $ []
      {}
        :code $ quote $ keys $ {} (:a 1) (:b 2) (:c nil)
        :result $ quote $ #{} :a :b
  {}
    :name |vals
    :tags $ #{} :native :map
    :desc "|returns a set of values of a map"
    :snippets $ []
      quote $ vals $ {} (:a 1) (:b 2)
  {}
    :name |assoc
    :tags $ #{} :native :list :map
    :desc "|returns a list with new item or key/value associated"
    :snippets $ []
      quote $ assoc ([] 1 2 3) 1 :a
      quote $ assoc ({} (:a 1) (:b 2)) :c 10
      quote $ assoc ({}) :c 10 :d 20
  {}
    :name |dissoc
    :tags $ #{} :native :map
    :desc "|returns a list with a key dissociated"
    :snippets $ []
      quote $ dissoc ({} (:a 1) (:b 2)) :a
      quote $ dissoc ({} (:a 1) (:b 2)) :a :b
  {}
    :name |parse-cirru-edn
    :tags $ #{} :native
    :desc "|parse data from Cirru EDN format"
    :snippets $ []
      quote $ parse-cirru-edn "|{} (:a 1)"
  {}
    :name |tagging-edn
    :tags $ #{} :edn
    :desc "|turn string keys into tags in nested data"
    :snippets $ []
      {}
        :code $ quote $ tagging-edn $ {} (|a 1) (|b 2)
        :result $ quote $ {} (:a 1) (:b 2)
  {}
    :name |cirru-quote
    :tags $ #{} :native
    :desc "|a special form at reader phase for creating `CirruQuote` variant"
    :snippets $ []
      quote $ cirru-quote $ defn f (a b) (+ a b)
  {}
    :name |parse-cirru
    :tags $ #{} :native
    :desc "|parse Cirru syntax with native parser, returns CirruQuote"
    :snippets $ []
      quote $ parse-cirru "|def f (x) y"
  {}
    :name |parse-cirru-list
    :tags $ #{} :native
    :desc "|parse Cirru syntax with native parser, returns a list"
    :snippets $ []
      quote $ parse-cirru "|def f (x) y"
  {}
    :name |format-cirru
    :tags $ #{} :native
    :desc "|generate Cirru syntax with native writer"
    :snippets $ []
      quote $ format-cirru $ []
        [] |a |b $ [] |c |d
  {}
    :name |format-cirru-edn
    :tags $ #{} :native
    :desc "|generate Cirru syntax from data, with an extra `use_inline` option from Cirru"
    :snippets $ []
      quote $ format-cirru-edn data true
  {}
    :name |sqrt
    :tags $ #{} :native :number
    :desc "|square root of number"
    :snippets $ []
      quote $ sqrt 9
  {}
    :name |sin
    :tags $ #{} :native :number
    :desc "|sin of a number"
    :snippets $ []
      quote $ sin 0.1
  {}
    :name |cos
    :tags $ #{} :native :number
    :desc "|cos of a number"
    :snippets $ []
      quote $ cos 0.1
  {}
    :name |round
    :tags $ #{} :native :number :ternary
    :desc "|round a float number, also works for a ternary value"
    :snippets $ []
      quote $ round 1.1
      quote $ round &1.1
  {}
    :name |round?
    :tags $ #{} :native :number :ternary
    :desc "|detects a round number"
    :snippets $ []
      quote $ round? 1.1
      quote $ round? &1.1
  {}
    :name |pow
    :tags $ #{} :native :number
    :desc "|power of a number"
    :snippets $ []
      quote $ pow 2 2
  {}
    :name |#{}
    :tags $ #{} :native :set
    :desc "|hashset. it' based on Nim's hashset, might be slower"
    :snippets $ []
      quote $ #{} 1 2 3 4
  {}
    :name |recur
    :tags $ #{} :native :syntax
    :desc "|operator for tail recursion, can be used in a function or a loop"
    :snippets $ []
      quote $ defn f (acc n)
        if (< n 10)
          recur (+ acc n) (+ n 1)
          , acc
  {}
    :name |foldl
    :tags $ #{} :native :list
    :desc "|Haskell's foldl function, implemented i Nim for performance"
    :snippets $ []
      quote $ foldl acc 0 +
      {}
        :code $ quote $ foldl
          {} (:a 1)
          {} (:b 2)
          fn (acc pair) (assoc acc & pair)
        :result $ quote $ {} (:a 1) (:b 2)
  {}
    :name |foldl-shortcut
    :tags $ #{} :native :list
    :desc "|foldl with a shortcut, using a tuple with bool `true` to indicate immediate return"
    :snippets $ []
      {}
        :code $ quote $ foldl-shortcut ([] 1 2 3 4) 0 nil $ fn (idx x)
          if (&> x 1)
            :: true idx
            :: false (inc idx)
        :result $ quote $ do 1
  {}
    :name |foldr-shortcut
    :tags $ #{} :native :list
    :desc "|foldr with a shortcut, using a tuple with bool `true` to indicate immediate return"
    :snippets $ []
      {}
        :code $ quote $ foldr-shortcut ([] 1 2 3 4) 0 nil $ fn (idx x)
          if (&> x 1)
            :: true idx
            :: false (inc idx)
        :result $ quote $ do 1
  {}
    :name |reduce
    :tags $ #{} :native :list
    :desc "|just an alias for foldl"
    :snippets $ []
      quote $ reduce acc 0 +
  {}
    :name |if-not
    :tags $ #{} :macro
    :desc "|if-not syntax"
    :snippets $ []
      quote $ if-not false |false |true
      quote $ if-not false |false
  {}
    :name |when
    :tags $ #{} :macro
    :desc "|if with no false branch"
    :snippets $ []
      quote $ when true
        echo 1
        echo 2
      {}
        :code $ quote $ macroexpand $ quote $ when true 1 2 3
        :result $ quote $ quote $ if true $ do 1 2 3
  {}
    :name |when-not
    :tags $ #{} :macro
    :desc "|when but using not"
    :snippets $ []
      quote $ when-not (> 0 1) $ echo "|1 is larger"
  {}
    :name |+
    :tags $ #{} :number :ternary
    :desc "|add multiple numbers"
    :snippets $ []
      quote $ + 1 2
      quote $ + 1 2 3
  {}
    :name |-
    :tags $ #{} :number :ternary
    :desc "|substract numbers from a number"
    :snippets $ []
      quote $ - 2 1
      quote $ - 10 1 2 3
  {}
    :name |*
    :tags $ #{} :number :ternary
    :desc "|multiply numbers"
    :snippets $ []
      quote $ * 1 2 3
  {}
    :name |/
    :tags $ #{} :number :ternary
    :desc "|division of multiple numbers"
    :snippets $ []
      quote $ / 12 3 4
  {}
    :name |foldl-compare
    :tags $ #{} :list
    :desc "|internal function for generation comparing functions"
    :snippets $ []
      quote $ foldl-compare ([] 2 3 4) 1 &<
  {}
    :name |<
    :tags $ #{} :number
    :desc "|compare multiple numbers"
    :snippets $ []
      quote $ < 1 2 3 4
  {}
    :name |>
    :tags $ #{} :number
    :desc "|compare multiple numbers"
    :snippets $ []
      quote $ > 4 3 2 1
  {}
    :name |=
    :tags $ #{} :number
    :desc "|compare multiple numbers"
    :snippets $ []
      quote $ = 1 (- 2 1) (- 4 3)
  {}
    :name |/=
    :tags $ #{}
    :desc "|not equal of 2 values"
    :snippets $ []
      quote $ /= 1 2
  {}
    :name |not=
    :tags $ #{}
    :desc "|alias for `/=`"
    :snippets $ []
      quote $ not= 1 2
  {}
    :name |>=
    :tags $ #{} :number
    :desc "|compare multiple numbers"
    :snippets $ []
      quote $ >= 4 3 2
  {}
    :name |<=
    :tags $ #{} :number
    :desc "|compare multiple numbers"
    :snippets $ []
      quote $ <= 2 3 4
  {}
    :name |apply
    :tags $ #{}
    :desc "|apply a list of arguments to a function"
    :snippets $ []
      quote $ apply f $ [] 1 2 3 4
  {}
    :name |apply-args
    :tags $ #{}
    :desc "|like `apply` but list of arguments are placed first"
    :snippets $ []
      quote $ apply-args ([] 1 2 3 4) f
  {}
    :name |list?
    :tags $ #{}
    :desc "|detects a list"
    :snippets $ []
      quote $ list? $ [] 1 2 3 4
  {}
    :name |map?
    :tags $ #{}
    :desc "|detects a map"
    :snippets $ []
      quote $ map? $ {} (:a 1) (:b 2)
  {}
    :name |number?
    :tags $ #{}
    :desc "|detects a number"
    :snippets $ []
      quote $ number? 1
  {}
    :name |string?
    :tags $ #{}
    :desc "|detects a string"
    :snippets $ []
      quote $ string? |demo
  {}
    :name |tag?
    :tags $ #{}
    :desc "|detects a tag"
    :snippets $ []
      quote $ tag? :key
  {}
    :name |symbol?
    :tags $ #{}
    :desc "|detects a symbol"
    :snippets $ []
      quote $ symbol? 'a
  {}
    :name |bool?
    :tags $ #{}
    :desc "|detects a bool"
    :snippets $ []
      quote $ bool? true
  {}
    :name |nil?
    :tags $ #{}
    :desc "|detects a nil"
    :snippets $ []
      quote $ nil? nil
  {}
    :name |fn?
    :tags $ #{}
    :desc "|detects a function or a proc"
    :snippets $ []
      quote $ fn? $ fn () 1
      quote $ fn? &=
  {}
    :name |macro?
    :tags $ #{}
    :desc "|detects a macro(only inside Rust runtime)"
    :snippets $ []
      quote $ macro? cond
  {}
    :name |ref?
    :tags $ #{}
    :desc "|detects a reference, created by `defatom`"
    :snippets $ []
      quote $ ref? *a
  {}
    :name |some?
    :tags $ #{}
    :desc "|detects something not nil"
    :snippets $ []
      quote $ some? 1
  {}
    :name |each
    :tags $ #{} :list
    :desc "|take a list and a function and call each item with function"
    :snippets $ []
      quote $ each
        range 4
        fn (x)
          echo x
  {}
    :name |map
    :tags $ #{} :list
    :desc "|map items of list into a new list"
    :snippets $ []
      {}
        :code $ quote $ map
          [] 1 2 3 4
          fn (x) $ + x 1
        :result $ quote $ [] 2 3 4 5
      {}
        :code $ quote $ map (#{} 1 2 3) inc
        :result $ quote $ #{} 2 3 4
        :desc "|maps a set to a set, order is not ensured"
      {}
        :code $ quote $ map ({} (:a 1) (:b 2)) $ fn (pair) (update pair 1 inc)
        :result $ quote $ {} (:a 2) (:b 3)
        :desc "|map on a hashmap returns another hashmap"
  {}
    :name |take
    :tags $ #{} :list
    :desc "|take n items from list"
    :snippets $ []
      quote $ take ([] 1 2 3 4 5) 2
  {}
    :name |take-last
    :tags $ #{} :list
    :desc "|take-last n items from list"
    :snippets $ []
      quote $ take-last ([] 1 2 3 4 5) 2
  {}
    :name |drop
    :tags $ #{} :list
    :desc "|take items of a list except for first n items"
    :snippets $ []
      quote $ drop ([] 1 2 3 4 5) 2
  {}
    :name |str
    :tags $ #{} :string
    :desc "|string concatenation"
    :snippets $ []
      quote $ str |a 1 :k
  {}
    :name |str-spaced
    :tags $ #{} :string
    :desc "|string concatenation with spaced inserted"
    :snippets $ []
      {}
        :desc "|nil values are ignored"
        :code $ quote $ str-spaced |a 1 nil :k
        :result $ quote $ do "|a 1 :k"
  {}
    :name |include
    :tags $ #{} :set
    :desc "|include multiple items to hashset"
    :snippets $ []
      quote $ include (#{} 1 2) 3 4
  {}
    :name |exclude
    :tags $ #{} :set
    :desc "|exclude multiple items from hashset"
    :snippets $ []
      quote $ exclude (#{} 1 2 3 4) 1 2
  {}
    :name |difference
    :tags $ #{} :set
    :desc "|return a difference hashset of 2 hashsets"
    :snippets $ []
      quote $ difference (#{} 1 2 3 4) (#{} 1 2) (#{} 3)
  {}
    :name |union
    :tags $ #{} :set
    :desc "|return a union hashset of 2 hashsets"
    :snippets $ []
      quote $ union (#{} 1 2) (#{} 3 4) (#{} 5 6)
  {}
    :name |intersection
    :tags $ #{} :set
    :desc "|return a intersection hasset of multiple hashsets"
    :snippets $ []
      quote $ intersection (#{} 1 2 3) (#{} 2 3 4) (#{} 3 4 5)
  {}
    :name |index-of
    :tags $ #{} :list
    :desc "|native implementation of `indexOf` function, returns -1 when not found"
    :snippets $ []
      quote $ index-of ([] 1 2 3 4) 1
  {}
    :name |find-index
    :tags $ #{} :list
    :desc "|find index of first item that matches the function, returns -1 when not found"
    :snippets $ []
      quote $ find-index ([] 1 2 3 4) $ fn (x) (> x 2)
  {}
    :name |find
    :tags $ #{} :list
    :desc "|find first item from list that matches the function"
    :snippets $ []
      quote $ find ([] 1 2 3 4) $ fn (x) (> x 2)
  {}
    :name |->
    :tags $ #{} :macro
    :desc "|thread macro for nested functions, argument at head"
    :snippets $ []
      quote $ -> a (b) (c d)
  {}
    :name |<-
    :tags $ #{} :macro
    :desc "|backward thread macro for nested functions, argument at head"
    :snippets $ []
      quote $ <- (b) (c d) a
  {}
    :name |->>
    :tags $ #{} :macro
    :desc "|thread macro for nested functions, argument at tail"
    :snippets $ []
      quote $ ->> a (b) (c d)
  {}
    :name |->%
    :tags $ #{} :macro
    :desc "|thread macro for nested functions, using `%` for argument"
    :snippets $ []
      quote $ ->% a (+ % b) (* % c)
  {}
    :name |%<-
    :tags $ #{} :macro
    :desc "|backward thread macro for nested functions, using `%` for argument"
    :snippets $ []
      quote $ %<- (+ % b) (* % c) a
  {}
    :name |cond
    :tags $ #{} :macro
    :desc "|like Clojure cond, but using `true` for else case"
    :snippets $ []
      quote $ cond
        (> a 10) |>10
        (> a 1) |>1
        true |false
  {}
    :name |case
    :tags $ #{} :macro
    :desc "|like Clojure case, but using value itself for else case, , returns `nil` if no match"
    :snippets $ []
      quote $ case a
        :a |a
        :b |b
        a |else
      {}
        :code $ quote $ macroexpand-all
          quote
            case (+ 1 2)
              1 |one
              2 |two
              3 |three
        :result $ quote
          quote
            &let (v__1 (+ 1 2))
              if (&= v__1 1) |one
                if (&= v__1 2) |two
                  if (&= v__1 3) |three nil
  {}
    :name |case-default
    :tags $ #{} :macro
    :desc "|like Clojure case, but using putting default case at 2nd parameter"
    :snippets $ []
      quote $ case-default a |else
        :a |a
        :b |b
      {}
        :code $ quote $ macroexpand-all
          quote
            case (+ 1 2) |else
              1 |one
              2 |two
        :result $ quote
          quote
            &let (v__3 (+ 1 2))
              &let (default__4 |else)
                if (&= v__3 1) |one
                  if (&= v__3 2) |two default__4
  {}
    :name |get-in
    :tags $ #{} :list :map
    :desc "|like Clojure get-in function, read property recursively"
    :snippets $ []
      quote $ get-in data $ [] :a 1
  {}
    :name |max
    :tags $ #{} :list
    :desc "|max function that takes a list of arguments"
    :snippets $ []
      quote $ max $ [] 1 2 3 4
  {}
    :name |min
    :tags $ #{} :list
    :desc "|max function that takes a list of arguments"
    :snippets $ []
      quote $ min $ [] 1 2 3 4
  {}
    :name |every?
    :tags $ #{} :list
    :desc "|detects if every item in list satisfies function"
    :snippets $ []
      quote $ every? ([] 1 2 3 4) (fn (x) (> x 1))
  {}
    :name |any?
    :tags $ #{} :list
    :desc "|detects if any item in list satisfies function"
    :snippets $ []
      quote $ any? ([] 1 2 3 4) (fn (x) (> x 1))
  {}
    :name |mapcat
    :tags $ #{} :list
    :desc "|map item to list and then concat, or just flatmap"
    :snippets $ []
      quote $ mapcat
        [] 1 2 3 4
        fn (x) ([] x (+ x 10))
  {}
    :name |group-by
    :tags $ #{} :list
    :desc "|take a list, return grouped result with a map"
    :snippets $ []
      quote $ group-by
        range 10
        fn (x) (mod x 3)
  {}
    :name |identity
    :tags $ #{}
    :desc "|takes an item and just return it"
    :snippets $ []
      quote $ map (range 10) identity
  {}
    :name |filter
    :tags $ #{} :list
    :desc "|filter a list with a function"
    :snippets $ []
      quote $ filter (range 10) (fn (x) (> n 5))
      {}
        :code $ quote $ filter ({} (:a 1) (:b 2)) (fn (pair) (&> (last pair) 1))
        :result $ quote $ {} (:b 2)
        :desc "|filter could also return a hashmap"
  {}
    :name |filter-not
    :tags $ #{} :list
    :desc "|filter a list with a function with false return"
    :snippets $ []
      quote $ filter-not (range 10) (fn (x) (> n 5))
  {}
    :name |zipmap
    :tags $ #{} :list
    :desc "|create a map with two lists, one for keys and one for values"
    :snippets $ []
      {}
        :code $ quote $ zipmap
          [] :a :b :c :d
          [] 1 2 3 4
        :result $ quote $ {}
          :a 1
          :b 2
          :c 3
          :d 4
  {}
    :name |pairs-map
    :tags $ #{} :list
    :desc "|create a map from a list of pairs"
    :snippets $ []
      {}
        :code $ quote $ pairs-map $ []
          [] :a 1
          [] :b 2
        :result $ quote $ {}
          :a 1
          :b 2
  {}
    :name |map-indexed
    :tags $ #{} :list
    :desc "|map with index parameter"
    :snippets $ []
      quote $ map-indexed (range 10) (fn (idx x) idx)
  {}
    :name |join-str
    :tags $ #{} :string :list
    :desc "|join segments into a string"
    :snippets $ []
      {}
        :code $ quote $ join-str ([] 1 2 3 4) |-
        :result $ quote $ do |1-2-3-4
  {}
    :name |split
    :tags $ #{} :string
    :desc "|split string into a list of segments"
    :snippets $ []
      quote $ split |1,2,3,4 |,
  {}
    :name |update
    :tags $ #{}
    :desc "|update map or list"
    :snippets $ []
      quote $ update ({} (:a 1)) :a $ \ + % 1
      quote $ update (range 4) 1 $ \ + % 1
  {}
    :name |dissoc-in
    :tags $ #{}
    :desc "|dissociate data deep in a structure"
    :snippets $ []
      quote $ dissoc-in data ([] :a :b :c)
      quote $ dissoc-in data ([] :a 1 2)
  {}
    :name |\
    :tags $ #{} :macro
    :desc "|alias for an anounymous function, use `%` and `%2` for arguments"
    :snippets $ []
      quote $ map (\ + x 1) (range 10)
      quote $ map-indexed (\ [] % %2) (range 10)
  {}
    :name |\.
    :tags $ #{} :macro
    :desc "|alias for lambda expression, use `.` for generating curried function"
    :snippets $ []
      {}
        :code $ quote $ \. x (+ x 1)
        :result $ quote $ defn f_x (x) (+ x 1)
      {}
        :code $ quote $ \. x.y (+ x y)
        :result $ quote $ defn f_x (x)
          defn f_y (y) (+ x y)
      {}
        :code $ quote $ \. x.y.z (+ x y z)
        :result $ quote $ defn f_x (x)
          defn f_y (y)
            defn f_z (z) (+ x y z)
  {}
    :name |contains-symbol?
    :tags $ #{}
    :desc "|a function for detecting symbol existence in code"
    :snippets $ []
      quote $ contains-symbol? (quote $ + a b) 'a
  {}
    :name |to-pairs
    :tags $ #{} :map
    :desc "|returns pairs of a map as a list of lists"
    :snippets $ []
      {}
        :code $ quote $ to-pairs $ {} (:a 1) (:b 2)
        :result $ quote $ #{}
          [] :a 1
          [] :b 2
  {}
    :name |[][]
    :tags $ #{} :list :macro
    :desc "|defining 2-dimensional list with fewer `[]`s"
    :snippets $ []
      {}
        :code $ quote
          [][] (2 3) (4 5) (6 7)
        :result $ quote $ [] ([] 2 3) ([] 4 5) ([] 6 7)
        :desc "|This is a macro"
  {}
    :name |assert=
    :tags $ #{} :macro
    :desc "|debugging macro for comparing a value"
    :snippets $ []
      quote $ assert= 2 (+ x 1)
  {}
    :name |assert-detect
    :tags $ #{} :macro
    :desc "|debugging macro for detecting a value"
    :snippets $ []
      quote $ assert-detect fn? &+
      quote $ assert-detect bool? true
  {}
    :name |defatom
    :tags $ #{} :syntax :ref
    :desc "|creating an atom(`ref`) of states. use `atom` if you want a local one. it requires a name, and currently not atomic, just states"
    :snippets $ []
      quote $ defatom *a 1
  {}
    :name |atom
    :tags $ #{} :ref
    :desc "|creating an atom(`ref`) of states, locally. Use `defatom` is you want a global one"
    :snippets $ []
      quote $ atom 1
  {}
    :name |deref
    :tags $ #{} :ref :native
    :desc "|grab data from atom"
    :snippets $ []
      quote $ deref *a
  {}
    :name |reset!
    :tags $ #{} :ref :native
    :desc "|update data from atom"
    :snippets $ []
      quote $ reset! *a 2
  {}
    :name |swap!
    :tags $ #{} :ref :macro
    :desc "|update data from atom with a function, syntax from Clojure"
    :snippets $ []
      quote $ swap! *a inc
  {}
    :name |add-watch
    :tags $ #{} :ref :native
    :desc "|add a watch function to an atom by tag"
    :snippets $ []
      quote $ add-watch *a :log $ \ echo "|changed" %
  {}
    :name |remove-watch
    :tags $ #{} :ref :native
    :desc "|remove a watch function from an atom by tag"
    :snippets $ []
      quote $ remove-watch *a :log
  {}
    :name |inc
    :tags $ #{} :number
    :desc "|add 1 to a number"
    :snippets $ []
      quote $ inc 10
  {}
    :name |dec
    :tags $ #{} :number
    :desc "|substract 1 to a number"
    :snippets $ []
      quote $ dec 10
  {}
    :name |assoc-in
    :tags $ #{}
    :desc "|assoc a field deep inside"
    :snippets $ []
      quote $ assoc-in data ([] :a :b :c) 10
      quote $ assoc-in data ([] :a 1 2) 10
      {}
        :code $ quote $ assoc-in nil ([] :a :b) 10
        :desc "|assoc data even when operand is nil"
        :result $ quote $ {}
          :a $ {}
            :b 10
  {}
    :name |update-in
    :tags $ #{} :number
    :desc "|update data deep in a structure"
    :snippets $ []
      quote $ update-in data ([] :a :b :c)
      quote $ update-in data ([] :a 1 2)
      quote $ update-in data ([] :a 1) (fn (x) (x + 1))
  {}
    :name |starts-with?
    :tags $ #{} :string
    :desc "|detects if string starts with item"
    :snippets $ []
      quote $ starts-with? |abc |a
  {}
    :name |parse-float
    :tags $ #{} :string :native
    :desc "|get float number from string"
    :snippets $ []
      quote $ parse-float |1.1
  {}
    :name |trim
    :tags $ #{} :string :native
    :desc "|trim spaces or characters from string"
    :snippets $ []
      quote $ trim "|  a  "
      quote $ trim "|__a__" |_
  {}
    :name |join
    :tags $ #{} :list
    :desc "|join list of items with a separator"
    :snippets $ []
      {}
        :code $ quote $ join ([] 1 2 3 4) 10
        :result $ quote $ [] 1 10 2 10 3 10 4
  {}
    :name |gensym
    :tags $ #{} :syntax
    :desc "|takes a string or tag, generates a namespace-level unique symbol for a variable name"
    :snippets $ []
      {}
        :code $ quote $ gensym
        :result $ quote $ G__101
      {}
        :code $ quote $ gensym |a
        :result $ quote $ a__102
  {}
    :name |&PI
    :tags $ #{} :number
    :desc "|get value of PI, the ratio of a circle's circumference to its diameter"
    :snippets $ []
      {}
        :code $ quote $ echo &PI
  {}
    :name |&E
    :tags $ #{} :number
    :desc "|get value of e, natural log"
    :snippets $ []
      {}
        :code $ quote $ echo &E
  {}
    :name |&newline
    :tags $ #{} :string
    :desc "|just `\n`"
    :snippets $ []
      {}
        :code $ quote $ echo &newline
  {}
    :name |&tab
    :tags $ #{} :string
    :desc "|just `\t`"
    :snippets $ []
      {}
        :code $ quote $ echo &tab
  {}
    :name |&calcit-version
    :tags $ #{} :string
    :desc "|a string of current version"
    :snippets $ []
      {}
        :code $ quote $ echo &calcit-version
  {}
    :name |repeat
    :tags $ #{} :list
    :desc "|repeat an item n times"
    :snippets $ []
      {}
        :code $ quote $ repeat :a 5
        :result $ quote $ [] :a :a :a :a :a
  {}
    :name |interleave
    :tags $ #{} :list
    :desc "|interleave of two lists, like Clojure"
    :snippets $ []
      {}
        :code $ quote $ interleave ([] :a :b :c) ([] 1 2 3 4)
        :result $ quote $ [] :a 1 :b 2 :c 3
  {}
    :name |map-kv
    :tags $ #{} :map
    :desc "|map key and value for a map"
    :snippets $ []
      {}
        :code $ quote $ map-kv
          {} (:a 1) (:b 2)
          fn (k v) ([] k (+ v 1))
        :result $ quote $ {} (:a 2) (:b 3)
  {}
    :name |def
    :tags $ #{} :macro
    :desc "|def is a macro, just discard the name return the value"
    :snippets $ []
      {}
        :code $ quote $ def x 1
        :result $ quote $ do 1
        :desc "|name is totally useless in runtime"
      {}
        :code $ quote $ macroexpand $ quote $ def a b
        :result $ quote $ quote $ b
  {}
    :name |either
    :tags $ #{} :macro
    :desc "|if x is nil, then return y, else y is never evaludated. `or` only takes booleans."
    :snippets $ []
      {}
        :code $ quote $ either nil 1
        :result $ quote $ do 1
      {}
        :code $ quote $ either false 1
        :result $ quote $ do false
      {}
        :code $ quote $ either 2 1
        :result $ quote $ do 2
  {}
    :name |and
    :tags $ #{}
    :desc "|varadic `and` operator, returns value or `false`"
    :snippets $ []
      {}
        :code $ quote $ and
        :result $ quote $ do false
      {}
        :code $ quote $ and true true false
        :result $ quote $ do false
      {}
        :code $ quote $ and true false true
        :result $ quote $ do false
      {}
        :code $ quote $ and true true true
        :result $ quote $ do true
      {}
        :code $ quote $ and nil 1
        :result $ quote $ do false
      {}
        :code $ quote $ and 1 nil
        :result $ quote $ do false
  {}
    :name |or
    :tags $ #{}
    :desc "|varadic `or` operator, returns value or `false`"
    :snippets $ []
      {}
        :code $ quote $ or
        :result $ quote $ do false
      {}
        :code $ quote $ or false false false
        :result $ quote $ do false
      {}
        :code $ quote $ or false true false
        :result $ quote $ do true
      {}
        :code $ quote $ or false false true
        :result $ quote $ do true
      {}
        :code $ quote $ and nil 1
        :result $ quote $ do 1
      {}
        :code $ quote $ and 1 nil
        :result $ quote $ do 1
  {}
    :name |generate-id!
    :tags $ #{} :native
    :desc "|id generator(refer to std for `nanoid!`)"
    :snippets $ []
      {}
        :code $ quote $ generate-id!
        :desc "|using counter id"
  {}
    :name |sort
    :tags $ #{} :native :list
    :desc "|sort list with given comparator function"
    :snippets $ []
      {}
        :code $ quote $ sort
          [] 1 3 4 2
          fn (x y) (&- x y)
        :result $ quote $ [] 1 2 3 4
        :desc "|value returned from comparator function should be a number"
  {}
    :name |{,}
    :tags $ #{} :macro :map
    :desc "|quicker way for creating literal maps, seperated with comma"
    :snippets $ []
      {}
        :code $ quote
          macroexpand $ quote $ {,} :a 1 , :b 2 , :c 3
        :result $ quote
          pairs-map $ section-by ([] :a 1 :b 2 :c 3) 2
        :desc "|commas are just removed after macro expansion"
      {}
        :code $ quote $ {,} :a 1 , :b 2 , :c 3
        :result $ quote $ {} (:a 1) (:b 2) (:c 3)
  {}
    :name |w-log
    :tags $ #{} :debug :macro
    :desc "|for debug purpose, add log to an expression"
    :snippets $ []
      {}
        :code $ quote
          macroexpand $ quote $ w-log $ + 1 2
        :result $ quote
          &let
            v__1 $ + 1 2
            echo (quote $ + 1 2) |=> v__1
            , v__1
  {}
    :name |wo-log
    :tags $ #{} :debug :macro
    :desc "|for debug purpose, log-less version of w-log, like `identity`"
    :snippets $ []
      quote $ wo-log 1
  {}
    :name |with-js-log
    :tags $ #{} :debug :macro
    :desc "|for debug purpose, add `console.log` to an expression"
    :snippets $ []
      {}
        :code $ quote
          macroexpand $ quote $ with-js-log $ + 1 2
        :result $ quote
          &let
            v__1 $ + 1 2
            js/console.log (quote $ + 1 2) |=> v__1
            , v__1
  {}
    :name |wo-js-log
    :tags $ #{} :debug :macro
    :desc "|for debug purpose, log-less version of w-js0log, like `identity`"
    :snippets $ []
      quote $ wo-log 1
  {}
    :name |quit
    :tags $ #{} :native
    :desc "|call Nim's `quit` function"
    :snippets $ []
      {}
        :code $ quote $ quit 1
  {}
    :name |get-env
    :tags $ #{} :native
    :desc "|read from environment variable"
    :snippets $ []
      {}
        :code $ quote $ get-env |HOME
      {}
        :code $ quote $ get-env |mode |dev
        :result $ quote $ do |dev
        :desc "|provide a default value"
  {}
    :name |cpu-time
    :tags $ #{} :native
    :desc "|call Nim's `cpuTime` function, return in seconds"
    :snippets $ []
      {}
        :code $ quote $ cpu-time
  {}
    :name |with-cpu-time
    :tags $ #{} :macro
    :desc "|log cost CPU time of given expression in milliseconds"
    :snippets $ []
      {}
        :code $ quote $ with-cpu-time $ + 1 2
  {}
    :name |get-char-code
    :wip? true
    :tags $ #{} :native
    :desc "|get char code of a single character of string(not ready for Chinese characters yet)"
    :snippets $ []
      {}
        :code $ quote $ get-char-code |a
  {}
    :name |char-from-code
    :wip? true
    :tags $ #{} :native
    :desc "|create charactor from integer"
    :snippets $ []
      {}
        :code $ quote $ char-from-code 10
  {}
    :name |call-w-log
    :tags $ #{} :debug :macro
    :desc "|for debug purpose, add log to a function call"
    :snippets $ []
      {}
        :code $ quote
          call-w-log + 1 2
        :desc "|prints expression and arguments for debugging"
  {}
    :name |call-wo-log
    :tags $ #{} :debug :macro
    :desc "|for debug purpose, log-less version of call-w-log"
    :snippets $ []
      quote $ call-log + 1 2
  {}
    :name |defn-w-log
    :tags $ #{} :debug :macro
    :desc "|for debugging, wrap function with logs"
    :snippets $ []
      {}
        :code $ quote
          defn-w-log f (a b) (+ a b)
  {}
    :name |defn-wo-log
    :tags $ #{} :debug :macro
    :desc "|for debug purpose, log-less version of defn-w-log, use like `defn`"
    :snippets $ []
  {}
    :name |let{}
    :tags $ #{} :macro
    :desc "|extracting from map with tags"
    :snippets $ []
      {}
        :code $ quote
          macroexpand $ quote
            let{} (a b) o
              + a b
        :result $ quote
          &let (result__1 o)
            let
                a $ :a result__1
                b $ :b result__1
              + a b
        :desc "|extracting a map, use the names of symbols as tags"
  {}
    :name |let[]
    :tags $ #{} :macro
    :desc "|extracting from list"
    :snippets $ []
      {}
        :code $ quote
          let[]
            a b & c
            [] 1 2 3 4
            [] a b c
        :result $ quote
          [] 1 2 ([] 3 4)
        :desc "|`&` is like argument spreading"
  {}
    :name |let-destruct
    :tags $ #{} :macro
    :desc "|helper macro for directing any of: &let let{} let[]"
    :snippets $ []
      quote $ let-destruct a 1 a
      quote $ let-destruct ([] a b) ([] 1 2) a
      quote $ let-destruct ({} a b) ({,} :a 1 :b 2) a
  {}
    :name |let-sugar
    :tags $ #{} :macro
    :desc "|let macro with more sugars"
    :snippets $ []
      quote
        let-sugar
            a 1
            ([] b c) ([] 1 2)
            ({} d e) ({,} :d 1 :e 2)
          [] a b c d e
  {}
    :name |timeout-call
    :tags $ #{} :native
    :desc "|like `setTimeout` but args in different order(js only)"
    :snippets $ []
      {}
        :code $ quote
          timeout-call 100
            fn () (echo "|100ms passed")
  {}
    :name |to-js-data
    :tags $ #{} :js
    :desc "|(js only) convert calcit data to plain js data object"
    :snippets $ []
      quote $ to-js-data $ {} (:a 1)
  {}
    :name |to-calcit-data
    :tags $ #{} :js
    :desc "|(js only) convert from js data object to calcit data"
    :snippets $ []
      quote $ to-calcit-data $ js/window.performance
      {}
        :code $ quote $ to-calcit-data |:a true
        :result $ quote $ |:a
        :desc "|passing `true` as second argument to disable auto tag converting"
  {}
    :name |aget
    :tags $ #{} :js
    :desc "|(js only) read a property on object"
    :snippets $ []
      quote $ aget js/document |body
  {}
    :name |aset
    :tags $ #{} :js
    :desc "|(js only) write to a property on object"
    :snippets $ []
      quote $ aset js/document.body |innerHTML |demo
  {}
    :name |set!
    :tags $ #{} :js
    :desc "|(js only) modify property of an JavaScript object"
    :snippets $ []
      quote $ set! js/document.body.innerHTML |demo
  {}
    :name |new
    :tags $ #{} :js
    :desc "|(js only) just generate syntax for creating an instance"
    :snippets $ []
      quote $ new js/Array 10
  {}
    :name |instance?
    :tags $ #{} :js
    :desc "|(js only) like Clojure `instance?`"
    :snippets $ []
      quote $ instance? js/Number a
  {}
    :name |to-cirru-edn
    :tags $ #{} :js
    :desc "|(js only) convert data to array based Cirru EDN format"
    :snippets $ []
      {}
        :code
          quote $ to-cirru-edn $ {}
            :a $ [] :b :c
        :result $ quote
          to-js-data $ [] |{}
            [] |:a $ [] |[] |:b |:c
  {}
    :name |extract-cirru-edn
    :tags $ #{} :js
    :desc "|(js only) get data from array based Cirru EDN format"
    :snippets $ []
      quote
        extract-cirru-edn
          to-js-data $ [] |{}
            [] |:a $ [] |[] |:b |:c
  {}
    :name |exists?
    :tags $ #{} :js
    :desc "|(js only) detects if variable is defined"
    :snippets $ []
      quote
        exists? x
  {}
    :name |new-record
    :tags $ #{} :record
    :desc "|create a prototype of record, first argument requires symbol value, with values in `nil`"
    :snippets $ []
      quote $ new-record :Person :name :age
  {}
    :name |defrecord
    :tags $ #{} :record :macro
    :desc "|macro that wraps on new-record, first argument uses a bare symbol"
    :snippets $ []
      quote $ defrecord Person :name :age
      {}
        :code $ quote $ macroexpand $ quote $ defrecord Person :name :age
        :result $ quote $ quote $ def Person $ new-record :Person :name :age
  {}
    :name |defrecord!
    :tags $ #{} :record :macro
    :desc "|macro that wraps on defrecord with values defined, first argument uses a bare symbol"
    :snippets $ []
      quote $ defrecord! Person (:name |Cat) (:age 10)
  {}
    :name |record?
    :tags $ #{} :record
    :desc "|detects record"
    :snippets $ []
      quote $ record? x
  {}
    :name |%{}
    :tags $ #{} :record :macro
    :desc "|create a record, first argument is a record, wraps `&%{}`"
    :snippets $ []
      quote $ %{} Person (:name |Ye) (:age 21)
  {}
    :name |load-console-formatter!
    :tags $ #{} :js :debug
    :desc "|Turn on custom formatter for Chrome Console"
    :snippets $ []
      quote $ load-console-formatter!
  {}
    :name |try
    :tags $ #{} :syntax
    :desc "|try block that takes 2 arguments, second one expected to function"
    :snippets $ []
      quote $ try
        do (echo "|somthing")
        fn (error) (echo "error message:" error)
  {}
    :name |format-to-lisp
    :tags $ #{} :debug
    :desc "|display quoted code like a Lisp expression"
    :snippets $ []
      {}
        :code $ quote $ format-to-lisp $ quote $ + a b c
        :result $ quote $ do "|(+ a b c)"
      {}
        :code $ quote $ format-to-lisp ([] |+ 'a 'b 'c)
        :result $ quote $ do "|(+ a b c)"
  {}
    :name |format-to-cirru
    :tags $ #{} :debug
    :desc "|display quoted code in Cirru syntax"
    :snippets $ []
      {}
        :code $ quote $ format-to-cirru $ quote $ + a (+ b (+ c d))
        :result $ quote $ do "|\n+ a $ + b (+ c d)\n"
  {}
    :name |js-array
    :tags $ #{} :native :js
    :desc "|special function for creating a JavaScript Array"
    :snippets $ []
      quote $ js-array 1 2 3 4
  {}
    :name |js-object
    :tags $ #{} :macro :js
    :desc "|special function for creating a JavaScript object, keys can be strings or tags"
    :snippets $ []
      quote $ js-object (:a 1) (:b 2)
  {}
    :name |js-await
    :tags $ #{} :js :syntax
    :desc "|synax for generating `await` for js"
    :snippets $ []
      quote $ defn f ()
        hint-fn async
        js-await async-f
  {}
    :name |hint-fn
    :tags $ #{} :syntax :js
    :desc "|syntax inside a js function to indicate `async`"
    :snippets $ []
      quote $ defn f ()
        hint-fn async
        js-await async-f
  {}
    :name |select-keys
    :tags $ #{} :map
    :desc "|select map with given keys. get nil values when extra keys provided"
    :snippets $ []
      {}
        :code $ quote $ select-keys ({} (:a 1) (:b 2) (:c 3)) ([] :a :b)
        :result $ quote $ {} (:a 1) (:b 2)
      {}
        :code $ quote $ select-keys ({} (:a 1) (:b 2) (:c 3)) ([] :d)
        :result $ quote $ {} (:d nil)
  {}
    :name |unselect-keys
    :tags $ #{} :map
    :desc "|unselect given keys from based on a map"
    :snippets $ []
      {}
        :code $ quote $ unselect-keys ({} (:a 1) (:b 2) (:c 3)) ([] :a :b)
        :result $ quote $ {} (:c 3)
      {}
        :code $ quote $ unselect-keys ({} (:a 1) (:b 2) (:c 3)) ([] :c :d)
        :result $ quote $ {} (:a 1) (:b 2)
  {}
    :name |invoke
    :tags $ #{} :fn
    :desc "|a dynamic function for simulating ad-hoc polyporphism"
    :snippets $ []
      quote $ let
          %Num $ defrecord %Num :inc :show
          Num $ %{} %Num
            :inc $ fn (x) $ [] Num (&+ x 1)
            :show &str
        assert=
          [] Num 2
          -> a (invoke :inc) (invoke :inc)
        assert= |1
          -> a (invoke :inc) (invoke :show)
  {}
    :name |tag-match
    :tags $ #{} :macro
    :desc "|a dynamic macro for simulating pattern matching"
    :snippets $ []
      quote $ tag-match data
        (:a x) (' "|pattern a:" x)
        (:b x y) (' "|pattern b:" x y)
        _ (' "|no match")
  {}
    :name |list-match
    :tags $ #{} :list
    :desc "|low cost pattern matching for a list"
    :snippets $ []
      {}
        :code $ quote $ list-match ([] 1 2 3)
          () (:: :empty)
          (x0 xs) (:: :some x0 xs)
        :result $ quote $ :: :some 1 $ [] 2 3
  {}
    :name |field-match
    :tags $ #{} :macro
    :desc "|a macro for pattern matching for tagged hashmaps, by detecting `:tag` field"
    :snippets $ []
      quote $ field-match data
        :a new-name-a
          str-spaced "|found branch of" :a "|with value" $ :sth-of-a new-name-a
        :b new-name-b
          str-spaced "|found branch of" :b "|with value" $ :sth-of-b new-name-b
        _ :other

  {}
    :name |bit-shr
    :tags $ #{} :bitwise
    :desc "|bitwise operation, shr"
    :snippets $ []
      quote $ bit-shr 2 1
  {}
    :name |bit-shl
    :tags $ #{} :bitwise
    :desc "|bitwise operation, shl"
    :snippets $ []
      quote $ bit-shl 2 1
  {}
    :name |bit-and
    :tags $ #{} :bitwise
    :desc "|bitwise operation, and"
    :snippets $ []
      quote $ bit-and 2 1
  {}
    :name |bit-or
    :tags $ #{} :bitwise
    :desc "|bitwise operation, or"
    :snippets $ []
      quote $ bit-or 2 1
  {}
    :name |bit-xor
    :tags $ #{} :bitwise
    :desc "|bitwise operation, xor"
    :snippets $ []
      quote $ bit-xor 2 1
  {}
    :name |bit-nor
    :tags $ #{} :bitwise
    :desc "|bitwise operation, not"
    :snippets $ []
      quote $ bit-not 2
  {}
    :name |on-control-c
    :tags $ #{} :injection
    :desc "|injected function for handling SIGINT"
    :snippets $ []
      quote $ on-control-c $ fn () (println "|exiting") (quit! 0)
  {}
    :name |reverse
    :tags $ #{} :list
    :desc "|reverse order of items in a list"
    :snippets $ []
      quote $ reverse $ [] 1 2 3 4
  {}
    :name |distinct
    :tags $ #{} :list
    :desc "|return list without duplications"
    :snippets $ []
      {}
        :code $ quote $ distinct ([] 1 2 3 1 2)
        :result $ quote $ [] 1 2 3
  {}
    :name |frequencies
    :tags $ #{} :list
    :desc "|count frequencies of items in list, returns a map"
    :snippets $ []
      {}
        :code $ quote $ frequencies $ [] 1 1 1 2 2 3
        :result $ quote $ {}
          3 1
          2 2
          1 3
  {}
    :name |section-by
    :tags $ #{} :list
    :desc "|split list into lists by given size"
    :snippets $ []
      {}
        :code $ quote $ section-by (range 10) 3
        :result $ quote $ [] ([] 0 1 2) ([] 3 4 5) ([] 6 7 8) ([] 9)
  {}
    :name |negate
    :tags $ #{} :number
    :desc "|negate a number"
    :snippets $ []
  {}
    :name |flipped
    :tags $ #{} :macro
    :desc "|macro to call a function with arguments flipped"
    :snippets $ []
      {}
        :code $ quote $ flipped [] 1 2 3 4
        :result $ quote $ [] 4 3 2 1
  {}
    :name |noted
    :tags $ #{} :macro
    :desc "|macro to decorate a docstring to a value"
    :snippets $ []
      {}
        :code $ quote $ noted "|this is note" 1
        :result $ quote $ do 1
  {}
    :name |doc-fn
    :tags $ #{} :macro
    :desc "|macro to decorate a docstring in a function, which evaluates to `nil`"
    :snippets $ []
      {}
        :code $ quote $ doc-fn "|this is a comment"
        :result $ quote $ do nil
  {}
    :name |:
    :tags $ #{} :macro
    :desc "|macro for creating tuple with fewer colons"
    :snippets $ []
      {}
        :code $ quote $ : some 1
        :result $ quote $ :: :some 1
  {}
    :name |destruct-str
    :tags $ #{} :string
    :desc "|destruct string for tag-match usages"
    :snippets $ []
      {}
        :code $ quote $ destruct-str |123
        :result $ quote $ :: :some |1 |23
      {}
        :code $ quote $ destruct-str |
        :result $ quote $ :: :none
  {}
    :name |destruct-list
    :tags $ #{} :list
    :desc "|destruct list for tag-match usages"
    :snippets $ []
      {}
        :code $ quote $ destruct-list $ [] 1 2 3
        :result $ quote $ :: :some 1 $ [] 2 3
      {}
        :code $ quote $ destruct-list $ []
        :result $ quote $ :: :none
  {}
    :name |destruct-set
    :tags $ #{} :set
    :desc "|destruct set for tag-match usages, order is not guaranteed"
    :snippets $ []
      quote $ destruct-set $ #{} 1 2 3
  {}
    :name |destruct-map
    :tags $ #{} :map
    :desc "|destruct map for tag-match usages, order is not guaranteed"
    :snippets $ []
      quote $ destruct-map $ &{} :a 1 :b 2
  {}
    :name |optionally
    :tags $ #{} :nil
    :desc "|destruct nil for tag-match usages"
    :snippets $ []
      {}
        :code $ quote $ optionally nil
        :result $ quote $ :: :none
      {}
        :code $ quote $ optionally 1
        :result $ quote $ :: :some 1
