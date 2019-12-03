require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "https://ekaterinburg.hh.ru/search/vacancy?area=3&st=searchVacancy&text=ruby+on+rails"
doc = Nokogiri::HTML(open(url))
doc.css(".vacancy-serp-item").each do |items|
  vakancy = items.css(".HH-LinkModifier").text
  salary = items.css(".vacancy-serp-item__compensation").text
  date_of_publication = items.css(".vacancy-serp-item__publication-date").text 
  unless salary.empty? 
    puts "#{vakancy} - #{salary}" 
    puts "#{date_of_publication}"
    puts "======="
  end  
end









