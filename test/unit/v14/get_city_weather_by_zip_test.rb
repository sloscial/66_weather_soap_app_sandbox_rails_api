require 'test_helper'

class V14::GetCityWeatherByZipTest < ActiveSupport::TestCase

  def cleanup

    V14::GetCityWeatherByZip.destroy
  end

  setup do
    cleanup

    @get_city_weather_by_zip_relationship_hash = {}
    @get_city_weather_by_zip = V14::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Packet Alpheratz", :zip_code=>"Acquisitiveness sybarite"}, as: :"System Admin")

    @get_city_weather_by_zip.save

    @get_city_weather_by_zip = V14::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Moldiest cottages", :zip_code=>"Supervised thriven"}, as: :"System Admin")

    @get_city_weather_by_zip.save

    @get_city_weather_by_zip = V14::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Indecisiveness stammers", :zip_code=>"Saviours impecuniousness"}, as: :"System Admin")

    @get_city_weather_by_zip.save



  end

  teardown do
    cleanup
  end

  test "validity of create for V14::GetCityWeatherByZip" do
    # Instantiate and save the model.
    get_city_weather_by_zip = V14::GetCityWeatherByZip.new( {:get_city_weather_by_zip_result=>"Dissatisfying clears", :zip_code=>"Wreathe eerily"}, as: :"System Admin" )

    # Test fails if the model if 'true' was not returned.
    assert( get_city_weather_by_zip.save )

    # check the see if the number of models has increased by 1.
    assert( V14::GetCityWeatherByZip.count == 4 )
  end

  test "validity of read for V14::GetCityWeatherByZip" do
    assert( V14::GetCityWeatherByZip.count == 3 )
  end

  test "validity of update for V14::GetCityWeatherByZip" do
    assert( V14::GetCityWeatherByZip.first.save )
  end

  test "validity of delete for V14::GetCityWeatherByZip" do
    get_city_weather_by_zip = V14::GetCityWeatherByZip.first
    get_city_weather_by_zip.destroy
    assert( V14::GetCityWeatherByZip.count == 2 )
  end
end
