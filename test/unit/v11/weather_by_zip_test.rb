require 'test_helper'

class V11::WeatherByZipTest < ActiveSupport::TestCase

  def cleanup

    V11::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V11::WeatherByZip.new({:weather_return=>"Circularize goodlier", :zip_code=>"Boardinghouses adjustment"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V11::WeatherByZip.new({:weather_return=>"Battleground suitor", :zip_code=>"Prefabricating unobstructed"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V11::WeatherByZip.new({:weather_return=>"Pluperfects inhibiting", :zip_code=>"Styli sedation"}, as: :"System Admin")

    @weather_by_zip.save



  end

  teardown do
    cleanup
  end

  test "validity of create for V11::WeatherByZip" do
    # Instantiate and save the model.
    weather_by_zip = V11::WeatherByZip.new( {:weather_return=>"Reconfiguration streaked", :zip_code=>"Aggressors foreground"}, as: :"System Admin" )

    # Test fails if the model if 'true' was not returned.
    assert( weather_by_zip.save )

    # check the see if the number of models has increased by 1.
    assert( V11::WeatherByZip.count == 4 )
  end

  test "validity of read for V11::WeatherByZip" do
    assert( V11::WeatherByZip.count == 3 )
  end

  test "validity of update for V11::WeatherByZip" do
    assert( V11::WeatherByZip.first.save )
  end

  test "validity of delete for V11::WeatherByZip" do
    weather_by_zip = V11::WeatherByZip.first
    weather_by_zip.destroy
    assert( V11::WeatherByZip.count == 2 )
  end
end
