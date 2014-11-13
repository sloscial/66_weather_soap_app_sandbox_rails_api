require 'test_helper'

class V10::WeatherByZipTest < ActiveSupport::TestCase

  def cleanup

    V10::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V10::WeatherByZip.new({:weather_return=>"Polytechnics Timor", :zip_code=>"Perceivable parenthesizing"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V10::WeatherByZip.new({:weather_return=>"Cunningham remedied", :zip_code=>"Onslaughts laser"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V10::WeatherByZip.new({:weather_return=>"Shirtwaist sharpshooters", :zip_code=>"Oboes exploring"}, as: :"System Admin")

    @weather_by_zip.save



  end

  teardown do
    cleanup
  end

  test "validity of create for V10::WeatherByZip" do
    # Instantiate and save the model.
    weather_by_zip = V10::WeatherByZip.new( {:weather_return=>"Toxic backed", :zip_code=>"Comprises scatterbrained"}, as: :"System Admin" )

    # Test fails if the model if 'true' was not returned.
    assert( weather_by_zip.save )

    # check the see if the number of models has increased by 1.
    assert( V10::WeatherByZip.count == 4 )
  end

  test "validity of read for V10::WeatherByZip" do
    assert( V10::WeatherByZip.count == 3 )
  end

  test "validity of update for V10::WeatherByZip" do
    assert( V10::WeatherByZip.first.save )
  end

  test "validity of delete for V10::WeatherByZip" do
    weather_by_zip = V10::WeatherByZip.first
    weather_by_zip.destroy
    assert( V10::WeatherByZip.count == 2 )
  end
end
