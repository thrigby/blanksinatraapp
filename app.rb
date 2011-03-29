require 'rubygems'
require 'sinatra'
require 'erb'

get '/' do
  erb :index
end

get '/add' do
  x = params["x"].to_i
  y = params["y"].to_i
  @total = x + y
  erb :total, :layout => !request.xhr?
end

## XmlHttpRequest