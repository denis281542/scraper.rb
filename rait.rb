require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "https://raitdostavka.ru/"
doc = Nokogiri::HTML(open(url))
doc.css(".inner_wrap").each do |items|
  title = items.css(".item-title").text
  price = items.css(".price_value").text
    puts "#{title} - #{price}" 
    puts "======="
end
