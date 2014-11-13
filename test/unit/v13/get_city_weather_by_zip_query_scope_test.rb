require 'test_helper'

class V13::GetCityWeatherByZipQueryScopeTest < ActiveSupport::TestCase

  def cleanup

    V13::GetCityWeatherByZip.destroy
  end

  setup do
    cleanup

    @get_city_weather_by_zip_relationship_hash = {}
    @get_city_weather_by_zip = V13::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Mfume fossilization", :zip_code=>"Ladybugs raven"}, as: :"System Admin")

    @get_city_weather_by_zip.save

    @get_city_weather_by_zip = V13::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Luminescence powers", :zip_code=>"Sleds constitutionals"}, as: :"System Admin")

    @get_city_weather_by_zip.save

    @get_city_weather_by_zip = V13::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Sadder Mohammedanism", :zip_code=>"Landsliding inquisitively"}, as: :"System Admin")

    @get_city_weather_by_zip.save




  end

  teardown do
    cleanup
  end



  test "validity of all" do
    value = V13::GetCityWeatherByZip.all

    assert_not_nil(value.count)

  end



  test "validity of exact_match" do
    value = V13::GetCityWeatherByZip.exact_match

    assert_not_nil(value.count)

  end



  test "validity of count" do
    value = V13::GetCityWeatherByZip.count

    assert_not_nil(value)

  end



  test "validity of count_exact_match" do
    value = V13::GetCityWeatherByZip.count_exact_match

    assert_not_nil(value)

  end


end
