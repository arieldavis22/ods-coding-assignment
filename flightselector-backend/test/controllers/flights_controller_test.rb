require "test_helper"

class FlightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flight = flights(:one)
  end

  test "should get index" do
    get flights_url
    assert_response :success
  end

  test "should get new" do
    get new_flight_url
    assert_response :success
  end

  test "should create flight" do
    assert_difference("Flight.count") do
      post flights_url, params: { flight: { destination: @flight.destination, destination_full_name: @flight.destination_full_name, flight_identifier: @flight.flight_identifier, flt_num: @flight.flt_num, in_gmt: @flight.in_gmt, off_gmt: @flight.off_gmt, on_gmt: @flight.on_gmt, origin: @flight.origin, origin_full_name: @flight.origin_full_name, out_gmt: @flight.out_gmt, scheduled_destination_gate: @flight.scheduled_destination_gate, scheduled_origin_gate: @flight.scheduled_origin_gate } }
    end

    assert_redirected_to flight_url(Flight.last)
  end

  test "should show flight" do
    get flight_url(@flight)
    assert_response :success
  end

  test "should get edit" do
    get edit_flight_url(@flight)
    assert_response :success
  end

  test "should update flight" do
    patch flight_url(@flight), params: { flight: { destination: @flight.destination, destination_full_name: @flight.destination_full_name, flight_identifier: @flight.flight_identifier, flt_num: @flight.flt_num, in_gmt: @flight.in_gmt, off_gmt: @flight.off_gmt, on_gmt: @flight.on_gmt, origin: @flight.origin, origin_full_name: @flight.origin_full_name, out_gmt: @flight.out_gmt, scheduled_destination_gate: @flight.scheduled_destination_gate, scheduled_origin_gate: @flight.scheduled_origin_gate } }
    assert_redirected_to flight_url(@flight)
  end

  test "should destroy flight" do
    assert_difference("Flight.count", -1) do
      delete flight_url(@flight)
    end

    assert_redirected_to flights_url
  end
end
