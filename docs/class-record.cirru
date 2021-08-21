
[]
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
  {}
    :name |.from-map
    :tags $ #{} :record
    :desc "|new record from existing data, throws error when keys are not sufficient"
    :snippets $ []
      quote $ .from-map Person $ {} (:name |Chen) (:ago 20)
  {}
    :name |.extend-as
    :tags $ #{} :record
    :desc "|extend existing record with a new name, a new field, and a new value"
    :snippets $ []
      quote $ .extend-as r "|New Record" :a 2
