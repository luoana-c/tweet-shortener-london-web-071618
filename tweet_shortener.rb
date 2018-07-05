def dictionary 
  substitutes = {
    "hello" => "hi",
    "to" => '2',
    "two" => '2', 
    "too" => '2', 
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@", 
    "and" => "&"
  }
  
end

def word_substituter(tweet)
  tweet_words = tweet.split(" ")
  words_to_change = dictionary.keys
  
  
  tweet_words.collect do |word|
    for i in words_to_change
      if word == i
        word = dictionary[i]  

      end
      
    end

  end
  tweet_words.join(" ")

end