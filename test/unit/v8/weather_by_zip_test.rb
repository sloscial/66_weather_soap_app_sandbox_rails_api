require 'test_helper'

class V8::WeatherByZipTest < ActiveSupport::TestCase

  def cleanup

    V8::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V8::WeatherByZip.new({:get_city_weather_by_zip=>"Columnist provocatively", :get_city_weather_by_zip_response=>"Docents cinchonas"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V8::WeatherByZip.new({:get_city_weather_by_zip=>"Hayes cruddier", :get_city_weather_by_zip_response=>"Collaborator impressions"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V8::WeatherByZip.new({:get_city_weather_by_zip=>"Neutralization griddles", :get_city_weather_by_zip_response=>"Caricaturing hairdresser"}, as: :"System Admin")

    @weather_by_zip.save



  end

  teardown do
    cleanup
  end

  test "validity of create for V8::WeatherByZip" do
    # Instantiate and save the model.
    weather_by_zip = V8::WeatherByZip.new( {:get_city_weather_by_zip=>"Regurgitating zests", :get_city_weather_by_zip_response=>"Outstayed mouthwatering"}, as: :"System Admin" )

    # Test fails if the model if 'true' was not returned.
    assert( weather_by_zip.save )

    # check the see if the number of models has increased by 1.
    assert( V8::WeatherByZip.count == 4 )
  end

  test "validity of read for V8::WeatherByZip" do
    assert( V8::WeatherByZip.count == 3 )
  end

  test "validity of update for V8::WeatherByZip" do
    assert( V8::WeatherByZip.first.save )
  end

  test "validity of delete for V8::WeatherByZip" do
    weather_by_zip = V8::WeatherByZip.first
    weather_by_zip.destroy
    assert( V8::WeatherByZip.count == 2 )
  end
end
