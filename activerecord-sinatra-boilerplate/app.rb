require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

# Disable Sinatra's Host header check so the app stays reachable when proxied
# through a non-localhost domain
set :host_authorization, { permitted_hosts: [] }

get "/" do
  "Hello world!"
end
