require 'test_helper'

class Api::V12::GetCityWeatherByZipsControllerTest < ActionController::TestCase

  def cleanup

    V12::GetCityWeatherByZip.destroy
  end

  setup do
    cleanup

    @get_city_weather_by_zip_relationship_hash = {}
    @get_city_weather_by_zip = V12::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Necessitating bulks", :zip_code=>"Defensive circumferences"}, as: :"System Admin")

    @get_city_weather_by_zip.save

    @get_city_weather_by_zip = V12::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Exacerbation sprightlier", :zip_code=>"Peddles splurge"}, as: :"System Admin")

    @get_city_weather_by_zip.save

    @get_city_weather_by_zip = V12::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Morbidly counterbalances", :zip_code=>"Formulations soapsuds"}, as: :"System Admin")

    @get_city_weather_by_zip.save




  end

  teardown do
    cleanup

  end


  test "should get index of get_city_weather_by_zips" do
    get :index, format: :json
    assert_response :success
    assert_not_nil assigns(:get_city_weather_by_zips)
  end

  test "should get new get_city_weather_by_zip" do
    get :new, format: :json
    assert_response :success
  end

  test "should create get_city_weather_by_zip" do
    Api::V12::GetCityWeatherByZipsController.any_instance.stubs(:scope_for_create_finder).returns(::V12::GetCityWeatherByZip)
    assert_difference('V12::GetCityWeatherByZip.count') do
      post :create, get_city_weather_by_zip: {:get_city_weather_by_zip_result=>"Swoon hyperventilated", :zip_code=>"Personality expropriation"}.merge(@get_city_weather_by_zip_relationship_hash), format: :json
    end
    assert_response :success
  end

  test "should show get_city_weather_by_zip" do
    Api::V12::GetCityWeatherByZipsController.any_instance.stubs(:scope_for_read_finder).returns(::V12::GetCityWeatherByZip)
    get :show, id: @get_city_weather_by_zip.id, format: :json
    assert_response :success
  end

  test "should update get_city_weather_by_zip" do
    Api::V12::GetCityWeatherByZipsController.any_instance.stubs(:scope_for_update_finder).returns(::V12::GetCityWeatherByZip)
    put :update, id: @get_city_weather_by_zip.id, get_city_weather_by_zip: {:get_city_weather_by_zip_result=>"Bleakest notwithstanding", :zip_code=>"Observe sublimation"}, format: :json
    assert_response :success
  end

  test "should destroy get_city_weather_by_zip" do
    Api::V12::GetCityWeatherByZipsController.any_instance.stubs(:scope_for_delete_finder).returns(::V12::GetCityWeatherByZip)
    assert_difference('V12::GetCityWeatherByZip.count', -1) do
      delete :destroy, id: @get_city_weather_by_zip.id, format: :json
    end
    assert_response :success
  end



end
