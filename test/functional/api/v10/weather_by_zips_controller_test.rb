require 'test_helper'

class Api::V10::WeatherByZipsControllerTest < ActionController::TestCase

  def cleanup

    V10::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V10::WeatherByZip.new({:weather_return=>"Ample schoolteacher", :zip_code=>"Appertains motormouth"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V10::WeatherByZip.new({:weather_return=>"Specializations daguerreotyping", :zip_code=>"Licensees horses"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V10::WeatherByZip.new({:weather_return=>"Casanova kohlrabies", :zip_code=>"Derby Chandra"}, as: :"System Admin")

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
    Api::V10::WeatherByZipsController.any_instance.stubs(:scope_for_create_finder).returns(::V10::WeatherByZip)
    assert_difference('V10::WeatherByZip.count') do
      post :create, weather_by_zip: {:weather_return=>"Phraseology mentalities", :zip_code=>"Wollstonecraft leaguing"}.merge(@weather_by_zip_relationship_hash), format: :json
    end
    assert_response :success
  end

  test "should show weather_by_zip" do
    Api::V10::WeatherByZipsController.any_instance.stubs(:scope_for_read_finder).returns(::V10::WeatherByZip)
    get :show, id: @weather_by_zip.id, format: :json
    assert_response :success
  end

  test "should update weather_by_zip" do
    Api::V10::WeatherByZipsController.any_instance.stubs(:scope_for_update_finder).returns(::V10::WeatherByZip)
    put :update, id: @weather_by_zip.id, weather_by_zip: {:weather_return=>"Sunder pusses", :zip_code=>"Disorientation carrier"}, format: :json
    assert_response :success
  end

  test "should destroy weather_by_zip" do
    Api::V10::WeatherByZipsController.any_instance.stubs(:scope_for_delete_finder).returns(::V10::WeatherByZip)
    assert_difference('V10::WeatherByZip.count', -1) do
      delete :destroy, id: @weather_by_zip.id, format: :json
    end
    assert_response :success
  end



end
