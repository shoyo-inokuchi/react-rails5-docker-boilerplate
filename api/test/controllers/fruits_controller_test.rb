require 'test_helper'

class FruitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fruit = fruits(:one)
  end

  test "should get index" do
    get fruits_url, as: :json
    assert_response :success
  end

  test "should create fruit" do
    assert_difference('Fruit.count') do
      post fruits_url, params: { fruit: { name: @fruit.name, price: @fruit.price } }, as: :json
    end

    assert_response 201
  end

  test "should show fruit" do
    get fruit_url(@fruit), as: :json
    assert_response :success
  end

  test "should update fruit" do
    patch fruit_url(@fruit), params: { fruit: { name: @fruit.name, price: @fruit.price } }, as: :json
    assert_response 200
  end

  test "should destroy fruit" do
    assert_difference('Fruit.count', -1) do
      delete fruit_url(@fruit), as: :json
    end

    assert_response 204
  end
end
