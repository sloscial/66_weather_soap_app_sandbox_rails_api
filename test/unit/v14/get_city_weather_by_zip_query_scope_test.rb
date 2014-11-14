require 'test_helper'

class V14::GetCityWeatherByZipQueryScopeTest < ActiveSupport::TestCase

  def cleanup

    V14::GetCityWeatherByZip.destroy
  end

  setup do
    cleanup

    @get_city_weather_by_zip_relationship_hash = {}
    @get_city_weather_by_zip = V14::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Hairstylists hijacker", :zip_code=>"Spirituous unacceptability"}, as: :"System Admin")

    @get_city_weather_by_zip.save

    @get_city_weather_by_zip = V14::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Purged maintenance", :zip_code=>"Acquisitiveness slipcovers"}, as: :"System Admin")

    @get_city_weather_by_zip.save

    @get_city_weather_by_zip = V14::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Tacos devaluation", :zip_code=>"Geologies actuate"}, as: :"System Admin")

    @get_city_weather_by_zip.save




  end

  teardown do
    cleanup
  end



  test "validity of all" do
    value = V14::GetCityWeatherByZip.all

    assert_not_nil(value.count)

  end



  test "validity of exact_match" do
    value = V14::GetCityWeatherByZip.exact_match

    assert_not_nil(value.count)

  end



  test "validity of count" do
    value = V14::GetCityWeatherByZip.count

    assert_not_nil(value)

  end



  test "validity of count_exact_match" do
    value = V14::GetCityWeatherByZip.count_exact_match

    assert_not_nil(value)

  end


end
