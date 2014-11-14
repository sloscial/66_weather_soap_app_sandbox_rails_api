require 'test_helper'

class Api::V14::GetCityWeatherByZipsControllerTest < ActionController::TestCase

  def cleanup

    V14::GetCityWeatherByZip.destroy
  end

  setup do
    cleanup

    @get_city_weather_by_zip_relationship_hash = {}
    @get_city_weather_by_zip = V14::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Pennsylvania furloughing", :zip_code=>"Maximization grail"}, as: :"System Admin")

    @get_city_weather_by_zip.save

    @get_city_weather_by_zip = V14::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Unquestionable paperhangers", :zip_code=>"Refrigerator obviating"}, as: :"System Admin")

    @get_city_weather_by_zip.save

    @get_city_weather_by_zip = V14::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Polyunsaturated extroverts", :zip_code=>"Compressed lathing"}, as: :"System Admin")

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
    Api::V14::GetCityWeatherByZipsController.any_instance.stubs(:scope_for_create_finder).returns(::V14::GetCityWeatherByZip)
    assert_difference('V14::GetCityWeatherByZip.count') do
      post :create, get_city_weather_by_zip: {:get_city_weather_by_zip_result=>"Designation approximated", :zip_code=>"Decentralizing counterattacked"}.merge(@get_city_weather_by_zip_relationship_hash), format: :json
    end
    assert_response :success
  end

  test "should show get_city_weather_by_zip" do
    Api::V14::GetCityWeatherByZipsController.any_instance.stubs(:scope_for_read_finder).returns(::V14::GetCityWeatherByZip)
    get :show, id: @get_city_weather_by_zip.id, format: :json
    assert_response :success
  end

  test "should update get_city_weather_by_zip" do
    Api::V14::GetCityWeatherByZipsController.any_instance.stubs(:scope_for_update_finder).returns(::V14::GetCityWeatherByZip)
    put :update, id: @get_city_weather_by_zip.id, get_city_weather_by_zip: {:get_city_weather_by_zip_result=>"Strollers odder", :zip_code=>"Incubuses breast"}, format: :json
    assert_response :success
  end

  test "should destroy get_city_weather_by_zip" do
    Api::V14::GetCityWeatherByZipsController.any_instance.stubs(:scope_for_delete_finder).returns(::V14::GetCityWeatherByZip)
    assert_difference('V14::GetCityWeatherByZip.count', -1) do
      delete :destroy, id: @get_city_weather_by_zip.id, format: :json
    end
    assert_response :success
  end



end
