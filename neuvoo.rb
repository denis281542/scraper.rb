require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "https://ekaterinburg.hh.ru/search/vacancy?area=3&st=searchVacancy&text=ruby+on+rails"
doc = Nokogiri::HTML(open(url))
puts  doc.css(".vacancy-serp-item").text






=begin
puts  doc.at_css(".header").text
puts  doc.at_css(".HH-LinkModifier").text #vakancy
puts  doc.at_css(".vacancy-serp-item__compensation").text #salary
puts  doc.at_css(".HH-AnonymousIndexAnalytics-Recommended-Company").text #company
puts  doc.at_css(".vacancy-serp-item__publication-date").text #date of publication
=end



