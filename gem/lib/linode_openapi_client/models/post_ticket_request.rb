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
  # An object representing a created Support Ticket - a question or issue and request for help from the Linode support team. Only one of the ID attributes (`linode_id`, `domain_id`, etc.) can be set on a single Support Ticket.
  class PostTicketRequest
    # The ID of the Domain this ticket is regarding, if relevant.
    attr_accessor :domain_id

    # The ID of the NodeBalancer this ticket is regarding, if relevant.
    attr_accessor :nodebalancer_id

    # The ID of the Kubernetes cluster this ticket is regarding, if relevant.
    attr_accessor :lkecluster_id

    # The summary or title for this SupportTicket.
    attr_accessor :summary

    # The ID of the Firewall this ticket is regarding, if relevant.
    attr_accessor :firewall_id

    # The full details of the issue or question.
    attr_accessor :description

    # The ID of the Managed Database this ticket is regarding, if relevant.
    attr_accessor :database_id

    # The ID of the VPC this ticket is regarding, if relevant.
    attr_accessor :vpc_id

    # The ID of the Longview client this ticket is regarding, if relevant.
    attr_accessor :longviewclient_id

    # The [Region](https://techdocs.akamai.com/linode-api/reference/get-regions) ID for the associated VLAN this ticket is regarding.  Only allowed when submitting a VLAN ticket.
    attr_accessor :region

    # Designates if this ticket is related to a [Managed service](https://www.linode.com/products/managed/). If `true`, the following constraints will apply:  - No ID attributes (i.e. `linode_id`, `domain_id`, etc.) should be provided with this request. - Your account must have a managed service [enabled](https://techdocs.akamai.com/linode-api/reference/post-enable-managed-service).
    attr_accessor :managed_issue

    # The ID of the Volume this ticket is regarding, if relevant.
    attr_accessor :volume_id

    # The ID of the Linode this ticket is regarding, if relevant.
    attr_accessor :linode_id

    # The label of the VLAN this ticket is regarding, if relevant. To view your VLANs, run the [List VLANs](https://techdocs.akamai.com/linode-api/reference/get-vlans)) operation.  Requires a specified `region` to identify the VLAN.
    attr_accessor :vlan

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'domain_id' => :'domain_id',
        :'nodebalancer_id' => :'nodebalancer_id',
        :'lkecluster_id' => :'lkecluster_id',
        :'summary' => :'summary',
        :'firewall_id' => :'firewall_id',
        :'description' => :'description',
        :'database_id' => :'database_id',
        :'vpc_id' => :'vpc_id',
        :'longviewclient_id' => :'longviewclient_id',
        :'region' => :'region',
        :'managed_issue' => :'managed_issue',
        :'volume_id' => :'volume_id',
        :'linode_id' => :'linode_id',
        :'vlan' => :'vlan'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'domain_id' => :'Integer',
        :'nodebalancer_id' => :'Integer',
        :'lkecluster_id' => :'Integer',
        :'summary' => :'String',
        :'firewall_id' => :'Integer',
        :'description' => :'String',
        :'database_id' => :'Integer',
        :'vpc_id' => :'Integer',
        :'longviewclient_id' => :'Integer',
        :'region' => :'String',
        :'managed_issue' => :'Boolean',
        :'volume_id' => :'Integer',
        :'linode_id' => :'Integer',
        :'vlan' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `LinodeOpenapiClient::PostTicketRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LinodeOpenapiClient::PostTicketRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'domain_id')
        self.domain_id = attributes[:'domain_id']
      end

      if attributes.key?(:'nodebalancer_id')
        self.nodebalancer_id = attributes[:'nodebalancer_id']
      end

      if attributes.key?(:'lkecluster_id')
        self.lkecluster_id = attributes[:'lkecluster_id']
      end

      if attributes.key?(:'summary')
        self.summary = attributes[:'summary']
      else
        self.summary = nil
      end

      if attributes.key?(:'firewall_id')
        self.firewall_id = attributes[:'firewall_id']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      else
        self.description = nil
      end

      if attributes.key?(:'database_id')
        self.database_id = attributes[:'database_id']
      end

      if attributes.key?(:'vpc_id')
        self.vpc_id = attributes[:'vpc_id']
      end

      if attributes.key?(:'longviewclient_id')
        self.longviewclient_id = attributes[:'longviewclient_id']
      end

      if attributes.key?(:'region')
        self.region = attributes[:'region']
      end

      if attributes.key?(:'managed_issue')
        self.managed_issue = attributes[:'managed_issue']
      end

      if attributes.key?(:'volume_id')
        self.volume_id = attributes[:'volume_id']
      end

      if attributes.key?(:'linode_id')
        self.linode_id = attributes[:'linode_id']
      end

      if attributes.key?(:'vlan')
        self.vlan = attributes[:'vlan']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @summary.nil?
        invalid_properties.push('invalid value for "summary", summary cannot be nil.')
      end

      if @summary.to_s.length > 64
        invalid_properties.push('invalid value for "summary", the character length must be smaller than or equal to 64.')
      end

      if @summary.to_s.length < 1
        invalid_properties.push('invalid value for "summary", the character length must be great than or equal to 1.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @description.to_s.length > 65000
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 65000.')
      end

      if @description.to_s.length < 1
        invalid_properties.push('invalid value for "description", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @summary.nil?
      return false if @summary.to_s.length > 64
      return false if @summary.to_s.length < 1
      return false if @description.nil?
      return false if @description.to_s.length > 65000
      return false if @description.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] summary Value to be assigned
    def summary=(summary)
      if summary.nil?
        fail ArgumentError, 'summary cannot be nil'
      end

      if summary.to_s.length > 64
        fail ArgumentError, 'invalid value for "summary", the character length must be smaller than or equal to 64.'
      end

      if summary.to_s.length < 1
        fail ArgumentError, 'invalid value for "summary", the character length must be great than or equal to 1.'
      end

      @summary = summary
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if description.nil?
        fail ArgumentError, 'description cannot be nil'
      end

      if description.to_s.length > 65000
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 65000.'
      end

      if description.to_s.length < 1
        fail ArgumentError, 'invalid value for "description", the character length must be great than or equal to 1.'
      end

      @description = description
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          domain_id == o.domain_id &&
          nodebalancer_id == o.nodebalancer_id &&
          lkecluster_id == o.lkecluster_id &&
          summary == o.summary &&
          firewall_id == o.firewall_id &&
          description == o.description &&
          database_id == o.database_id &&
          vpc_id == o.vpc_id &&
          longviewclient_id == o.longviewclient_id &&
          region == o.region &&
          managed_issue == o.managed_issue &&
          volume_id == o.volume_id &&
          linode_id == o.linode_id &&
          vlan == o.vlan
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [domain_id, nodebalancer_id, lkecluster_id, summary, firewall_id, description, database_id, vpc_id, longviewclient_id, region, managed_issue, volume_id, linode_id, vlan].hash
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
