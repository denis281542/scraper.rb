require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "https://moikrug.ru/vacancies?utf8=%E2%9C%93&q=Ruby&location=&city_id=&type=all"
doc = Nokogiri::HTML(open(url))
#puts doc.css(".inner").text
puts doc.css(".title").text