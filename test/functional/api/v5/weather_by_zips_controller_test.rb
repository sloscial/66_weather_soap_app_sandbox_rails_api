require 'test_helper'

class Api::V5::WeatherByZipsControllerTest < ActionController::TestCase

  def cleanup

    V5::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V5::WeatherByZip.new({:get_city_weather_by_zip=>"Caxton Freemasons", :get_city_weather_by_zip_response=>"Vitamins misappropriated"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V5::WeatherByZip.new({:get_city_weather_by_zip=>"Cellulite diversionary", :get_city_weather_by_zip_response=>"Collapsing futility"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V5::WeatherByZip.new({:get_city_weather_by_zip=>"Papyrus syntactically", :get_city_weather_by_zip_response=>"Philosophically teepees"}, as: :"System Admin")

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
    Api::V5::WeatherByZipsController.any_instance.stubs(:scope_for_create_finder).returns(::V5::WeatherByZip)
    assert_difference('V5::WeatherByZip.count') do
      post :create, weather_by_zip: {:get_city_weather_by_zip=>"Swell insurgencies", :get_city_weather_by_zip_response=>"Shortsightedly disconsolately"}.merge(@weather_by_zip_relationship_hash), format: :json
    end
    assert_response :success
  end

  test "should show weather_by_zip" do
    Api::V5::WeatherByZipsController.any_instance.stubs(:scope_for_read_finder).returns(::V5::WeatherByZip)
    get :show, id: @weather_by_zip.id, format: :json
    assert_response :success
  end

  test "should update weather_by_zip" do
    Api::V5::WeatherByZipsController.any_instance.stubs(:scope_for_update_finder).returns(::V5::WeatherByZip)
    put :update, id: @weather_by_zip.id, weather_by_zip: {:get_city_weather_by_zip=>"Spearheading downstream", :get_city_weather_by_zip_response=>"Blissfully demonstrators"}, format: :json
    assert_response :success
  end

  test "should destroy weather_by_zip" do
    Api::V5::WeatherByZipsController.any_instance.stubs(:scope_for_delete_finder).returns(::V5::WeatherByZip)
    assert_difference('V5::WeatherByZip.count', -1) do
      delete :destroy, id: @weather_by_zip.id, format: :json
    end
    assert_response :success
  end



end
