require 'test_helper'

class V1::WeatherByZipTest < ActiveSupport::TestCase

  def cleanup

    V1::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V1::WeatherByZip.new({:get_city_weather_by_zip=>"Fungicidal resettled", :get_city_weather_by_zip_response=>"Crudity nonproductive"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V1::WeatherByZip.new({:get_city_weather_by_zip=>"Counterfeiting sternly", :get_city_weather_by_zip_response=>"Spectroscope grapnel"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V1::WeatherByZip.new({:get_city_weather_by_zip=>"Stealing Georgetown", :get_city_weather_by_zip_response=>"Incompatibility adman"}, as: :"System Admin")

    @weather_by_zip.save



  end

  teardown do
    cleanup
  end

  test "validity of create for V1::WeatherByZip" do
    # Instantiate and save the model.
    weather_by_zip = V1::WeatherByZip.new( {:get_city_weather_by_zip=>"Magnetosphere teletypewriter", :get_city_weather_by_zip_response=>"Protocol configurations"}, as: :"System Admin" )

    # Test fails if the model if 'true' was not returned.
    assert( weather_by_zip.save )

    # check the see if the number of models has increased by 1.
    assert( V1::WeatherByZip.count == 4 )
  end

  test "validity of read for V1::WeatherByZip" do
    assert( V1::WeatherByZip.count == 3 )
  end

  test "validity of update for V1::WeatherByZip" do
    assert( V1::WeatherByZip.first.save )
  end

  test "validity of delete for V1::WeatherByZip" do
    weather_by_zip = V1::WeatherByZip.first
    weather_by_zip.destroy
    assert( V1::WeatherByZip.count == 2 )
  end
end
