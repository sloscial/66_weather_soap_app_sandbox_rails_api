require 'test_helper'

class V11::WeatherByZipQueryScopeTest < ActiveSupport::TestCase

  def cleanup

    V11::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V11::WeatherByZip.new({:weather_return=>"Compulsiveness trumpeting", :zip_code=>"Interconnects warmer"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V11::WeatherByZip.new({:weather_return=>"Typifies bridgehead", :zip_code=>"Astrophysicists Flowers"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V11::WeatherByZip.new({:weather_return=>"Misjudgements dabbles", :zip_code=>"Unity representations"}, as: :"System Admin")

    @weather_by_zip.save




  end

  teardown do
    cleanup
  end



  test "validity of all" do
    value = V11::WeatherByZip.all

    assert_not_nil(value.count)

  end



  test "validity of exact_match" do
    value = V11::WeatherByZip.exact_match

    assert_not_nil(value.count)

  end



  test "validity of count" do
    value = V11::WeatherByZip.count

    assert_not_nil(value)

  end



  test "validity of count_exact_match" do
    value = V11::WeatherByZip.count_exact_match

    assert_not_nil(value)

  end


end
