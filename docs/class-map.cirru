
[]
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
    :name |.map-kv
    :tags $ #{} :map
    :desc "|map key and value for a map"
    :snippets $ []
      {}
        :code $ quote $ .map-kv
          {} (:a 1) (:b 2)
          fn (k v)
            [] k $ + v 1
        :result $ quote $ {} (:a 2) (:b 3)
      {}
        :desc "|use it like filter for map"
        :code $ quote $ .map-kv
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
    :name |.destruct
    :tags $ #{} :map
    :desc "|get a pair of first entry and rest map from an original map, order is not guaranteed"
    :snippets $ []
      quote $ .destruct ({} (:a 1) (:b 2))
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
  {}
    :name |.to-map
    :tags $ #{} :map
    :desc "|returns current map, like identity"
    :snippets $ []
  {}
    :name |.mappend
    :tags $ #{} :map
    :wip? true
    :desc "|like `append` from PureScript, merge maps"
    :snippets $ []
  {}
    :name |.map
    :tags $ #{} :map
    :wip? true
    :desc "|like `map` from lodash.js"
    :snippets $ []
  {}
    :name |.filter
    :tags $ #{} :map
    :wip? true
    :desc "|like `filter` from lodash.js"
    :snippets $ []
  {}
    :name |.filter-kv
    :tags $ #{} :map
    :wip? true
    :desc "|like `filter` from lodash.js but use key/value as arguments"
    :snippets $ []
