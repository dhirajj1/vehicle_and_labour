require "test_helper"

class LaboursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @labour = labours(:one)
  end

  test "should get index" do
    get labours_url
    assert_response :success
  end

  test "should get new" do
    get new_labour_url
    assert_response :success
  end

  test "should create labour" do
    assert_difference("Labour.count") do
      post labours_url, params: { labour: { address: @labour.address, contact_no: @labour.contact_no, first_name: @labour.first_name, labour: @labour.labour, last_name: @labour.last_name } }
    end

    assert_redirected_to labour_url(Labour.last)
  end

  test "should show labour" do
    get labour_url(@labour)
    assert_response :success
  end

  test "should get edit" do
    get edit_labour_url(@labour)
    assert_response :success
  end

  test "should update labour" do
    patch labour_url(@labour), params: { labour: { address: @labour.address, contact_no: @labour.contact_no, first_name: @labour.first_name, labour: @labour.labour, last_name: @labour.last_name } }
    assert_redirected_to labour_url(@labour)
  end

  test "should destroy labour" do
    assert_difference("Labour.count", -1) do
      delete labour_url(@labour)
    end

    assert_redirected_to labours_url
  end
end
