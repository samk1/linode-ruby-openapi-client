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
  # A Block Storage Volume associated with your Account.
  class Volume4
    # __Read-only__ The current status of the volume.  Can be one of:    - `creating` - the Volume is being created and is not yet available     for use.   - `active` - the Volume is online and available for use.   - `resizing` - the Volume is in the process of upgrading     its current capacity.
    attr_accessor :status

    # __Read-only__ When this Volume was last updated.
    attr_accessor :updated

    # If a Volume is attached to a specific Linode, the ID of that Linode will be displayed here.
    attr_accessor :linode_id

    # __Filterable__ The Volume's label is for display purposes only.
    attr_accessor :label

    # __Read-only__ The storage type of this Volume.
    attr_accessor :hardware_type

    # The Volume's size, in GiB.
    attr_accessor :size

    # __Read-only__ When this Volume was created.
    attr_accessor :created

    # __Read-only__ If a Volume is attached to a specific Linode, the label of that Linode will be displayed here.
    attr_accessor :linode_label

    # __Read-only__ The unique ID of this Region.
    attr_accessor :region

    # __Read-only__ The unique ID of this Volume.
    attr_accessor :id

    # __Read-only__ The full filesystem path for the Volume based on the Volume's label. Path is /dev/disk/by-id/scsi-0Linode_Volume_ + Volume label.
    attr_accessor :filesystem_path

    # __Filterable__ An array of Tags applied to this object.  Tags are for organizational purposes only.
    attr_accessor :tags

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
        :'status' => :'status',
        :'updated' => :'updated',
        :'linode_id' => :'linode_id',
        :'label' => :'label',
        :'hardware_type' => :'hardware_type',
        :'size' => :'size',
        :'created' => :'created',
        :'linode_label' => :'linode_label',
        :'region' => :'region',
        :'id' => :'id',
        :'filesystem_path' => :'filesystem_path',
        :'tags' => :'tags'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'status' => :'String',
        :'updated' => :'Time',
        :'linode_id' => :'Integer',
        :'label' => :'String',
        :'hardware_type' => :'String',
        :'size' => :'Integer',
        :'created' => :'Time',
        :'linode_label' => :'String',
        :'region' => :'String',
        :'id' => :'Integer',
        :'filesystem_path' => :'String',
        :'tags' => :'Array<String>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'linode_id',
        :'linode_label',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `LinodeOpenapiClient::Volume4` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LinodeOpenapiClient::Volume4`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'updated')
        self.updated = attributes[:'updated']
      end

      if attributes.key?(:'linode_id')
        self.linode_id = attributes[:'linode_id']
      end

      if attributes.key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.key?(:'hardware_type')
        self.hardware_type = attributes[:'hardware_type']
      end

      if attributes.key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'linode_label')
        self.linode_label = attributes[:'linode_label']
      end

      if attributes.key?(:'region')
        self.region = attributes[:'region']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'filesystem_path')
        self.filesystem_path = attributes[:'filesystem_path']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@label.nil? && @label.to_s.length > 32
        invalid_properties.push('invalid value for "label", the character length must be smaller than or equal to 32.')
      end

      if !@label.nil? && @label.to_s.length < 1
        invalid_properties.push('invalid value for "label", the character length must be great than or equal to 1.')
      end

      pattern = Regexp.new(/^[a-zA-Z]((?!--|__)[a-zA-Z0-9-_])+$/)
      if !@label.nil? && @label !~ pattern
        invalid_properties.push("invalid value for \"label\", must conform to the pattern #{pattern}.")
      end

      if !@size.nil? && @size > 10240
        invalid_properties.push('invalid value for "size", must be smaller than or equal to 10240.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      status_validator = EnumAttributeValidator.new('String', ["creating", "active", "resizing"])
      return false unless status_validator.valid?(@status)
      return false if !@label.nil? && @label.to_s.length > 32
      return false if !@label.nil? && @label.to_s.length < 1
      return false if !@label.nil? && @label !~ Regexp.new(/^[a-zA-Z]((?!--|__)[a-zA-Z0-9-_])+$/)
      hardware_type_validator = EnumAttributeValidator.new('String', ["hdd", "nvme"])
      return false unless hardware_type_validator.valid?(@hardware_type)
      return false if !@size.nil? && @size > 10240
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["creating", "active", "resizing"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
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

      if label.to_s.length < 1
        fail ArgumentError, 'invalid value for "label", the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^[a-zA-Z]((?!--|__)[a-zA-Z0-9-_])+$/)
      if label !~ pattern
        fail ArgumentError, "invalid value for \"label\", must conform to the pattern #{pattern}."
      end

      @label = label
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] hardware_type Object to be assigned
    def hardware_type=(hardware_type)
      validator = EnumAttributeValidator.new('String', ["hdd", "nvme"])
      unless validator.valid?(hardware_type)
        fail ArgumentError, "invalid value for \"hardware_type\", must be one of #{validator.allowable_values}."
      end
      @hardware_type = hardware_type
    end

    # Custom attribute writer method with validation
    # @param [Object] size Value to be assigned
    def size=(size)
      if size.nil?
        fail ArgumentError, 'size cannot be nil'
      end

      if size > 10240
        fail ArgumentError, 'invalid value for "size", must be smaller than or equal to 10240.'
      end

      @size = size
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          status == o.status &&
          updated == o.updated &&
          linode_id == o.linode_id &&
          label == o.label &&
          hardware_type == o.hardware_type &&
          size == o.size &&
          created == o.created &&
          linode_label == o.linode_label &&
          region == o.region &&
          id == o.id &&
          filesystem_path == o.filesystem_path &&
          tags == o.tags
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [status, updated, linode_id, label, hardware_type, size, created, linode_label, region, id, filesystem_path, tags].hash
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
