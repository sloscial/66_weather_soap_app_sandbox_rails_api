require 'test_helper'

class V5::WeatherByZipTest < ActiveSupport::TestCase

  def cleanup

    V5::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V5::WeatherByZip.new({:get_city_weather_by_zip=>"Disobedience derangement", :get_city_weather_by_zip_response=>"Calcified homepage"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V5::WeatherByZip.new({:get_city_weather_by_zip=>"Prognosticating unlatched", :get_city_weather_by_zip_response=>"Barrows astronomically"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V5::WeatherByZip.new({:get_city_weather_by_zip=>"Decongestant uncooperative", :get_city_weather_by_zip_response=>"Marquesses superannuated"}, as: :"System Admin")

    @weather_by_zip.save



  end

  teardown do
    cleanup
  end

  test "validity of create for V5::WeatherByZip" do
    # Instantiate and save the model.
    weather_by_zip = V5::WeatherByZip.new( {:get_city_weather_by_zip=>"Tragicomedies notwithstanding", :get_city_weather_by_zip_response=>"Indulgence Germany"}, as: :"System Admin" )

    # Test fails if the model if 'true' was not returned.
    assert( weather_by_zip.save )

    # check the see if the number of models has increased by 1.
    assert( V5::WeatherByZip.count == 4 )
  end

  test "validity of read for V5::WeatherByZip" do
    assert( V5::WeatherByZip.count == 3 )
  end

  test "validity of update for V5::WeatherByZip" do
    assert( V5::WeatherByZip.first.save )
  end

  test "validity of delete for V5::WeatherByZip" do
    weather_by_zip = V5::WeatherByZip.first
    weather_by_zip.destroy
    assert( V5::WeatherByZip.count == 2 )
  end
end
