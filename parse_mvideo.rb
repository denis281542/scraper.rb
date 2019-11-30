require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "https://www.mvideo.ru/product-list-page-cls?q=macbook&region_id=5&limit=12&category_id=cat2_cis_0000000130"
doc = Nokogiri::HTML(open(url))
puts  doc.css(".search-results-cluster-subtitle_step2").text

doc.css(".showcompare").each do |items|
  title = items.css(".line-clamp-2").text
  price = items.css(".price-main").text[/[0-9\.]+/]
  puts  "#{title} - #{price}"
  #puts items.at_css(".line-clamp-2")[:href]
end

 
