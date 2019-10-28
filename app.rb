require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  "Hello World! are you there"
end

get '/secret' do
  "Sneaky sneaky...."
end

get '/cat' do
  "<div style='border: 100px dotted green'>
    <img src='http://bit.ly/1eze8aE'>
  <div>"
end
