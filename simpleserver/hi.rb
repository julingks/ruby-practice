require 'bundler'

# Gemfile의 gem들을 require 한다.
Bundler.require

get '/hi' do
    "Hello World!"
end


get '/hello' do
    "World!"
end
