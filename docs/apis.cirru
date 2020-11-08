
{}
  :apis $ []
    {}
      :name |defn
      :tags $ #{} :syntax
      :desc "|create functions on namespaces"
      :snippets $ []
        quote $ defn (a b) $ + a b
        quote $ defn (a $ xs) echo a xs
    {}
      :name |fn
      :tags $ #{} :macro
      :desc "|create anounymous functions"
      :snippets $ []
        quote $ defn (a b) $ + a b
        quote $ defn (a $ xs) echo a xs
    {}
      :name |quote
      :tags $ #{} :syntax
      :desc "|return quoted data, mainly lists that are not evaludated"
      :snippets $ []
        quote $ quote $ [] + 1 2 3
    {}
      :name |quote-replace
      :tags $ #{} :syntax
      :desc "|used in defmacro, togather with `~` for replacing in quoted data"
      :snippets $ []
        quote $ quote-replace $ + 1 2 3 (~ a)
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
        quote $ quote-replace $ + 1 2 (~ a)
    {}
      :name |~@
      :tags $ #{} :syntax
      :desc "|like `~` but turns a list into multiple symbols beforing inserting"
      :snippets $ []
        quote $ quote-replace $ + 1 2 (~@ xs)
    {}
      :name |do
      :tags $ #{} :syntax
      :desc "|add multiple numbers"
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
          quote-replace $ + (~ a) (~ b)
    {}
      :name |[]
      :tags $ #{} :syntax
      :desc "|operator for creating lists, internally it's ternary tree list"
      :snippets $ []
        quote $ [] 1 2 3 4 (+ 1 2)
    {}
      :name |{}
      :tags $ #{} :macro
      :desc "|operator for creating maps based on `&{}`, internally it's ternary tree map"
      :snippets $ []
        quote $ {} (:a 1) (:b $ + 2 3)
    {}
      :name |if
      :tags $ #{} :syntax
      :desc "|if syntax, when ELSE branch is omitted, it will be `nil`"
      :snippets $ []
        quote $ if (> a 1) |true |false
        quote $ if (> a 1) |just-true
    {}
      :name |;
      :tags $ #{} :syntax
      :desc "|adds comments"
      :snippets $ []
        quote $ ; "this will not be evaludated" "more comments"
    {}
      :name |let
      :tags $ #{} :syntax
      :desc "|local variable bindings"
      :snippets $ []
        quote $ let
            a 1
            b $ + a 1
          + a b
    {}
      :name |loop
      :tags $ #{} :syntax
      :desc "|like Clojure `loop`, use tail recursion to loop inside expressions"
      :snippets $ []
        quote $ loop
            idx 0
            acc $ []
          if (< idx 10)
            recur (+ idx 1) (append acc idx)
            , acc
        quote $ loop () (echo "|never ends") (recur)
    {}
      :name |assert
      :tags $ #{} :syntax
      :desc "|like Clojure `assert`, but string is placed first"
      :snippets $ []
        quote $ assert "|x > 0" (> x 0)
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
        quote $ &+ 10 2
    {}
      :name |mod
      :tags $ #{} :native :number
      :desc "|function for get a reminder value"
      :snippets $ []
        quote $ = 2 $ mod 5 3
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
      :name |&and
      :tags $ #{} :native
      :desc "|native `and` function for 2 booleans"
      :snippets $ []
        quote $ &and true true
    {}
      :name |&or
      :tags $ #{} :native
      :desc "|native `or` function for 2 booleans"
      :snippets $ []
        quote $ &or false true
    {}
      :name |not
      :tags $ #{} :native :bool
      :desc "|just `not`"
      :snippets $ []
        quote $ not true
    {}
      :name |count
      :tags $ #{} :native :map
      :desc "|just `count`"
      :snippets $ []
        quote $ count $ []
        quote $ count $ {}
    {}
      :name |get
      :tags $ #{} :native :map :list
      :desc "|like Clojure `get`"
      :snippets $ []
        quote $ get ([] 1 2 3) 1
        quote $ get
          {}
            :a 1
            :b 2
          , :a
    {}
      :name |rest
      :tags $ #{} :native :list
      :desc "|slice list without first item, return empty list if `nil`"
      :snippets $ []
        quote $ rest $ [] 1 2 3 4
    {}
      :name |raise-at
      :tags $ #{} :native
      :desc "|raise exception at give symbol or expression. still putting string first"
      :snippets $ []
        quote $ raise-at "|xs has error" xs
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
      :name |write-file :io
      :tags $ #{} :native
      :desc "|write string content to a relative file path"
      :snippets $ []
        quote $ write-file |demo.md "|some content"
    {}
      :name |parse-json
      :tags $ #{} :native :json :string
      :desc "|parse JSON string into Cirru data"
      :snippets $ []
        quote $ parse-json "{a: [1, 2]}"
    {}
      :name |stringify-json
      :tags $ #{} :native :json :string
      :desc "|stringify Cirru data into JSON string"
      :snippets $ []
        quote $ stringify-json $ {} (:a ([] 1 2))
    {}
      :name |macroexpand
      :tags $ #{} :native :macro
      :desc "|expand quoted data for debugging purpose, notice that quote is required"
      :snippets $ []
        quote $ macroexpand $ quote $ when true 1 2 3
    {}
      :name |println
      :tags $ #{} :native
      :desc "|displays values"
      :snippets $ []
        quote $ println 1 2 3
    {}
      :name |echo
      :tags $ #{} :native
      :desc "|displays values, alias for println"
      :snippets $ []
        quote $ echo 1 2 3
    {}
      :name |pr-str
      :wip? true
      :tags $ #{} :native :string
      :desc "|displays values with more details, string being escaped"
      :snippets $ []
        quote $ pr-str 1 2 3
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
      :name |reverse
      :tags $ #{} :native :list
      :desc "|return a list with order reversed"
      :snippets $ []
        quote $ reverse $ [] 1 2 3 4
    {}
      :name |turn-string
      :tags $ #{} :native
      :desc "|turn something into a string"
      :snippets $ []
        quote $ turn-symbol :key
        quote $ turn-symbol 'key
        quote $ turn-symbol 1
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
      :name |slice
      :tags $ #{} :native :list
      :desc "|return a slice of list, item at last index is not included"
      :snippets $ []
        quote $ slice ([] 1 2 3 4) 1 2
    {}
      :name |&concat
      :tags $ #{} :native
      :desc "|native list concatenation of 2 lists"
      :snippets $ []
        quote $ &concat ([] 1 2) ([] 3 4)
    {}
      :name |format-ternary-tree
      :tags $ #{} :native :list :map
      :desc "|disply string form of internal ternary tree structure"
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
      :desc "|check if key is contained in map, should work for sets as well"
      :snippets $ []
        quote $ contains? ({} (:a 1) (:b 2)) :a
    {}
      :name |assoc-before
      :tags $ #{} :native :list
      :desc "|returns a list with new item associated before specified index"
      :snippets $ []
        quote $ assoc-before ([] 1 2 3) 1 10
    {}
      :name |assoc-after
      :tags $ #{} :native :list
      :desc "|returns a list with new item associated after specified index"
      :snippets $ []
        quote $ assoc-after ([] 1 2 3) 1 10
    {}
      :name |keys
      :tags $ #{} :native :map
      :desc "|returns a list of keys of a map"
      :snippets $ []
        quote $ keys $ {} (:a 1) (:b 2)
    {}
      :name |vals
      :tags $ #{} :native :map
      :desc "|returns a list of values of a map"
      :snippets $ []
        quote $ vals $ {} (:a 1) (:b 2)
    {}
      :name |assoc
      :tags $ #{} :native :list :map
      :desc "|returns a list with new item or key/value associated"
      :snippets $ []
        quote $ assoc ([] 1 2 3) 1 :a
        quote $ assoc ({} (:a 1) (:b 2)) :c 10
    {}
      :name |dissoc
      :tags $ #{} :native :map
      :desc "|returns a list with a key dissociated"
      :snippets $ []
        quote $ dissoc ({} (:a 1) (:b 2)) :a
    {}
      :name |&str
      :tags $ #{} :native :string
      :desc "|turn a single item into string"
      :snippets $ []
        quote $ &str 1
        quote $ = |keyword $ &str :keyword
    {}
      :name |escape
      :tags $ #{} :native :string
      :desc "|string escaping"
      :snippets $ []
        quote $ escape "|a b"
    {}
      :name |&str-concat
      :tags $ #{} :native :string
      :desc "|concat 2 strings"
      :snippets $ []
        quote $ &str-concat |a |b
    {}
      :name |parse-cirru-edn
      :tags $ #{} :native
      :desc "|parse data from Cirru EDN format"
      :snippets $ []
        quote $ parse-cirru-edn "{} (:a 1)"
    {}
      :name |sqrt
      :tags $ #{} :native :number
      :desc "|square root of number"
      :snippets $ []
        quote $ sqrt 9
    {}
      :name |ceil
      :tags $ #{} :native :number
      :desc "|ceil of a float"
      :snippets $ []
        quote $ ceil 1.1
    {}
      :name |floor
      :tags $ #{} :native :number
      :desc "|floor of a float"
      :snippets $ []
        quote $ floor 1.1
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
      :tags $ #{} :native :number
      :desc "|round a float number"
      :snippets $ []
        quote $ round 1.1
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
        quote $ &difference (#{} 1 2) (#{} 3 4)
    {}
      :name |&intersection
      :tags $ #{} :native
      :desc "|intersection of two hashsets"
      :snippets $ []
        quote $ &intersection (#{} 1 2) (#{} 2 3)
    {}
      :name |recur
      :tags $ #{} :native :syntax
      :desc "|operator for tail recursion, can be used in a function or a loop"
      :snippets $ []
        quote $ defn f (acc n)
          if (< n 10)
            recur (+ acc n) (+ n 1)
            , acc
        quote $ loop
            acc 0
            n 0
          if (< n 10)
            recur (+ acc n) (+ n 1)
            , acc
    {}
      :name |foldl
      :tags $ #{} :native :list
      :desc "|Haskell's foldl function, implemented i Nim for performance"
      :snippets $ []
        quote $ foldl + acc 0
    {}
      :name |unless
      :tags $ #{} :macro
      :desc "|if-not syntax"
      :snippets $ []
        quote $ unless false |false |true
        quote $ unless false |false
    {}
      :name |&<=
      :tags $ #{} :number
      :desc "|native implemention of <=, of 2 arguments"
      :snippets $ []
        quote $ <= 1 2
    {}
      :name |&>=
      :tags $ #{} :number
      :desc "|native implemention of >=, of 2 arguments"
      :snippets $ []
        quote $ >= 2 1
    {}
      :name |when
      :tags $ #{} :macro
      :desc "|if with no false branch"
      :snippets $ []
        quote $ when true
          echo 1
          echo 2
    {}
      :name |+
      :tags $ #{} :number
      :desc "|add multiple numbers"
      :snippets $ []
        quote $ + 1 2
        quote $ + 1 2 3
    {}
      :name |-
      :tags $ #{} :number
      :desc "|substract numbers from a number"
      :snippets $ []
        quote $ - 2 1
        quote $ - 10 1 2 3
    {}
      :name |*
      :tags $ #{} :number
      :desc "|multiply numbers"
      :snippets $ []
        quote $ * 1 2 3
    {}
      :name |/
      :tags $ #{} :number
      :desc "|division of multiple numbers"
      :snippets $ []
        quote $ / 12 3 4
    {}
      :name |foldl-compare
      :tags $ #{} :list
      :desc "|internal function for generation comparing functions"
      :snippets $ []
        quote $ foldl-compare &< ([] 2 3 4) 1
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
      :desc "|compare 2 numbers"
      :snippets $ []
        quote $ /= 1 2
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
        quote $ each ([] 1 2 3 4) $ fn (x)
          echo x
    {}
      :name |map
      :tags $ #{} :list
      :desc "|map items of list into a new list"
      :snippets $ []
        quote $ map ([] 1 2 3 4) $ fn (x)
          + x 1
    {}
      :name |take
      :tags $ #{} :list
      :desc "|take n items from list"
      :snippets $ []
        quote $ take 2 $ [] 1 2 3 4 5
    {}
      :name |drop
      :tags $ #{} :list
      :desc "|take items of a list except for first n items"
      :snippets $ []
        quote $ drop 2 $ [] 1 2 3 4 5
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
      :desc "|native implemention of `indexOf` function, returns -1 when not found"
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
      :desc "|like Clojure case, but using value itself for else case"
      :snippets $ []
        quote $ case a
          :a |a
          :b |b
          a |else
    {}
      :name |get-in
      :tags $ #{} :list :map
      :desc "|like Clojure get-in function, read property recursively"
      :snippets $ []
        quote $ get data $ [] :a 1
    {}
      :name |&max
      :tags $ #{} :number
      :desc "|native implemention of max, takes 2 arguments"
      :snippets $ []
        quote $ &max 1 2
    {}
      :name |&min
      :tags $ #{} :number
      :desc "|native implemention of min, takes 2 arguments"
      :snippets $ []
        quote $ &min 1 2
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
      :name |every? :list
      :tags $ #{}
      :desc "|detects if every item in list satisfies function"
      :snippets $ []
        quote $ every? (fn (x) (> x 1)) ([] 1 2 3 4)
    {}
      :name |any? :list
      :tags $ #{}
      :desc "|detects if any item in list satisfies function"
      :snippets $ []
        quote $ every? (fn (x) (> x 1)) ([] 1 2 3 4)
    {}
      :name |concat :list
      :tags $ #{}
      :desc "|concat mutiple lists"
      :snippets $ []
        quote $ concat ([] 1 2) ([] 3 4) ([] 5 6)
    {}
      :name |mapcat
      :tags $ #{} :list
      :desc "|map item to list and then concat, or just flatmap"
      :snippets $ []
        quote $ mapcat
          fn (x) ([] x (+ x 10))
          [] 1 2 3 4
    {}
      :name |group-by
      :tags $ #{} :list
      :desc "|take a list, return grouped result with a map"
      :snippets $ []
        quote $ group-by
          fn (x) (mod x 3)
          range 10
    {}
      :name |identity
      :tags $ #{}
      :desc "|takes an item and just return it"
      :snippets $ []
        quote $ map identity (range 10)
    {}
      :name |filter
      :tags $ #{} :list
      :desc "|filter a list with a function"
      :snippets $ []
        quote $ filter (fn (x) (> n 5)) (range 10)
    {}
      :name |filter-not
      :tags $ #{} :list
      :desc "|filter a list with a function with false return"
      :snippets $ []
        quote $ filter (fn (x) (> n 5)) (range 10)
    {}
      :name |zipmap
      :tags $ #{} :list
      :desc "|create a map with two lists, one for keys and one for values"
      :snippets $ []
        quote $ zipmap
          [] :a :b :c :d
          [] 1 2 3 4
    {}
      :name |pair-map
      :tags $ #{} :list
      :desc "|create a map from a list of pairs"
      :snippets $ []
        quote $ pair-map
          [] :a 1
          [] :b 2
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
        quote $ map-indexed (fn (idx x) idx) (range 10)
    {}
      :name |join-string
      :wip? true
      :tags $ #{} :string :list
      :desc "|join segments into a string"
      :snippets $ []
        quote $ join-string |, $ [] 1 2 3 4
    {}
      :name |split
      :tags $ #{} :string
      :desc "|split string into a list of segments"
      :snippets $ []
        quote $ split |1,2,3,4 |,
    {}
      :name |split-lines
      :tags $ #{} :string
      :desc "|split lines(currently with `\n`)"
      :snippets $ []
        quote $ split-lines "|a\nb\nc"
    {}
      :name |replace
      :tags $ #{} :string
      :desc "|replace segments in a string"
      :snippets $ []
        quote $ replace "|looks good" |good |bad
    {}
      :name |assoc-in
      :wip? true
      :tags $ #{}
      :desc "|associate data deep in a structure"
      :snippets $ []
        quote $ assoc-in data ([] :a 1) 2
    {}
      :name |update
      :tags $ #{}
      :desc "|update map or list"
      :snippets $ []
        quote $ update ({} (:a 1)) :a $ \ + % 1
        quote $ update (range 4) 1 $ \ + % 1
    {}
      :name |update-in
      :wip? true
      :tags $ #{}
      :desc "|update data deep in a structure"
      :snippets $ []
        quote $ update-in data ([] :a 1) (fn (x) (x + 1))
    {}
      :name |dissoc-in
      :wip? true
      :tags $ #{}
      :desc "|dissociate data deep in a structure"
      :snippets $ []
        quote $ dissoc-in data ([] :a 1)
    {}
      :name |\
      :tags $ #{} :macro
      :desc "|alias for an anounymous function, use `%` and `%2` for arguments"
      :snippets $ []
        quote $ map (\ + x 1) (range 10)
        quote $ map-indexed (\ [] % %2) (range 10)
    {}
      :name |contains-symbol?
      :tags $ #{}
      :desc "|a function for detecting symbol existence in code"
      :snippets $ []
        quote $ contains-symbol? (quote $ + a b) 'a
    {}
      :name |has-index?
      :tags $ #{} :list
      :desc "|detects if a list has item on a index"
      :snippets $ []
        quote $ has-index? (range 10) 4
    {}
      :name |frequencies
      :tags $ #{} :list
      :desc "|count frequencies of items in list, returns a map"
      :snippets $ []
        quote $ frequencies $ [] 1 1 1 2 2 3
    {}
      :name |to-pairs?
      :tags $ #{} :map
      :desc "|returns pairs of a map as a list of lists"
      :snippets $ []
        quote $ to-pairs $ {} (:a 1) (:b 2)
    {}
      :name |init-canvas
      :tags $ #{} :canvas
      :desc "|load window of Cairo, see json-paint"
      :snippets $ []
        quote $ init-canvas $ {} (:title "\"DEMO") (:width 800) (:height 600)
    {}
      :name |draw-canvas
      :tags $ #{} :canvas
      :desc "|draw with json-paint shapes"
      :snippets $ []
        quote $ draw-canvas $ {} (:type :polyline) (:from $ [] 40 40)
          :stops $ [] ([] 100 60) ([] 200 200) ([] 600 60) ([] 500 400)
          :stroke-color $ {} (:r 90) (:g 10) (:b 10)
    {}
      :name |section-by
      :tags $ #{} :list
      :desc "|turn list into a list of lists of n sizes, remaining items also in a list"
      :snippets $ []
        quote $ =
          section-by 3 $ range 5
          [] ([] 0 1 2) (3 4)
    {}
      :name |[][]
      :tags $ #{} :list :macro
      :desc "|defining 2-dimensional list with fewer `[]`s"
      :snippets $ []
        quote $ =
          [][] (2 3) (4 5) (6 7)
          [] ([] 2 3) ([] 4 5) ([] 6 7)
    {}
      :name |g
      :tags $ #{}
      :desc "|help function to generate `{:type :group, :children [...]}`"
      :snippets $ []
        quote $ g ({}) a b c
    {}
      :name |&{}
      :tags $ #{} :map
      :desc "|internal function for `{}`, creating with arrays"
      :snippets $ []
        quote $ &{}
          [] :a 1
          [] :b 2
    {}
      :name |assert=
      :tags $ #{} :macro
      :desc "|debugging macro for comparing a value"
      :snippets $ []
        quote $ assert= 2 (+ x 1)
    {}
      :name |defatom
      :tags $ #{} :syntax :atom
      :desc "|creating an atom of states. it requires a name, and currently not atomic, just states"
      :snippets $ []
        quote $ defatom *a 1
    {}
      :name |deref
      :tags $ #{} :atom
      :desc "|grab data from atom"
      :snippets $ []
        quote $ deref *a
    {}
      :name |reset!
      :tags $ #{} :atom
      :desc "|update data from atom"
      :snippets $ []
        quote $ reset! *a 2
    {}
      :name |swap!
      :tags $ #{} :atom :macro
      :desc "|update data from atom with a function, syntax from Clojure"
      :snippets $ []
        quote $ reset! *a 2
    {}
      :name |add-watch
      :tags $ #{} :atom
      :desc "|add a watch function to an atom by keyword"
      :snippets $ []
        quote $ add-watch *a :log $ \ echo "|changed" %
    {}
      :name |remove-watch
      :tags $ #{} :atom
      :desc "|remove a watch function from an atom by keyword"
      :snippets $ []
        quote $ remove-watch *a :log
