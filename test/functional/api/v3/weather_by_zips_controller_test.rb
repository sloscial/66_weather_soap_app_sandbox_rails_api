require 'test_helper'

class Api::V3::WeatherByZipsControllerTest < ActionController::TestCase

  def cleanup

    V3::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V3::WeatherByZip.new({:get_city_weather_by_zip=>"Quarterbacking unappreciated", :get_city_weather_by_zip_response=>"Agassi udder"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V3::WeatherByZip.new({:get_city_weather_by_zip=>"Builders scrappiest", :get_city_weather_by_zip_response=>"Appropriations reefing"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V3::WeatherByZip.new({:get_city_weather_by_zip=>"Redirect brainchild", :get_city_weather_by_zip_response=>"Homie cherish"}, as: :"System Admin")

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
    Api::V3::WeatherByZipsController.any_instance.stubs(:scope_for_create_finder).returns(::V3::WeatherByZip)
    assert_difference('V3::WeatherByZip.count') do
      post :create, weather_by_zip: {:get_city_weather_by_zip=>"Crabs chassis", :get_city_weather_by_zip_response=>"Camouflaging Champollion"}.merge(@weather_by_zip_relationship_hash), format: :json
    end
    assert_response :success
  end

  test "should show weather_by_zip" do
    Api::V3::WeatherByZipsController.any_instance.stubs(:scope_for_read_finder).returns(::V3::WeatherByZip)
    get :show, id: @weather_by_zip.id, format: :json
    assert_response :success
  end

  test "should update weather_by_zip" do
    Api::V3::WeatherByZipsController.any_instance.stubs(:scope_for_update_finder).returns(::V3::WeatherByZip)
    put :update, id: @weather_by_zip.id, weather_by_zip: {:get_city_weather_by_zip=>"Woodenest importuned", :get_city_weather_by_zip_response=>"Necromancers potted"}, format: :json
    assert_response :success
  end

  test "should destroy weather_by_zip" do
    Api::V3::WeatherByZipsController.any_instance.stubs(:scope_for_delete_finder).returns(::V3::WeatherByZip)
    assert_difference('V3::WeatherByZip.count', -1) do
      delete :destroy, id: @weather_by_zip.id, format: :json
    end
    assert_response :success
  end



end
