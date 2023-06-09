=begin
#Gong API



OpenAPI spec version: V2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.37
=end

require 'date'

module GongAPI
  class LogEntry
    # The time in the ISO-8601 format (e.g., '2018-02-18T02:30:00-07:00' or '2018-02-18T08:00:00Z', where Z stands for UTC); when log was created.
    attr_accessor :event_time

    # Gong's unique numeric identifier for the impersonating user's company id (up to 20 digits), if available.
    attr_accessor :impersonator_company_id

    # The email address of the impersonating user, if available.
    attr_accessor :impersonator_email_address

    # The full name of the impersonating user, if available.
    attr_accessor :impersonator_full_name

    # Gong's unique numeric identifier for the impersonating user (up to 20 digits), if available.
    attr_accessor :impersonator_user_id

    # The list of log fields and associated values. This element will be populated dynamically by the log record, depending on the type of log.
    attr_accessor :log_record

    # The email address of the user, if available.
    attr_accessor :user_email_address

    # The full name of the user, if available.
    attr_accessor :user_full_name

    # Gong's unique numeric identifier for the user (up to 20 digits), if available.
    attr_accessor :user_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'event_time' => :'eventTime',
        :'impersonator_company_id' => :'impersonatorCompanyId',
        :'impersonator_email_address' => :'impersonatorEmailAddress',
        :'impersonator_full_name' => :'impersonatorFullName',
        :'impersonator_user_id' => :'impersonatorUserId',
        :'log_record' => :'logRecord',
        :'user_email_address' => :'userEmailAddress',
        :'user_full_name' => :'userFullName',
        :'user_id' => :'userId'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'event_time' => :'Object',
        :'impersonator_company_id' => :'Object',
        :'impersonator_email_address' => :'Object',
        :'impersonator_full_name' => :'Object',
        :'impersonator_user_id' => :'Object',
        :'log_record' => :'Object',
        :'user_email_address' => :'Object',
        :'user_full_name' => :'Object',
        :'user_id' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `GongAPI::LogEntry` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `GongAPI::LogEntry`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'event_time')
        self.event_time = attributes[:'event_time']
      end

      if attributes.key?(:'impersonator_company_id')
        self.impersonator_company_id = attributes[:'impersonator_company_id']
      end

      if attributes.key?(:'impersonator_email_address')
        self.impersonator_email_address = attributes[:'impersonator_email_address']
      end

      if attributes.key?(:'impersonator_full_name')
        self.impersonator_full_name = attributes[:'impersonator_full_name']
      end

      if attributes.key?(:'impersonator_user_id')
        self.impersonator_user_id = attributes[:'impersonator_user_id']
      end

      if attributes.key?(:'log_record')
        self.log_record = attributes[:'log_record']
      end

      if attributes.key?(:'user_email_address')
        self.user_email_address = attributes[:'user_email_address']
      end

      if attributes.key?(:'user_full_name')
        self.user_full_name = attributes[:'user_full_name']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          event_time == o.event_time &&
          impersonator_company_id == o.impersonator_company_id &&
          impersonator_email_address == o.impersonator_email_address &&
          impersonator_full_name == o.impersonator_full_name &&
          impersonator_user_id == o.impersonator_user_id &&
          log_record == o.log_record &&
          user_email_address == o.user_email_address &&
          user_full_name == o.user_full_name &&
          user_id == o.user_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [event_time, impersonator_company_id, impersonator_email_address, impersonator_full_name, impersonator_user_id, log_record, user_email_address, user_full_name, user_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        GongAPI.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end  end
end
