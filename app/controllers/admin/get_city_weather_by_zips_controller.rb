class Admin::GetCityWeatherByZipsController < AdminController



  # GET /get_city_weather_by_zips
  # GET /get_city_weather_by_zips.json
  def index




    @get_city_weather_by_zips = V14::GetCityWeatherByZip.all



    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @get_city_weather_by_zips }
    end
  end

  # GET /get_city_weather_by_zips/1
  # GET /get_city_weather_by_zips/1.json
  def show

    @get_city_weather_by_zip = V14::GetCityWeatherByZip.get((params['id'] || params[:id]).to_i)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @get_city_weather_by_zip }
    end
  end

  # GET /get_city_weather_by_zips/new
  # GET /get_city_weather_by_zips/new.json
  def new
    @get_city_weather_by_zip = V14::GetCityWeatherByZip.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @get_city_weather_by_zip }
    end
  end

  # GET /get_city_weather_by_zips/1/edit
  def edit

    @get_city_weather_by_zip = V14::GetCityWeatherByZip.get((params['id'] || params[:id]).to_i)

  end

  # POST /get_city_weather_by_zips
  # POST /get_city_weather_by_zips.json
  def create
    @get_city_weather_by_zip = V14::GetCityWeatherByZip.new(params[:get_city_weather_by_zip], as: :"System Admin")
    respond_to do |format|
      if @get_city_weather_by_zip.save
        format.html { redirect_to admin_get_city_weather_by_zip_url(@get_city_weather_by_zip), notice: 'get_city_weather_by_zip was successfully created.' }
        format.json { render json: @get_city_weather_by_zip, status: :created, location: admin_get_city_weather_by_zip_url(@get_city_weather_by_zip) }
      else
        format.html { render action: "new" }
        format.json { render json: @get_city_weather_by_zip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /get_city_weather_by_zips/1
  # PUT /get_city_weather_by_zips/1.json
  def update

    @get_city_weather_by_zip = V14::GetCityWeatherByZip.get((params['id'] || params[:id]).to_i)
    updated = @get_city_weather_by_zip.update(params[:get_city_weather_by_zip], as: :"System Admin")

    respond_to do |format|
      if updated
        format.html { redirect_to admin_get_city_weather_by_zip_url(@get_city_weather_by_zip), notice: 'get_city_weather_by_zip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @get_city_weather_by_zip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /get_city_weather_by_zips/1
  # DELETE /get_city_weather_by_zips/1.json
  def destroy

    @get_city_weather_by_zip = V14::GetCityWeatherByZip.get((params['id'] || params[:id]).to_i)

    @get_city_weather_by_zip.destroy

    respond_to do |format|

      format.html { redirect_to admin_get_city_weather_by_zips_url }

      format.json { head :no_content }
    end
  end
end
