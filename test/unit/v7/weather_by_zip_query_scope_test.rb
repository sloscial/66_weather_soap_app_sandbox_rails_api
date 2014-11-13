require 'test_helper'

class V7::WeatherByZipQueryScopeTest < ActiveSupport::TestCase

  def cleanup

    V7::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V7::WeatherByZip.new({:get_city_weather_by_zip=>"Stigma elliptically", :get_city_weather_by_zip_response=>"Overplay rebated"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V7::WeatherByZip.new({:get_city_weather_by_zip=>"Deceitful anthropologists", :get_city_weather_by_zip_response=>"Intagli perturbations"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V7::WeatherByZip.new({:get_city_weather_by_zip=>"Respelling toiled", :get_city_weather_by_zip_response=>"Maizes Lyons"}, as: :"System Admin")

    @weather_by_zip.save




  end

  teardown do
    cleanup
  end



  test "validity of all" do
    value = V7::WeatherByZip.all

    assert_not_nil(value.count)

  end



  test "validity of exact_match" do
    value = V7::WeatherByZip.exact_match

    assert_not_nil(value.count)

  end



  test "validity of count" do
    value = V7::WeatherByZip.count

    assert_not_nil(value)

  end



  test "validity of count_exact_match" do
    value = V7::WeatherByZip.count_exact_match

    assert_not_nil(value)

  end


end
