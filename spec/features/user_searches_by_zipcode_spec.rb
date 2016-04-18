require "rails_helper"

describe "User searches by zip code and sees 10 closest staions", :type => :feature do
  before :each do
    @user = User.create(name: "Adam Hundley")
  end

  it "orders by /last name" do
    visit "/"
    fill_in "q", with: 80203
    click_on "Locate"

    within "div#station-66897" do
      expect(page).to have_content "UDR"
      expect(page).to have_content "800 Acoma St, Denver CO 80204"
      expect(page).to have_content "ELEC"
      expect(page).to have_content "Distance: 0.3117 miles"
    end

    expect(page).to_not have_content "BD"
    expect(page).to_not have_content "CNG"
    expect(page).to_not have_content "E85"
    expect(page).to_not have_content "HY"
    expect(page).to_not have_content "LNG"
  end
end
