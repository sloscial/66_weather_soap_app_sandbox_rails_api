require 'test_helper'

class V6::WeatherByZipQueryScopeTest < ActiveSupport::TestCase

  def cleanup

    V6::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V6::WeatherByZip.new({:get_city_weather_by_zip=>"Underestimated insensible", :get_city_weather_by_zip_response=>"Erection gangrenes"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V6::WeatherByZip.new({:get_city_weather_by_zip=>"Chatty goose", :get_city_weather_by_zip_response=>"Intonations aircraft"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V6::WeatherByZip.new({:get_city_weather_by_zip=>"Whoops ascots", :get_city_weather_by_zip_response=>"Gracefulness industrialize"}, as: :"System Admin")

    @weather_by_zip.save




  end

  teardown do
    cleanup
  end



  test "validity of all" do
    value = V6::WeatherByZip.all

    assert_not_nil(value.count)

  end



  test "validity of exact_match" do
    value = V6::WeatherByZip.exact_match

    assert_not_nil(value.count)

  end



  test "validity of count" do
    value = V6::WeatherByZip.count

    assert_not_nil(value)

  end



  test "validity of count_exact_match" do
    value = V6::WeatherByZip.count_exact_match

    assert_not_nil(value)

  end


end
