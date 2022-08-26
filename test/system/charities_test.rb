require "application_system_test_case"

class CharitiesTest < ApplicationSystemTestCase
  setup do
    @charity = charities(:one)
  end

  test "visiting the index" do
    visit charities_url
    assert_selector "h1", text: "Charities"
  end

  test "should create charity" do
    visit charities_url
    click_on "New charity"

    fill_in "Accepted items", with: @charity.accepted_items
    fill_in "Address", with: @charity.address
    fill_in "Charity no", with: @charity.charity_no
    fill_in "Email", with: @charity.email
    fill_in "Mission", with: @charity.mission
    fill_in "Name", with: @charity.name
    fill_in "Profile", with: @charity.profile
    fill_in "Services", with: @charity.services
    fill_in "Target group", with: @charity.target_group
    fill_in "Values", with: @charity.values
    fill_in "Vision", with: @charity.vision
    fill_in "Website", with: @charity.website
    click_on "Create Charity"

    assert_text "Charity was successfully created"
    click_on "Back"
  end

  test "should update Charity" do
    visit charity_url(@charity)
    click_on "Edit this charity", match: :first

    fill_in "Accepted items", with: @charity.accepted_items
    fill_in "Address", with: @charity.address
    fill_in "Charity no", with: @charity.charity_no
    fill_in "Email", with: @charity.email
    fill_in "Mission", with: @charity.mission
    fill_in "Name", with: @charity.name
    fill_in "Profile", with: @charity.profile
    fill_in "Services", with: @charity.services
    fill_in "Target group", with: @charity.target_group
    fill_in "Values", with: @charity.values
    fill_in "Vision", with: @charity.vision
    fill_in "Website", with: @charity.website
    click_on "Update Charity"

    assert_text "Charity was successfully updated"
    click_on "Back"
  end

  test "should destroy Charity" do
    visit charity_url(@charity)
    click_on "Destroy this charity", match: :first

    assert_text "Charity was successfully destroyed"
  end
end
