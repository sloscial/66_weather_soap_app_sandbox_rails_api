require 'test_helper'

class Api::V9::WeatherByZipsControllerTest < ActionController::TestCase

  def cleanup

    V9::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V9::WeatherByZip.new({:weather_return=>"Birkenstock Yekaterinburg", :zip_code=>"Anterooms Guthrie"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V9::WeatherByZip.new({:weather_return=>"Bloomers lemming", :zip_code=>"Uneventfully emaciation"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V9::WeatherByZip.new({:weather_return=>"Affectionate dizzier", :zip_code=>"Scintillated multiplication"}, as: :"System Admin")

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
    Api::V9::WeatherByZipsController.any_instance.stubs(:scope_for_create_finder).returns(::V9::WeatherByZip)
    assert_difference('V9::WeatherByZip.count') do
      post :create, weather_by_zip: {:weather_return=>"Parenthetical unsteadiness", :zip_code=>"Programmable crucible"}.merge(@weather_by_zip_relationship_hash), format: :json
    end
    assert_response :success
  end

  test "should show weather_by_zip" do
    Api::V9::WeatherByZipsController.any_instance.stubs(:scope_for_read_finder).returns(::V9::WeatherByZip)
    get :show, id: @weather_by_zip.id, format: :json
    assert_response :success
  end

  test "should update weather_by_zip" do
    Api::V9::WeatherByZipsController.any_instance.stubs(:scope_for_update_finder).returns(::V9::WeatherByZip)
    put :update, id: @weather_by_zip.id, weather_by_zip: {:weather_return=>"Deferring necklace", :zip_code=>"Controversially disrespectfully"}, format: :json
    assert_response :success
  end

  test "should destroy weather_by_zip" do
    Api::V9::WeatherByZipsController.any_instance.stubs(:scope_for_delete_finder).returns(::V9::WeatherByZip)
    assert_difference('V9::WeatherByZip.count', -1) do
      delete :destroy, id: @weather_by_zip.id, format: :json
    end
    assert_response :success
  end



end
