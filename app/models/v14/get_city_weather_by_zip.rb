class V14::GetCityWeatherByZip
  include DataMapper::Resource
  include ActiveModel::MassAssignmentSecurity
  include ActiveModel::Serialization

  # Include modules for extensions.



  storage_names[:'1743'] = '.weather/weather.wsdl.xml'
  def self.default_repository_name
    :'1743'
  end



  # Property definitions

  property :id, Serial, field: "id", key: true, required: false, lazy: false

  property :get_city_weather_by_zip_result, Text, field: "GetCityWeatherByZIPResult", key: false, required: false, lazy: false

  property :zip_code, Text, field: "ZIP", key: false, required: false, lazy: false




  # Relationship definitions




  # Simple validations


  # Default scopes for System Admin
  attr_accessible :get_city_weather_by_zip_result, :zip_code, as: :"System Admin"
  # Default accessible scopes when nothing is defined
  attr_accessible :get_city_weather_by_zip_result, :zip_code, as: :"Unauthenticated Default on create"
  attr_accessible :get_city_weather_by_zip_result, :zip_code, as: :"Unauthenticated Default on update"
  attr_accessible :get_city_weather_by_zip_result, :zip_code, as: :"Authenticated Without Role Default on create"
  attr_accessible :get_city_weather_by_zip_result, :zip_code, as: :"Authenticated Without Role Default on update"


  def self.create(attrs = {}, as: :default)
    resource = new
    resource.assign_attributes(V14::GetCityWeatherByZip.cast_attributes(attrs), as: as )
    resource.save
    resource
  end

  def initialize(attrs = {}, options = {})
    super({})
    self.assign_attributes(V14::GetCityWeatherByZip.cast_attributes(attrs), as: options[:as] )
  end

  def update(attrs = {}, options = {})
    self.assign_attributes(V14::GetCityWeatherByZip.cast_attributes(attrs), as: options[:as] )
    self.save
  end

  def serializable_hash(options={})
    super(options.merge(methods: []))
  end

  def as_json(options={})
    super(options.merge(methods: []))
  end

  def self.cast_attributes(attributes = {})
    new_attributes = {}
    attributes.each_pair do |key,value|
      if key.is_a?(::DataMapper::Associations::Relationship)
        new_attributes[key] = value
      elsif V14::GetCityWeatherByZip.properties[key.to_sym] && value
        case V14::GetCityWeatherByZip.properties[key.to_sym].primitive.name
        when 'Integer'
          new_attributes[key.to_sym] = value.blank? ? nil : value.to_i
        when 'Float'
          new_attributes[key.to_sym] = value.blank? ? nil : value.to_f
        when 'String'
          new_attributes[key.to_sym] = value.nil? ? nil : value.to_s
        when 'Time'
          new_attributes[key.to_sym] = value.blank? ? nil : value.to_time
        when 'Date'
          new_attributes[key.to_sym] = value.blank? ? nil : value.to_date
        when 'Array'
          new_attributes[key.to_sym] = value.blank? ? nil : value.to_a
        when 'TrueClass'
          new_attributes[key.to_sym] = ( value.blank? ? nil : value )
        when 'BSON::ObjectId'
          new_attributes[key.to_sym] = value.blank? ? nil : BSON::ObjectId.from_string(value.to_s)
        else
          new_attributes[key.to_sym] = (value.is_a?(V14::GetCityWeatherByZip.properties[key.to_sym].primitive) ? value : nil )
        end
      else
        new_attributes[key.to_sym] = value
      end
    end
    new_attributes
  end

  # Scopes for data access
  class << self
    def exact_match(attributes={}, user_attributes={}, offset = nil, limit = nil)
      scope = self.all

      attributes.each_pair do |name, value|
        scope = scope.all(name => value)
      end

      scope = scope.all(:order => [:id.asc])

      scope = scope.all(offset: offset.to_i) if offset
      scope = scope.all(limit: limit.to_i) if limit

      scope
    end

    def count(attributes={}, user_attributes={}, offset = nil, limit = nil)
      scope = self.all

      attributes.each_pair do |name, value|
        scope = scope.all(name => value)
      end

      scope = scope.count

      scope
    end

    def count_exact_match(attributes={}, user_attributes={}, offset = nil, limit = nil)
      scope = self.all

      attributes.each_pair do |name, value|
        scope = scope.all(name => value)
      end

      scope = scope.count

      scope
    end
  end




  # Add lifecycle hook methods to model lifecycle
  # model type: datamapper

  # Define lifecycle hook methods





  def assign_attributes(values, options = {})
    sanitize_for_mass_assignment(values, options[:as]).each do |k, v|
      send("#{k}=", v)
    end
  end



  def self.backing_storage
    :datamapper
  end

  include V14::Custom::GetCityWeatherByZip
end
