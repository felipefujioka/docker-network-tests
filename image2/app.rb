require 'sinatra'

class App < Sinatra::Base

  get '/test' do 
    'response from 2!!!'
  end

end

