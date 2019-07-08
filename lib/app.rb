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

post '/named-cat' do
  p params
 @cat = params[:name]
    erb(:index)
end

get '/cat-form' do
  erb :cat_form
end
