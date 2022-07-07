
[]
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
    :name |.display-by
    :tags $ #{} :number
    :desc "|display number with a base, which is 2/8/16"
    :snippets $ []
      quote $ .display-by 17 16
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
