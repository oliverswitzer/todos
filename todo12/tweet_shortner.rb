def tweet_shortner message

  subs_hash = {
              " to " => " 2 ",
              " two " => " 2 ",
              " too " => " 2 ",
              " for " => " 4 ",
              " be " => " b ",
              " you " => " u ",
              " at " => " @ ",
              " and " => " & "
              }

  subs_hash.each do |word, sub|
    message.gsub!(word, sub)
  end
  message
end


example_tweets = [

  "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!", 

  "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?", 

  "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real.",

  "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"]

example_tweets.each do |tweet|
  puts tweet_shortner(tweet)
end

