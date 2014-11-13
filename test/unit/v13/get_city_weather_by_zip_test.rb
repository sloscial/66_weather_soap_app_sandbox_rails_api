require 'test_helper'

class V13::GetCityWeatherByZipTest < ActiveSupport::TestCase

  def cleanup

    V13::GetCityWeatherByZip.destroy
  end

  setup do
    cleanup

    @get_city_weather_by_zip_relationship_hash = {}
    @get_city_weather_by_zip = V13::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Extenuated pronounces", :zip_code=>"Underachievers muckier"}, as: :"System Admin")

    @get_city_weather_by_zip.save

    @get_city_weather_by_zip = V13::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Murkily bowstrings", :zip_code=>"Reciprocals assembly"}, as: :"System Admin")

    @get_city_weather_by_zip.save

    @get_city_weather_by_zip = V13::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Libertarians pouch", :zip_code=>"Indoctrinate Donna"}, as: :"System Admin")

    @get_city_weather_by_zip.save



  end

  teardown do
    cleanup
  end

  test "validity of create for V13::GetCityWeatherByZip" do
    # Instantiate and save the model.
    get_city_weather_by_zip = V13::GetCityWeatherByZip.new( {:get_city_weather_by_zip_result=>"Federal Fiona", :zip_code=>"Inconsiderable tiara"}, as: :"System Admin" )

    # Test fails if the model if 'true' was not returned.
    assert( get_city_weather_by_zip.save )

    # check the see if the number of models has increased by 1.
    assert( V13::GetCityWeatherByZip.count == 4 )
  end

  test "validity of read for V13::GetCityWeatherByZip" do
    assert( V13::GetCityWeatherByZip.count == 3 )
  end

  test "validity of update for V13::GetCityWeatherByZip" do
    assert( V13::GetCityWeatherByZip.first.save )
  end

  test "validity of delete for V13::GetCityWeatherByZip" do
    get_city_weather_by_zip = V13::GetCityWeatherByZip.first
    get_city_weather_by_zip.destroy
    assert( V13::GetCityWeatherByZip.count == 2 )
  end
end
