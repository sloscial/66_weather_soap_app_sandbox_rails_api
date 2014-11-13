require 'test_helper'

class V12::GetCityWeatherByZipTest < ActiveSupport::TestCase

  def cleanup

    V12::GetCityWeatherByZip.destroy
  end

  setup do
    cleanup

    @get_city_weather_by_zip_relationship_hash = {}
    @get_city_weather_by_zip = V12::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Preponderant deliciously", :zip_code=>"Nitrogenous Zelig"}, as: :"System Admin")

    @get_city_weather_by_zip.save

    @get_city_weather_by_zip = V12::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Geckos servomechanism", :zip_code=>"Beach pendulum"}, as: :"System Admin")

    @get_city_weather_by_zip.save

    @get_city_weather_by_zip = V12::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Achievable Hench", :zip_code=>"Jeffersonian centenarians"}, as: :"System Admin")

    @get_city_weather_by_zip.save



  end

  teardown do
    cleanup
  end

  test "validity of create for V12::GetCityWeatherByZip" do
    # Instantiate and save the model.
    get_city_weather_by_zip = V12::GetCityWeatherByZip.new( {:get_city_weather_by_zip_result=>"Tranquilest arithmetically", :zip_code=>"Personification fractional"}, as: :"System Admin" )

    # Test fails if the model if 'true' was not returned.
    assert( get_city_weather_by_zip.save )

    # check the see if the number of models has increased by 1.
    assert( V12::GetCityWeatherByZip.count == 4 )
  end

  test "validity of read for V12::GetCityWeatherByZip" do
    assert( V12::GetCityWeatherByZip.count == 3 )
  end

  test "validity of update for V12::GetCityWeatherByZip" do
    assert( V12::GetCityWeatherByZip.first.save )
  end

  test "validity of delete for V12::GetCityWeatherByZip" do
    get_city_weather_by_zip = V12::GetCityWeatherByZip.first
    get_city_weather_by_zip.destroy
    assert( V12::GetCityWeatherByZip.count == 2 )
  end
end
