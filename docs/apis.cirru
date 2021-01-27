
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
      :name |quote-replace
      :tags $ #{} :syntax
      :desc "|used in defmacro, togather with `~` for replacing in quoted data"
      :snippets $ []
        {}
          :code $ quote $ quote-replace $ + 1 2 3 (~ a)
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
          :code $ quote $ quote-replace $ + 1 2 (~ a)
          :result $ quote $ quote $ + 1 2 a
    {}
      :name |~@
      :tags $ #{} :syntax
      :desc "|like `~` but turns a list into multiple symbols beforing inserting"
      :snippets $ []
        quote $ quote-replace $ + 1 2 (~@ xs)
        {}
          :code $ quote $ quote-replace $ + 1 2 (~@ $ quote $ [] a b)
          :result $ quote $ quote $ + 1 2 a b
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
      :tags $ #{} :macro
      :desc "|local variable bindings, using Clojure syntax"
      :snippets $ []
        quote $ let
            a 1
            b $ + a 1
          + a b
    {}
      :name |&let
      :tags $ #{} :syntax
      :desc "|internal operator for let, which only binds 1 variable per expression"
      :snippets $ []
        quote $ &let (a 1) (+ a 1)
    {}
      :name |let->
      :tags $ #{} :macro
      :desc "|syntax sugar on top of &let for reducing nesting"
      :snippets $ []
        quote $ let->
          let a 1
          let b 2
          + a b
    {}
      :name |loop
      :tags $ #{} :macro
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
      :name |mod
      :tags $ #{} :native :number
      :desc "|function for get a reminder value"
      :snippets $ []
        {}
          :code $ quote $ mod 5 3
          :result $ quote $ do 2
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
      :tags $ #{} :native :map :list :string
      :desc "|just `count`"
      :snippets $ []
        quote $ count $ []
        quote $ count $ {}
        quote $ count $ |abc
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
      :desc "|write string values to stdout"
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
        quote $ contains? |abc |b
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
      :desc "|returns a set of keys of a map"
      :snippets $ []
        quote $ keys $ {} (:a 1) (:b 2)
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
      :name |parse-cirru
      :tags $ #{} :native
      :desc "|parse Cirru syntax with native parser"
      :snippets $ []
        quote $ parse-cirru "def f (x) y"
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
      :tags $ #{} :native :number :ternary
      :desc "|round a float number, also works for a ternary value"
      :snippets $ []
        quote $ round 1.1
        quote $ round &1.1
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
        quote $ &union (#{} 1 2) (#{} 3 4)
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
    {}
      :name |foldl
      :tags $ #{} :native :list
      :desc "|Haskell's foldl function, implemented i Nim for performance"
      :snippets $ []
        quote $ foldl + 0 acc
    {}
      :name |reduce
      :tags $ #{} :native :list
      :desc "|just an alias for foldl"
      :snippets $ []
        quote $ reduce + 0 acc
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
        quote $ foldl-compare &< 1 ([] 2 3 4)
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
      :name |compare-string
      :tags $ #{}
      :desc "|compare order of two strings, retuns `-1` `0` or `1`"
      :snippets $ []
        quote $ compare-string |a |b
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
          fn (x)
            echo x
          range 4
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
      :name |map
      :tags $ #{} :list
      :desc "|map items of list into a new list"
      :snippets $ []
        {}
          :code $ quote $ map
            fn (x) $ + x 1
            [] 1 2 3 4
          :result $ quote $ [] 2 3 4 5
        {}
          :code $ quote $ map inc (#{} 1 2 3)
          :result $ quote $ #{} 2 3 4
          :desc "|maps a set to a set, order is not ensured"
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
      :name |&case
      :tags $ #{} :macro
      :desc "|internal helper for case"
    {}
      :name |get-in
      :tags $ #{} :list :map
      :desc "|like Clojure get-in function, read property recursively"
      :snippets $ []
        quote $ get-in data $ [] :a 1
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
      :name |every?
      :tags $ #{} :list
      :desc "|detects if every item in list satisfies function"
      :snippets $ []
        quote $ every? (fn (x) (> x 1)) ([] 1 2 3 4)
    {}
      :name |any?
      :tags $ #{} :list
      :desc "|detects if any item in list satisfies function"
      :snippets $ []
        quote $ any? (fn (x) (> x 1)) ([] 1 2 3 4)
    {}
      :name |concat
      :tags $ #{} :list
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
        quote $ filter-not (fn (x) (> n 5)) (range 10)
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
        quote $ map-indexed (fn (idx x) idx) (range 10)
    {}
      :name |join-str
      :tags $ #{} :string :list
      :desc "|join segments into a string"
      :snippets $ []
        {}
          :code $ quote $ join-str |- $ [] 1 2 3 4
          :result $ quote $ do |1-2-3-4
    {}
      :name |split
      :tags $ #{} :string
      :desc "|split string into a list of segments"
      :snippets $ []
        quote $ split |1,2,3,4 |,
    {}
      :name |split-lines
      :tags $ #{} :string
      :desc "|split lines(currently with `\\n`)"
      :snippets $ []
        quote $ split-lines "|a\nb\nc"
    {}
      :name |replace
      :tags $ #{} :string
      :desc "|replace segments in a string"
      :snippets $ []
        quote $ replace "|looks good" |good |bad
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
        {}
          :code $ quote $ frequencies $ [] 1 1 1 2 2 3
          :result $ quote $ {}
            3 1
            2 2
            1 3
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
        {}
          :code $ quote $ section-by 3 $ range 5
          :result $ quote
            [] ([] 0 1 2) ([] 3 4)
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
      :name |&{}
      :tags $ #{} :map
      :desc "|internal implementation for `{}`, creating with even number of items"
      :snippets $ []
        {}
          :code $ quote $ &{} :a 1 :b 2
          :result $ quote $ {} (:a 1) (:b 2)
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
      :tags $ #{} :syntax :atom
      :desc "|creating an atom of states. it requires a name, and currently not atomic, just states"
      :snippets $ []
        quote $ defatom *a 1
    {}
      :name |deref
      :tags $ #{} :atom :native
      :desc "|grab data from atom"
      :snippets $ []
        quote $ deref *a
    {}
      :name |reset!
      :tags $ #{} :atom :native
      :desc "|update data from atom"
      :snippets $ []
        quote $ reset! *a 2
    {}
      :name |swap!
      :tags $ #{} :atom :macro
      :desc "|update data from atom with a function, syntax from Clojure"
      :snippets $ []
        quote $ swap! *a inc
    {}
      :name |add-watch
      :tags $ #{} :atom :native
      :desc "|add a watch function to an atom by keyword"
      :snippets $ []
        quote $ add-watch *a :log $ \ echo "|changed" %
    {}
      :name |remove-watch
      :tags $ #{} :atom :native
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
      :name |dissoc-in
      :tags $ #{} :number
      :desc "|dissoc a field deep inside"
      :snippets $ []
        quote $ dissoc-in data ([] :a :b :c)
        quote $ dissoc-in data ([] :a 1 2)
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
      :name |ends-with?
      :tags $ #{} :string
      :desc "|detects if string ends with item"
      :snippets $ []
        quote $ ends-with? |abc |c
    {}
      :name |substr
      :tags $ #{} :string :native
      :desc "|get sub string by indexes"
      :snippets $ []
        quote $ substr |abcd 1
        quote $ substr |abcd 1 3
    {}
      :name |str-find
      :tags $ #{} :string :native
      :desc "|find index of item in a string"
      :snippets $ []
        quote $ str-find |abcd |a
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
          :code $ quote $ join 10 $ [] 1 2 3 4
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
          :code $ quote $ repeat 5 :a
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
            fn (k v) ([] k (+ v 1))
            {} (:a 1) (:b 2)
          :result $ quote $ [][] (:a 2) (:b 3)
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
      :desc "|varadic `and` operator, `false` for empty arguments"
      :snippets $ []
        {}
          :code $ quote $ either nil 1
          :result $ quote $ do 1
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
      :name |or
      :tags $ #{}
      :desc "|varadic `or` operator, `false` for empty arguments"
      :snippets $ []
        {}
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
      :name |&reset-gensym-index!
      :tags $ #{} :native
      :desc "|debugging function for gensym"
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
      :name |now!
      :tags $ #{} :native :time
      :desc "|get current time, stored as a float"
      :snippets $ []
    {}
      :name |format-number
      :tags $ #{} :native :number
      :desc "|format a float with specified precision"
      :snippets $ []
        {}
          :code $ quote $ format-number 1.2345 2
          :result $ quote $ do 1.23
    {}
      :name |sort
      :tags $ #{} :native :list
      :desc "|sort list with given comparator function"
      :snippets $ []
        {}
          :code $ quote $ sort
            fn (x y) (&- x y)
            [] 1 3 4 2
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
            pairs-map $ section-by 2 $ [] :a 1 :b 2 :c 3
          :desc "|commas are just removed after macro expansion"
        {}
          :code $ quote $ {,} :a 1 , :b 2 , :c 3
          :result $ quote $ {} (:a 1) (:b 2) (:c 3)
    {}
      :name |with-log
      :tags $ #{} :debug :macro
      :desc "|for debug purpose, add log to an expression"
      :snippets $ []
        {}
          :code $ quote
            macroexpand $ quote $ with-log $ + 1 2
          :result $ quote
            &let
              v__1 $ + 1 2
              echo (quote $ + 1 2) |=> v__1
              , v__1
    {}
      :name |dual-balanced-ternary
      :tags $ #{} :ternary
      :desc "|create a dual balanced ternary value from 2 numbers"
      :snippets $ []
        quote $ dual-balanced-ternary 1.1 1.1
    {}
      :name |dbt->point
      :tags $ #{} :ternary
      :desc "|return a list of 2 numbers from a dual balanced ternary value"
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
          :code $ quote $ re-matches |\d |2
          :result $ quote $ do true
        {}
          :code $ quote $ re-matches |\d+ |23
          :result $ quote $ do true
        {}
          :code $ quote $ re-matches |\d |a
          :result $ quote $ do false

    {}
      :name |re-find-index
      :wip? true
      :tags $ #{} :native
      :desc "|get char code of a single character of string(not ready for Chinese characters yet)"
      :snippets $ []
        {}
          :code $ quote $ re-find-index |\d |a1
          :result $ quote $ do 1
        {}
          :code $ quote $ re-find-index |\d |aa
          :result $ quote $ do -1

    {}
      :name |re-fine-all
      :wip? true
      :tags $ #{} :native
      :desc "|get char code of a single character of string(not ready for Chinese characters yet)"
      :snippets $ []
        {}
          :code $ quote $ re-find-all |\d |123
          :result $ quote $ [] |1 |2 |3
        {}
          :code $ quote $ re-find-all |\d+ |123
          :result $ quote $ [] |123
        {}
          :code $ quote $ re-find-all |\d+ |1a2a3
          :result $ quote $ [] |1 |2 |3
        {}
          :code $ quote $ re-find-all |\d+ |1a2a34
          :result $ quote $ [] |1 |2 |34
    {}
      :name |call-with-log
      :tags $ #{} :debug :macro
      :desc "|for debug purpose, add log to a function call"
      :snippets $ []
        {}
          :code $ quote
            call-with-log + 1 2
          :desc "|prints expression and arguments for debugging"
    {}
      :name |defn-with-log
      :tags $ #{} :debug :macro
      :desc "|for debugging, wrap function with logs"
      :snippets $ []
        {}
          :code $ quote
            defn-with-log f (a b) (+ a b)
    {}
      :name |let{}
      :tags $ #{} :macro
      :desc "|extracting from map with keywords"
      :snippets $ []
        {}
          :code $ quote
            macroexpand $ quote
              let{}
                (a b) o
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
      :name |display-stack
      :tags $ #{} :debug
      :desc "|display call stack information at current position"
      :snippets $ []
        {}
          :code $ quote
            display-stack "|identifier message"
    {}
      :name |dbt-digits
      :tags $ #{} :dual-balanced-ternary
      :desc "|get list of digits from a dual-balanced-ternary value"
      :snippets $ []
        {}
          :code $ quote
            dbt-digits &34.56
          :result $ quote
            [] (1 &3) (0 &4) (-1 &5) (-2 &6)
    {}
      :name |timeout-call
      :tags $ #{} :native
      :desc "|like `setTimeout` but args in different order"
      :snippets $ []
        {}
          :code $ quote
            timeout-call 100
              fn () (echo "|100ms passed")
    {}
      :name |&get-calcit-backend
      :tags $ #{} :native
      :desc "|detects backend, returns `:nim` or `:js`"
      :snippets $ []
        {}
          :code $ quote
            &get-calcit-backend
    {}
      :name |set->list
      :tags $ #{} :set
      :desc "|turn a set into a list with a given(more like random) order"
      :snippets $ []
        {}
          :code $ quote
            set->list $ #{} 1 2 3
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
        quote $ aset js/document.body.innerHTML |demo
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
