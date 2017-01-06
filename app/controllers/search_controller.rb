class SearchController < ApplicationController
  def index
    zipcode = params["zipcode"]
    response = Faraday.get("https://api.bestbuy.com/v1/stores(area(#{zipcode},25))?format=json&show=storeId,storeType,name&pageSize=2&apiKey#{ENV['API_KEY']}")
    binding.pry
  end
end
