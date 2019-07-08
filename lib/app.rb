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

get '/random-cat' do
  @cat = ["Socks","Pringles","Tommy"].sample
  erb(:index)
end

get '/named-cat' do
  @cat = params[:name]
    erb(:index)
end
