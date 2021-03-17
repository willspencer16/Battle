
require 'sinatra/base'

class Battle < Sinatra::Base
	set :sessions, true
	set :session_secret, 'Snake'

	get '/' do
		'Battle'
	end
end