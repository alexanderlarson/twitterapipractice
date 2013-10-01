get '/' do
  erb :index
end


get '/:username' do

@user = TwitterUser.find_by_handle(params[:username])
@tweets = @user.pulldowntweets
p @tweets
  # @pulldowntweets = Twitter.user_timeline(params[:username])

  erb :show_tweets

end


#========================================================================POST


post '/' do
  TwitterUser.create(:handle => params[:username])

  redirect "/#{params[:username]}"
end

