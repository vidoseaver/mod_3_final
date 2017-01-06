require 'rails_helper'

feature "user visits root" do
  describe "enters a zip code in the search bar and clicks search" do
    it "shows stores within 25 miles of that zip code" do
      visit root

      fill_in :zipcode, with 
    end
  end
end # As a user
# When I visit "/"
# And I fill in a search box with "80202" and click "search"
# Then my current path should be "/search" (ignoring params)
# And I should see stores within 25 miles of 80202
# And I should see a message that says "16 Total Stores"
# And I should see exactly 15 results
# And I should see the long name, city, distance, phone number and store type for each of the 15 results


visit root
