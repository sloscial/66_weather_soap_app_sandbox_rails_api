require 'test_helper'

class V3::WeatherByZipTest < ActiveSupport::TestCase

  def cleanup

    V3::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V3::WeatherByZip.new({:get_city_weather_by_zip=>"Sullenness Lazaro", :get_city_weather_by_zip_response=>"Spicier bipartisan"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V3::WeatherByZip.new({:get_city_weather_by_zip=>"Jawing egalitarianism", :get_city_weather_by_zip_response=>"Hobgoblins groundbreaking"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V3::WeatherByZip.new({:get_city_weather_by_zip=>"Reestablishing brave", :get_city_weather_by_zip_response=>"Marginally delinquencies"}, as: :"System Admin")

    @weather_by_zip.save



  end

  teardown do
    cleanup
  end

  test "validity of create for V3::WeatherByZip" do
    # Instantiate and save the model.
    weather_by_zip = V3::WeatherByZip.new( {:get_city_weather_by_zip=>"Homerooms Bryan", :get_city_weather_by_zip_response=>"Cheekiest characteristics"}, as: :"System Admin" )

    # Test fails if the model if 'true' was not returned.
    assert( weather_by_zip.save )

    # check the see if the number of models has increased by 1.
    assert( V3::WeatherByZip.count == 4 )
  end

  test "validity of read for V3::WeatherByZip" do
    assert( V3::WeatherByZip.count == 3 )
  end

  test "validity of update for V3::WeatherByZip" do
    assert( V3::WeatherByZip.first.save )
  end

  test "validity of delete for V3::WeatherByZip" do
    weather_by_zip = V3::WeatherByZip.first
    weather_by_zip.destroy
    assert( V3::WeatherByZip.count == 2 )
  end
end
