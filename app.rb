require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do 
    erb :index
  end

  get '/models' do
    @models = Model.all
    erb :index
  end

  get '/models/new' do
    erb :new
  end

  get '/models/:id' do
    @model = Model.find(params[:id])
    erb :show
  end

  get '/models/:id/edit' do 
    erb :edit
  end

  post '/models' do 
    @model = Model.create(some_attribute: params[:some_attribute])
  
  end
end