require 'sinatra'
require 'json'
require 'open-uri'

SOKOBAN_HUB = 'http://sokoban-hub.cloudfoundry.com'

get '/' do
  json_level = open("#{SOKOBAN_HUB}/random").read
  @level = JSON.parse(json_level)
  erb :index
end