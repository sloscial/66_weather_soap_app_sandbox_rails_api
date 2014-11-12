require 'test_helper'

class V1::WeatherByZipQueryScopeTest < ActiveSupport::TestCase

  def cleanup

    V1::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V1::WeatherByZip.new({:get_city_weather_by_zip=>"Preconditioning crowing", :get_city_weather_by_zip_response=>"Shamming poetic"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V1::WeatherByZip.new({:get_city_weather_by_zip=>"Telephoning metamorphoses", :get_city_weather_by_zip_response=>"Snowmen proportionality"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V1::WeatherByZip.new({:get_city_weather_by_zip=>"Inhalations naturalization", :get_city_weather_by_zip_response=>"Morbidly unduly"}, as: :"System Admin")

    @weather_by_zip.save




  end

  teardown do
    cleanup
  end



  test "validity of all" do
    value = V1::WeatherByZip.all

    assert_not_nil(value.count)

  end



  test "validity of exact_match" do
    value = V1::WeatherByZip.exact_match

    assert_not_nil(value.count)

  end



  test "validity of count" do
    value = V1::WeatherByZip.count

    assert_not_nil(value)

  end



  test "validity of count_exact_match" do
    value = V1::WeatherByZip.count_exact_match

    assert_not_nil(value)

  end


end
