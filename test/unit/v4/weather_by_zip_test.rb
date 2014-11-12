require 'test_helper'

class V4::WeatherByZipTest < ActiveSupport::TestCase

  def cleanup

    V4::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V4::WeatherByZip.new({:get_city_weather_by_zip=>"Arithmetically esoterically", :get_city_weather_by_zip_response=>"Bigmouth tailspins"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V4::WeatherByZip.new({:get_city_weather_by_zip=>"Sassafras horticulturists", :get_city_weather_by_zip_response=>"Blithe pioneer"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V4::WeatherByZip.new({:get_city_weather_by_zip=>"Marigold distinguishable", :get_city_weather_by_zip_response=>"Confirmations authoritatively"}, as: :"System Admin")

    @weather_by_zip.save



  end

  teardown do
    cleanup
  end

  test "validity of create for V4::WeatherByZip" do
    # Instantiate and save the model.
    weather_by_zip = V4::WeatherByZip.new( {:get_city_weather_by_zip=>"Planing fatalist", :get_city_weather_by_zip_response=>"Hypothesizing recruitment"}, as: :"System Admin" )

    # Test fails if the model if 'true' was not returned.
    assert( weather_by_zip.save )

    # check the see if the number of models has increased by 1.
    assert( V4::WeatherByZip.count == 4 )
  end

  test "validity of read for V4::WeatherByZip" do
    assert( V4::WeatherByZip.count == 3 )
  end

  test "validity of update for V4::WeatherByZip" do
    assert( V4::WeatherByZip.first.save )
  end

  test "validity of delete for V4::WeatherByZip" do
    weather_by_zip = V4::WeatherByZip.first
    weather_by_zip.destroy
    assert( V4::WeatherByZip.count == 2 )
  end
end
