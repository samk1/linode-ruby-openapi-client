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
  class PutLkeNodePool200ResponseTaintsInner
    # The Kubernetes taint value.
    attr_accessor :value

    # The Kubernetes taint effect. For `NoSchedule`, `PreferNoSchedule` and `NoExecute` descriptions, see [Kubernetes Taints and Tolerations](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/).
    attr_accessor :effect

    # The Kubernetes taint key.
    attr_accessor :key

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
        :'value' => :'value',
        :'effect' => :'effect',
        :'key' => :'key'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'value' => :'String',
        :'effect' => :'String',
        :'key' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `LinodeOpenapiClient::PutLkeNodePool200ResponseTaintsInner` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LinodeOpenapiClient::PutLkeNodePool200ResponseTaintsInner`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'value')
        self.value = attributes[:'value']
      end

      if attributes.key?(:'effect')
        self.effect = attributes[:'effect']
      end

      if attributes.key?(:'key')
        self.key = attributes[:'key']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@value.nil? && @value.to_s.length > 63
        invalid_properties.push('invalid value for "value", the character length must be smaller than or equal to 63.')
      end

      if !@value.nil? && @value.to_s.length < 0
        invalid_properties.push('invalid value for "value", the character length must be great than or equal to 0.')
      end

      pattern = Regexp.new(/^(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?/)
      if !@value.nil? && @value !~ pattern
        invalid_properties.push("invalid value for \"value\", must conform to the pattern #{pattern}.")
      end

      if !@key.nil? && @key.to_s.length > 63
        invalid_properties.push('invalid value for "key", the character length must be smaller than or equal to 63.')
      end

      if !@key.nil? && @key.to_s.length < 1
        invalid_properties.push('invalid value for "key", the character length must be great than or equal to 1.')
      end

      pattern = Regexp.new(/^([A-Za-z0-9][-A-Za-z0-9_.]*)?(\/)?([A-Za-z0-9][-A-Za-z0-9_.]{1,63})?$/)
      if !@key.nil? && @key !~ pattern
        invalid_properties.push("invalid value for \"key\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@value.nil? && @value.to_s.length > 63
      return false if !@value.nil? && @value.to_s.length < 0
      return false if !@value.nil? && @value !~ Regexp.new(/^(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?/)
      effect_validator = EnumAttributeValidator.new('String', ["NoSchedule", "PreferNoSchedule", "NoExecute"])
      return false unless effect_validator.valid?(@effect)
      return false if !@key.nil? && @key.to_s.length > 63
      return false if !@key.nil? && @key.to_s.length < 1
      return false if !@key.nil? && @key !~ Regexp.new(/^([A-Za-z0-9][-A-Za-z0-9_.]*)?(\/)?([A-Za-z0-9][-A-Za-z0-9_.]{1,63})?$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] value Value to be assigned
    def value=(value)
      if value.nil?
        fail ArgumentError, 'value cannot be nil'
      end

      if value.to_s.length > 63
        fail ArgumentError, 'invalid value for "value", the character length must be smaller than or equal to 63.'
      end

      if value.to_s.length < 0
        fail ArgumentError, 'invalid value for "value", the character length must be great than or equal to 0.'
      end

      pattern = Regexp.new(/^(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?/)
      if value !~ pattern
        fail ArgumentError, "invalid value for \"value\", must conform to the pattern #{pattern}."
      end

      @value = value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] effect Object to be assigned
    def effect=(effect)
      validator = EnumAttributeValidator.new('String', ["NoSchedule", "PreferNoSchedule", "NoExecute"])
      unless validator.valid?(effect)
        fail ArgumentError, "invalid value for \"effect\", must be one of #{validator.allowable_values}."
      end
      @effect = effect
    end

    # Custom attribute writer method with validation
    # @param [Object] key Value to be assigned
    def key=(key)
      if key.nil?
        fail ArgumentError, 'key cannot be nil'
      end

      if key.to_s.length > 63
        fail ArgumentError, 'invalid value for "key", the character length must be smaller than or equal to 63.'
      end

      if key.to_s.length < 1
        fail ArgumentError, 'invalid value for "key", the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^([A-Za-z0-9][-A-Za-z0-9_.]*)?(\/)?([A-Za-z0-9][-A-Za-z0-9_.]{1,63})?$/)
      if key !~ pattern
        fail ArgumentError, "invalid value for \"key\", must conform to the pattern #{pattern}."
      end

      @key = key
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          value == o.value &&
          effect == o.effect &&
          key == o.key
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [value, effect, key].hash
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
