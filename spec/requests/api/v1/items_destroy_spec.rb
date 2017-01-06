require 'rails_helper'

describe "items#destroy" do
  it "destroys one item by id " do
    item_1 = Item.create(name: "first item", description: "first item description", image_url: "www.google.com")
    item_2 = Item.create(name: "second item", description: "second item description", image_url: "www.yahoo.com")
    item_2 = Item.create(name: "third item", description: "third item description", image_url: "www.ebay.com")

    delete  "/api/v1/items/#{item_2.id}"

    expect(response).to be_success
    expect(response.body).to eq("success")
    expect(Item.find_by(:id, item_2.id)).to eq(nil)
  end
end
