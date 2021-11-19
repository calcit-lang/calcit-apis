
[]
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
    :desc "|compare order of two strings, returns `-1` `0` or `1`"
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
    :desc "|new record from existing data, throws error when keys are not sufficient"
    :snippets $ []
      quote $ &record:from-map Person $ {} (:name |Chen) (:ago 20)
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
    :name |&record:extend-as
    :tags $ #{} :record
    :desc "|extend existing record with a new name, a new field, and a new value"
    :snippets $ []
      quote $ &record:extend-as r "|New Record" :a 2
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
    :name |&list:map-pair
    :tags $ #{} :list :set
    :desc "|map by pair"
    :snippets $ []
      quote $ &list:map-pair
        []
          [] :a 1
          [] :b 2
        fn (k n)
          [] k (+ n 10)
  {}
    :name |&list:filter-pair
    :tags $ #{} :native :list :set
    :desc "|turn a list into a set"
    :snippets $ []
      quote $ &list:filter-pair
        []
          [] :a 1
          [] :b 12
        fn (k n)
          > n 10
  {}
    :name |&map:add-entry
    :tags $ #{} :native :map
    :wip? true
    :desc "|add a pair to a map. (probably using `&map:assoc` is enough, and remove this)"
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
        :code $ quote $ &map:map-list (&{} :a 1 :b 2) identity
        :result $ quote $ [] ([] :a 1) ([] :b 2)
  {}
    :name |&map:filter
    :tags $ #{} :native :map
    :desc "|call filter function on a hashmap, returns a hashmap"
    :snippets $ []
      {}
        :code $ quote $ &map:filter (&{} :a 1 :b 2) $ fn (pair) (&> (last pair) 1)
        :result $ quote $ {} (:b 2)
  {}
    :name |&map:filter-kv
    :tags $ #{} :native :map
    :desc "|call filter function on a hashmap, returns a hashmap"
    :snippets $ []
      {}
        :code $ quote $ &map:filter-kv (&{} :a 1 :b 2) $ fn (k v) (&> v 1)
        :result $ quote $ {} (:b 2)
  {}
    :name |&set:filter
    :tags $ #{} :native :set
    :desc "|call filter function on a set, returns a set"
    :snippets $ []
      {}
        :code $ quote $ &set:filter (#{} 1 2) $ fn (x) (&> x 1)
        :result $ quote $ #{} 2
  {}
    :name |&get-os
    :tags $ #{} :native
    :desc "|internal function to detect platform, returns `:macos` `:linus` `:windows` or more from Rust"
    :snippets $ []
  {}
    :name |&call-dylib-edn
    :tags $ #{} :injection
    :desc "|call function from dynamic lib, using EDN arguments and result"
    :snippets $ []
      quote $ &call-dylib-edn a b c
  {}
    :name |&call-dylib-edn-fn
    :tags $ #{} :injection
    :desc "|call function from dynamic lib, using EDN arguments and result, also pass a closure"
    :snippets $ []
      quote $ &call-dylib-edn-fn a b c $ fn (& args)
  {}
    :name |&list:last-index-of
    :tags $ #{} :list :native
    :desc "|implementation for `.last-index-of` on list"
    :snippets $ []
  {}
    :name |&list:find-last
    :tags $ #{} :list :native
    :desc "|implementation for `.find-last` on list"
    :snippets $ []
  {}
    :name |&list:find-last-index
    :tags $ #{} :list :native
    :desc "|implementation for `.find-last-index` on list"
    :snippets $ []
  {}
    :name |&list:map
    :tags $ #{} :list :native
    :desc "|implementation for `map` on list"
    :snippets $ []
  {}
    :name |&map:map
    :tags $ #{} :map :native
    :desc "|implementation for `map` on hashmap"
    :snippets $ []
  {}
    :name |&list:flatten
    :tags $ #{} :list
    :desc "|flatten list"
    :snippets $ []
      quote $ &list:flatten
        [] 1 2
          [] 3 4
            [] 5 6
  {}
    :name |&list:max
    :tags $ #{} :list
    :desc "|find max value of a list"
    :snippets $ []
  {}
    :name |&list:min
    :tags $ #{} :list
    :desc "|find min value of a list"
    :snippets $ []
  {}
    :name |&set:max
    :tags $ #{} :set
    :desc "|find max value of a set"
    :snippets $ []
  {}
    :name |&set:min
    :tags $ #{} :set
    :desc "|find min value of a set"
    :snippets $ []
  {}
    :name |&str:pad-left
    :tags $ #{} :string
    :desc "|pad string from left"
    :snippets $ []
      quote $ &str:pad-left |a 4 |0
      quote $ &str:pad-left |a 4 |01
  {}
    :name |&str:pad-right
    :tags $ #{} :string
    :desc "|pad string from right"
    :snippets $ []
      quote $ &str:pad-right |a 4 |0
      quote $ &str:pad-right |a 4 |01