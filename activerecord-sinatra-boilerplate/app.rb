require_relative 'config/application'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

# Disable Sinatra's Host header check so the app stays reachable when proxied
# through a non-localhost domain
set :host_authorization, { permitted_hosts: [] }

get '/' do
  'Hey world!'
end

get '/lewagon' do
  'Welcome to Le Wagon! 🚌'
end

get '/restaurants' do
  # get all the restaurants data from the DB (model)
  @restaurants = Restaurant.all
  # display all those in a nicely organized HTML (view)
  erb :index
end
