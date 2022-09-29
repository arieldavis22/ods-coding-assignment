require "application_system_test_case"

class FlightsTest < ApplicationSystemTestCase
  setup do
    @flight = flights(:one)
  end

  test "visiting the index" do
    visit flights_url
    assert_selector "h1", text: "Flights"
  end

  test "should create flight" do
    visit flights_url
    click_on "New flight"

    fill_in "Destination", with: @flight.destination
    fill_in "Destination full name", with: @flight.destination_full_name
    fill_in "Flight identifier", with: @flight.flight_identifier
    fill_in "Flt num", with: @flight.flt_num
    fill_in "In gmt", with: @flight.in_gmt
    fill_in "Off gmt", with: @flight.off_gmt
    fill_in "On gmt", with: @flight.on_gmt
    fill_in "Origin", with: @flight.origin
    fill_in "Origin full name", with: @flight.origin_full_name
    fill_in "Out gmt", with: @flight.out_gmt
    fill_in "Scheduled destination gate", with: @flight.scheduled_destination_gate
    fill_in "Scheduled origin gate", with: @flight.scheduled_origin_gate
    click_on "Create Flight"

    assert_text "Flight was successfully created"
    click_on "Back"
  end

  test "should update Flight" do
    visit flight_url(@flight)
    click_on "Edit this flight", match: :first

    fill_in "Destination", with: @flight.destination
    fill_in "Destination full name", with: @flight.destination_full_name
    fill_in "Flight identifier", with: @flight.flight_identifier
    fill_in "Flt num", with: @flight.flt_num
    fill_in "In gmt", with: @flight.in_gmt
    fill_in "Off gmt", with: @flight.off_gmt
    fill_in "On gmt", with: @flight.on_gmt
    fill_in "Origin", with: @flight.origin
    fill_in "Origin full name", with: @flight.origin_full_name
    fill_in "Out gmt", with: @flight.out_gmt
    fill_in "Scheduled destination gate", with: @flight.scheduled_destination_gate
    fill_in "Scheduled origin gate", with: @flight.scheduled_origin_gate
    click_on "Update Flight"

    assert_text "Flight was successfully updated"
    click_on "Back"
  end

  test "should destroy Flight" do
    visit flight_url(@flight)
    click_on "Destroy this flight", match: :first

    assert_text "Flight was successfully destroyed"
  end
end
