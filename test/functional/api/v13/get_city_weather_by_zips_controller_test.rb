require 'test_helper'

class Api::V13::GetCityWeatherByZipsControllerTest < ActionController::TestCase

  def cleanup

    V13::GetCityWeatherByZip.destroy
  end

  setup do
    cleanup

    @get_city_weather_by_zip_relationship_hash = {}
    @get_city_weather_by_zip = V13::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Nautical dirigible", :zip_code=>"Rosanne submits"}, as: :"System Admin")

    @get_city_weather_by_zip.save

    @get_city_weather_by_zip = V13::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Uphill congratulations", :zip_code=>"Extracurricular clapped"}, as: :"System Admin")

    @get_city_weather_by_zip.save

    @get_city_weather_by_zip = V13::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Finnbogadottir regimentation", :zip_code=>"Debilitated murder"}, as: :"System Admin")

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
    Api::V13::GetCityWeatherByZipsController.any_instance.stubs(:scope_for_create_finder).returns(::V13::GetCityWeatherByZip)
    assert_difference('V13::GetCityWeatherByZip.count') do
      post :create, get_city_weather_by_zip: {:get_city_weather_by_zip_result=>"Masons Protestantisms", :zip_code=>"Kindliness reupholster"}.merge(@get_city_weather_by_zip_relationship_hash), format: :json
    end
    assert_response :success
  end

  test "should show get_city_weather_by_zip" do
    Api::V13::GetCityWeatherByZipsController.any_instance.stubs(:scope_for_read_finder).returns(::V13::GetCityWeatherByZip)
    get :show, id: @get_city_weather_by_zip.id, format: :json
    assert_response :success
  end

  test "should update get_city_weather_by_zip" do
    Api::V13::GetCityWeatherByZipsController.any_instance.stubs(:scope_for_update_finder).returns(::V13::GetCityWeatherByZip)
    put :update, id: @get_city_weather_by_zip.id, get_city_weather_by_zip: {:get_city_weather_by_zip_result=>"Mohacs photojournalism", :zip_code=>"Workhorses certificating"}, format: :json
    assert_response :success
  end

  test "should destroy get_city_weather_by_zip" do
    Api::V13::GetCityWeatherByZipsController.any_instance.stubs(:scope_for_delete_finder).returns(::V13::GetCityWeatherByZip)
    assert_difference('V13::GetCityWeatherByZip.count', -1) do
      delete :destroy, id: @get_city_weather_by_zip.id, format: :json
    end
    assert_response :success
  end



end
