class Admin::WeatherByZipsController < AdminController



  # GET /weather_by_zips
  # GET /weather_by_zips.json
  def index




    @weather_by_zips = V8::WeatherByZip.all



    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @weather_by_zips }
    end
  end

  # GET /weather_by_zips/1
  # GET /weather_by_zips/1.json
  def show

    @weather_by_zip = V8::WeatherByZip.get((params['id'] || params[:id]).to_i)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @weather_by_zip }
    end
  end

  # GET /weather_by_zips/new
  # GET /weather_by_zips/new.json
  def new
    @weather_by_zip = V8::WeatherByZip.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @weather_by_zip }
    end
  end

  # GET /weather_by_zips/1/edit
  def edit

    @weather_by_zip = V8::WeatherByZip.get((params['id'] || params[:id]).to_i)

  end

  # POST /weather_by_zips
  # POST /weather_by_zips.json
  def create
    @weather_by_zip = V8::WeatherByZip.new(params[:weather_by_zip], as: :"System Admin")
    respond_to do |format|
      if @weather_by_zip.save
        format.html { redirect_to admin_weather_by_zip_url(@weather_by_zip), notice: 'weather_by_zip was successfully created.' }
        format.json { render json: @weather_by_zip, status: :created, location: admin_weather_by_zip_url(@weather_by_zip) }
      else
        format.html { render action: "new" }
        format.json { render json: @weather_by_zip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /weather_by_zips/1
  # PUT /weather_by_zips/1.json
  def update

    @weather_by_zip = V8::WeatherByZip.get((params['id'] || params[:id]).to_i)
    updated = @weather_by_zip.update(params[:weather_by_zip], as: :"System Admin")

    respond_to do |format|
      if updated
        format.html { redirect_to admin_weather_by_zip_url(@weather_by_zip), notice: 'weather_by_zip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @weather_by_zip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weather_by_zips/1
  # DELETE /weather_by_zips/1.json
  def destroy

    @weather_by_zip = V8::WeatherByZip.get((params['id'] || params[:id]).to_i)

    @weather_by_zip.destroy

    respond_to do |format|

      format.html { redirect_to admin_weather_by_zips_url }

      format.json { head :no_content }
    end
  end
end
