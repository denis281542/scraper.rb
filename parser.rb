require 'rubygems'
require 'faraday'
require 'nokogiri'
require 'open-uri'

url = "https://twitter.com/elonmusk"
#html = open(response)
doc = Nokogiri::HTML(open(url))
puts doc.css('//div//p')
