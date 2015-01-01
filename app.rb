require 'rubygems'
require 'bundler/setup'

Bundler.require

require 'goliath'

class Hello < Goliath::API
  def response(env)
    [200, {}, "Hello World"]
  end
end
