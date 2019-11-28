require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document
doc = Nokogiri::HTML(open('https://www.mvideo.ru/product-list-page-cls?q=macbook&region_id=5&limit=12&category_id=cat2_cis_0000000130'))

puts "div.product-price"
doc.css('div.product-price').each do |link|
  puts link.text
end