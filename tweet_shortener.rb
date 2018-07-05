def dictionary 
  substitutes = {
    "hello" => "hi",
    "to" => '2',
    "two" => '2', 
    "too" => '2', 
    "for" => '4',
    "For" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@", 
    "and" => "&"
  }
  
end

def existsInArray (wordArray, word)
  for currentWord in wordArray
    if currentWord == word
      return true
    end
  end

  return false
end

def word_substituter(tweet)
  tweet_words = tweet.split(" ")
  words_to_change = dictionary.keys
  
  new_words = tweet_words.collect do |word|
    
    if(existsInArray(words_to_change, word))
      dictionary[word]
    else
      word
    end
  end
  new_words.join(" ")
end

def bulk_tweet_shortener(tweets)
  for tweet in tweets
    new_tweet = word_substituter(tweet)
    puts new_tweet
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140 
    new_tweet = word_substituter(tweet)
    return new_tweet
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  new_tweet = selective_tweet_shortener(tweet)
  if new_tweet.length > 140
    shorter_tweet = new_tweet[0..137] + "..."
    return shorter_tweet
  else
    new_tweet
  end
end

