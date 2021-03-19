require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base
	enable :sessions
	set :sessions, true
	set :session_secret, 'Snake'

	get '/' do
		erb :index
	end

	post '/names' do
		session[:player_1] = params[:player_1]
		session[:player_2] = params[:player_2]
		redirect to('/play')
	end

	get '/play' do
		@player_1 = session[:player_1]
		@player_2 = session[:player_2]
		erb :play
	end

	get '/attack' do
		@player_1 = session[:player_1]
		@player_2 = session[:player_2]
		erb :attack
	end

	run! if app_file == $0
end
