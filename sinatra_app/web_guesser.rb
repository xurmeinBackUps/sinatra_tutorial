require 'sinatra'


X = rand(100)
get '/' do
    "random number: #{X}"
end