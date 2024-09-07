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
  # A service that Linode is monitoring as part of your Managed services. If issues are detected with this service, a ManagedIssue will be opened and, optionally, Linode special forces will attempt to resolve the Issue.
  class PostDisableManagedService200Response
    # An array of ManagedCredential IDs that should be used when attempting to resolve issues with this Service.
    attr_accessor :credentials

    # The group of ManagedContacts who should be notified or consulted with when an Issue is detected.
    attr_accessor :consultation_group

    # __Read-only__ The current status of this Service.
    attr_accessor :status

    # __Read-only__ When this Managed Service was created.
    attr_accessor :created

    # How this Service is monitored.
    attr_accessor :service_type

    # The Region in which this Service is located. This is required if address is a private IP, and may not be set otherwise.
    attr_accessor :region

    # __Read-only__ This Service's unique ID.
    attr_accessor :id

    # __Read-only__ When this Managed Service was last updated.
    attr_accessor :updated

    # How long to wait, in seconds, for a response before considering the Service to be down.
    attr_accessor :timeout

    # The label for this Service. This is for display purposes only.
    attr_accessor :label

    # What to expect to find in the response body for the Service to be considered up.
    attr_accessor :body

    # The URL at which this Service is monitored. URL parameters such as `?no-cache=1` are preserved. URL fragments/anchors such as `#monitor` are __not__ preserved.
    attr_accessor :address

    # Any information relevant to the Service that Linode special forces should know when attempting to resolve Issues.
    attr_accessor :notes

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
        :'credentials' => :'credentials',
        :'consultation_group' => :'consultation_group',
        :'status' => :'status',
        :'created' => :'created',
        :'service_type' => :'service_type',
        :'region' => :'region',
        :'id' => :'id',
        :'updated' => :'updated',
        :'timeout' => :'timeout',
        :'label' => :'label',
        :'body' => :'body',
        :'address' => :'address',
        :'notes' => :'notes'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'credentials' => :'Array<Integer>',
        :'consultation_group' => :'String',
        :'status' => :'String',
        :'created' => :'Time',
        :'service_type' => :'String',
        :'region' => :'String',
        :'id' => :'Integer',
        :'updated' => :'Time',
        :'timeout' => :'Integer',
        :'label' => :'String',
        :'body' => :'String',
        :'address' => :'String',
        :'notes' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'body',
        :'notes'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `LinodeOpenapiClient::PostDisableManagedService200Response` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LinodeOpenapiClient::PostDisableManagedService200Response`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'credentials')
        if (value = attributes[:'credentials']).is_a?(Array)
          self.credentials = value
        end
      end

      if attributes.key?(:'consultation_group')
        self.consultation_group = attributes[:'consultation_group']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'service_type')
        self.service_type = attributes[:'service_type']
      end

      if attributes.key?(:'region')
        self.region = attributes[:'region']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'updated')
        self.updated = attributes[:'updated']
      end

      if attributes.key?(:'timeout')
        self.timeout = attributes[:'timeout']
      end

      if attributes.key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.key?(:'body')
        self.body = attributes[:'body']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'notes')
        self.notes = attributes[:'notes']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@consultation_group.nil? && @consultation_group.to_s.length > 50
        invalid_properties.push('invalid value for "consultation_group", the character length must be smaller than or equal to 50.')
      end

      if !@consultation_group.nil? && @consultation_group.to_s.length < 0
        invalid_properties.push('invalid value for "consultation_group", the character length must be great than or equal to 0.')
      end

      if !@timeout.nil? && @timeout > 255
        invalid_properties.push('invalid value for "timeout", must be smaller than or equal to 255.')
      end

      if !@timeout.nil? && @timeout < 1
        invalid_properties.push('invalid value for "timeout", must be greater than or equal to 1.')
      end

      if !@label.nil? && @label.to_s.length > 64
        invalid_properties.push('invalid value for "label", the character length must be smaller than or equal to 64.')
      end

      if !@label.nil? && @label.to_s.length < 3
        invalid_properties.push('invalid value for "label", the character length must be great than or equal to 3.')
      end

      pattern = Regexp.new(/[a-zA-Z0-9-_ \.]{3,64}/)
      if !@label.nil? && @label !~ pattern
        invalid_properties.push("invalid value for \"label\", must conform to the pattern #{pattern}.")
      end

      if !@body.nil? && @body.to_s.length > 100
        invalid_properties.push('invalid value for "body", the character length must be smaller than or equal to 100.')
      end

      if !@body.nil? && @body.to_s.length < 0
        invalid_properties.push('invalid value for "body", the character length must be great than or equal to 0.')
      end

      if !@address.nil? && @address.to_s.length > 100
        invalid_properties.push('invalid value for "address", the character length must be smaller than or equal to 100.')
      end

      if !@address.nil? && @address.to_s.length < 3
        invalid_properties.push('invalid value for "address", the character length must be great than or equal to 3.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@consultation_group.nil? && @consultation_group.to_s.length > 50
      return false if !@consultation_group.nil? && @consultation_group.to_s.length < 0
      status_validator = EnumAttributeValidator.new('String', ["disabled", "pending", "ok", "problem"])
      return false unless status_validator.valid?(@status)
      service_type_validator = EnumAttributeValidator.new('String', ["url", "tcp"])
      return false unless service_type_validator.valid?(@service_type)
      return false if !@timeout.nil? && @timeout > 255
      return false if !@timeout.nil? && @timeout < 1
      return false if !@label.nil? && @label.to_s.length > 64
      return false if !@label.nil? && @label.to_s.length < 3
      return false if !@label.nil? && @label !~ Regexp.new(/[a-zA-Z0-9-_ \.]{3,64}/)
      return false if !@body.nil? && @body.to_s.length > 100
      return false if !@body.nil? && @body.to_s.length < 0
      return false if !@address.nil? && @address.to_s.length > 100
      return false if !@address.nil? && @address.to_s.length < 3
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] consultation_group Value to be assigned
    def consultation_group=(consultation_group)
      if consultation_group.nil?
        fail ArgumentError, 'consultation_group cannot be nil'
      end

      if consultation_group.to_s.length > 50
        fail ArgumentError, 'invalid value for "consultation_group", the character length must be smaller than or equal to 50.'
      end

      if consultation_group.to_s.length < 0
        fail ArgumentError, 'invalid value for "consultation_group", the character length must be great than or equal to 0.'
      end

      @consultation_group = consultation_group
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["disabled", "pending", "ok", "problem"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] service_type Object to be assigned
    def service_type=(service_type)
      validator = EnumAttributeValidator.new('String', ["url", "tcp"])
      unless validator.valid?(service_type)
        fail ArgumentError, "invalid value for \"service_type\", must be one of #{validator.allowable_values}."
      end
      @service_type = service_type
    end

    # Custom attribute writer method with validation
    # @param [Object] timeout Value to be assigned
    def timeout=(timeout)
      if timeout.nil?
        fail ArgumentError, 'timeout cannot be nil'
      end

      if timeout > 255
        fail ArgumentError, 'invalid value for "timeout", must be smaller than or equal to 255.'
      end

      if timeout < 1
        fail ArgumentError, 'invalid value for "timeout", must be greater than or equal to 1.'
      end

      @timeout = timeout
    end

    # Custom attribute writer method with validation
    # @param [Object] label Value to be assigned
    def label=(label)
      if label.nil?
        fail ArgumentError, 'label cannot be nil'
      end

      if label.to_s.length > 64
        fail ArgumentError, 'invalid value for "label", the character length must be smaller than or equal to 64.'
      end

      if label.to_s.length < 3
        fail ArgumentError, 'invalid value for "label", the character length must be great than or equal to 3.'
      end

      pattern = Regexp.new(/[a-zA-Z0-9-_ \.]{3,64}/)
      if label !~ pattern
        fail ArgumentError, "invalid value for \"label\", must conform to the pattern #{pattern}."
      end

      @label = label
    end

    # Custom attribute writer method with validation
    # @param [Object] body Value to be assigned
    def body=(body)
      if !body.nil? && body.to_s.length > 100
        fail ArgumentError, 'invalid value for "body", the character length must be smaller than or equal to 100.'
      end

      if !body.nil? && body.to_s.length < 0
        fail ArgumentError, 'invalid value for "body", the character length must be great than or equal to 0.'
      end

      @body = body
    end

    # Custom attribute writer method with validation
    # @param [Object] address Value to be assigned
    def address=(address)
      if address.nil?
        fail ArgumentError, 'address cannot be nil'
      end

      if address.to_s.length > 100
        fail ArgumentError, 'invalid value for "address", the character length must be smaller than or equal to 100.'
      end

      if address.to_s.length < 3
        fail ArgumentError, 'invalid value for "address", the character length must be great than or equal to 3.'
      end

      @address = address
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          credentials == o.credentials &&
          consultation_group == o.consultation_group &&
          status == o.status &&
          created == o.created &&
          service_type == o.service_type &&
          region == o.region &&
          id == o.id &&
          updated == o.updated &&
          timeout == o.timeout &&
          label == o.label &&
          body == o.body &&
          address == o.address &&
          notes == o.notes
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [credentials, consultation_group, status, created, service_type, region, id, updated, timeout, label, body, address, notes].hash
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
