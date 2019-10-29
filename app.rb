require 'sinatra'
require 'shotgun'
# http://localhost:4567
# shotgun app.rb -p 4567

set :session_secret, 'super secret'

get '/' do
  "Hello World!"
end

get '/secret' do
  "Sneaky sneaky...."
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb :index
end

get '/cat-form' do
  erb :cat_form
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end
