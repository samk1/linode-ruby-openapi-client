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
  # One of a Firewall's inbound or outbound access rules. The `ports` property can be used to allow traffic on a comma-separated list of different ports.
  class GetFirewall200ResponseRulesOutboundInner
    # Used to describe this rule. For display purposes only.
    attr_accessor :description

    # The type of network traffic affected by this rule.
    attr_accessor :protocol

    # Used to identify this rule. For display purposes only.
    attr_accessor :label

    # Controls whether traffic is accepted or dropped by this rule. Overrides the Firewall's `inbound_policy` if this is an inbound rule, or the `outbound_policy` if this is an outbound rule.
    attr_accessor :action

    # A string representing the port or ports affected by this rule:  - The string may be a single port, a range of ports, or a comma-separated list of single ports and port ranges. A space is permitted following each comma. - A range of ports is inclusive of the start and end values for the range. The end value of the range must be greater than the start value. - Ports must be within 1 and 65535, and may not contain any leading zeroes. For example, port `080` is not allowed. - The ports string can have up to 15 _pieces_, where a single port is treated as one piece, and a port range is treated as two pieces. For example, the string \"22-24, 80, 443\" has four pieces. - If no ports are configured, all ports are affected. - Only allowed for the TCP and UDP protocols. Ports are not allowed for the ICMP and IPENCAP protocols.
    attr_accessor :ports

    attr_accessor :addresses

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
        :'description' => :'description',
        :'protocol' => :'protocol',
        :'label' => :'label',
        :'action' => :'action',
        :'ports' => :'ports',
        :'addresses' => :'addresses'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'description' => :'String',
        :'protocol' => :'String',
        :'label' => :'String',
        :'action' => :'String',
        :'ports' => :'String',
        :'addresses' => :'GetFirewall200ResponseRulesOutboundInnerAddresses'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'ports',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `LinodeOpenapiClient::GetFirewall200ResponseRulesOutboundInner` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LinodeOpenapiClient::GetFirewall200ResponseRulesOutboundInner`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'protocol')
        self.protocol = attributes[:'protocol']
      end

      if attributes.key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.key?(:'action')
        self.action = attributes[:'action']
      end

      if attributes.key?(:'ports')
        self.ports = attributes[:'ports']
      end

      if attributes.key?(:'addresses')
        self.addresses = attributes[:'addresses']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@description.nil? && @description.to_s.length > 100
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 100.')
      end

      if !@description.nil? && @description.to_s.length < 1
        invalid_properties.push('invalid value for "description", the character length must be great than or equal to 1.')
      end

      if !@label.nil? && @label.to_s.length > 32
        invalid_properties.push('invalid value for "label", the character length must be smaller than or equal to 32.')
      end

      if !@label.nil? && @label.to_s.length < 3
        invalid_properties.push('invalid value for "label", the character length must be great than or equal to 3.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@description.nil? && @description.to_s.length > 100
      return false if !@description.nil? && @description.to_s.length < 1
      protocol_validator = EnumAttributeValidator.new('String', ["TCP", "UDP", "ICMP", "IPENCAP"])
      return false unless protocol_validator.valid?(@protocol)
      return false if !@label.nil? && @label.to_s.length > 32
      return false if !@label.nil? && @label.to_s.length < 3
      action_validator = EnumAttributeValidator.new('String', ["ACCEPT", "DROP"])
      return false unless action_validator.valid?(@action)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if description.nil?
        fail ArgumentError, 'description cannot be nil'
      end

      if description.to_s.length > 100
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 100.'
      end

      if description.to_s.length < 1
        fail ArgumentError, 'invalid value for "description", the character length must be great than or equal to 1.'
      end

      @description = description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] protocol Object to be assigned
    def protocol=(protocol)
      validator = EnumAttributeValidator.new('String', ["TCP", "UDP", "ICMP", "IPENCAP"])
      unless validator.valid?(protocol)
        fail ArgumentError, "invalid value for \"protocol\", must be one of #{validator.allowable_values}."
      end
      @protocol = protocol
    end

    # Custom attribute writer method with validation
    # @param [Object] label Value to be assigned
    def label=(label)
      if label.nil?
        fail ArgumentError, 'label cannot be nil'
      end

      if label.to_s.length > 32
        fail ArgumentError, 'invalid value for "label", the character length must be smaller than or equal to 32.'
      end

      if label.to_s.length < 3
        fail ArgumentError, 'invalid value for "label", the character length must be great than or equal to 3.'
      end

      @label = label
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action Object to be assigned
    def action=(action)
      validator = EnumAttributeValidator.new('String', ["ACCEPT", "DROP"])
      unless validator.valid?(action)
        fail ArgumentError, "invalid value for \"action\", must be one of #{validator.allowable_values}."
      end
      @action = action
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          description == o.description &&
          protocol == o.protocol &&
          label == o.label &&
          action == o.action &&
          ports == o.ports &&
          addresses == o.addresses
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [description, protocol, label, action, ports, addresses].hash
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
