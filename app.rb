require 'bundler' #require bundler
Bundler.require #require everything in bundler in gemfile
require 'pry'
require './lib/scrape.rb'
require './lib/mailgun.rb'

require_relative "./lib/mailgun.rb"




get '/' do
  @weather_today = Weather.new
  erb :index #this tells your program to use the html associated with the index.html.erb file in your browser
end 