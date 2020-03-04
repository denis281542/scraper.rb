require 'rubygems'
require 'faraday'
require 'nokogiri'
require 'open-uri'

url = "https://twitter.com/elonmusk/status/1234764390907437057/likes"
#html = open(response)
doc = Nokogiri::HTML(open(url))
puts doc.css('.r-1j63xyz')
