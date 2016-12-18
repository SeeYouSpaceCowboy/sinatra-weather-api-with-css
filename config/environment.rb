ENV['SINATRA_ENV'] ||= "development"
require_relative '../models/weather_adapter'
require_relative '../models/weather'

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require 'open-uri'
require './app'
