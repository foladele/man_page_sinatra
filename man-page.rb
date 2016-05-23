
require 'pry'
require 'sinatra'

#Root URL
get '/' do 
	# binding.pry
	# @s = "Hello world"
	erb :menu
end

get '/command_line' do
	erb :command_line
end

# dynamic route
# :command - place holder
# get '/command_line/:command' do
	# @command = params[:command]
	# @command_value = `man #{@command}`
	# erb :command
# end

get '/command' do
	@command = params[:command]
	erb :command
end

get '/search' do
	erb :search
end

post '/search' do
	@command = params[:command]
	erb :result
end