require './bin/app.rb'
require './lib/gothonweb/map.rb'
require 'test/unit'
require 'rack/test'

class MyAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_my_default
    get '/'
    session[:room] = 'START'
    room = session[:room]
    assert last_response.ok?
  end

  def test_post_game
    post '/game', params={:action => 'shoot!'}
    assert last_response.ok?
    assert last_response.body.include?('You died.')
  end

  def test_get_game
    get '/game'
    assert last_response.ok?
    assert last_response.body.include?("You're running down the central corridor")
  end
end
