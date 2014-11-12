require 'test_helper'

class V2::WeatherByZipTest < ActiveSupport::TestCase

  def cleanup

    V2::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V2::WeatherByZip.new({:get_city_weather_by_zip=>"Accomplishes disquieting", :get_city_weather_by_zip_response=>"Manhandled outtakes"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V2::WeatherByZip.new({:get_city_weather_by_zip=>"Gamuts industriousness", :get_city_weather_by_zip_response=>"Chops apocalyptic"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V2::WeatherByZip.new({:get_city_weather_by_zip=>"Exploiters dermatologists", :get_city_weather_by_zip_response=>"Astonishingly flagstones"}, as: :"System Admin")

    @weather_by_zip.save



  end

  teardown do
    cleanup
  end

  test "validity of create for V2::WeatherByZip" do
    # Instantiate and save the model.
    weather_by_zip = V2::WeatherByZip.new( {:get_city_weather_by_zip=>"Schizophrenia commemorate", :get_city_weather_by_zip_response=>"Safavid phylum"}, as: :"System Admin" )

    # Test fails if the model if 'true' was not returned.
    assert( weather_by_zip.save )

    # check the see if the number of models has increased by 1.
    assert( V2::WeatherByZip.count == 4 )
  end

  test "validity of read for V2::WeatherByZip" do
    assert( V2::WeatherByZip.count == 3 )
  end

  test "validity of update for V2::WeatherByZip" do
    assert( V2::WeatherByZip.first.save )
  end

  test "validity of delete for V2::WeatherByZip" do
    weather_by_zip = V2::WeatherByZip.first
    weather_by_zip.destroy
    assert( V2::WeatherByZip.count == 2 )
  end
end
