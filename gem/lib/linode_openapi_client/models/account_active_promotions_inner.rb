=begin
#Linode API

#[Read the API documentation](https://techdocs.akamai.com/linode-api/reference/api).

The version of the OpenAPI document: 4.177.1
Contact: support@linode.com
Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'date'
require 'time'

module LinodeOpenapiClient
  # __Read-only__ Promotions generally offer a set amount of credit that can be used toward your Linode services, and the promotion expires after a specified date. As well, a monthly cap on the promotional offer is set.  Simply put, a promotion offers a certain amount of credit  month, until either the expiration date is passed, or until the total promotional credit is used, whichever comes first.
  class AccountActivePromotionsInner
    # Short details of this promotion.
    attr_accessor :summary

    # When this promotion's credits expire.
    attr_accessor :expire_dt

    # The service to which this promotion applies.
    attr_accessor :service_type

    # The amount of credit left for this month for this promotion.
    attr_accessor :this_month_credit_remaining

    # A detailed description of this promotion.
    attr_accessor :description

    # The location of an image for this promotion.
    attr_accessor :image_url

    # The amount available to spend per month.
    attr_accessor :credit_monthly_cap

    # The total amount of credit left for this promotion.
    attr_accessor :credit_remaining

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'summary' => :'summary',
        :'expire_dt' => :'expire_dt',
        :'service_type' => :'service_type',
        :'this_month_credit_remaining' => :'this_month_credit_remaining',
        :'description' => :'description',
        :'image_url' => :'image_url',
        :'credit_monthly_cap' => :'credit_monthly_cap',
        :'credit_remaining' => :'credit_remaining'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'summary' => :'String',
        :'expire_dt' => :'String',
        :'service_type' => :'String',
        :'this_month_credit_remaining' => :'String',
        :'description' => :'String',
        :'image_url' => :'String',
        :'credit_monthly_cap' => :'String',
        :'credit_remaining' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `LinodeOpenapiClient::AccountActivePromotionsInner` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LinodeOpenapiClient::AccountActivePromotionsInner`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'summary')
        self.summary = attributes[:'summary']
      end

      if attributes.key?(:'expire_dt')
        self.expire_dt = attributes[:'expire_dt']
      end

      if attributes.key?(:'service_type')
        self.service_type = attributes[:'service_type']
      end

      if attributes.key?(:'this_month_credit_remaining')
        self.this_month_credit_remaining = attributes[:'this_month_credit_remaining']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'image_url')
        self.image_url = attributes[:'image_url']
      end

      if attributes.key?(:'credit_monthly_cap')
        self.credit_monthly_cap = attributes[:'credit_monthly_cap']
      end

      if attributes.key?(:'credit_remaining')
        self.credit_remaining = attributes[:'credit_remaining']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      service_type_validator = EnumAttributeValidator.new('String', ["all", "backup", "blockstorage", "db_mysql", "ip_v4", "linode", "linode_disk", "linode_memory", "loadbalancer", "longview", "managed", "nodebalancer", "objectstorage", "placement_group", "transfer_tx"])
      return false unless service_type_validator.valid?(@service_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] service_type Object to be assigned
    def service_type=(service_type)
      validator = EnumAttributeValidator.new('String', ["all", "backup", "blockstorage", "db_mysql", "ip_v4", "linode", "linode_disk", "linode_memory", "loadbalancer", "longview", "managed", "nodebalancer", "objectstorage", "placement_group", "transfer_tx"])
      unless validator.valid?(service_type)
        fail ArgumentError, "invalid value for \"service_type\", must be one of #{validator.allowable_values}."
      end
      @service_type = service_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          summary == o.summary &&
          expire_dt == o.expire_dt &&
          service_type == o.service_type &&
          this_month_credit_remaining == o.this_month_credit_remaining &&
          description == o.description &&
          image_url == o.image_url &&
          credit_monthly_cap == o.credit_monthly_cap &&
          credit_remaining == o.credit_remaining
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [summary, expire_dt, service_type, this_month_credit_remaining, description, image_url, credit_monthly_cap, credit_remaining].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
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
        # models (e.g. Pet) or oneOf
        klass = LinodeOpenapiClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
    end

  end

end
