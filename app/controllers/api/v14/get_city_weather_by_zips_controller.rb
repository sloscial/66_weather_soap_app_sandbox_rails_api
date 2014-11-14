class Api::V14::GetCityWeatherByZipsController < Api::ApiController
  resource_description do
    name 'V14::GetCityWeatherByZips'
    short 'V14::GetCityWeatherByZips'
    path '/v1/get_city_weather_by_zips.json'
    version '14'
    formats ['json']
    param :id, Integer, :desc => "V14::GetCityWeatherByZip ID", :required => false
    param :get_city_weather_by_zip, Hash, :desc => "V14::GetCityWeatherByZip parameters for all methods" do

      param :id, Integer, :required => false,
      :desc => "id"

      param :get_city_weather_by_zip_result, String, :required => false,
      :desc => "get_city_weather_by_zip_result"

      param :zip_code, String, :required => false,
      :desc => "zip_code"

    end
    description <<-DOC
    V14::GetCityWeatherByZips
    DOC
  end
  respond_to :json

  protect_from_forgery :except => [:create, :update, :destroy]

  # GET /get_city_weather_by_zips.json
  api :GET, "/v14/get_city_weather_by_zips.json", "Show all get_city_weather_by_zips based on a query scope"
  def index
    scope = params[:scope] || 'all'
    reject_as_unauthorized and return if requires_authentication? and !authenticated?
    reject_as_forbidden and return unless authorized_for_scope?(scope)
    @get_city_weather_by_zips = scope_named(scope)
    respond_with @get_city_weather_by_zips
  end

  # GET /get_city_weather_by_zips/1.json
  api :GET, "/v14/get_city_weather_by_zips/:id.json", "Show get_city_weather_by_zip"
  def show
    reject_as_unauthorized and return if requires_authentication? and !authenticated?
    reject_as_forbidden and return unless can_read?

    @get_city_weather_by_zip = scope_for_read_finder.get((params['id'] || params[:id]).to_i)

    respond_with @get_city_weather_by_zip
  end

  # GET /get_city_weather_by_zips/new.json
  api :GET, "/v14/get_city_weather_by_zips/new.json", "Instantiate a new get_city_weather_by_zip"
  def new
    @get_city_weather_by_zip = V14::GetCityWeatherByZip.new
    respond_with @get_city_weather_by_zip
  end

  # POST /get_city_weather_by_zips.json
  api :POST, "/v14/get_city_weather_by_zips.json", "Create a new get_city_weather_by_zip"
  def create
    reject_as_unauthorized and return if requires_authentication? and !authenticated?
    reject_as_forbidden and return unless can_create?
    @get_city_weather_by_zip = scope_for_create_finder.new(params[:get_city_weather_by_zip], as: :"#{current_user_role} on create")
    @get_city_weather_by_zip.save
    respond_with @get_city_weather_by_zip
  end

  # PUT /get_city_weather_by_zips/1.json
  api :PUT, "/v14/get_city_weather_by_zips/:id.json", "Update an existing get_city_weather_by_zip"
  def update
    reject_as_unauthorized and return if requires_authentication? and !authenticated?
    reject_as_forbidden and return unless can_update?

    @get_city_weather_by_zip = scope_for_update_finder.get((params['id'] || params[:id]).to_i)
    @get_city_weather_by_zip.update(params[:get_city_weather_by_zip], as: :"#{current_user_role} on update")

    respond_with @get_city_weather_by_zip
  end

  # DELETE /get_city_weather_by_zips/1.json
  api :DELETE, "/v14/get_city_weather_by_zips/:id.json", "Delete an existing get_city_weather_by_zip"
  def destroy
    reject_as_unauthorized and return if requires_authentication? and !authenticated?
    reject_as_forbidden and return unless can_delete?

    @get_city_weather_by_zip = scope_for_delete_finder.get((params['id'] || params[:id]).to_i)

    @get_city_weather_by_zip.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end

  protected
  def scope_named(name)
    scope = 'all' unless ::V14::GetCityWeatherByZip.respond_to?(name)
    if name == 'all'

      scope = ::V14::GetCityWeatherByZip.all
      scope = scope.all(offset: params[:offset].to_i) if params[:offset]
      scope = scope.all(limit: params[:limit].to_i) if params[:limit]

    elsif name == 'count'
      scope = ::V14::GetCityWeatherByZip.count
    else
      query_params = params[:query].is_a?(String) ? ( JSON.parse(params[:query]) rescue nil ) : params[:query]
      scope = ::V14::GetCityWeatherByZip.send(name, (query_params || {}), {}, params[:offset], params[:limit])
    end
    scope
  end

  # Overriding respond_with to perform field level authorization for reading fields.
  def respond_with(*resources, &block)
    replacement = nil
    resources.each do |resource|
      if resource.respond_to?(:each)
        replacement = []
        resource.each do |instance|
          replacement << scrubbed_instance(instance)
        end
      elsif resource.respond_to?(:attributes)
        replacement = scrubbed_instance(resource)
      else
        replacement = resource
      end
    end

    super(replacement, :location => nil)
  end

  def scrubbed_instance(instance)
    instance.attributes.select{|attribute| [:'id', :'get_city_weather_by_zip_result', :'zip_code'].include?(attribute) }.each do |attribute, value|
      instance.send("#{attribute}=", nil) unless authorized_to_read_field?(attribute)
    end
    instance
  end

  def requires_authentication?
    false
  end

  def authenticated?
    requires_authentication? ? current_user_role != "Unauthenticated Default": true
  end


  def can_read?

    true

  end

  def scope_for_read_finder

    ::V14::GetCityWeatherByZip

  end

  def can_create?

    true

  end

  def scope_for_create_finder

    ::V14::GetCityWeatherByZip

  end

  def can_update?

    true

  end

  def scope_for_update_finder

    ::V14::GetCityWeatherByZip

  end

  def can_delete?

    true

  end

  def scope_for_delete_finder

    ::V14::GetCityWeatherByZip

  end


  def authorized_for_scope?(scope_name)

    true

  end

  def authorized_to_read_field?(field_name)

    true

  end

  include Api::V14::Custom::GetCityWeatherByZipsController
end
