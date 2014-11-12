require 'test_helper'

class Api::V4::WeatherByZipsControllerTest < ActionController::TestCase

  def cleanup

    V4::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V4::WeatherByZip.new({:get_city_weather_by_zip=>"Metrically mantlepieces", :get_city_weather_by_zip_response=>"Enforced incrusts"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V4::WeatherByZip.new({:get_city_weather_by_zip=>"Deserve banditry", :get_city_weather_by_zip_response=>"Precaution individualizing"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V4::WeatherByZip.new({:get_city_weather_by_zip=>"Effete Chautauqua", :get_city_weather_by_zip_response=>"Russo combustible"}, as: :"System Admin")

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
    Api::V4::WeatherByZipsController.any_instance.stubs(:scope_for_create_finder).returns(::V4::WeatherByZip)
    assert_difference('V4::WeatherByZip.count') do
      post :create, weather_by_zip: {:get_city_weather_by_zip=>"Shakespeare retrospectively", :get_city_weather_by_zip_response=>"Falsifies acrimonious"}.merge(@weather_by_zip_relationship_hash), format: :json
    end
    assert_response :success
  end

  test "should show weather_by_zip" do
    Api::V4::WeatherByZipsController.any_instance.stubs(:scope_for_read_finder).returns(::V4::WeatherByZip)
    get :show, id: @weather_by_zip.id, format: :json
    assert_response :success
  end

  test "should update weather_by_zip" do
    Api::V4::WeatherByZipsController.any_instance.stubs(:scope_for_update_finder).returns(::V4::WeatherByZip)
    put :update, id: @weather_by_zip.id, weather_by_zip: {:get_city_weather_by_zip=>"Performers horticulturists", :get_city_weather_by_zip_response=>"Speculations beaks"}, format: :json
    assert_response :success
  end

  test "should destroy weather_by_zip" do
    Api::V4::WeatherByZipsController.any_instance.stubs(:scope_for_delete_finder).returns(::V4::WeatherByZip)
    assert_difference('V4::WeatherByZip.count', -1) do
      delete :destroy, id: @weather_by_zip.id, format: :json
    end
    assert_response :success
  end



end
