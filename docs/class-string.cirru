
[]
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
  {}
    :name |.mappend
    :tags $ #{} :string
    :wip? true
    :desc "|like `append` from PureScript, string concat"
    :snippets $ []
  {}
    :name |.pad-left
    :tags $ #{} :string
    :desc "|pad string from left"
    :snippets $ []
  {}
    :name |.pad-right
    :tags $ #{} :string
    :desc "|pad string from right"
    :snippets $ []
