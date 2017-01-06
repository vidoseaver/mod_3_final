require 'rails_helper'

describe "items#index" do
  it "showes all the items " do
    item_1 = Item.create(name: "first item", description: "first item description", image_url: "www.google.con")
    item_2 = Item.create(name: "second item", description: "second item description", image_url: "www.yahoo.con")

    get  api_v1_items_path

    expect(response).to be_success

    json = JSON.parse(response.body, symbolize_names:true)

    expect(json.count).to eq (Item.count)
    expect(json.first[:name]).to eq(item_1.name)
    expect(json.first[:description]).to eq(item_1.description)
    expect(json.first[:image_url]).to eq(item_1.image_url)
    expect(json.last[:name]).to eq(item_2.name)
    expect(json.last[:description]).to eq(item_2.description)
    expect(json.last[:image_url]).to eq(item_2.image_url)
  end



end
