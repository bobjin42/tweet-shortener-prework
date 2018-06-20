# Write your code here.

def dictionary{
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"}
end

def word_substituter(tweet)
  new_arr = []
    arr = tweet.split(" ")
      dictionary.each{|key, value|
        arr.each{|ele| 
        if ele == key
          new_arr << value
        else 
          new_arr << ele
        end
        }
      }
    new_arr.join(" ")
end