require 'test_helper'

class EventOrganizersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_organizer = event_organizers(:one)
  end

  test "should get index" do
    get event_organizers_url
    assert_response :success
  end

  test "should get new" do
    get new_event_organizer_url
    assert_response :success
  end

  test "should create event_organizer" do
    assert_difference('EventOrganizer.count') do
      post event_organizers_url, params: { event_organizer: { address: @event_organizer.address, city: @event_organizer.city, contact: @event_organizer.contact, country: @event_organizer.country, email: @event_organizer.email, latitude: @event_organizer.latitude, logo_image: @event_organizer.logo_image, longitude: @event_organizer.longitude, name: @event_organizer.name, state: @event_organizer.state } }
    end

    assert_redirected_to event_organizer_url(EventOrganizer.last)
  end

  test "should show event_organizer" do
    get event_organizer_url(@event_organizer)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_organizer_url(@event_organizer)
    assert_response :success
  end

  test "should update event_organizer" do
    patch event_organizer_url(@event_organizer), params: { event_organizer: { address: @event_organizer.address, city: @event_organizer.city, contact: @event_organizer.contact, country: @event_organizer.country, email: @event_organizer.email, latitude: @event_organizer.latitude, logo_image: @event_organizer.logo_image, longitude: @event_organizer.longitude, name: @event_organizer.name, state: @event_organizer.state } }
    assert_redirected_to event_organizer_url(@event_organizer)
  end

  test "should destroy event_organizer" do
    assert_difference('EventOrganizer.count', -1) do
      delete event_organizer_url(@event_organizer)
    end

    assert_redirected_to event_organizers_url
  end
end
