require 'sinatra'
require 'sinatra/reloader'

NUMBER = rand(100)

results = ['Way too high!', 'Too high!', 'Too low!', 'Way too low!', 'You guessed the right number!']

def check_guess(guess)
    if guess == NUMBER 
        puts results.last
    elseif guess >= NUMBER + 5
        puts results[0]
    elseif guess == NUMBER + 1 ... NUMBER + 5
        puts results[1]
    elseif guess == NUMBER - 1 ... NUMBER - 5
        puts results[2]
    else guess <= NUMBER - 5 
        puts results[3]
    end
end

get '/' do
    guess = params['guess']
    results = check_guess(guess)
    erb :index, :locals => {:NUMBER => NUMBER, :results => results}
end