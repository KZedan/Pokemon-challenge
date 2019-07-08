require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "this is secret route"
end

get '/whateveryoulike' do
  "blah"
end

get '/thisisatest' do
  "test"
end

get '/cat' do

  erb(:index)

end
