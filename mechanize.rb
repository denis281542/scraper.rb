require 'rubygems'
require 'mechanize'

agent = Mechanize.new 
page = agent.get('https://hh.ru/search/vacancy?area=113&st=searchVacancy&text=ruby+on+rails&customDomain=1')

page = agent.page.link_with(:text => 'дальше').click
vacancy = page.search(".HH-LinkModifier").text

page.each do 
  puts "#{vacancy}"
  puts "==========="
end



