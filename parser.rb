require 'rubygems'
require 'faraday'
require 'nokogiri'

response = Faraday.get('https://twitter.com/elonmusk')
#html = open(response)
doc = Nokogiri::HTML(response)
post = doc.at_css(".r-1mi0q7o").text
puts post