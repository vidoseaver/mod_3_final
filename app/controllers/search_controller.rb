class SearchController < ApplicationController
  def index
    zipcode = params["zipcode"]
    response = Faraday.get("https://api.bestbuy.com/v1/stores(area(#{zipcode},25))?format=json&show=longName,city,distance,phone&pageSize=15&apiKey=#{ENV['API_KEY']}")
    json = JSON.parse(response.body, symbolize_names:true)
    binding.pry
    total = json[:total]


  end
end
