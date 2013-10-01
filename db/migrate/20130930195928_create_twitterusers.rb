class CreateTwitterusers < ActiveRecord::Migration
  def change
    create_table :twitter_users do |t|
      t.string :handle
      t.string :tweets
      t.timestamps
    end
  end
end
