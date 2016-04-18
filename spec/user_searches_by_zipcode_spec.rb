require "rails_helper"

describe "User searches by zip code and sees 10 closest staions", :type => :feature do
  before :each do
    @user = User.create(name: "Adam Hundley")
  end

  it "orders by /last name" do
    visit "/"
    fill_in "zip_code", with: 80203
    click_on "Locate"
    expect(current_path).to eq "/search?zip=80203"
    # // expect(page).to have_content ""
    # // Then I should see a list of the 10 closest stations within 6 miles sorted by distance
    # // And the stations should be limited to Electric and Propane
    # // And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
  end
end
