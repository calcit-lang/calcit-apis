
[]
  {}
    :name |.to-list
    :tags $ #{} :nil
    :desc "|make empty list"
    :snippets $ []
      {}
        :code $ quote $ .to-list nil
        :result $ quote $ []
  {}
    :name |.to-map
    :tags $ #{} :nil
    :desc "|make empty map"
    :snippets $ []
      {}
        :code $ quote $ .to-map nil
        :result $ quote $ {}
  {}
    :name |.pairs-map
    :tags $ #{} :nil
    :desc "|make empty map"
    :snippets $ []
      {}
        :code $ quote $ .pairs-map nil
        :result $ quote $ {}
  {}
    :name |.to-set
    :tags $ #{} :nil
    :desc "|make empty set"
    :snippets $ []
      {}
        :code $ quote $ .to-set nil
        :result $ quote $ #{}
  {}
    :name |.to-number
    :tags $ #{} :nil
    :desc "|make zero"
    :snippets $ []
      {}
        :code $ quote $ .to-number nil
        :result $ quote $ 0
  {}
    :name |.to-string
    :tags $ #{} :nil
    :desc "|make empty string"
    :snippets $ []
      {}
        :code $ quote $ .to-list nil
        :result $ quote $ do |
