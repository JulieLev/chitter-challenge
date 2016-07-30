ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require_relative "data_mapper_setup"
require 'sinatra/flash'

class Chitter < Sinatra::Base
  enable :sessions
  register Sinatra::flash

  get '/' do
    'Hello Chitter!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end