require 'rubygems'
require 'bundler/setup'

Bundler.require

require 'goliath'
require 'grape'

class Offers < Grape::API
  resource :offers do
    get '/' do
      'Hello World'
    end
  end
end

class Api < Grape::API
  mount Offers

  get '/status' do
    'Ok'
  end
end

class App < Goliath::API
  def response(env)
    Api.call(env)
  end
end
