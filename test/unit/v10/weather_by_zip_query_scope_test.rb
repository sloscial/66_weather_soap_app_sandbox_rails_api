require 'test_helper'

class V10::WeatherByZipQueryScopeTest < ActiveSupport::TestCase

  def cleanup

    V10::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V10::WeatherByZip.new({:weather_return=>"Snowplows thirtieths", :zip_code=>"Disenchantment spaceflights"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V10::WeatherByZip.new({:weather_return=>"Inventions Wollstonecraft", :zip_code=>"Toniest purely"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V10::WeatherByZip.new({:weather_return=>"Munificence dames", :zip_code=>"Beneficially thematically"}, as: :"System Admin")

    @weather_by_zip.save




  end

  teardown do
    cleanup
  end



  test "validity of all" do
    value = V10::WeatherByZip.all

    assert_not_nil(value.count)

  end



  test "validity of exact_match" do
    value = V10::WeatherByZip.exact_match

    assert_not_nil(value.count)

  end



  test "validity of count" do
    value = V10::WeatherByZip.count

    assert_not_nil(value)

  end



  test "validity of count_exact_match" do
    value = V10::WeatherByZip.count_exact_match

    assert_not_nil(value)

  end


end
