require 'nokogiri'
require 'httparty'
require 'byebug'

def scraper
  url = "http://vsalde.ru/"
  unparsed_page =  HTTParty.get(url)
  parsed_page = Nokogiri::HTML(unparsed_page)
  news_listings = parsed_page.css('div.news-main')

  byebug
end

scraper