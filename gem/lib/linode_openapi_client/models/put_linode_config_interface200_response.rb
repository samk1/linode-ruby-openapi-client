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
  # The Network Interface to apply to this Linode's configuration profile.
  class PutLinodeConfigInterface200Response
    # The type of Interface.  - `public`   - Only one `public` Interface per Linode can be defined.   - The Linode's default public IPv4 address is assigned to the `public` Interface.   - A Linode must have a public Interface in the first/eth0 position to be reachable via the public internet upon boot without additional system configuration. If no `public` Interface is configured, the Linode is not directly reachable via the public internet. In this case, access can only be established via [LISH](https://www.linode.com/docs/products/compute/compute-instances/guides/lish/) or other Linodes connected to the same VLAN or VPC.  - `vlan`   - Configuring a `vlan` purpose Interface attaches this Linode to the VLAN with the specified `label`.   - The Linode is configured to use the specified `ipam_address`, if any.  - `vpc`   - Configuring a `vpc` purpose Interface attaches this Linode to the existing VPC Subnet with the specified `subnet_id`.   - When the Interface is activated, the Linode is configured to use an IP address from the range in the assigned VPC Subnet. See `ipv4.vpc` for more information.
    attr_accessor :purpose

    # An array of IPv4 CIDR VPC Subnet ranges that are routed to this Interface.  - Array items are only allowed for `vpc` type Interfaces. - This must be empty for non-`vpc` type Interfaces.  For requests:  - Addresses in submitted ranges must not already be actively assigned. - Submitting values replaces any existing values. - Submitting an empty array removes any existing values. - Omitting this property results in no change to existing values.
    attr_accessor :ip_ranges

    # This Network Interface's private IP address in Classless Inter-Domain Routing (CIDR) notation.  For `vlan` purpose Interfaces:  - Must be unique among the Linode's Interfaces to avoid conflicting addresses. - Should be unique among devices attached to the VLAN to avoid conflict. - The Linode is configured to use this address for the associated Interface upon reboot if Network Helper is enabled. If Network Helper is disabled, the address can be enabled with [manual static IP configuration](https://www.linode.com/docs/guides/manual-network-configuration/).  For `public` purpose Interfaces:  - In requests, must be an empty string (`\"\"`) or `null` if included. - In responses, always returns `null`.  For `vpc` purpose Interfaces:  - In requests, must be an empty string (`\"\"`) or `null` if included. - In responses, always returns `null`.
    attr_accessor :ipam_address

    # __Filterable__ The name of this Interface.  For `vlan` purpose Interfaces:  - Required. - Must be unique among the Linode's Interfaces (a Linode cannot be attached to the same VLAN multiple times). - Can only contain ASCII letters, numbers, and hyphens (`-`). You can't use two consecutive hyphens (`--`). - If the VLAN label is new, a VLAN is created. Up to 10 VLANs can be created in each data center region. To view your active VLANs, run the [List VLANs](https://techdocs.akamai.com/linode-api/reference/get-vlans) operation.  For `public` purpose Interfaces:  - In requests, must be an empty string (`\"\"`) or `null` if included. - In responses, always returns `null`.  For `vpc` purpose Interfaces:  - In requests, must be an empty string (`\"\"`) or `null` if included. - In responses, always returns `null`.
    attr_accessor :label

    # The primary Interface is configured as the default route to the Linode.  Each Configuration Profile can have up to one `\"primary\": true` Interface at a time.  Must be `false` for `vlan` type Interfaces.  If no Interface is configured as the primary, the first non-`vlan` type Interface in the `interfaces` array is automatically treated as the primary Interface.
    attr_accessor :primary

    # The `id` of the VPC Subnet for this Interface.  In requests, this value is used to assign a Linode to a VPC Subnet.  - Required for `vpc` type Interfaces. - Returns `null` for non-`vpc` type Interfaces. - Once a VPC Subnet is assigned to an Interface, it cannot be updated. - The Linode must be rebooted with the Interface's Configuration Profile to complete assignment to a VPC Subnet.
    attr_accessor :subnet_id

    # Returns `true` if the Interface is in use, meaning that Compute Instance has been booted using the Configuration Profile to which the Interface belongs. Otherwise returns `false`.
    attr_accessor :active

    attr_accessor :ipv4

    # __Read-only__ The unique ID representing this Interface.
    attr_accessor :id

    # __Read-only__ The `id` of the VPC configured for this Interface. Returns `null` for non-`vpc` type Interfaces.
    attr_accessor :vpc_id

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
        :'purpose' => :'purpose',
        :'ip_ranges' => :'ip_ranges',
        :'ipam_address' => :'ipam_address',
        :'label' => :'label',
        :'primary' => :'primary',
        :'subnet_id' => :'subnet_id',
        :'active' => :'active',
        :'ipv4' => :'ipv4',
        :'id' => :'id',
        :'vpc_id' => :'vpc_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'purpose' => :'String',
        :'ip_ranges' => :'Array<String>',
        :'ipam_address' => :'String',
        :'label' => :'String',
        :'primary' => :'Boolean',
        :'subnet_id' => :'Integer',
        :'active' => :'Boolean',
        :'ipv4' => :'PostLinodeInstanceRequestAllOfInterfacesInnerIpv4',
        :'id' => :'Integer',
        :'vpc_id' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'ip_ranges',
        :'ipam_address',
        :'label',
        :'subnet_id',
        :'vpc_id'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `LinodeOpenapiClient::PutLinodeConfigInterface200Response` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LinodeOpenapiClient::PutLinodeConfigInterface200Response`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'purpose')
        self.purpose = attributes[:'purpose']
      else
        self.purpose = nil
      end

      if attributes.key?(:'ip_ranges')
        if (value = attributes[:'ip_ranges']).is_a?(Array)
          self.ip_ranges = value
        end
      end

      if attributes.key?(:'ipam_address')
        self.ipam_address = attributes[:'ipam_address']
      end

      if attributes.key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.key?(:'primary')
        self.primary = attributes[:'primary']
      end

      if attributes.key?(:'subnet_id')
        self.subnet_id = attributes[:'subnet_id']
      end

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.key?(:'ipv4')
        self.ipv4 = attributes[:'ipv4']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'vpc_id')
        self.vpc_id = attributes[:'vpc_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @purpose.nil?
        invalid_properties.push('invalid value for "purpose", purpose cannot be nil.')
      end

      if !@label.nil? && @label.to_s.length > 64
        invalid_properties.push('invalid value for "label", the character length must be smaller than or equal to 64.')
      end

      if !@label.nil? && @label.to_s.length < 1
        invalid_properties.push('invalid value for "label", the character length must be great than or equal to 1.')
      end

      pattern = Regexp.new(/[a-zA-Z0-9-]+/)
      if !@label.nil? && @label !~ pattern
        invalid_properties.push("invalid value for \"label\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @purpose.nil?
      purpose_validator = EnumAttributeValidator.new('String', ["public", "vlan", "vpc"])
      return false unless purpose_validator.valid?(@purpose)
      return false if !@label.nil? && @label.to_s.length > 64
      return false if !@label.nil? && @label.to_s.length < 1
      return false if !@label.nil? && @label !~ Regexp.new(/[a-zA-Z0-9-]+/)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] purpose Object to be assigned
    def purpose=(purpose)
      validator = EnumAttributeValidator.new('String', ["public", "vlan", "vpc"])
      unless validator.valid?(purpose)
        fail ArgumentError, "invalid value for \"purpose\", must be one of #{validator.allowable_values}."
      end
      @purpose = purpose
    end

    # Custom attribute writer method with validation
    # @param [Object] label Value to be assigned
    def label=(label)
      if !label.nil? && label.to_s.length > 64
        fail ArgumentError, 'invalid value for "label", the character length must be smaller than or equal to 64.'
      end

      if !label.nil? && label.to_s.length < 1
        fail ArgumentError, 'invalid value for "label", the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/[a-zA-Z0-9-]+/)
      if !label.nil? && label !~ pattern
        fail ArgumentError, "invalid value for \"label\", must conform to the pattern #{pattern}."
      end

      @label = label
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          purpose == o.purpose &&
          ip_ranges == o.ip_ranges &&
          ipam_address == o.ipam_address &&
          label == o.label &&
          primary == o.primary &&
          subnet_id == o.subnet_id &&
          active == o.active &&
          ipv4 == o.ipv4 &&
          id == o.id &&
          vpc_id == o.vpc_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [purpose, ip_ranges, ipam_address, label, primary, subnet_id, active, ipv4, id, vpc_id].hash
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
