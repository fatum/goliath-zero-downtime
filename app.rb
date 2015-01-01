require 'rubygems'
require 'bundler/setup'

Bundler.require

require 'goliath'
require 'einhorn'

# Einhorn::Worker.ack! if defined?(Einhorn)

class Hello < Goliath::API
  def response(env)
    [200, {}, "Hello World"]
  end
end
