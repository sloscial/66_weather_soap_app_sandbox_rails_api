require 'test_helper'

class V12::GetCityWeatherByZipAdminCRUDTest < ActionDispatch::IntegrationTest


  def cleanup

    V12::GetCityWeatherByZip.destroy
  end

  setup do
    cleanup

    @get_city_weather_by_zip_relationship_hash = {}
    @get_city_weather_by_zip = V12::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Vortex polymaths", :zip_code=>"Sacks Margret"}, as: :"System Admin")

    @get_city_weather_by_zip.save

    @get_city_weather_by_zip = V12::GetCityWeatherByZip.new({:get_city_weather_by_zip_result=>"Fifteenths terabyte", :zip_code=>"Haberdasheries receptions"}, as: :"System Admin")

    @get_city_weather_by_zip.save


  end

  teardown do
    cleanup
  end



  test "should be able to create instance of get_city_weather_by_zip" do
    login_to_admin
    click_link('Get City Weather By Zips')
    click_link('New')

    assert page.has_button?('Submit')

  end

  test "should be able to delete instance of get_city_weather_by_zip" do
    login_to_admin
    visit('/admin/get_city_weather_by_zips')
    assert(has_xpath?("//tbody/tr/td/a[@data-method='delete' and @href='/admin/get_city_weather_by_zips/#{URI::encode(@get_city_weather_by_zip.id.to_s)}']"))
    first(:xpath, "//tbody/tr/td/a[@data-method='delete' and @href='/admin/get_city_weather_by_zips/#{URI::encode(@get_city_weather_by_zip.id.to_s)}']").click
    assert(has_no_xpath?("//tbody/tr/td/a[@data-method='delete' and @href='/admin/get_city_weather_by_zips/#{URI::encode(@get_city_weather_by_zip.id.to_s)}']"))
  end

  test "should be able to edit instance of get_city_weather_by_zip" do
    login_to_admin
    edit_instance_uri = "/admin/get_city_weather_by_zips/#{@get_city_weather_by_zip.id}"
    visit(edit_instance_uri)
    click_link('Edit')

    old_value = @get_city_weather_by_zip.get_city_weather_by_zip_result
    new_value = "Vetting snorkelled"

    fill_in "get_city_weather_by_zip_get_city_weather_by_zip_result", with: new_value
    click_button('Submit')



    visit(edit_instance_uri)
    click_link('Edit')

    updated_value = find_field("get_city_weather_by_zip_get_city_weather_by_zip_result").value

    assert_not_equal(updated_value, old_value)

  end
end
