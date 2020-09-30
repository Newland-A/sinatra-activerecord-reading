require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do 
    erb :index
  end

  get '/models/new' do

  end
end