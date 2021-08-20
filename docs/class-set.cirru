
[]
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
