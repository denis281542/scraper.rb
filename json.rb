require 'rubygems'
require 'json'
require 'rest-client'

class RestResponse

  def self.getData

    response = RestClient.get 'http://jsonplaceholder.typicode.com/posts'
    response = JSON.parse(response)

    File.open('/Users/robertreed/RubymineProjects/draft/posts.json', 'w') do |f|
      f.write(response.to_json)
    end



    puts response   
  end

  getData

end