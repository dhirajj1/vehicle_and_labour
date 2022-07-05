require "test_helper"

class VehiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle = vehicles(:one)
  end

  test "should get index" do
    get vehicles_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_url
    assert_response :success
  end

  test "should create vehicle" do
    assert_difference("Vehicle.count") do
      post vehicles_url, params: { vehicle: { destination_address: @vehicle.destination_address, destination_time: @vehicle.destination_time, name: @vehicle.name, pick_up_address: @vehicle.pick_up_address, pick_up_time: @vehicle.pick_up_time, vehicle: @vehicle.vehicle } }
    end

    assert_redirected_to vehicle_url(Vehicle.last)
  end

  test "should show vehicle" do
    get vehicle_url(@vehicle)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_url(@vehicle)
    assert_response :success
  end

  test "should update vehicle" do
    patch vehicle_url(@vehicle), params: { vehicle: { destination_address: @vehicle.destination_address, destination_time: @vehicle.destination_time, name: @vehicle.name, pick_up_address: @vehicle.pick_up_address, pick_up_time: @vehicle.pick_up_time, vehicle: @vehicle.vehicle } }
    assert_redirected_to vehicle_url(@vehicle)
  end

  test "should destroy vehicle" do
    assert_difference("Vehicle.count", -1) do
      delete vehicle_url(@vehicle)
    end

    assert_redirected_to vehicles_url
  end
end
