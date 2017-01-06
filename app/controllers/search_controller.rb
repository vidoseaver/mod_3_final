class SearchController < ApplicationController
  def index
    Faraday.get("https://api.bestbuy.com/v1/stores(area(80202,25))?format=json&show=storeId,storeType,name&pageSize=2&apiKey#{ENV['API_KEY']}")
  end
end
