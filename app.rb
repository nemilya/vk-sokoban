require 'sinatra'
require 'json'
require 'open-uri'

SOKOBAN_HUB = 'http://sokoban-hub.cloudfoundry.com'

before do
  headers 'X-Frame-Options'=> 'GOFORIT'
end


get '/' do
  json_level = open("#{SOKOBAN_HUB}/random").read
  @level = JSON.parse(json_level)
  erb :index
end