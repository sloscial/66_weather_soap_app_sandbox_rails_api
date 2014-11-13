require 'test_helper'

class Api::V7::WeatherByZipsControllerTest < ActionController::TestCase

  def cleanup

    V7::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V7::WeatherByZip.new({:get_city_weather_by_zip=>"Inseparability commemorating", :get_city_weather_by_zip_response=>"Foreshortens randier"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V7::WeatherByZip.new({:get_city_weather_by_zip=>"Bares appraise", :get_city_weather_by_zip_response=>"Volkswagen laded"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V7::WeatherByZip.new({:get_city_weather_by_zip=>"Desegregating polynomial", :get_city_weather_by_zip_response=>"Shotgunning bossier"}, as: :"System Admin")

    @weather_by_zip.save




  end

  teardown do
    cleanup

  end


  test "should get index of weather_by_zips" do
    get :index, format: :json
    assert_response :success
    assert_not_nil assigns(:weather_by_zips)
  end

  test "should get new weather_by_zip" do
    get :new, format: :json
    assert_response :success
  end

  test "should create weather_by_zip" do
    Api::V7::WeatherByZipsController.any_instance.stubs(:scope_for_create_finder).returns(::V7::WeatherByZip)
    assert_difference('V7::WeatherByZip.count') do
      post :create, weather_by_zip: {:get_city_weather_by_zip=>"Peshawar betrothed", :get_city_weather_by_zip_response=>"Bides tribunals"}.merge(@weather_by_zip_relationship_hash), format: :json
    end
    assert_response :success
  end

  test "should show weather_by_zip" do
    Api::V7::WeatherByZipsController.any_instance.stubs(:scope_for_read_finder).returns(::V7::WeatherByZip)
    get :show, id: @weather_by_zip.id, format: :json
    assert_response :success
  end

  test "should update weather_by_zip" do
    Api::V7::WeatherByZipsController.any_instance.stubs(:scope_for_update_finder).returns(::V7::WeatherByZip)
    put :update, id: @weather_by_zip.id, weather_by_zip: {:get_city_weather_by_zip=>"Madrigals Reilly", :get_city_weather_by_zip_response=>"Procrastinators excommunicating"}, format: :json
    assert_response :success
  end

  test "should destroy weather_by_zip" do
    Api::V7::WeatherByZipsController.any_instance.stubs(:scope_for_delete_finder).returns(::V7::WeatherByZip)
    assert_difference('V7::WeatherByZip.count', -1) do
      delete :destroy, id: @weather_by_zip.id, format: :json
    end
    assert_response :success
  end



end
