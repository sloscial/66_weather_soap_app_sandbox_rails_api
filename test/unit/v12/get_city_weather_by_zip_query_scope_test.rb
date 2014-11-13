require 'test_helper'

class V12::GetCityWeatherByZipQueryScopeTest < ActiveSupport::TestCase

  def cleanup

    V12::GetCityWeatherByZip.destroy
  end

  setup do
    cleanup

    @get_city_weather_by_zip_relationship_hash = {}
    @get_city_weather_by_zip = V12::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Diagnosticians disconcerting", :zip_code=>"Munificent unconditionally"}, as: :"System Admin")

    @get_city_weather_by_zip.save

    @get_city_weather_by_zip = V12::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Falsity shiner", :zip_code=>"Hairnets timber"}, as: :"System Admin")

    @get_city_weather_by_zip.save

    @get_city_weather_by_zip = V12::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Apologetically emancipated", :zip_code=>"Castigator iconoclasts"}, as: :"System Admin")

    @get_city_weather_by_zip.save




  end

  teardown do
    cleanup
  end



  test "validity of all" do
    value = V12::GetCityWeatherByZip.all

    assert_not_nil(value.count)

  end



  test "validity of exact_match" do
    value = V12::GetCityWeatherByZip.exact_match

    assert_not_nil(value.count)

  end



  test "validity of count" do
    value = V12::GetCityWeatherByZip.count

    assert_not_nil(value)

  end



  test "validity of count_exact_match" do
    value = V12::GetCityWeatherByZip.count_exact_match

    assert_not_nil(value)

  end


end
