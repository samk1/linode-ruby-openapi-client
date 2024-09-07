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
  # The response data for the VPC IP Addresses List and View operations.
  class GetVpcsIps200ResponseDataInner
    # __Read-only__ The total number of results.
    attr_accessor :results

    # __Read-only__ The total number of [pages](https://techdocs.akamai.com/linode-api/reference/pagination).
    attr_accessor :pages

    # __Read-only__ The current [page](https://techdocs.akamai.com/linode-api/reference/pagination).
    attr_accessor :page

    # The `id` of the VPC Subnet for this interface.
    attr_accessor :subnet_id

    # __Read-only__ The number of bits set in the `subnet_mask`.
    attr_accessor :prefix

    # __Read-only__ The mask that separates host bits from network bits for the `address` or `address_range`.
    attr_accessor :subnet_mask

    # __Read-only__ The default gateway for the VPC subnet that the IP or IP range belongs to.
    attr_accessor :gateway

    # __Filterable__, __Read-only__ The identifier for the Linode the VPC interface currently belongs to.
    attr_accessor :linode_id

    # __Read-only__ The public IP address used for NAT 1:1 with the VPC. This is empty if NAT 1:1 isn't used.
    attr_accessor :nat_1_1

    # __Read-only__ The globally general API entity identifier for the Linode interface.
    attr_accessor :interface_id

    # __Filterable__, __Read-only__ The unique globally general API entity identifier for the VPC.
    attr_accessor :vpc_id

    # __Read-only__ An IPv4 address configured for this VPC interface. These follow the [RFC 1918](https://datatracker.ietf.org/doc/html/rfc1918) private address format. Displayed as `null` if an `address_range`.
    attr_accessor :address

    # __Filterable__, __Read-only__ The region of the VPC.
    attr_accessor :region

    # __Filterable__, __Read-only__ The globally general entity identifier for the Linode configuration profile where the VPC is included.
    attr_accessor :config_id

    # __Filterable__, __Read-only__ Returns `true` if the VPC interface is in use, meaning that the Linode was powered on using the `config_id` to which the interface belongs. Otherwise returns `false`.
    attr_accessor :active

    # __Read-only__ A range of IPv4 addresses configured for this VPC interface. Displayed as `null` if a single `address`.
    attr_accessor :address_range

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'results' => :'results',
        :'pages' => :'pages',
        :'page' => :'page',
        :'subnet_id' => :'subnet_id',
        :'prefix' => :'prefix',
        :'subnet_mask' => :'subnet_mask',
        :'gateway' => :'gateway',
        :'linode_id' => :'linode_id',
        :'nat_1_1' => :'nat_1_1',
        :'interface_id' => :'interface_id',
        :'vpc_id' => :'vpc_id',
        :'address' => :'address',
        :'region' => :'region',
        :'config_id' => :'config_id',
        :'active' => :'active',
        :'address_range' => :'address_range'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'results' => :'Integer',
        :'pages' => :'Integer',
        :'page' => :'Integer',
        :'subnet_id' => :'Integer',
        :'prefix' => :'Integer',
        :'subnet_mask' => :'String',
        :'gateway' => :'String',
        :'linode_id' => :'Integer',
        :'nat_1_1' => :'String',
        :'interface_id' => :'Integer',
        :'vpc_id' => :'Integer',
        :'address' => :'String',
        :'region' => :'String',
        :'config_id' => :'Integer',
        :'active' => :'Boolean',
        :'address_range' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'prefix',
        :'gateway',
        :'address',
        :'address_range'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `LinodeOpenapiClient::GetVpcsIps200ResponseDataInner` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LinodeOpenapiClient::GetVpcsIps200ResponseDataInner`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'results')
        self.results = attributes[:'results']
      end

      if attributes.key?(:'pages')
        self.pages = attributes[:'pages']
      end

      if attributes.key?(:'page')
        self.page = attributes[:'page']
      end

      if attributes.key?(:'subnet_id')
        self.subnet_id = attributes[:'subnet_id']
      end

      if attributes.key?(:'prefix')
        self.prefix = attributes[:'prefix']
      end

      if attributes.key?(:'subnet_mask')
        self.subnet_mask = attributes[:'subnet_mask']
      end

      if attributes.key?(:'gateway')
        self.gateway = attributes[:'gateway']
      end

      if attributes.key?(:'linode_id')
        self.linode_id = attributes[:'linode_id']
      end

      if attributes.key?(:'nat_1_1')
        self.nat_1_1 = attributes[:'nat_1_1']
      end

      if attributes.key?(:'interface_id')
        self.interface_id = attributes[:'interface_id']
      end

      if attributes.key?(:'vpc_id')
        self.vpc_id = attributes[:'vpc_id']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'region')
        self.region = attributes[:'region']
      end

      if attributes.key?(:'config_id')
        self.config_id = attributes[:'config_id']
      end

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.key?(:'address_range')
        self.address_range = attributes[:'address_range']
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          results == o.results &&
          pages == o.pages &&
          page == o.page &&
          subnet_id == o.subnet_id &&
          prefix == o.prefix &&
          subnet_mask == o.subnet_mask &&
          gateway == o.gateway &&
          linode_id == o.linode_id &&
          nat_1_1 == o.nat_1_1 &&
          interface_id == o.interface_id &&
          vpc_id == o.vpc_id &&
          address == o.address &&
          region == o.region &&
          config_id == o.config_id &&
          active == o.active &&
          address_range == o.address_range
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [results, pages, page, subnet_id, prefix, subnet_mask, gateway, linode_id, nat_1_1, interface_id, vpc_id, address, region, config_id, active, address_range].hash
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
