require 'test_helper'

class Api::V8::WeatherByZipsControllerTest < ActionController::TestCase

  def cleanup

    V8::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V8::WeatherByZip.new({:get_city_weather_by_zip=>"Refrained prophetically", :get_city_weather_by_zip_response=>"Whopper danger"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V8::WeatherByZip.new({:get_city_weather_by_zip=>"Dehumidifier Neogene", :get_city_weather_by_zip_response=>"Psychobabble conveniently"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V8::WeatherByZip.new({:get_city_weather_by_zip=>"Caliper featherweights", :get_city_weather_by_zip_response=>"Discontinuation lineaments"}, as: :"System Admin")

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
    Api::V8::WeatherByZipsController.any_instance.stubs(:scope_for_create_finder).returns(::V8::WeatherByZip)
    assert_difference('V8::WeatherByZip.count') do
      post :create, weather_by_zip: {:get_city_weather_by_zip=>"Gravels antedating", :get_city_weather_by_zip_response=>"Misinformation purgatory"}.merge(@weather_by_zip_relationship_hash), format: :json
    end
    assert_response :success
  end

  test "should show weather_by_zip" do
    Api::V8::WeatherByZipsController.any_instance.stubs(:scope_for_read_finder).returns(::V8::WeatherByZip)
    get :show, id: @weather_by_zip.id, format: :json
    assert_response :success
  end

  test "should update weather_by_zip" do
    Api::V8::WeatherByZipsController.any_instance.stubs(:scope_for_update_finder).returns(::V8::WeatherByZip)
    put :update, id: @weather_by_zip.id, weather_by_zip: {:get_city_weather_by_zip=>"Prophetically simplification", :get_city_weather_by_zip_response=>"Gooseberry carefullest"}, format: :json
    assert_response :success
  end

  test "should destroy weather_by_zip" do
    Api::V8::WeatherByZipsController.any_instance.stubs(:scope_for_delete_finder).returns(::V8::WeatherByZip)
    assert_difference('V8::WeatherByZip.count', -1) do
      delete :destroy, id: @weather_by_zip.id, format: :json
    end
    assert_response :success
  end



end
