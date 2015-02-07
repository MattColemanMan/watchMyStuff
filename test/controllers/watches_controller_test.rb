require 'test_helper'

class WatchesControllerTest < ActionController::TestCase
  setup do
    @watch = watches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:watches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create watch" do
    assert_difference('Watch.count') do
      post :create, watch: { end_time: @watch.end_time, lat: @watch.lat, lng: @watch.lng, location_description: @watch.location_description, location_picture: @watch.location_picture, requested_minutes: @watch.requested_minutes, start_time: @watch.start_time, status: @watch.status, user_id: @watch.user_id, watcher_id: @watch.watcher_id }
    end

    assert_redirected_to watch_path(assigns(:watch))
  end

  test "should show watch" do
    get :show, id: @watch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @watch
    assert_response :success
  end

  test "should update watch" do
    patch :update, id: @watch, watch: { end_time: @watch.end_time, lat: @watch.lat, lng: @watch.lng, location_description: @watch.location_description, location_picture: @watch.location_picture, requested_minutes: @watch.requested_minutes, start_time: @watch.start_time, status: @watch.status, user_id: @watch.user_id, watcher_id: @watch.watcher_id }
    assert_redirected_to watch_path(assigns(:watch))
  end

  test "should destroy watch" do
    assert_difference('Watch.count', -1) do
      delete :destroy, id: @watch
    end

    assert_redirected_to watches_path
  end
end
