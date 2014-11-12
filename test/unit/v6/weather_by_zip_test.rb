require 'test_helper'

class V6::WeatherByZipTest < ActiveSupport::TestCase

  def cleanup

    V6::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V6::WeatherByZip.new({:get_city_weather_by_zip=>"Responsiveness sauted", :get_city_weather_by_zip_response=>"Innate dillydallying"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V6::WeatherByZip.new({:get_city_weather_by_zip=>"Makeshift yardsticks", :get_city_weather_by_zip_response=>"Impel matrimonial"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V6::WeatherByZip.new({:get_city_weather_by_zip=>"Algorithmic unsportsmanlike", :get_city_weather_by_zip_response=>"Crewmen enured"}, as: :"System Admin")

    @weather_by_zip.save



  end

  teardown do
    cleanup
  end

  test "validity of create for V6::WeatherByZip" do
    # Instantiate and save the model.
    weather_by_zip = V6::WeatherByZip.new( {:get_city_weather_by_zip=>"Ejections twinged", :get_city_weather_by_zip_response=>"Slyest lexicographers"}, as: :"System Admin" )

    # Test fails if the model if 'true' was not returned.
    assert( weather_by_zip.save )

    # check the see if the number of models has increased by 1.
    assert( V6::WeatherByZip.count == 4 )
  end

  test "validity of read for V6::WeatherByZip" do
    assert( V6::WeatherByZip.count == 3 )
  end

  test "validity of update for V6::WeatherByZip" do
    assert( V6::WeatherByZip.first.save )
  end

  test "validity of delete for V6::WeatherByZip" do
    weather_by_zip = V6::WeatherByZip.first
    weather_by_zip.destroy
    assert( V6::WeatherByZip.count == 2 )
  end
end
