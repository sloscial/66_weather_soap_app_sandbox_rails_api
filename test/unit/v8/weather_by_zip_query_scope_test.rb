require 'test_helper'

class V8::WeatherByZipQueryScopeTest < ActiveSupport::TestCase

  def cleanup

    V8::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V8::WeatherByZip.new({:get_city_weather_by_zip=>"Pyongyang qualification", :get_city_weather_by_zip_response=>"Pharmaceuticals pilaf"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V8::WeatherByZip.new({:get_city_weather_by_zip=>"Frolicked tasseled", :get_city_weather_by_zip_response=>"Turkestan bowstring"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V8::WeatherByZip.new({:get_city_weather_by_zip=>"Distinguishable bullrings", :get_city_weather_by_zip_response=>"Scrimshawing jeopardizes"}, as: :"System Admin")

    @weather_by_zip.save




  end

  teardown do
    cleanup
  end



  test "validity of all" do
    value = V8::WeatherByZip.all

    assert_not_nil(value.count)

  end



  test "validity of exact_match" do
    value = V8::WeatherByZip.exact_match

    assert_not_nil(value.count)

  end



  test "validity of count" do
    value = V8::WeatherByZip.count

    assert_not_nil(value)

  end



  test "validity of count_exact_match" do
    value = V8::WeatherByZip.count_exact_match

    assert_not_nil(value)

  end


end
