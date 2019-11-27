require 'sinatra/base'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    'Testing infrastructure working'
    erb(:index)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect '/play'
  end

  get '/play' do
    @hp_1 = 60
    @hp_2 = 60
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb(:play)
  end

  post '/attack' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb(:attack)
  end

run! if app_file == $0
end
