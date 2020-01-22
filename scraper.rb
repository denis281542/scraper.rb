require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document
doc = Nokogiri::HTML(open('yandex.ru'))

puts "div.product-price"
doc.css('div.product-price').each do |link|
  puts link.text
end