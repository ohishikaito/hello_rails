# # This file is used by Rack-based servers to start the application.

# require_relative "config/environment"

# run Rails.application
# Rails.application.load_server





require "rack"
require_relative "app"
use Rack::Runtime
# run App.new
Rails.application.initialize!

run Rails.application