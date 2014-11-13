require 'test_helper'

class V7::WeatherByZipTest < ActiveSupport::TestCase

  def cleanup

    V7::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V7::WeatherByZip.new({:get_city_weather_by_zip=>"Distributions kilohertzes", :get_city_weather_by_zip_response=>"Sheen joyride"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V7::WeatherByZip.new({:get_city_weather_by_zip=>"Advantageously boardinghouse", :get_city_weather_by_zip_response=>"Countries flatfooted"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V7::WeatherByZip.new({:get_city_weather_by_zip=>"Hairsprings Schwarzenegger", :get_city_weather_by_zip_response=>"Perished psychiatrists"}, as: :"System Admin")

    @weather_by_zip.save



  end

  teardown do
    cleanup
  end

  test "validity of create for V7::WeatherByZip" do
    # Instantiate and save the model.
    weather_by_zip = V7::WeatherByZip.new( {:get_city_weather_by_zip=>"Philanthropic zinnias", :get_city_weather_by_zip_response=>"Andretti thruway"}, as: :"System Admin" )

    # Test fails if the model if 'true' was not returned.
    assert( weather_by_zip.save )

    # check the see if the number of models has increased by 1.
    assert( V7::WeatherByZip.count == 4 )
  end

  test "validity of read for V7::WeatherByZip" do
    assert( V7::WeatherByZip.count == 3 )
  end

  test "validity of update for V7::WeatherByZip" do
    assert( V7::WeatherByZip.first.save )
  end

  test "validity of delete for V7::WeatherByZip" do
    weather_by_zip = V7::WeatherByZip.first
    weather_by_zip.destroy
    assert( V7::WeatherByZip.count == 2 )
  end
end
