require 'mysql2'
require './models/bar.rb'
require './models/drinker.rb'
require './models/friendship.rb'
require './models/beer.rb'
require './models/sell.rb'
require './models/like.rb'
require './models/frequent.rb'
require './models/transaction.rb'

$client = Mysql2::Client.new(host: "localhost", username: "csuser", password: "c0rnd0gs")
$client.select_db "beer"

def link_to object
  case
    when object.is_a?(Beer)
      return "<a href=/beers/#{object.name}>object.name</a>"
    when object.is_a?(Drinker)
      return "<a href=/drinkers/#{object.name}>#{object.name}</a>"
    when object.is_a?(Bar)
      return "<a href=/bars/#{object.name}>#{object.name}</a>"
  end
end
