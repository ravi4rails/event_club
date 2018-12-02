require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { city: @event.city, country: @event.country, cover_image: @event.cover_image, description: @event.description, end_datetime: @event.end_datetime, entry_fee: @event.entry_fee, event_category_id: @event.event_category_id, event_organizer_id: @event.event_organizer_id, is_featured: @event.is_featured, latitude: @event.latitude, longitude: @event.longitude, start_datetime: @event.start_datetime, state: @event.state, title: @event.title, venue: @event.venue, website: @event.website } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { city: @event.city, country: @event.country, cover_image: @event.cover_image, description: @event.description, end_datetime: @event.end_datetime, entry_fee: @event.entry_fee, event_category_id: @event.event_category_id, event_organizer_id: @event.event_organizer_id, is_featured: @event.is_featured, latitude: @event.latitude, longitude: @event.longitude, start_datetime: @event.start_datetime, state: @event.state, title: @event.title, venue: @event.venue, website: @event.website } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
