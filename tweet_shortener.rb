# Write your code here.

def dictionary
  {
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
        arr.each{|ele| 
        if dictionary[ele.downcase]
          new_arr << dictionary[ele.downcase]
        else 
          new_arr << ele
        end
        }
    new_arr.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each{|tweet| puts word_substituter(tweet)}
end

def 