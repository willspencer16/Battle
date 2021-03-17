require 'sinatra/base'

class Battle < Sinatra::Base
	enable :sessions
	set :sessions, true
	set :session_secret, 'Snake'

	get '/' do
		'Testing infrastructure working!'
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

end
