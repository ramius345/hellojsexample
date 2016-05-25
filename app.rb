require 'sinatra'
require 'pp'
set :port,8000

client_secret = 'kFqjw1uDWlPyylpRHqkxw6q9'

configure do
  mime_type :js, 'text/javascript'
end

get '/' do
    open('index.html').read
end

get '/redirect' do
    puts "Printing Params!"
    PP.pp(params)
    open('redirect.html').read
end

get '/hello.min.js' do
    content_type :js
    open('hello.min.js').read
end