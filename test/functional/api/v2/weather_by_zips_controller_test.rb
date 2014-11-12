require 'test_helper'

class Api::V2::WeatherByZipsControllerTest < ActionController::TestCase

  def cleanup

    V2::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V2::WeatherByZip.new({:get_city_weather_by_zip=>"Americanization Kareem", :get_city_weather_by_zip_response=>"Blank abnormalities"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V2::WeatherByZip.new({:get_city_weather_by_zip=>"Orioles militarizing", :get_city_weather_by_zip_response=>"Resplendent distributing"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V2::WeatherByZip.new({:get_city_weather_by_zip=>"Indefensibly stepping", :get_city_weather_by_zip_response=>"Engrosses discontentment"}, as: :"System Admin")

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
    Api::V2::WeatherByZipsController.any_instance.stubs(:scope_for_create_finder).returns(::V2::WeatherByZip)
    assert_difference('V2::WeatherByZip.count') do
      post :create, weather_by_zip: {:get_city_weather_by_zip=>"Politics tinglier", :get_city_weather_by_zip_response=>"Rubdowns basso"}.merge(@weather_by_zip_relationship_hash), format: :json
    end
    assert_response :success
  end

  test "should show weather_by_zip" do
    Api::V2::WeatherByZipsController.any_instance.stubs(:scope_for_read_finder).returns(::V2::WeatherByZip)
    get :show, id: @weather_by_zip.id, format: :json
    assert_response :success
  end

  test "should update weather_by_zip" do
    Api::V2::WeatherByZipsController.any_instance.stubs(:scope_for_update_finder).returns(::V2::WeatherByZip)
    put :update, id: @weather_by_zip.id, weather_by_zip: {:get_city_weather_by_zip=>"Libeller regurgitated", :get_city_weather_by_zip_response=>"Detractors realizing"}, format: :json
    assert_response :success
  end

  test "should destroy weather_by_zip" do
    Api::V2::WeatherByZipsController.any_instance.stubs(:scope_for_delete_finder).returns(::V2::WeatherByZip)
    assert_difference('V2::WeatherByZip.count', -1) do
      delete :destroy, id: @weather_by_zip.id, format: :json
    end
    assert_response :success
  end



end
