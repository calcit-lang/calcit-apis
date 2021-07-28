
{}
  :apis $ []
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
        quote $ count $ |abc
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
      :desc "|gets type of a value, returns in a keyword"
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
      :name |parse-json
      :tags $ #{} :native :json :string
      :desc "|parse JSON string into Cirru data, notice that `\":a\"` will be parsed as keyword"
      :snippets $ []
        quote $ parse-json "|{\"a\": [1, 2]}"
    {}
      :name |stringify-json
      :tags $ #{} :native :json :string
      :desc "|stringify Cirru data into JSON string"
      :snippets $ []
        quote $ stringify-json $ {} (:a ([] 1 2))
        {}
          :code $ quote $ stringify-json
            {} (:a ([] 1 2))
            , true
          :desc "|set true to format keywords with `:`s."
    {}
      :name |macroexpand
      :tags $ #{} :native :macro
      :desc "|expand quoted code for debugging purpose, notice that quote is required"
      :snippets $ []
        {}
          :code $ quote $ macroexpand $ quote $ when true 1 2 3
          :result $ quote $ quote $ if true $ do 1 2 3
    {}
      :name |macroexpand-all
      :tags $ #{} :native :macro
      :desc "|expand quoted code recursively, notice that quote is required"
      :snippets $ []
        {}
          :code $ quote $ macroexpand-all $ quote $ when true 1 2 3
          :result $ quote $ quote $ if true $ do 1 2 3
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
      :tags $ #{} :macro
      :desc "|displays values with newline at end"
      :snippets $ []
        quote $ println 1 2 3
    {}
      :name |echo
      :tags $ #{} :macro
      :desc "|alias for println"
      :snippets $ []
        quote $ echo 1 2 3
    {}
      :name |pr-str
      :tags $ #{} :string
      :desc "|return string value with more details, string being escaped"
      :snippets $ []
        {}
          :code $ quote $ pr-str "|demo with space"
          :result $ quote $ do "\"|demo with space\""
        {}
          :code $ quote $ pr-str 1 2 3 4
          :result $ quote $ do "|1 2 3 4"
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
      :name |turn-keyword
      :tags $ #{} :native
      :desc "|turn something into a keyword"
      :snippets $ []
        quote $ turn-keyword |k
        quote $ turn-keyword 'k
    {}
      :name |identical?
      :tags $ #{} :native :list :map
      :desc "|detects if items share the same pointer, mainly for lists and maps"
      :snippets $ []
        quote $ identical? a b
    {}
      :name |range
      :tags $ #{} :native :list
      :desc "|return a list of ranged numbers"
      :snippets $ []
        quote $ range 10
        quote $ range 1 10
        quote $ range 1 10 2
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
      :name |parse-cirru
      :tags $ #{} :native
      :desc "|parse Cirru syntax with native parser"
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
      :desc "|foldl with a shortcut, using a bool to indicate immediate return"
      :snippets $ []
        {}
          :code $ quote $ foldl-shortcut ([] 1 2 3 4) 0 nil $ fn (idx x)
            if (&> x 1)
              [] true idx
              [] false (inc idx)
          :result $ quote $ do 1
    {}
      :name |reduce
      :tags $ #{} :native :list
      :desc "|just an alias for foldl"
      :snippets $ []
        quote $ reduce acc 0 +
    {}
      :name |unless
      :tags $ #{} :macro
      :desc "|if-not syntax"
      :snippets $ []
        quote $ unless false |false |true
        quote $ unless false |false
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
      :name |keyword?
      :tags $ #{}
      :desc "|detects a keyword"
      :snippets $ []
        quote $ keyword? :key
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
      :desc "|detects a macro"
      :snippets $ []
        quote $ fn? cond
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
        quote $ ->> a (+ % b) (* % c)
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
      :name |rand
      :tags $ #{} :number
      :desc "|generates a random float number in a area, defaults to 100 when not specified"
      :snippets $ []
        quote $ rand
        quote $ rand 10
        quote $ rand -10 10
    {}
      :name |rand-int
      :tags $ #{} :number
      :desc "|generates a random round number in a area, defaults to 100 when not specified"
      :snippets $ []
        quote $ rand-int
        quote $ rand-int 10
        quote $ rand-int -10 10
    {}
      :name |rand-nth
      :tags $ #{} :number
      :desc "|takes a random item from a list, returns `nil` for empty list"
      :snippets $ []
        quote $ rand-nth
        quote $ rand-nth 10
        quote $ rand-nth -10 10
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
      :name |update-in
      :tags $ #{}
      :desc "|update data deep in a structure"
      :snippets $ []
        quote $ update-in data ([] :a 1) (fn (x) (x + 1))
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
      :desc "|creating an atom(`ref`) of states. it requires a name, and currently not atomic, just states"
      :snippets $ []
        quote $ defatom *a 1
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
      :desc "|add a watch function to an atom by keyword"
      :snippets $ []
        quote $ add-watch *a :log $ \ echo "|changed" %
    {}
      :name |remove-watch
      :tags $ #{} :ref :native
      :desc "|remove a watch function from an atom by keyword"
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
      :desc "|update a field deep inside"
      :snippets $ []
        quote $ update-in data ([] :a :b :c)
        quote $ update-in data ([] :a 1 2)
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
      :tags $ #{} :native
      :desc "|gensym, generates an unique symbol like Clojure"
      :snippets $ []
        {}
          :code $ quote $ gensym
          :result $ quote $ G__101
        {}
          :code $ quote $ gensym |a
          :result $ quote $ a__102
        {}
          :code $ quote $ gensym 'b
          :result $ quote $ b__103
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
      :desc "|id generator, currently using nanoid"
      :snippets $ []
        {}
          :code $ quote $ generate-id!
          :desc "|using default configs of nanoid"
        {}
          :code $ quote $ generate-id! 10
          :desc "|specify length of 10"
        {}
          :code $ quote $ generate-id! 10 "abcd"
          :desc "|specify length and charset"
    {}
      :name |parse-time
      :tags $ #{} :native :time
      :desc "|currently time is represented in float in calcit runner"
      :snippets $ []
        {}
          :code $ quote $ parse-time "|2020-10-10"
          :result $ quote $ do 1602259200
          :desc "|default parsing template is yyyy-MM-dd"
        {}
          :code $ quote $ parse-time "|2020-10-10 10:10" "|yyyy-MM-dd HH:mm"
          :desc "|template syntax of Nim `times` module"
          :result $ quote $ do 1602295800
    {}
      :name |format-time
      :tags $ #{} :native :time
      :desc "|format time with syntax defined in Nim `times` module"
      :snippets $ []
        {}
          :code $ quote $ format-time 1602295800 "|yyyy-MM-dd HH:mm"
          :desc "|template syntax of Nim `times` module"
          :result $ quote $ do "|2020-10-10 10:10"
    {}
      :name |get-time!
      :tags $ #{} :native :time
      :desc "|get current time, stored as a float"
      :snippets $ []
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
      :name |dual-balanced-ternary
      :tags $ #{} :ternary
      :desc "|create a dual balanced ternary value from 2 numbers(dropped during refactor)"
      :snippets $ []
        quote $ dual-balanced-ternary 1.1 1.1
    {}
      :name |dbt->point
      :tags $ #{} :ternary
      :desc "|return a list of 2 numbers from a dual balanced ternary value(dropped during refactor)"
      :snippets $ []
        {}
          :code $ quote $ dbt->point &4
          :result $ quote $ [] 1 -1
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
      :name |re-matches
      :wip? true
      :tags $ #{} :native
      :desc "|match string with regular expression"
      :snippets $ []
        {}
          :code $ quote $ re-matches |2 |\d
          :result $ quote $ do true
        {}
          :code $ quote $ re-matches |23 |\d+
          :result $ quote $ do true
        {}
          :code $ quote $ re-matches |a |\d
          :result $ quote $ do false

    {}
      :name |re-find-index
      :wip? true
      :tags $ #{} :native
      :desc "|get char code of a single character of string(not ready for Chinese characters yet)"
      :snippets $ []
        {}
          :code $ quote $ re-find-index |a1 |\d
          :result $ quote $ do 1
        {}
          :code $ quote $ re-find-index |aa |\d
          :result $ quote $ do -1

    {}
      :name |re-fine-all
      :wip? true
      :tags $ #{} :native
      :desc "|get char code of a single character of string(not ready for Chinese characters yet)"
      :snippets $ []
        {}
          :code $ quote $ re-find-all |123 |\d
          :result $ quote $ [] |1 |2 |3
        {}
          :code $ quote $ re-find-all |123 |\d+
          :result $ quote $ [] |123
        {}
          :code $ quote $ re-find-all |1a2a3 |\d+
          :result $ quote $ [] |1 |2 |3
        {}
          :code $ quote $ re-find-all |1a2a34 |\d+
          :result $ quote $ [] |1 |2 |34
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
      :desc "|extracting from map with keywords"
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
          :desc "|extracting a map, use the names of symbols as keywords"
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
      :name |dbt-digits
      :tags $ #{} :dual-balanced-ternary
      :wip? true
      :desc "|get list of digits from a dual-balanced-ternary value(dropped after refactor)"
      :snippets $ []
        {}
          :code $ quote
            dbt-digits &34.56
          :result $ quote
            [] (1 &3) (0 &4) (-1 &5) (-2 &6)
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
        quote $ new-record 'Person :name :age
    {}
      :name |defrecord
      :tags $ #{} :record :macro
      :desc "|macro that wraps on new-record, first argument uses a bare symbol"
      :snippets $ []
        quote $ defrecord Person :name :age
        {}
          :code $ quote $ macroexpand $ quote $ defrecord Person :name :age
          :result $ quote $ quote $ def Person $ new-record 'Person :name :age
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
      :name |js-array
      :tags $ #{} :native :js
      :desc "|special function for creating a JavaScript Array"
      :snippets $ []
        quote $ js-array 1 2 3 4
    {}
      :name |js-object
      :tags $ #{} :macro :js
      :desc "|special function for creating a JavaScript object, keys can be strings or keywords"
      :snippets $ []
        quote $ js-object (:a 1) (:b 2)
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
      :name |key-match
      :tags $ #{} :macro
      :desc "|a dynamic macro for simulating pattern matching"
      :snippets $ []
        quote $ key-match data
          (:a x) (' "|pattern a:" x)
          (:b x y) (' "|pattern b:" x y)
          _ (' "|no match")
    {}
      :name |bit-shr
      :tags $ #{} :number
      :desc "|bit op, shr"
      :snippets $ []
        quote $ bit-shr 2 1
    {}
      :name |bit-shl
      :tags $ #{} :number
      :desc "|bit op, shl"
      :snippets $ []
        quote $ bit-shl 2 1

  :internals $ []
    {}
      :name |&let
      :tags $ #{} :syntax
      :desc "|internal operator for let, which only binds 1 variable per expression"
      :snippets $ []
        quote $ &let (a 1) (+ a 1)
    {}
      :name |&+
      :tags $ #{} :native :number
      :desc "|native add function which adds 2 numbers"
      :snippets $ []
        quote $ &+ 1 2
    {}
      :name |&-
      :tags $ #{} :native :number
      :desc "|native add function which substracts one number from another"
      :snippets $ []
        quote $ &+ 2 1
    {}
      :name |&*
      :tags $ #{} :native :number
      :desc "|native add function which multiples 2 numbers"
      :snippets $ []
        quote $ &* 2 3
    {}
      :name |&/
      :tags $ #{} :native :number
      :desc "|native add function which divide one number by another"
      :snippets $ []
        quote $ &/ 10 2
    {}
      :name |&<
      :tags $ #{} :native :number
      :desc "|native `<` function for 2 numbers"
      :snippets $ []
        quote $ &< 2 3
    {}
      :name |&>
      :tags $ #{} :native :number
      :desc "|native `>` function for 2 numbers"
      :snippets $ []
        quote $ &> 3 2
    {}
      :name |&=
      :tags $ #{} :native :number
      :desc "|native `=` function for 2 numbers"
      :snippets $ []
        quote $ &= 2 (+ 1 1)
    {}
      :name |&str
      :tags $ #{} :native :string
      :desc "|turn a single item into string"
      :snippets $ []
        quote $ &str 1
        quote $ = |keyword $ &str :keyword
    {}
      :name |&case
      :tags $ #{} :macro
      :desc "|internal helper for case and case-default"
      :snippets $ []
    {}
      :name |&doseq
      :tags $ #{} :list
      :desc "|take item from list and run a piece of code with it"
      :snippets $ []
        quote
          &doseq
            idx $ range 4
            echo idx
    {}
      :name |&str:concat
      :tags $ #{} :native :string
      :desc "|concat 2 strings"
      :snippets $ []
        quote $ &str:concat |a |b
    {}
      :name |&str:compare
      :tags $ #{}
      :desc "|compare order of two strings, retuns `-1` `0` or `1`"
      :snippets $ []
        quote $ &str:compare |a |b
    {}
      :name |&include
      :tags $ #{} :native :set
      :desc "|include an item into a hashset"
      :snippets $ []
        quote $ &include (#{} 1 2 3) 4
    {}
      :name |&exclude
      :tags $ #{} :native :set
      :desc "|exclude an item out of a hashset"
      :snippets $ []
        quote $ &exclude (#{} 1 2 3 4) 4
    {}
      :name |&difference
      :tags $ #{} :native :set
      :desc "|difference of two hashsets"
      :snippets $ []
        quote $ &difference (#{} 1 2 3 4) (#{} 1 2)
    {}
      :name |&union
      :tags $ #{} :native
      :desc "|union of two hashsets"
      :snippets $ []
        quote $ &union (#{} 1 2) (#{} 3 4)
    {}
      :name |&set:intersection
      :tags $ #{} :native
      :desc "|intersection of two hashsets"
      :snippets $ []
        quote $ &set:intersection (#{} 1 2) (#{} 2 3)
    {}
      :name |&<=
      :tags $ #{} :number
      :desc "|native implementation of <=, of 2 arguments"
      :snippets $ []
        quote $ <= 1 2
    {}
      :name |&>=
      :tags $ #{} :number
      :desc "|native implementation of >=, of 2 arguments"
      :snippets $ []
        quote $ >= 2 1
    {}
      :name |&max
      :tags $ #{} :number
      :desc "|native implementation of max, takes 2 arguments"
      :snippets $ []
        quote $ &max 1 2
    {}
      :name |&min
      :tags $ #{} :number
      :desc "|native implementation of min, takes 2 arguments"
      :snippets $ []
        quote $ &min 1 2
    {}
      :name |&{}
      :tags $ #{} :map
      :desc "|internal implementation for `{}`, creating with even number of items"
      :snippets $ []
        {}
          :code $ quote $ &{} :a 1 :b 2
          :result $ quote $ {} (:a 1) (:b 2)
    {}
      :name |&reset-gensym-index!
      :tags $ #{} :native
      :desc "|debugging function for gensym"
      :snippets $ []
    {}
      :name |&get-calcit-backend
      :tags $ #{} :native
      :desc "|detects backend, returns `:nim` or `:js`"
      :snippets $ []
        {}
          :code $ quote
            &get-calcit-backend
    {}
      :name |&get-calcit-running-mode
      :tags $ #{} :native
      :desc "|detects compiler, returns `:eval` or `:js` or `:ir`"
      :snippets $ []
        {}
          :code $ quote
            &get-calcit-running-mode
    {}
      :name |&%{}
      :tags $ #{} :record
      :desc "|internal implementation of `%{}`, first argument is record"
      :snippets $ []
        quote $ &%{} Person :name |Ye :age 21
    {}
      :name |&js-object
      :tags $ #{} :native :js
      :desc "|internal function for creating a JavaScript object, used inside `js-object`"
      :snippets $ []
        quote $ &js-object :a 1 :b 2
    {}
      :name |&ffi-message
      :tags $ #{} :native
      :desc "|messages stored to be read by Rust code, string message, varadic arguments"
      :snippets $ []
        quote $ &ffi-message |message |arg1 |arg2
    {}
      :name |&compare
      :tags $ #{} :native
      :desc "compare data in any kinds with native code, returns `-1` `0` `1`"
      :snippets $ []
        quote $ &compare :a 1
    {}
      :name |&tuple:nth
      :tags $ #{} :tuple
      :desc "|accessing value in a tuple"
      :snippets $ []
    {}
      :name |&tuple:assoc
      :tags $ #{} :tuple
      :desc "|create a new tuple with value changed"
      :snippets $ []
    {}
      :name |&str:replace
      :tags $ #{} :string
      :desc "|internal function for replacing string"
      :snippets $ []
    {}
      :name |&str:find-index
      :tags $ #{} :string
      :desc "|find a pattern in string and return index"
      :snippets $ []
    {}
      :name |&str:count
      :tags $ #{} :string
      :desc "|count string length"
      :snippets $ []
    {}
      :name |&str:empty?
      :tags $ #{} :string
      :desc "|detects if a string is empty(still different with `blank?`)"
      :snippets $ []
    {}
      :name |&str:contains?
      :tags $ #{} :string
      :wip? true
      :desc "|detects if a string has index"
      :snippets $ []
    {}
      :name |&str:includes?
      :tags $ #{} :string
      :desc "|detects if a pattern is inside given string"
      :snippets $ []
    {}
      :name |&str:nth
      :tags $ #{} :string
      :desc "|access `n`th character of a string"
      :snippets $ []
    {}
      :name |&str:first
      :tags $ #{} :string
      :desc "|first character of a string"
      :snippets $ []
    {}
      :name |&str:rest
      :tags $ #{} :string
      :desc "|rest part of a string"
      :snippets $ []
    {}
      :name |&list:count
      :tags $ #{} :list
      :desc "|count size of a list"
      :snippets $ []
    {}
      :name |&list:sort-by
      :tags $ #{} :list
      :desc "|sort list with a function"
      :snippets $ []
    {}
      :name |&list:empty?
      :tags $ #{} :list
      :desc "|detects if a list is empty"
      :snippets $ []
    {}
      :name |&list:contains?
      :tags $ #{} :list
      :wip? true
      :desc "|detects if a list has item on given index"
      :snippets $ []
    {}
      :name |&list:includes?
      :tags $ #{} :list
      :desc "|detects if a list has given item"
      :snippets $ []
    {}
      :name |&list:nth
      :tags $ #{} :list
      :desc "|access `n`th item in a list"
      :snippets $ []
    {}
      :name |&list:rest
      :tags $ #{} :list
      :desc "|return rest part of a list"
      :snippets $ []
    {}
      :name |&list:assoc
      :tags $ #{} :list
      :desc "|associate new item on list"
      :snippets $ []
    {}
      :name |&list:dissoc
      :tags $ #{} :list
      :desc "|dissociate item from list, return a new list with smaller size"
      :snippets $ []
    {}
      :name |&list:concat
      :tags $ #{} :list
      :desc "|concat mutiple lists"
      :snippets $ []
        quote $ &list:concat ([] 1 2) ([] 3 4) ([] 5 6)
    {}
      :name |&list:reverse
      :tags $ #{} :native :list
      :desc "|return a list with order reversed"
      :snippets $ []
        quote $ &list:reverse $ [] 1 2 3 4
    {}
      :name |&merge
      :tags $ #{} :map
      :desc "|merge 2 maps"
      :snippets $ []
    {}
      :name |&map:get
      :tags $ #{} :map
      :desc "|get value from a map with a key"
      :snippets $ []
    {}
      :name |&map:dissoc
      :tags $ #{} :map
      :desc "|dissociate key from a map"
      :snippets $ []
    {}
      :name |&map:to-list
      :tags $ #{} :map
      :desc "|return a list of pairs from map, order is not guaranteed"
      :snippets $ []
    {}
      :name |&map:count
      :tags $ #{} :map
      :desc "|count size of a map"
      :snippets $ []
    {}
      :name |&map:empty?
      :tags $ #{} :map
      :desc "|detects if a map is empty"
      :snippets $ []
    {}
      :name |&map:contains?
      :tags $ #{} :map
      :desc "|detects if a map has given key"
      :snippets $ []
    {}
      :name |&map:includes?
      :tags $ #{} :map
      :wip? true
      :desc "|detects if a map has given value"
      :snippets $ []
    {}
      :name |&map:first
      :tags $ #{} :map
      :desc "|return first entry as a pair from a map, order is not guaranteed"
      :snippets $ []
    {}
      :name |&map:rest
      :tags $ #{} :map
      :desc "|return pairs of rest entries of a map, order is not guaranteed"
      :snippets $ []
    {}
      :name |&map:assoc
      :tags $ #{} :map
      :desc "|associate a pair of key/value to a map"
      :snippets $ []
    {}
      :name |&set:count
      :tags $ #{} :set
      :desc "|count size of a set"
      :snippets $ []
    {}
      :name |&set:empty?
      :tags $ #{} :set
      :desc "|detects if a set is empty"
      :snippets $ []
    {}
      :name |&set:includes?
      :tags $ #{} :set
      :desc "|detects if a set has given value"
      :snippets $ []
    {}
      :name |&set:first
      :tags $ #{} :set
      :desc "|return a first item from given set, order is not guaranteed"
      :snippets $ []
    {}
      :name |&set:rest
      :tags $ #{} :set
      :desc "|return rest part of given set, order is not guaranteed"
      :snippets $ []
    {}
      :name |&set:assoc
      :tags $ #{} :set
      :desc "|associate new value to a set"
      :snippets $ []
    {}
      :name |&set:dissoc
      :tags $ #{} :set
      :desc "|dissociate a value from given set"
      :snippets $ []
    {}
      :name |&set:to-list
      :tags $ #{} :set
      :desc "|turn set to list"
      :snippets $ []
    {}
      :name |&record:count
      :tags $ #{} :record
      :desc "|count size of a record"
      :snippets $ []
    {}
      :name |&record:contains?
      :tags $ #{} :record
      :desc "|detects if a record contains given key"
      :snippets $ []
    {}
      :name |&record:nth
      :tags $ #{} :record
      :desc "|get a pair of a record since fields in record are ordered"
      :snippets $ []
    {}
      :name |&record:get
      :tags $ #{} :record
      :desc "|get value from record via a field"
      :snippets $ []
    {}
      :name |&record:get-name
      :tags $ #{} :record
      :desc "|get record name"
      :snippets $ []
    {}
      :name |&record:assoc
      :tags $ #{} :record
      :desc "|associate new value to an existing field"
      :snippets $ []
    {}
      :name |&record:from-map
      :tags $ #{} :record
      :desc "|create record from existing data, throws error when keys are not sufficient"
      :snippets $ []
        quote $ &record:from-map 'Person $ {} (:name |Chen) (:ago 20)
    {}
      :name |&record:matches?
      :tags $ #{} :record
      :desc "|detects if two records have same name and fields"
      :snippets $ []
        quote $ &record:matches? x y
    {}
      :name |&display-stack
      :tags $ #{} :debug
      :desc "|display call stack information at current position"
      :snippets $ []
        {}
          :code $ quote
            &display-stack "|identifier message"
    {}
      :name |&number:format
      :tags $ #{} :native :number
      :desc "|format a float with specified precision"
      :snippets $ []
        {}
          :code $ quote $ &number:format 1.2345 2
          :result $ quote $ do 1.23
    {}
      :name |&number:escape
      :tags $ #{} :native :string
      :desc "|string escaping"
      :snippets $ []
        quote $ &number:escape "|a b"
    {}
      :name |&list:assoc-before
      :tags $ #{} :native :list
      :desc "|returns a list with new item associated before specified index"
      :snippets $ []
        quote $ &list:assoc-before ([] 1 2 3) 1 10
    {}
      :name |&list:assoc-after
      :tags $ #{} :native :list
      :desc "|returns a list with new item associated after specified index"
      :snippets $ []
        quote $ &list:assoc-after ([] 1 2 3) 1 10
    {}
      :name |&record:to-map
      :tags $ #{} :record
      :desc "|turn record into a map"
      :snippets $ []
        quote $ &record:to-map x
    {}
      :name |&str:slice
      :tags $ #{} :string :native
      :desc "|get sub string by indexes"
      :snippets $ []
        quote $ &str:slice |abcd 1
        quote $ &str:slice |abcd 1 3
    {}
      :name |&number:rem
      :tags $ #{} :native :number
      :desc "|function for get a reminder value"
      :snippets $ []
        {}
          :code $ quote $ &number:rem 5 3
          :result $ quote $ do 2
    {}
      :name |&list:slice
      :tags $ #{} :native :list
      :desc "|return a slice of list, item at last index is not included"
      :snippets $ []
        quote $ &list:slice ([] 1 2 3 4) 1 2
    {}
      :name |&list:distinct
      :tags $ #{} :native :list
      :desc "|turn list into distinct elements"
      :snippets $ []
        quote $ &list:distinct ([] 1 2 3 1 2)
    {}
      :name |&list:to-set
      :tags $ #{} :native :list :set
      :desc "|turn a list into a set"
      :snippets $ []
        quote $ &list:to-set ([] 1 2 3 1 2)
    {}
      :name |&map:add-entry
      :tags $ #{} :native :map
      :desc "|add a pair to map"
      :snippets $ []
        quote $ &map:add-entry m ([] :d 4)
    {}
      :name |&map:diff-new
      :tags $ #{} :native :map
      :desc "|compare 2 maps and return a new map of new keys and their values"
      :snippets $ []
        {}
          :code $ quote $ &map:diff-new (&{} :a 1 :b 2) (&{} :a 3)
          :result $ quote $ {} (:b 2)
    {}
      :name |&map:diff-keys
      :tags $ #{} :native :map
      :desc "|compare 2 maps and return a set of new keys"
      :snippets $ []
        {}
          :code $ quote $ &map:diff-new (&{} :a 1 :b 2) (&{} :a 3)
          :result $ quote $ #{} :b
    {}
      :name |&map:common-keys
      :tags $ #{} :native :map
      :desc "|compare 2 maps and return a set of new keys"
      :snippets $ []
        {}
          :code $ quote $ &map:diff-new (&{} :a 1 :b 2) (&{} :a 3)
          :result $ quote $ #{} :a
    {}
      :name |&map:map-list
      :tags $ #{} :native :map
      :desc "|call map function on hashmap into a list"
      :snippets $ []
        {}
          :code $ quote $ &map:map-list (&{} :a 1 :b 2) $ fn (entry) add-entry
          :result $ quote $ [] ([] la 1) ([] :b 2)

  :methods $ {}
    :number $ []
      {}
        :name |.ceil
        :tags $ #{} :number
        :desc "|ceil of a float"
        :snippets $ []
          quote $ .ceil 1.1
      {}
        :name |.floor
        :tags $ #{} :number
        :desc "|floor of a float"
        :snippets $ []
          quote $ .floor 1.1
      {}
        :name |.inc
        :tags $ #{} :number
        :desc "|add 1 to a number"
        :snippets $ []
      {}
        :name |.format
        :tags $ #{} :number
        :desc "|format a float with specified precision"
        :snippets $ []
      {}
        :name |.pow
        :tags $ #{} :number
        :desc "|power of a number"
        :snippets $ []
      {}
        :name |.round
        :tags $ #{} :number
        :desc "|round a float number, also works for a ternary value"
        :snippets $ []
      {}
        :name |.round?
        :tags $ #{} :number
        :desc "|detects a round number"
        :snippets $ []
      {}
        :name |.rand-shift
        :tags $ #{} :number
        :desc "|add or substract a rand value from current value"
        :snippets $ []
          {}
            :code $ quote $ .rand-shift 10 5
            :desc "|returns a random value in 5~15"
      {}
        :name |.rand-between
        :tags $ #{} :number
        :desc "|add or substract a rand value from current value"
        :snippets $ []
          {}
            :code $ quote $ .rand-shift 10 5
            :desc "|returns a random value in 5~10"
      {}
        :name |.negate
        :tags $ #{} :number
        :desc "|turn negative of number"
        :snippets $ []
          quote $ .negate 1
      {}
        :name |.fract
        :tags $ #{} :number
        :desc "|get fractional part of number"
        :snippets $ []
      {}
        :name |.rem
        :tags $ #{} :native :number
        :desc "|function for get a reminder value"
        :snippets $ []
          {}
            :code $ quote $ .rem 5 3
            :result $ quote $ do 2

    :string $ []
      {}
        :name |.blank?
        :tags $ #{} :string
        :desc "|detects empty string or only whitespaces"
        :snippets $ []
      {}
        :name |.count
        :tags $ #{} :string
        :desc "|count string size"
        :snippets $ []
          quote $ .count |a
      {}
        :name |.empty
        :tags $ #{} :string
        :desc "|return empty string"
        :snippets $ []
      {}
        :name |.empty?
        :tags $ #{} :string
        :desc "|detects empty string"
        :wip? true
        :snippets $ []
      {}
        :name |.ends-with?
        :tags $ #{} :string
        :desc "|detects if string ends with given pattern"
        :snippets $ []
          quote $ .ends-with? |abc |c
      {}
        :name |.get
        :tags $ #{} :string
        :desc "|get char form string as string"
        :snippets $ []
      {}
        :name |.parse-float
        :tags $ #{} :string
        :desc "|get float number from string"
        :snippets $ []
      {}
        :name |.parse-json
        :tags $ #{} :string
        :desc "|parse JSON string into Cirru data, notice that \":a\" will be parsed as keyword"
        :snippets $ []
      {}
        :name |.replace
        :tags $ #{} :string
        :desc "|replace segments in a string"
        :snippets $ []
          quote $ .replace "|looks good" |good |bad
      {}
        :name |.split
        :tags $ #{} :string
        :desc "|split string into a list of segments"
        :snippets $ []
      {}
        :name |.split-lines
        :tags $ #{} :string
        :desc "|split lines(currently with `\\n`)"
        :snippets $ []
          quote $ .split-lines "|a\nb\nc"

      {}
        :name |.starts-with?
        :tags $ #{} :string
        :desc "|detects if string starts with given pattern"
        :snippets $ []
          quote $ .starts-with? |abc |a
      {}
        :name |.strip-prefix
        :tags $ #{} :string
        :desc "|strip given string from start of a string"
        :snippets $ []
          {}
            :code $ quote $ .strip-prefix |ababc |ab
            :result $ quote $ do |abc
          {}
            :code $ quote $ .strip-prefix |0abc |ab
            :result $ quote $ do |0abc
      {}
        :name |.strip-suffix
        :tags $ #{} :string
        :desc "|strip given string from end of a string"
        :snippets $ []
          {}
            :code $ quote $ .strip-suffix |ababc |bc
            :result $ quote $ do |aba
          {}
            :code $ quote $ .strip-suffix |abc0 |bc
            :result $ quote $ do |abc0
      {}
        :name |.substr
        :tags $ #{} :string
        :desc "|get sub string by indexes"
        :snippets $ []
          quote $ .substr |abcd 1
          quote $ .substr |abcd 1 3
      {}
        :name |.trim
        :tags $ #{} :string
        :desc "|trim spaces or characters from string"
        :snippets $ []
          quote $ .trim "|  a  "
          quote $ .trim |__a__ |_
      {}
        :name |.contains?
        :tags $ #{} :string
        :desc "|check if string contains an index"
        :snippets $ []
          quote $ .contains? |abc 1
      {}
        :name |.includes?
        :tags $ #{} :string
        :desc "|check if string includes a character"
        :snippets $ []
          quote $ .includes? |abc |a
      {}
        :name |.nth
        :tags $ #{} :string
        :desc "|get nth character from string"
        :snippets $ []
          quote $ .nth |abc 1
      {}
        :name |.first
        :tags $ #{} :string
        :desc "|get first character"
        :snippets $ []
          {}
            :code $ quote $ .first |abc
            :result $ quote $ do |a
      {}
        :name |.rest
        :tags $ #{} :string
        :desc "|get rest part of the string except for the first one"
        :snippets $ []
          {}
            :code $ quote $ .rest |abc
            :result $ quote $ do |bc
      {}
        :name |.find-index
        :tags $ #{} :string :native
        :desc "|find index of item in a string"
        :snippets $ []
          quote $ .find-index |abcd |a
      {}
        :name |.get-char-code
        :tags $ #{} :string :native
        :desc "|get char code at given index"
        :snippets $ []
          quote $ .get-char-code |abcd 1
      {}
        :name |.escape
        :tags $ #{} :native :string
        :desc "|string escaping"
        :snippets $ []
          quote $ .escape "|a b"
      {}
        :name |.slice
        :tags $ #{} :string :native
        :desc "|get sub string by indexes"
        :snippets $ []
          quote $ .slice |abcd 1
          quote $ .slice |abcd 1 3

    :set $ []
      {}
        :name |.add
        :tags $ #{} :set
        :desc "|add item to a set"
        :snippets $ []
          quote $ .add (#{} 1) 2
      {}
        :name |.difference
        :tags $ #{} :set
        :desc "|return a difference hashset of 2 hashsets"
        :wip? true
        :snippets $ []
          quote $ .difference (#{} 1 2 3 4) (#{} 1 2)
      {}
        :name |.exclude
        :tags $ #{} :set
        :desc "|exclude an item out of a hashset"
        :wip? true
        :snippets $ []
          quote $ .exclude (#{} 1 2 3 4) 1 2
      {}
        :name |.empty
        :tags $ #{} :set
        :desc "|return an empty piece of data from given data"
        :snippets $ []
      {}
        :name |.empty?
        :tags $ #{} :set
        :desc "|detects empty set"
        :snippets $ []
      {}
        :name |.include
        :tags $ #{} :set
        :desc "|include an item into a hashset"
        :snippets $ []
      {}
        :name |.include?
        :tags $ #{} :set
        :desc "|check if values is included in a structure, like items of a list"
        :snippets $ []
      {}
        :name |.intersection
        :tags $ #{} :set
        :desc "|intersection of two hashsets"
        :snippets $ []
      {}
        :name |.to-list
        :tags $ #{} :set
        :desc "|turn a set into a list with a given(more like random) order"
        :snippets $ []
          {}
            :code $ quote
              .to-list $ #{} 1 2 3
      {}
        :name |.union
        :tags $ #{} :set
        :desc "|union of two hashsets"
        :snippets $ []
      {}
        :name |.count
        :tags $ #{} :set
        :desc "|count set size"
        :snippets $ []
          quote $ .count $ #{} 1 2

    :map $ []
      {}
        :name |.add
        :tags $ #{} :map
        :desc "|add a pair of key/value to a map"
        :snippets $ []
          quote $ .add m ([] :d 10)
      {}
        :name |.assoc
        :tags $ #{} :map
        :desc "|returns a new map with given key/value associated"
        :snippets $ []
      {}
        :name |.assoc-in
        :tags $ #{} :map
        :wip? true
        :desc "|returns a new map with given path/value associated"
        :snippets $ []
      {}
        :name |.contains?
        :tags $ #{} :map
        :desc "|check if key is contained in a hashmap"
        :snippets $ []
      {}
        :name |.count
        :tags $ #{} :map
        :desc "|count map size"
        :snippets $ []
          quote $ .count $ {} (:a 1)
      {}
        :name |.dissoc
        :tags $ #{} :map
        :desc "|returns a list with a key dissociated"
        :snippets $ []
      {}
        :name |.dissoc-in
        :tags $ #{} :map
        :wip? true
        :desc "|dissociate data deep in a structure via a path"
        :snippets $ []
      {}
        :name |.empty
        :tags $ #{} :map
        :desc "|return empty map"
        :snippets $ []
      {}
        :name |.empty?
        :tags $ #{} :map
        :desc "|detects empty map"
        :snippets $ []
      {}
        :name |.get
        :tags $ #{} :map
        :desc "|get value from map via a key"
        :snippets $ []

      {}
        :name |.get-in
        :tags $ #{} :map
        :desc "|get value from map via a path"
        :snippets $ []
      {}
        :name |.includes?
        :tags $ #{} :map
        :desc "|check if values is included in a map"
        :snippets $ []
      {}
        :name |.keys
        :tags $ #{} :map
        :desc "|returns a set of keys of a map"
        :snippets $ []
      {}
        :name |.values
        :tags $ #{} :map
        :desc "|returns a set of values of a map"
        :snippets $ []
      {}
        :name |.keys-non-nil
        :tags $ #{} :map
        :desc "|returns a set of keys of a map, which has real values"
        :snippets $ []
      {}
        :name |.map-kv
        :tags $ #{} :map
        :desc "|map key and value for a map"
        :snippets $ []
          {}
            :code $ quote $ map-kv
              {} (:a 1) (:b 2)
              fn (k v)
                [] k $ + v 1
            :result $ quote $ {} (:a 2) (:b 3)
          {}
            :desc "|use it like filter for map"
            :code $ quote $ map-kv
              {} (:a 1) (:b 2) (:c 13)
              fn (k v)
                if (> v 10) nil
                  [] k v
            :result $ quote $ {} (:a 1) (:b 2)

      {}
        :name |.merge
        :tags $ #{} :map
        :desc "|merge two maps"
        :snippets $ []
      {}
        :name |.select-keys
        :tags $ #{} :map
        :desc "|select map with given keys. get nil values when extra keys provided"
        :snippets $ []
          {}
            :code $ quote $ select-keys
              {} (:a 1) (:b 2) (:c 3)
              [] :a :b
            :result $ quote $ {} (:a 1) (:b 2)
          {}
            :code $ quote $ select-keys
              {} (:a 1) (:b 2) (:c 3)
              [] :d
            :result $ quote $ {} $ :d nil

      {}
        :name |.to-pairs
        :tags $ #{} :map
        :desc "|returns a set of pairs from a map"
        :snippets $ []
      {}
        :name |.to-list
        :tags $ #{} :map
        :desc "|returns a list of pairs from a map"
        :snippets $ []
      {}
        :name |.unselect-keys
        :tags $ #{} :map
        :desc "|unselect given keys from based on a map"
        :snippets $ []
      {}
        :name |.first
        :tags $ #{} :map
        :desc "|get a pair of key/vale from a map, order is not guaranteed"
        :snippets $ []
          quote $ .first ({} (:a 1) (:b 2))
      {}
        :name |.rest
        :tags $ #{} :map
        :wip? true
        :desc "|get a new map, without a first pair of entry, order is not guaranteed"
        :snippets $ []
          quote $ .rest
      {}
        :name |.diff-new
        :tags $ #{} :map
        :wip? true
        :desc "|compare with an old map to find new keys with their values"
        :snippets $ []
      {}
        :name |.diff-keys
        :tags $ #{} :map
        :wip? true
        :desc "|compare with an old map to find new keys"
        :snippets $ []
      {}
        :name |.common-keys
        :tags $ #{} :map
        :wip? true
        :desc "|compare with a map to find common keys"
        :snippets $ []
      {}
        :name |.map-list
        :tags $ #{} :map
        :desc "|call map on hashmap, returns a list"
        :snippets $ []

    :record $ []
      {}
        :name |.get-name
        :tags $ #{} :record
        :desc "|get name of a record in a symbol"
        :snippets $ []
      {}
        :name |.matches?
        :tags $ #{} :record
        :desc "|detects if two records have same name and fields"
        :snippets $ []
      {}
        :name |.to-map
        :tags $ #{} :record
        :desc "|turn record into a map"
        :snippets $ []
      {}
        :name |.count
        :tags $ #{} :record
        :desc "|count record size"
        :snippets $ []
          quote $ .count x
      {}
        :name |.contains?
        :tags $ #{} :record
        :desc "|detect if a field in contained in record"
        :snippets $ []
          quote $ .contains? x :a
      {}
        :name |.nth
        :tags $ #{} :record
        :desc "|return nth pair of value"
        :snippets $ []
          quote $ .nth x :a
      {}
        :name |.assoc
        :tags $ #{} :record
        :desc "|assoc new value to an existing key, new keys are not allowed"
        :snippets $ []
          quote $ .assoc x :a 2

    :list $ []
      {}
        :name |.any?
        :tags $ #{} :list
        :desc "|detects if any item in list satisfies function"
        :snippets $ []
      {}
        :name |.add
        :tags $ #{} :list
        :desc "|general operation like append, works for list, set, map"
        :snippets $ []
      {}
        :name |.append
        :tags $ #{} :list
        :desc "|returns new list, with new item at tail"
        :snippets $ []
      {}
        :name |.assoc
        :tags $ #{} :list
        :desc "|returns a list with new item associated"
        :snippets $ []
      {}
        :name |.assoc-after
        :tags $ #{} :list
        :desc "|returns a list with new item associated after specified index"
        :snippets $ []
      {}
        :name |.assoc-before
        :tags $ #{} :list
        :desc "|returns a list with new item associated before specified index"
        :snippets $ []
      {}
        :name |.butlast
        :tags $ #{} :list
        :desc "|slice list without last item, return empty list if `nil`"
        :snippets $ []
      {}
        :name |.concat
        :tags $ #{} :list
        :desc "|concat mutiple lists"
        :snippets $ []
      {}
        :name |.drop
        :tags $ #{} :list
        :desc "|take items of a list except for first n items"
        :snippets $ []
      {}
        :name |.each
        :tags $ #{} :list
        :desc "|take a list and a function and call each item with function"
        :snippets $ []
      {}
        :name |.empty
        :tags $ #{} :list
        :desc "|return an empty list"
        :snippets $ []
      {}
        :name |.empty?
        :tags $ #{} :list
        :desc "|detects empty list"
        :snippets $ []
      {}
        :name |.filter
        :tags $ #{} :list
        :desc "|filter a list with a function"
        :snippets $ []
      {}
        :name |.filter-not
        :tags $ #{} :list
        :desc "|filter a list with a function with false return"
        :snippets $ []
      {}
        :name |.find-index
        :tags $ #{} :list
        :desc "|find index of first item that matches the function, returns -1 when not found"
        :snippets $ []
      {}
        :name |.foldl
        :tags $ #{} :list
        :desc "|Haskell's foldl function, implemented i Nim for performance"
        :snippets $ []
      {}
        :name |.frequencies
        :tags $ #{} :list
        :desc "|count frequencies of items in list, returns a map"
        :snippets $ []
          {}
            :code $ quote $ .frequencies $ [] 1 1 1 2 2 3
            :result $ quote $ {}
              3 1
              2 2
              1 3
      {}
        :name |.get
        :tags $ #{} :list
        :desc "|alias for nth"
        :snippets $ []
      {}
        :name |.get-in
        :tags $ #{} :list
        :desc "|get data deep value from list via path"
        :snippets $ []
      {}
        :name |.group-by
        :tags $ #{} :list
        :desc "|take a list, return grouped result with a map"
        :snippets $ []
      {}
        :name |.has-index?
        :tags $ #{} :list
        :desc "|detects if a list has item on a index"
        :snippets $ []
          quote $ .has-index? (range 10) 4
      {}
        :name |.index-of
        :tags $ #{} :list
        :desc "|native implementation of indexOf function, returns -1 when not found"
        :snippets $ []
      {}
        :name |.interleave
        :tags $ #{} :list
        :desc "|interleave of two lists, like Clojure"
        :snippets $ []
          {}
            :code $ quote $ interleave ([] :a :b :c) ([] 1 2 3 4)
            :result $ quote $ [] :a 1 :b 2 :c 3
      {}
        :name |.join
        :tags $ #{} :list
        :desc "|join list of items with a separator"
        :snippets $ []
      {}
        :name |.join-str
        :tags $ #{} :list
        :wip? true
        :desc "|join segments into a string"
        :snippets $ []
      {}
        :name |.map
        :tags $ #{} :list
        :desc "|map items of list into a new list"
        :snippets $ []
      {}
        :name |.map-indexed
        :tags $ #{} :list
        :desc "|map with index parameter"
        :snippets $ []
          quote $ .map-indexed (range 10)
            fn (idx x) idx
      {}
        :name |.max
        :tags $ #{} :list
        :desc "|max function that takes a list of arguments"
        :snippets $ []
      {}
        :name |.min
        :tags $ #{} :list
        :desc "|max function that takes a list of arguments"
        :snippets $ []
      {}
        :name |.nth
        :tags $ #{} :list
        :desc "|get value from list via index"
        :snippets $ []
      {}
        :name |.pairs-map
        :tags $ #{} :list
        :desc "|create a map from a list of pairs"
        :snippets $ []
      {}
        :name |.prepend
        :tags $ #{} :list
        :desc "|returns new list, with new item at first"
        :snippets $ []
      {}
        :name |.reduce
        :tags $ #{} :list
        :desc "|just an alias for `foldl`"
        :snippets $ []
      {}
        :name |.rest
        :tags $ #{} :list
        :desc "|slice list without first item, return empty list if `nil`"
        :snippets $ []
      {}
        :name |.reverse
        :tags $ #{} :list
        :desc "|return a list with order reversed"
        :snippets $ []
      {}
        :name |.section-by
        :tags $ #{} :list
        :desc "|turn list into a list of lists of n sizes, remaining items also in a list"
        :snippets $ []
          {}
            :code $ quote $ section-by (range 5) 3
            :result $ quote
              [] ([] 0 1 2) ([] 3 4)
      {}
        :name |.slice
        :tags $ #{} :list
        :desc "|return a slice of list, item at last index is not included"
        :snippets $ []
      {}
        :name |.sort
        :tags $ #{} :list
        :desc "|sort list with given comparator function"
        :snippets $ []
          {}
            :code $ quote $ .sort ([] 1 3 4 2)
              fn (x y) (&- x y)
            :result $ quote $ [] 1 2 3 4
      {}
        :name |.take
        :tags $ #{} :list
        :desc "|take n items from list"
        :snippets $ []
      {}
        :name |.take-last
        :tags $ #{} :list
        :desc "|take last n items from list"
        :snippets $ []
      {}
        :name |.zipmap
        :tags $ #{} :list
        :desc "|create a map with two lists, one for keys and one for values"
        :snippets $ []
          {}
            :code $ quote $ zipmap ([] :a :b :c :d) ([] 1 2 3 4)
            :result $ quote $ {} (:a 1) (:b 2) (:c 3) (:d 4)
      {}
        :name |.count
        :tags $ #{} :list
        :desc "|count list size"
        :snippets $ []
          quote $ .count $ [] 1 2 3
      {}
        :name |.first
        :tags $ #{} :list
        :desc "|return first element of a list"
        :snippets $ []
          quote $ .first $ [] 1 2 3
      {}
        :name |.dissoc
        :tags $ #{} :list
        :desc "|dissociate a key from a map"
        :snippets $ []
          quote $ .dissoc ([] 1 2 3) 1
      {}
        :name |.each
        :tags $ #{} :list
        :desc "|iterate values of a list"
        :snippets $ []
          quote $ .each ([] 1 2 3) $ fn (x) x
      {}
        :name |.sort-by
        :tags $ #{} :list
        :desc "|sort list by result from a function"
        :snippets $ []
          quote $ .sort-ny ([] 1 2 3) $ fn (x) x
      {}
        :name |.distinct
        :tags $ #{} :list
        :desc "|turn list into distinct elements"
        :snippets $ []
          {}
            :code $ quote $ .distinct ([] 1 2 3 1 2)
            :result $ quote $ [] 1 2 3
      {}
        :name |.to-set
        :tags $ #{} :list
        :desc "|turn a list into a set"
        :snippets $ []
          {}
            :code $ quote $ .to-set ([] 1 2 3 1 2)
            :result $ quote $ #{} 1 2 3
