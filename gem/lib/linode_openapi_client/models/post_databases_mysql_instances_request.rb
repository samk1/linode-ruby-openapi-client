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
  # Managed MySQL Database request object.
  class PostDatabasesMysqlInstancesRequest
    # __Filterable__ The Linode Instance type used by the Managed Database for its nodes.
    attr_accessor :type

    # __Filterable__ A unique, user-defined string referring to the Managed Database.
    attr_accessor :label

    # A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format.  By default, this is an empty array (`[]`), which blocks all connections (both public and private) to the Managed Database.  If `0.0.0.0/0` is a value in this list, then all IP addresses can access the Managed Database.
    attr_accessor :allow_list

    # Whether the Managed Databases is encrypted.
    attr_accessor :encrypted

    # The number of Linode Instance nodes deployed to the Managed Database.  Choosing 3 nodes creates a high availability cluster consisting of 1 primary node and 2 replica nodes.
    attr_accessor :cluster_size

    # The replication method used for the Managed Database.  Defaults to `none` for a single cluster and `semi_synch` for a high availability cluster.  Must be `none` for a single node cluster.  Must be `asynch` or `semi_synch` for a high availability cluster.
    attr_accessor :replication_type

    # Whether to require SSL credentials to establish a connection to the Managed Database.  Run the [Get managed MySQL database credentials](https://techdocs.akamai.com/linode-api/reference/get-databases-mysql-instance-credentials) operation for access information.
    attr_accessor :ssl_connection

    # __Filterable__ The [Region](https://techdocs.akamai.com/linode-api/reference/get-regions) ID for the Managed Database.
    attr_accessor :region

    # The Managed Database engine in engine/version format.
    attr_accessor :engine

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
        :'type' => :'type',
        :'label' => :'label',
        :'allow_list' => :'allow_list',
        :'encrypted' => :'encrypted',
        :'cluster_size' => :'cluster_size',
        :'replication_type' => :'replication_type',
        :'ssl_connection' => :'ssl_connection',
        :'region' => :'region',
        :'engine' => :'engine'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'label' => :'String',
        :'allow_list' => :'Array<String>',
        :'encrypted' => :'Boolean',
        :'cluster_size' => :'Integer',
        :'replication_type' => :'String',
        :'ssl_connection' => :'Boolean',
        :'region' => :'String',
        :'engine' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `LinodeOpenapiClient::PostDatabasesMysqlInstancesRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LinodeOpenapiClient::PostDatabasesMysqlInstancesRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end

      if attributes.key?(:'label')
        self.label = attributes[:'label']
      else
        self.label = nil
      end

      if attributes.key?(:'allow_list')
        if (value = attributes[:'allow_list']).is_a?(Array)
          self.allow_list = value
        end
      end

      if attributes.key?(:'encrypted')
        self.encrypted = attributes[:'encrypted']
      else
        self.encrypted = false
      end

      if attributes.key?(:'cluster_size')
        self.cluster_size = attributes[:'cluster_size']
      else
        self.cluster_size = CLUSTER_SIZE::N1
      end

      if attributes.key?(:'replication_type')
        self.replication_type = attributes[:'replication_type']
      end

      if attributes.key?(:'ssl_connection')
        self.ssl_connection = attributes[:'ssl_connection']
      else
        self.ssl_connection = true
      end

      if attributes.key?(:'region')
        self.region = attributes[:'region']
      else
        self.region = nil
      end

      if attributes.key?(:'engine')
        self.engine = attributes[:'engine']
      else
        self.engine = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @label.nil?
        invalid_properties.push('invalid value for "label", label cannot be nil.')
      end

      if @label.to_s.length > 32
        invalid_properties.push('invalid value for "label", the character length must be smaller than or equal to 32.')
      end

      if @label.to_s.length < 3
        invalid_properties.push('invalid value for "label", the character length must be great than or equal to 3.')
      end

      if @region.nil?
        invalid_properties.push('invalid value for "region", region cannot be nil.')
      end

      if @engine.nil?
        invalid_properties.push('invalid value for "engine", engine cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @type.nil?
      return false if @label.nil?
      return false if @label.to_s.length > 32
      return false if @label.to_s.length < 3
      cluster_size_validator = EnumAttributeValidator.new('Integer', [1, 3])
      return false unless cluster_size_validator.valid?(@cluster_size)
      replication_type_validator = EnumAttributeValidator.new('String', ["none", "asynch", "semi_synch"])
      return false unless replication_type_validator.valid?(@replication_type)
      return false if @region.nil?
      return false if @engine.nil?
      true
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
    # @param [Object] cluster_size Object to be assigned
    def cluster_size=(cluster_size)
      validator = EnumAttributeValidator.new('Integer', [1, 3])
      unless validator.valid?(cluster_size)
        fail ArgumentError, "invalid value for \"cluster_size\", must be one of #{validator.allowable_values}."
      end
      @cluster_size = cluster_size
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] replication_type Object to be assigned
    def replication_type=(replication_type)
      validator = EnumAttributeValidator.new('String', ["none", "asynch", "semi_synch"])
      unless validator.valid?(replication_type)
        fail ArgumentError, "invalid value for \"replication_type\", must be one of #{validator.allowable_values}."
      end
      @replication_type = replication_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          label == o.label &&
          allow_list == o.allow_list &&
          encrypted == o.encrypted &&
          cluster_size == o.cluster_size &&
          replication_type == o.replication_type &&
          ssl_connection == o.ssl_connection &&
          region == o.region &&
          engine == o.engine
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, label, allow_list, encrypted, cluster_size, replication_type, ssl_connection, region, engine].hash
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
