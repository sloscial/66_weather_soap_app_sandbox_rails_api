require 'test_helper'

class V5::WeatherByZipQueryScopeTest < ActiveSupport::TestCase

  def cleanup

    V5::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V5::WeatherByZip.new({:get_city_weather_by_zip=>"Windmilling misalliances", :get_city_weather_by_zip_response=>"Recompenses nationalist"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V5::WeatherByZip.new({:get_city_weather_by_zip=>"Disadvantageous divorce", :get_city_weather_by_zip_response=>"Undercarriage pouring"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V5::WeatherByZip.new({:get_city_weather_by_zip=>"Countesses ramifications", :get_city_weather_by_zip_response=>"Extrinsic installation"}, as: :"System Admin")

    @weather_by_zip.save




  end

  teardown do
    cleanup
  end



  test "validity of all" do
    value = V5::WeatherByZip.all

    assert_not_nil(value.count)

  end



  test "validity of exact_match" do
    value = V5::WeatherByZip.exact_match

    assert_not_nil(value.count)

  end



  test "validity of count" do
    value = V5::WeatherByZip.count

    assert_not_nil(value)

  end



  test "validity of count_exact_match" do
    value = V5::WeatherByZip.count_exact_match

    assert_not_nil(value)

  end


end
