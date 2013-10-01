class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :tweet
      t.integer :twitter_user_id
    end
  end
end

#"tweet" in model should equal "text" in console
#
