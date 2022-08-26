require "test_helper"

class CharitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @charity = charities(:one)
  end

  test "should get index" do
    get charities_url
    assert_response :success
  end

  test "should get new" do
    get new_charity_url
    assert_response :success
  end

  test "should create charity" do
    assert_difference("Charity.count") do
      post charities_url, params: { charity: { accepted_items: @charity.accepted_items, address: @charity.address, charity_no: @charity.charity_no, email: @charity.email, mission: @charity.mission, name: @charity.name, profile: @charity.profile, services: @charity.services, target_group: @charity.target_group, values: @charity.values, vision: @charity.vision, website: @charity.website } }
    end

    assert_redirected_to charity_url(Charity.last)
  end

  test "should show charity" do
    get charity_url(@charity)
    assert_response :success
  end

  test "should get edit" do
    get edit_charity_url(@charity)
    assert_response :success
  end

  test "should update charity" do
    patch charity_url(@charity), params: { charity: { accepted_items: @charity.accepted_items, address: @charity.address, charity_no: @charity.charity_no, email: @charity.email, mission: @charity.mission, name: @charity.name, profile: @charity.profile, services: @charity.services, target_group: @charity.target_group, values: @charity.values, vision: @charity.vision, website: @charity.website } }
    assert_redirected_to charity_url(@charity)
  end

  test "should destroy charity" do
    assert_difference("Charity.count", -1) do
      delete charity_url(@charity)
    end

    assert_redirected_to charities_url
  end
end
