require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "https://hh.ru/search/vacancy?area=1&st=searchVacancy&text=ruby+on+rails"
html = open(url)
doc = Nokogiri::HTML(html)
post = doc.at_css(".vacancy-serp-item").text
puts post
  









