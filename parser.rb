require 'rubygems'
require 'faraday'
require 'nokogiri'

conn = Faraday.new(:url => 'https://twitter.com/elonmusk/') do |faraday|
  faraday.request  :url_encoded             # form-encode POST params
  faraday.response :logger                  # log requests to STDOUT
  faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP  
end

response = conn.get '/elonmusk'    # GET http://sushi.com/nigiri/sake.json
response.body

@arr = []
response.search("@#{[:twitter_acc]}", result_type: "recent").take(params[:number_of_tweets].to_i).collect do |tweet|
  @arr << tweet.text.gsub("@#{params[:twitter_acc]}", "").gsub("RT :", "").gsub("RT", "")
end

puts @arr

          