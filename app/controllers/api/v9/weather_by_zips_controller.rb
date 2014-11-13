class Api::V9::WeatherByZipsController < Api::ApiController
  resource_description do
    name 'V9::WeatherByZips'
    short 'V9::WeatherByZips'
    path '/v1/weather_by_zips.json'
    version '9'
    formats ['json']
    param :id, Integer, :desc => "V9::WeatherByZip ID", :required => false
    param :weather_by_zip, Hash, :desc => "V9::WeatherByZip parameters for all methods" do

      param :id, Integer, :required => false,
      :desc => "id"

      param :weather_return, String, :required => false,
      :desc => "weather_return"

      param :zip_code, String, :required => false,
      :desc => "zip_code"

    end
    description <<-DOC
    V9::WeatherByZips
    DOC
  end
  respond_to :json

  protect_from_forgery :except => [:create, :update, :destroy]

  # GET /weather_by_zips.json
  api :GET, "/v9/weather_by_zips.json", "Show all weather_by_zips based on a query scope"
  def index
    scope = params[:scope] || 'all'
    reject_as_unauthorized and return if requires_authentication? and !authenticated?
    reject_as_forbidden and return unless authorized_for_scope?(scope)
    @weather_by_zips = scope_named(scope)
    respond_with @weather_by_zips
  end

  # GET /weather_by_zips/1.json
  api :GET, "/v9/weather_by_zips/:id.json", "Show weather_by_zip"
  def show
    reject_as_unauthorized and return if requires_authentication? and !authenticated?
    reject_as_forbidden and return unless can_read?

    @weather_by_zip = scope_for_read_finder.get((params['id'] || params[:id]).to_i)

    respond_with @weather_by_zip
  end

  # GET /weather_by_zips/new.json
  api :GET, "/v9/weather_by_zips/new.json", "Instantiate a new weather_by_zip"
  def new
    @weather_by_zip = V9::WeatherByZip.new
    respond_with @weather_by_zip
  end

  # POST /weather_by_zips.json
  api :POST, "/v9/weather_by_zips.json", "Create a new weather_by_zip"
  def create
    reject_as_unauthorized and return if requires_authentication? and !authenticated?
    reject_as_forbidden and return unless can_create?
    @weather_by_zip = scope_for_create_finder.new(params[:weather_by_zip], as: :"#{current_user_role} on create")
    @weather_by_zip.save
    respond_with @weather_by_zip
  end

  # PUT /weather_by_zips/1.json
  api :PUT, "/v9/weather_by_zips/:id.json", "Update an existing weather_by_zip"
  def update
    reject_as_unauthorized and return if requires_authentication? and !authenticated?
    reject_as_forbidden and return unless can_update?

    @weather_by_zip = scope_for_update_finder.get((params['id'] || params[:id]).to_i)
    @weather_by_zip.update(params[:weather_by_zip], as: :"#{current_user_role} on update")

    respond_with @weather_by_zip
  end

  # DELETE /weather_by_zips/1.json
  api :DELETE, "/v9/weather_by_zips/:id.json", "Delete an existing weather_by_zip"
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
    scope = 'all' unless ::V9::WeatherByZip.respond_to?(name)
    if name == 'all'

      scope = ::V9::WeatherByZip.all
      scope = scope.all(offset: params[:offset].to_i) if params[:offset]
      scope = scope.all(limit: params[:limit].to_i) if params[:limit]

    elsif name == 'count'
      scope = ::V9::WeatherByZip.count
    else
      query_params = params[:query].is_a?(String) ? ( JSON.parse(params[:query]) rescue nil ) : params[:query]
      scope = ::V9::WeatherByZip.send(name, (query_params || {}), {}, params[:offset], params[:limit])
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
    instance.attributes.select{|attribute| [:'id', :'weather_return', :'zip_code'].include?(attribute) }.each do |attribute, value|
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

    ::V9::WeatherByZip

  end

  def can_create?

    true

  end

  def scope_for_create_finder

    ::V9::WeatherByZip

  end

  def can_update?

    true

  end

  def scope_for_update_finder

    ::V9::WeatherByZip

  end

  def can_delete?

    true

  end

  def scope_for_delete_finder

    ::V9::WeatherByZip

  end


  def authorized_for_scope?(scope_name)

    true

  end

  def authorized_to_read_field?(field_name)

    true

  end

  include Api::V9::Custom::WeatherByZipsController
end
