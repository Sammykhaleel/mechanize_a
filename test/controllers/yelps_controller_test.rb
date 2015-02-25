require 'test_helper'

class YelpsControllerTest < ActionController::TestCase
  setup do
    @yelp = yelps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yelps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yelp" do
    assert_difference('Yelp.count') do
      post :create, yelp: { category: @yelp.category, cost: @yelp.cost, description: @yelp.description, ends_month_day_year: @yelp.ends_month_day_year, ends_time: @yelp.ends_time, event_site_url: @yelp.event_site_url, name: @yelp.name, starts_month_day_year: @yelp.starts_month_day_year, starts_time: @yelp.starts_time, tickets_url: @yelp.tickets_url, venue_city_state_zip: @yelp.venue_city_state_zip, venue_name: @yelp.venue_name, venue_street: @yelp.venue_street }
    end

    assert_redirected_to yelp_path(assigns(:yelp))
  end

  test "should show yelp" do
    get :show, id: @yelp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yelp
    assert_response :success
  end

  test "should update yelp" do
    patch :update, id: @yelp, yelp: { category: @yelp.category, cost: @yelp.cost, description: @yelp.description, ends_month_day_year: @yelp.ends_month_day_year, ends_time: @yelp.ends_time, event_site_url: @yelp.event_site_url, name: @yelp.name, starts_month_day_year: @yelp.starts_month_day_year, starts_time: @yelp.starts_time, tickets_url: @yelp.tickets_url, venue_city_state_zip: @yelp.venue_city_state_zip, venue_name: @yelp.venue_name, venue_street: @yelp.venue_street }
    assert_redirected_to yelp_path(assigns(:yelp))
  end

  test "should destroy yelp" do
    assert_difference('Yelp.count', -1) do
      delete :destroy, id: @yelp
    end

    assert_redirected_to yelps_path
  end
end
