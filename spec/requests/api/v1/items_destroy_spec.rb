require 'rails_helper'

describe "items#destroy" do
  it "destroys one item by id " do
    item_1 = Item.create(name: "first item", description: "first item description", image_url: "www.google.com")
    item_2 = Item.create(name: "second item", description: "second item description", image_url: "www.yahoo.com")
    item_2 = Item.create(name: "third item", description: "third item description", image_url: "www.ebay.com")

    DELETE  
    expect(response).to be_success

    json = JSON.parse(response.body, symbolize_names:true)

    expect(json[:name]).to eq(item_2.name)
    expect(json[:description]).to eq(item_2.description)
    expect(json[:image_url]).to eq(item_2.image_url)
  end
end
