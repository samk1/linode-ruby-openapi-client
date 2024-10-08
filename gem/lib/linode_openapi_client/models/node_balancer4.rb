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
  # Linode's load balancing solution.  Can handle multiple ports, SSL termination, and any number of backends.  NodeBalancer ports are configured with NodeBalancer Configs, and each config is given one or more NodeBalancer Node that accepts traffic.  The traffic should be routed to the  NodeBalancer's ip address, the NodeBalancer will handle routing individual requests to backends.
  class NodeBalancer4
    # __Read-only__ When this NodeBalancer was created.
    attr_accessor :created

    # __Filterable__, __Read-only__ This NodeBalancer's public IPv4 address.
    attr_accessor :ipv4

    # __Filterable__, __Read-only__ The Region where this NodeBalancer is located. NodeBalancers only support backends in the same Region.
    attr_accessor :region

    # __Read-only__ This NodeBalancer's public IPv6 address.
    attr_accessor :ipv6

    # __Read-only__ This NodeBalancer's unique ID.
    attr_accessor :id

    attr_accessor :transfer

    # __Filterable__ An array of Tags applied to this object.  Tags are for organizational purposes only.
    attr_accessor :tags

    # Throttle connections per second.  Set to 0 (zero) to disable throttling.
    attr_accessor :client_conn_throttle

    # __Read-only__ When this NodeBalancer was last updated.
    attr_accessor :updated

    # __Filterable__ This NodeBalancer's label. These must be unique on your Account.
    attr_accessor :label

    # __Read-only__ This NodeBalancer's hostname, beginning with its IP address and ending with _.ip.linodeusercontent.com_.
    attr_accessor :hostname

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'created' => :'created',
        :'ipv4' => :'ipv4',
        :'region' => :'region',
        :'ipv6' => :'ipv6',
        :'id' => :'id',
        :'transfer' => :'transfer',
        :'tags' => :'tags',
        :'client_conn_throttle' => :'client_conn_throttle',
        :'updated' => :'updated',
        :'label' => :'label',
        :'hostname' => :'hostname'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'created' => :'Time',
        :'ipv4' => :'String',
        :'region' => :'String',
        :'ipv6' => :'String',
        :'id' => :'Integer',
        :'transfer' => :'NodeBalancer4Transfer',
        :'tags' => :'Array<String>',
        :'client_conn_throttle' => :'Integer',
        :'updated' => :'Time',
        :'label' => :'String',
        :'hostname' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'ipv6',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `LinodeOpenapiClient::NodeBalancer4` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LinodeOpenapiClient::NodeBalancer4`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'ipv4')
        self.ipv4 = attributes[:'ipv4']
      end

      if attributes.key?(:'region')
        self.region = attributes[:'region']
      end

      if attributes.key?(:'ipv6')
        self.ipv6 = attributes[:'ipv6']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'transfer')
        self.transfer = attributes[:'transfer']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'client_conn_throttle')
        self.client_conn_throttle = attributes[:'client_conn_throttle']
      end

      if attributes.key?(:'updated')
        self.updated = attributes[:'updated']
      end

      if attributes.key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.key?(:'hostname')
        self.hostname = attributes[:'hostname']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@client_conn_throttle.nil? && @client_conn_throttle > 20
        invalid_properties.push('invalid value for "client_conn_throttle", must be smaller than or equal to 20.')
      end

      if !@client_conn_throttle.nil? && @client_conn_throttle < 0
        invalid_properties.push('invalid value for "client_conn_throttle", must be greater than or equal to 0.')
      end

      if !@label.nil? && @label.to_s.length > 32
        invalid_properties.push('invalid value for "label", the character length must be smaller than or equal to 32.')
      end

      if !@label.nil? && @label.to_s.length < 3
        invalid_properties.push('invalid value for "label", the character length must be great than or equal to 3.')
      end

      pattern = Regexp.new(/[a-zA-Z0-9-_]{3,32}/)
      if !@label.nil? && @label !~ pattern
        invalid_properties.push("invalid value for \"label\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@client_conn_throttle.nil? && @client_conn_throttle > 20
      return false if !@client_conn_throttle.nil? && @client_conn_throttle < 0
      return false if !@label.nil? && @label.to_s.length > 32
      return false if !@label.nil? && @label.to_s.length < 3
      return false if !@label.nil? && @label !~ Regexp.new(/[a-zA-Z0-9-_]{3,32}/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] client_conn_throttle Value to be assigned
    def client_conn_throttle=(client_conn_throttle)
      if client_conn_throttle.nil?
        fail ArgumentError, 'client_conn_throttle cannot be nil'
      end

      if client_conn_throttle > 20
        fail ArgumentError, 'invalid value for "client_conn_throttle", must be smaller than or equal to 20.'
      end

      if client_conn_throttle < 0
        fail ArgumentError, 'invalid value for "client_conn_throttle", must be greater than or equal to 0.'
      end

      @client_conn_throttle = client_conn_throttle
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

      pattern = Regexp.new(/[a-zA-Z0-9-_]{3,32}/)
      if label !~ pattern
        fail ArgumentError, "invalid value for \"label\", must conform to the pattern #{pattern}."
      end

      @label = label
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created == o.created &&
          ipv4 == o.ipv4 &&
          region == o.region &&
          ipv6 == o.ipv6 &&
          id == o.id &&
          transfer == o.transfer &&
          tags == o.tags &&
          client_conn_throttle == o.client_conn_throttle &&
          updated == o.updated &&
          label == o.label &&
          hostname == o.hostname
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [created, ipv4, region, ipv6, id, transfer, tags, client_conn_throttle, updated, label, hostname].hash
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
