require 'test_helper'

class V2::WeatherByZipQueryScopeTest < ActiveSupport::TestCase

  def cleanup

    V2::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V2::WeatherByZip.new({:get_city_weather_by_zip=>"Vulnerability rehabilitates", :get_city_weather_by_zip_response=>"Indoctrinates suggestively"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V2::WeatherByZip.new({:get_city_weather_by_zip=>"Phased liberating", :get_city_weather_by_zip_response=>"Walpurgisnacht inventories"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V2::WeatherByZip.new({:get_city_weather_by_zip=>"Easel impassivity", :get_city_weather_by_zip_response=>"Significantly directorates"}, as: :"System Admin")

    @weather_by_zip.save




  end

  teardown do
    cleanup
  end



  test "validity of all" do
    value = V2::WeatherByZip.all

    assert_not_nil(value.count)

  end



  test "validity of exact_match" do
    value = V2::WeatherByZip.exact_match

    assert_not_nil(value.count)

  end



  test "validity of count" do
    value = V2::WeatherByZip.count

    assert_not_nil(value)

  end



  test "validity of count_exact_match" do
    value = V2::WeatherByZip.count_exact_match

    assert_not_nil(value)

  end


end
