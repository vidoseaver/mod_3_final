require 'rails_helper'

describe "items#create" do
  it "creates one item and returns it" do
    item_1 = Item.create(name: "first item", description: "first item description", image_url: "www.google.com")
    item_2 = Item.create(name: "second item", description: "second item description", image_url: "www.yahoo.com")
    item_attributes = {name: 'third item', description: 'third item description', image_url: 'www.ebay.com'}
    item_count = Item.count
    post  "/api/v1/items/", item_attributes

    item = JSON.parse(response.body, symbolize_names:true)

    expect(response).to be_success
    expect(item[:name]).to eq(item_attributes.name)
    expect(item[:description]).to eq(item_attributes.description)
    expect(item[:image_url]).to eq(item_attributes.image_url)
    expect(item_count).to eq(Item.count+1)
  end
end
