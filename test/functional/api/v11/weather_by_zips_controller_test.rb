require 'test_helper'

class Api::V11::WeatherByZipsControllerTest < ActionController::TestCase

  def cleanup

    V11::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V11::WeatherByZip.new({:weather_return=>"Clods hospitalization", :zip_code=>"Granddaughters joyousness"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V11::WeatherByZip.new({:weather_return=>"Scolloping nonseasonal", :zip_code=>"Facetiousness inlays"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V11::WeatherByZip.new({:weather_return=>"Designates counterfeit", :zip_code=>"Cowlicks grange"}, as: :"System Admin")

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
    Api::V11::WeatherByZipsController.any_instance.stubs(:scope_for_create_finder).returns(::V11::WeatherByZip)
    assert_difference('V11::WeatherByZip.count') do
      post :create, weather_by_zip: {:weather_return=>"Signs pathological", :zip_code=>"Lordship hound"}.merge(@weather_by_zip_relationship_hash), format: :json
    end
    assert_response :success
  end

  test "should show weather_by_zip" do
    Api::V11::WeatherByZipsController.any_instance.stubs(:scope_for_read_finder).returns(::V11::WeatherByZip)
    get :show, id: @weather_by_zip.id, format: :json
    assert_response :success
  end

  test "should update weather_by_zip" do
    Api::V11::WeatherByZipsController.any_instance.stubs(:scope_for_update_finder).returns(::V11::WeatherByZip)
    put :update, id: @weather_by_zip.id, weather_by_zip: {:weather_return=>"Schematic savagest", :zip_code=>"Specious heartlessness"}, format: :json
    assert_response :success
  end

  test "should destroy weather_by_zip" do
    Api::V11::WeatherByZipsController.any_instance.stubs(:scope_for_delete_finder).returns(::V11::WeatherByZip)
    assert_difference('V11::WeatherByZip.count', -1) do
      delete :destroy, id: @weather_by_zip.id, format: :json
    end
    assert_response :success
  end



end
