
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
    :name |.rand-shift
    :tags $ #{} :number
    :desc "|add or substract a rand value from current value"
    :snippets $ []
      {}
        :code $ quote $ .rand-shift 10 5
        :desc "|returns a random value in 5~15"
  {}
    :name |.rand-between
    :tags $ #{} :number
    :desc "|add or substract a rand value from current value"
    :snippets $ []
      {}
        :code $ quote $ .rand-shift 10 5
        :desc "|returns a random value in 5~10"
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
