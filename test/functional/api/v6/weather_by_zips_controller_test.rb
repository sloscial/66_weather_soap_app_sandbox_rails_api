require 'test_helper'

class Api::V6::WeatherByZipsControllerTest < ActionController::TestCase

  def cleanup

    V6::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V6::WeatherByZip.new({:get_city_weather_by_zip=>"Beadiest appropriateness", :get_city_weather_by_zip_response=>"Undamaged discrimination"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V6::WeatherByZip.new({:get_city_weather_by_zip=>"Terry unhinges", :get_city_weather_by_zip_response=>"Leashed uncomfortably"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V6::WeatherByZip.new({:get_city_weather_by_zip=>"Dolled multivitamins", :get_city_weather_by_zip_response=>"Reconsideration divans"}, as: :"System Admin")

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
    Api::V6::WeatherByZipsController.any_instance.stubs(:scope_for_create_finder).returns(::V6::WeatherByZip)
    assert_difference('V6::WeatherByZip.count') do
      post :create, weather_by_zip: {:get_city_weather_by_zip=>"Barbra doming", :get_city_weather_by_zip_response=>"Aerators philosophically"}.merge(@weather_by_zip_relationship_hash), format: :json
    end
    assert_response :success
  end

  test "should show weather_by_zip" do
    Api::V6::WeatherByZipsController.any_instance.stubs(:scope_for_read_finder).returns(::V6::WeatherByZip)
    get :show, id: @weather_by_zip.id, format: :json
    assert_response :success
  end

  test "should update weather_by_zip" do
    Api::V6::WeatherByZipsController.any_instance.stubs(:scope_for_update_finder).returns(::V6::WeatherByZip)
    put :update, id: @weather_by_zip.id, weather_by_zip: {:get_city_weather_by_zip=>"Propinquity recurring", :get_city_weather_by_zip_response=>"Lemurs Guangzhou"}, format: :json
    assert_response :success
  end

  test "should destroy weather_by_zip" do
    Api::V6::WeatherByZipsController.any_instance.stubs(:scope_for_delete_finder).returns(::V6::WeatherByZip)
    assert_difference('V6::WeatherByZip.count', -1) do
      delete :destroy, id: @weather_by_zip.id, format: :json
    end
    assert_response :success
  end



end
