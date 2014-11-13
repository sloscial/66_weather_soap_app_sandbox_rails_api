require 'test_helper'

class V9::WeatherByZipQueryScopeTest < ActiveSupport::TestCase

  def cleanup

    V9::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V9::WeatherByZip.new({:weather_return=>"Middle interrelations", :zip_code=>"Professorial illustrating"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V9::WeatherByZip.new({:weather_return=>"Kiloton rather", :zip_code=>"Halfheartedness excommunicates"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V9::WeatherByZip.new({:weather_return=>"Straightforward configurations", :zip_code=>"Eccentrics hostelries"}, as: :"System Admin")

    @weather_by_zip.save




  end

  teardown do
    cleanup
  end



  test "validity of all" do
    value = V9::WeatherByZip.all

    assert_not_nil(value.count)

  end



  test "validity of exact_match" do
    value = V9::WeatherByZip.exact_match

    assert_not_nil(value.count)

  end



  test "validity of count" do
    value = V9::WeatherByZip.count

    assert_not_nil(value)

  end



  test "validity of count_exact_match" do
    value = V9::WeatherByZip.count_exact_match

    assert_not_nil(value)

  end


end
