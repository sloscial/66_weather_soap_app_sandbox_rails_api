require 'test_helper'

class V1::WeatherByZipAdminCRUDTest < ActionDispatch::IntegrationTest


  def cleanup

    V1::WeatherByZip.destroy
  end

  setup do
    cleanup

    @weather_by_zip_relationship_hash = {}
    @weather_by_zip = V1::WeatherByZip.new({:get_city_weather_by_zip=>"Nonreturnables logarithms", :get_city_weather_by_zip_response=>"Substantiations deflectors"}, as: :"System Admin")

    @weather_by_zip.save

    @weather_by_zip = V1::WeatherByZip.new({:get_city_weather_by_zip=>"Implicit subterranean", :get_city_weather_by_zip_response=>"Bodhisattva primitives"}, as: :"System Admin")

    @weather_by_zip.save


  end

  teardown do
    cleanup
  end



  test "should be able to create instance of weather_by_zip" do
    login_to_admin
    click_link('Weather By Zips')
    click_link('New')

    assert page.has_button?('Submit')

  end

  test "should be able to delete instance of weather_by_zip" do
    login_to_admin
    visit('/admin/weather_by_zips')
    assert(has_xpath?("//tbody/tr/td/a[@data-method='delete' and @href='/admin/weather_by_zips/#{URI::encode(@weather_by_zip.id.to_s)}']"))
    first(:xpath, "//tbody/tr/td/a[@data-method='delete' and @href='/admin/weather_by_zips/#{URI::encode(@weather_by_zip.id.to_s)}']").click
    assert(has_no_xpath?("//tbody/tr/td/a[@data-method='delete' and @href='/admin/weather_by_zips/#{URI::encode(@weather_by_zip.id.to_s)}']"))
  end

  test "should be able to edit instance of weather_by_zip" do
    login_to_admin
    edit_instance_uri = "/admin/weather_by_zips/#{@weather_by_zip.id}"
    visit(edit_instance_uri)
    click_link('Edit')

    old_value = @weather_by_zip.get_city_weather_by_zip
    new_value = "Whatchamacallit prefabs"

    fill_in "weather_by_zip_get_city_weather_by_zip", with: new_value
    click_button('Submit')



    visit(edit_instance_uri)
    click_link('Edit')

    updated_value = find_field("weather_by_zip_get_city_weather_by_zip").value

    assert_not_equal(updated_value, old_value)

  end
end
