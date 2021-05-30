require 'test_helper'

class AvaibleHoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @avaible_hour = avaible_hours(:one)
  end

  test "should get index" do
    get avaible_hours_url
    assert_response :success
  end

  test "should get new" do
    get new_avaible_hour_url
    assert_response :success
  end

  test "should create avaible_hour" do
    assert_difference('AvaibleHour.count') do
      post avaible_hours_url, params: { avaible_hour: { date: @avaible_hour.date, time: @avaible_hour.time, user_id: @avaible_hour.user_id } }
    end

    assert_redirected_to avaible_hour_url(AvaibleHour.last)
  end

  test "should show avaible_hour" do
    get avaible_hour_url(@avaible_hour)
    assert_response :success
  end

  test "should get edit" do
    get edit_avaible_hour_url(@avaible_hour)
    assert_response :success
  end

  test "should update avaible_hour" do
    patch avaible_hour_url(@avaible_hour), params: { avaible_hour: { date: @avaible_hour.date, time: @avaible_hour.time, user_id: @avaible_hour.user_id } }
    assert_redirected_to avaible_hour_url(@avaible_hour)
  end

  test "should destroy avaible_hour" do
    assert_difference('AvaibleHour.count', -1) do
      delete avaible_hour_url(@avaible_hour)
    end

    assert_redirected_to avaible_hours_url
  end
end
