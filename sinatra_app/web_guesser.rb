require 'sinatra'
require 'sinatra/reloader'

number = rand(100)

results = ['Way too high!', 'Too high!', 'Too low!', 'Way too low!', 'You guessed the right number!']

def check_guess(guess)
    if guess == number 
        puts results.last
    elseif guess >= number + 5
        puts results[0]
    elseif guess == number + 1 ... number + 5
        puts results[1]
    elseif guess == number - 1 ... number - 5
        puts results[2]
    else guess <= number - 5 
        puts results[4]
    end
end


get '/' do
    guess = params['guess'.to_i]
    results = check_guess('guess')
    erb :index, :locals => {:number => number, :results => results}
end