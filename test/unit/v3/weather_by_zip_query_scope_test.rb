require 'test_helper'

class V3::WeatherByZipQueryScopeTest < ActiveSupport::TestCase

  def cleanup

    V3::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V3::WeatherByZip.new({:get_city_weather_by_zip=>"Dhaulagiri Saroyan", :get_city_weather_by_zip_response=>"International resurrections"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V3::WeatherByZip.new({:get_city_weather_by_zip=>"Affection gyros", :get_city_weather_by_zip_response=>"Comprehensively spearheaded"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V3::WeatherByZip.new({:get_city_weather_by_zip=>"Idolatry judicial", :get_city_weather_by_zip_response=>"Mirrored pecans"}, as: :"System Admin")

    @weather_by_zip.save




  end

  teardown do
    cleanup
  end



  test "validity of all" do
    value = V3::WeatherByZip.all

    assert_not_nil(value.count)

  end



  test "validity of exact_match" do
    value = V3::WeatherByZip.exact_match

    assert_not_nil(value.count)

  end



  test "validity of count" do
    value = V3::WeatherByZip.count

    assert_not_nil(value)

  end



  test "validity of count_exact_match" do
    value = V3::WeatherByZip.count_exact_match

    assert_not_nil(value)

  end


end
