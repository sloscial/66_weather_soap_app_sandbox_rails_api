class Api::V3::WeatherByZipsController < Api::ApiController
  resource_description do
    name 'V3::WeatherByZips'
    short 'V3::WeatherByZips'
    path '/v1/weather_by_zips.json'
    version '3'
    formats ['json']
    param :id, Integer, :desc => "V3::WeatherByZip ID", :required => false
    param :weather_by_zip, Hash, :desc => "V3::WeatherByZip parameters for all methods" do

      param :id, Integer, :required => false,
      :desc => "id"

      param :get_city_weather_by_zip, String, :required => false,
      :desc => "get_city_weather_by_zip"

      param :get_city_weather_by_zip_response, String, :required => false,
      :desc => "get_city_weather_by_zip_response"

    end
    description <<-DOC
    V3::WeatherByZips
    DOC
  end
  respond_to :json

  protect_from_forgery :except => [:create, :update, :destroy]

  # GET /weather_by_zips.json
  api :GET, "/v3/weather_by_zips.json", "Show all weather_by_zips based on a query scope"
  def index
    scope = params[:scope] || 'all'
    reject_as_unauthorized and return if requires_authentication? and !authenticated?
    reject_as_forbidden and return unless authorized_for_scope?(scope)
    @weather_by_zips = scope_named(scope)
    respond_with @weather_by_zips
  end

  # GET /weather_by_zips/1.json
  api :GET, "/v3/weather_by_zips/:id.json", "Show weather_by_zip"
  def show
    reject_as_unauthorized and return if requires_authentication? and !authenticated?
    reject_as_forbidden and return unless can_read?

    @weather_by_zip = scope_for_read_finder.get((params['id'] || params[:id]).to_i)

    respond_with @weather_by_zip
  end

  # GET /weather_by_zips/new.json
  api :GET, "/v3/weather_by_zips/new.json", "Instantiate a new weather_by_zip"
  def new
    @weather_by_zip = V3::WeatherByZip.new
    respond_with @weather_by_zip
  end

  # POST /weather_by_zips.json
  api :POST, "/v3/weather_by_zips.json", "Create a new weather_by_zip"
  def create
    reject_as_unauthorized and return if requires_authentication? and !authenticated?
    reject_as_forbidden and return unless can_create?
    @weather_by_zip = scope_for_create_finder.new(params[:weather_by_zip], as: :"#{current_user_role} on create")
    @weather_by_zip.save
    respond_with @weather_by_zip
  end

  # PUT /weather_by_zips/1.json
  api :PUT, "/v3/weather_by_zips/:id.json", "Update an existing weather_by_zip"
  def update
    reject_as_unauthorized and return if requires_authentication? and !authenticated?
    reject_as_forbidden and return unless can_update?

    @weather_by_zip = scope_for_update_finder.get((params['id'] || params[:id]).to_i)
    @weather_by_zip.update(params[:weather_by_zip], as: :"#{current_user_role} on update")

    respond_with @weather_by_zip
  end

  # DELETE /weather_by_zips/1.json
  api :DELETE, "/v3/weather_by_zips/:id.json", "Delete an existing weather_by_zip"
  def destroy
    reject_as_unauthorized and return if requires_authentication? and !authenticated?
    reject_as_forbidden and return unless can_delete?

    @weather_by_zip = scope_for_delete_finder.get((params['id'] || params[:id]).to_i)

    @weather_by_zip.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end

  protected
  def scope_named(name)
    scope = 'all' unless ::V3::WeatherByZip.respond_to?(name)
    if name == 'all'

      scope = ::V3::WeatherByZip.all
      scope = scope.all(offset: params[:offset].to_i) if params[:offset]
      scope = scope.all(limit: params[:limit].to_i) if params[:limit]

    elsif name == 'count'
      scope = ::V3::WeatherByZip.count
    else
      query_params = params[:query].is_a?(String) ? ( JSON.parse(params[:query]) rescue nil ) : params[:query]
      scope = ::V3::WeatherByZip.send(name, (query_params || {}), {}, params[:offset], params[:limit])
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
    instance.attributes.select{|attribute| [:'id', :'get_city_weather_by_zip', :'get_city_weather_by_zip_response'].include?(attribute) }.each do |attribute, value|
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

    ::V3::WeatherByZip

  end

  def can_create?

    true

  end

  def scope_for_create_finder

    ::V3::WeatherByZip

  end

  def can_update?

    true

  end

  def scope_for_update_finder

    ::V3::WeatherByZip

  end

  def can_delete?

    true

  end

  def scope_for_delete_finder

    ::V3::WeatherByZip

  end


  def authorized_for_scope?(scope_name)

    true

  end

  def authorized_to_read_field?(field_name)

    true

  end

  include Api::V3::Custom::WeatherByZipsController
end
