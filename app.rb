require 'sinatra'
require 'shotgun'
# shotgun app.rb -p 4567

set :session_secret, 'super secret'

get '/' do
  "Hello World!"
end

get '/secret' do
  "Sneaky sneaky...."
end

get '/cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb :index
end
