class TwitterUser < ActiveRecord::Base
  has_many :tweets

  def pulldowntweets
    tweets = Twitter.user_timeline(self.handle)
    
    tweets.each do |tweet|
      self.tweets << Tweet.create(tweet: tweet.text)
   end

  self.tweets
  end  
end

#Hash => attrs!
