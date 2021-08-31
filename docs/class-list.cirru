
[]
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
    :desc "|find index of first item that matches the function, returns `nil` when not found"
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
    :name |.index-of
    :tags $ #{} :list
    :desc "|native implementation of indexOf function, returns `nil` when not found"
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
      quote $ .sort-by ([] 1 2 3) $ fn (x) x
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
  {}
    :name |.map-pair
    :tags $ #{} :list :set
    :desc "|map by pair"
    :snippets $ []
      quote $ .map-pair
        []
          [] :a 1
          [] :b 2
        fn (k n)
          [] k (+ n 10)
  {}
    :name |.filter-pair
    :tags $ #{} :native :list :set
    :desc "|turn a list into a set"
    :snippets $ []
      quote $ .filter-pair
        []
          [] :a 1
          [] :b 12
        fn (k n)
          > n 10
  {}
    :name |.mappend
    :tags $ #{} :list
    :wip? true
    :desc "|like `append` from PureScript, same as &list:concat"
    :snippets $ []
  {}
    :name |.bind
    :tags $ #{} :list
    :wip? true
    :desc "|like `bind` from PureScript, as mapcat"
    :snippets $ []
  {}
    :name |.apply
    :tags $ #{} :list
    :wip? true
    :desc "|like `apply` from PureScript"
    :snippets $ []
  {}
    :name |.find-last-index
    :tags $ #{} :list
    :desc "|find index of first item that satisfies the function from tail, returns `nil` when not found"
    :snippets $ []
  {}
    :name |.find
    :tags $ #{} :list
    :desc "|find first item that satisfies the function, returns `nil` when not found"
    :snippets $ []
  {}
    :name |.find-last
    :tags $ #{} :list
    :desc "|find first item that satisfies the function from tail, returns `nil` when not found"
    :snippets $ []
  {}
    :name |.last-index-of
    :tags $ #{} :list
    :desc "|detect index of given element from end of a list, returns `nil` when not found"
    :snippets $ []
