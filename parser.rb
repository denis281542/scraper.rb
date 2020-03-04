require 'rubygems'
require 'faraday'
require 'nokogiri'
require 'open-uri'

conn = Faraday.new(:url => 'https://twitter.com/elonmusk') do |faraday|
  faraday.request  :url_encoded             # form-encode POST params
  faraday.response :logger                  # log requests to STDOUT
  faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
end