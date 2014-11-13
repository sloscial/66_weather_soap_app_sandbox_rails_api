require 'test_helper'

class V9::WeatherByZipTest < ActiveSupport::TestCase

  def cleanup

    V9::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V9::WeatherByZip.new({:weather_return=>"Extenuates casually", :zip_code=>"Underrates dugouts"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V9::WeatherByZip.new({:weather_return=>"Meddle autonomously", :zip_code=>"Fieriest mollification"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V9::WeatherByZip.new({:weather_return=>"Permeating ideograms", :zip_code=>"Septuagenarians experts"}, as: :"System Admin")

    @weather_by_zip.save



  end

  teardown do
    cleanup
  end

  test "validity of create for V9::WeatherByZip" do
    # Instantiate and save the model.
    weather_by_zip = V9::WeatherByZip.new( {:weather_return=>"Pistil recommendations", :zip_code=>"Servomechanisms masquerader"}, as: :"System Admin" )

    # Test fails if the model if 'true' was not returned.
    assert( weather_by_zip.save )

    # check the see if the number of models has increased by 1.
    assert( V9::WeatherByZip.count == 4 )
  end

  test "validity of read for V9::WeatherByZip" do
    assert( V9::WeatherByZip.count == 3 )
  end

  test "validity of update for V9::WeatherByZip" do
    assert( V9::WeatherByZip.first.save )
  end

  test "validity of delete for V9::WeatherByZip" do
    weather_by_zip = V9::WeatherByZip.first
    weather_by_zip.destroy
    assert( V9::WeatherByZip.count == 2 )
  end
end
