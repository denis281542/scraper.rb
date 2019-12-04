require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "https://moikrug.ru/vacancies?utf8=%E2%9C%93&q=Ruby&location=&city_id=&type=all"
doc = Nokogiri::HTML(open(url))
doc.css(".inner").each do |items|
  posi = items.css(".title").text 
  salary = items.css(".count").text 
  puts "#{posi} - #{salary}"
end