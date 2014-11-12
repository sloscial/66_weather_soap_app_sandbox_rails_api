require 'test_helper'

class V4::WeatherByZipQueryScopeTest < ActiveSupport::TestCase

  def cleanup

    V4::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V4::WeatherByZip.new({:get_city_weather_by_zip=>"Tantalizingly anthropomorphic", :get_city_weather_by_zip_response=>"Tranquillizer douse"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V4::WeatherByZip.new({:get_city_weather_by_zip=>"Terrible circumscribing", :get_city_weather_by_zip_response=>"Resuscitator Sakai"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V4::WeatherByZip.new({:get_city_weather_by_zip=>"Odets warrantying", :get_city_weather_by_zip_response=>"Downswing twiddling"}, as: :"System Admin")

    @weather_by_zip.save




  end

  teardown do
    cleanup
  end



  test "validity of all" do
    value = V4::WeatherByZip.all

    assert_not_nil(value.count)

  end



  test "validity of exact_match" do
    value = V4::WeatherByZip.exact_match

    assert_not_nil(value.count)

  end



  test "validity of count" do
    value = V4::WeatherByZip.count

    assert_not_nil(value)

  end



  test "validity of count_exact_match" do
    value = V4::WeatherByZip.count_exact_match

    assert_not_nil(value)

  end


end
