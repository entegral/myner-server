require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/myner'

get '/' do
  myner = Myner.new
  logs = myner.logs
  @logs = logs.split("\n")
  erb(:index)
end

get '/start' do
  myner = Myner.new
  myner.start
  logs = myner.logs
  @logs = logs.split("\n")
  erb(:index)
end

get '/stop' do
  myner = Myner.new
  myner.stop
  logs = myner.logs
  @logs = logs.split("\n")
  erb(:index)
end

get '/setgpu' do
  myner = Myner.new
  myner.setgpu
  logs = myner.logs
  @logs = logs.split("\n")
  erb(:index)
end

get '/clear' do
  myner = Myner.new
  myner.clear
  logs = myner.logs
  @logs = logs.split("\n")
  erb(:index)
end
