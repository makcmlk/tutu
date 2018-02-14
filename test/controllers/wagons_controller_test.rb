require 'test_helper'

class WagonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wagon = wagons(:one)
  end

  test "should get index" do
    get wagons_url
    assert_response :success
  end

  test "should get new" do
    get new_wagon_url
    assert_response :success
  end

  test "should create wagon" do
    assert_difference('Wagon.count') do
      post wagons_url, params: { wagon: {  } }
    end

    assert_redirected_to wagon_url(Wagon.last)
  end

  test "should show wagon" do
    get wagon_url(@wagon)
    assert_response :success
  end

  test "should get edit" do
    get edit_wagon_url(@wagon)
    assert_response :success
  end

  test "should update wagon" do
    patch wagon_url(@wagon), params: { wagon: {  } }
    assert_redirected_to wagon_url(@wagon)
  end

  test "should destroy wagon" do
    assert_difference('Wagon.count', -1) do
      delete wagon_url(@wagon)
    end

    assert_redirected_to wagons_url
  end
end
