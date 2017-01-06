class SearchController < ApplicationController
  def index
    zipcode = params["zipcode"]
    response = Faraday.get("https://api.bestbuy.com/v1/stores(area(#{zipcode},25))?format=json&show=longName,city,distance,phone&pageSize=15&apiKey=#{ENV['API_KEY']}")
    json = JSON.parse(response.body, symbolize_names:true)
    @total = json[:total]
    @stores = json[:stores].map do |store|
      Best_Buy_Store.new(store)
    end


  end
end


class Best_Buy_Store
  attr_reader :name, :city, :distance, :phone
  def initialize(attributes)
    @name = attributes[:longName]
    @city = attributes[:city]
    @distance = attributes[:distance]
    @phone = attributes[:phone]
  end
end
