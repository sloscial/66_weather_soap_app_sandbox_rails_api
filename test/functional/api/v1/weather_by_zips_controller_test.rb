require 'test_helper'

class Api::V1::WeatherByZipsControllerTest < ActionController::TestCase

  def cleanup

    V1::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V1::WeatherByZip.new({:get_city_weather_by_zip=>"Remunerating contaminating", :get_city_weather_by_zip_response=>"Anterooms batiks"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V1::WeatherByZip.new({:get_city_weather_by_zip=>"Motherlands strengthen", :get_city_weather_by_zip_response=>"Estimated servicewomen"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V1::WeatherByZip.new({:get_city_weather_by_zip=>"Conferments chipping", :get_city_weather_by_zip_response=>"Responsibility nongovernmental"}, as: :"System Admin")

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
    Api::V1::WeatherByZipsController.any_instance.stubs(:scope_for_create_finder).returns(::V1::WeatherByZip)
    assert_difference('V1::WeatherByZip.count') do
      post :create, weather_by_zip: {:get_city_weather_by_zip=>"Depredations tonsillectomies", :get_city_weather_by_zip_response=>"Rusks chilled"}.merge(@weather_by_zip_relationship_hash), format: :json
    end
    assert_response :success
  end

  test "should show weather_by_zip" do
    Api::V1::WeatherByZipsController.any_instance.stubs(:scope_for_read_finder).returns(::V1::WeatherByZip)
    get :show, id: @weather_by_zip.id, format: :json
    assert_response :success
  end

  test "should update weather_by_zip" do
    Api::V1::WeatherByZipsController.any_instance.stubs(:scope_for_update_finder).returns(::V1::WeatherByZip)
    put :update, id: @weather_by_zip.id, weather_by_zip: {:get_city_weather_by_zip=>"Boccaccio bathos", :get_city_weather_by_zip_response=>"Byelorussia skateboarding"}, format: :json
    assert_response :success
  end

  test "should destroy weather_by_zip" do
    Api::V1::WeatherByZipsController.any_instance.stubs(:scope_for_delete_finder).returns(::V1::WeatherByZip)
    assert_difference('V1::WeatherByZip.count', -1) do
      delete :destroy, id: @weather_by_zip.id, format: :json
    end
    assert_response :success
  end



end
