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
  # Image object.
  class PostImage200Response
    # __Read-only__ The total size in bytes of all instances of this image, in all `regions`.  > 📘 > > This object is empty for existing images. It's intended for use with future functionality.
    attr_accessor :total_size

    # __Read-only__ The unique identifier for each image.
    attr_accessor :id

    # __Filterable__ Tags used for organizational purposes. A tag can be from 3 to 100 characters long, and an image can have a maximum of 500 total tags.
    attr_accessor :tags

    # __Filterable__, __Read-only__ Whether this image is deprecated. Only public images can be deprecated.
    attr_accessor :deprecated

    # __Read-only__ When this image was created.
    attr_accessor :created

    # __Read-only__ The name of the user who created this image, or `linode` for public images.
    attr_accessor :created_by

    # __Filterable__, __Read-only__ Revealed as `true` if the image is a public distribution image. Private, account-specific images are listed as `false`.
    attr_accessor :is_public

    # __Filterable__, __Read-only__ The minimum size in MB this image needs to deploy.
    attr_accessor :size

    # __Read-only__ A list of the possible capabilities of this image.  - `cloud-init`. The image supports the cloud-init multi-distribution method with our [Metadata service](https://www.linode.com/docs/products/compute/compute-instances/guides/metadata/#troubleshoot-metadata-and-cloud-init). This only applies to public images.  - `distributed-sites`. Whether the image can be used in distributed compute regions. Compared to a core compute region, distributed compute regions offer limited functionality, but they're globally distributed. Your image can be geographically closer to you, potentially letting you deploy it quicker.
    attr_accessor :capabilities

    # __Filterable__, __Read-only__ The current status of the image. Possible values are `available`, `creating`, and `pending_upload`.  > 📘 > > The `+order_by` and `+order` operators are not available when [filtering](https://techdocs.akamai.com/linode-api/reference/filtering-and-sorting) on this key.
    attr_accessor :status

    # __Read-only__ Only images created automatically from a deleted compute instance (type=automatic) expire. This is `null` for private images.
    attr_accessor :expiry

    # __Filterable__, __Read-only__ How the image was created. Create a `manual` image at any time. An `automatic` image is created automatically from a deleted compute instance.
    attr_accessor :type

    # A detailed description of this image.
    attr_accessor :description

    # __Filterable__ A short description of the image.
    attr_accessor :label

    # __Read-only__ Details on the regions where this image is stored.  > 📘 > > This array is empty for existing images. It's intended for use with future functionality.
    attr_accessor :regions

    # __Read-only__ The date of the public image's planned removal from service. This is `null` for private images.
    attr_accessor :eol

    # __Filterable__, __Read-only__ The upstream distribution vendor. This is `null` for private images.
    attr_accessor :vendor

    # __Read-only__ When this image was last updated.
    attr_accessor :updated

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
        :'total_size' => :'total_size',
        :'id' => :'id',
        :'tags' => :'tags',
        :'deprecated' => :'deprecated',
        :'created' => :'created',
        :'created_by' => :'created_by',
        :'is_public' => :'is_public',
        :'size' => :'size',
        :'capabilities' => :'capabilities',
        :'status' => :'status',
        :'expiry' => :'expiry',
        :'type' => :'type',
        :'description' => :'description',
        :'label' => :'label',
        :'regions' => :'regions',
        :'eol' => :'eol',
        :'vendor' => :'vendor',
        :'updated' => :'updated'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'total_size' => :'Integer',
        :'id' => :'String',
        :'tags' => :'Array<String>',
        :'deprecated' => :'Boolean',
        :'created' => :'Time',
        :'created_by' => :'String',
        :'is_public' => :'Boolean',
        :'size' => :'Integer',
        :'capabilities' => :'Array<String>',
        :'status' => :'String',
        :'expiry' => :'Time',
        :'type' => :'String',
        :'description' => :'String',
        :'label' => :'String',
        :'regions' => :'Array<GetImages200ResponseDataInnerRegionsInner>',
        :'eol' => :'Time',
        :'vendor' => :'String',
        :'updated' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'expiry',
        :'description',
        :'eol',
        :'vendor',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `LinodeOpenapiClient::PostImage200Response` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LinodeOpenapiClient::PostImage200Response`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'total_size')
        self.total_size = attributes[:'total_size']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'deprecated')
        self.deprecated = attributes[:'deprecated']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'is_public')
        self.is_public = attributes[:'is_public']
      end

      if attributes.key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.key?(:'capabilities')
        if (value = attributes[:'capabilities']).is_a?(Array)
          self.capabilities = value
        end
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'expiry')
        self.expiry = attributes[:'expiry']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.key?(:'regions')
        if (value = attributes[:'regions']).is_a?(Array)
          self.regions = value
        end
      end

      if attributes.key?(:'eol')
        self.eol = attributes[:'eol']
      end

      if attributes.key?(:'vendor')
        self.vendor = attributes[:'vendor']
      end

      if attributes.key?(:'updated')
        self.updated = attributes[:'updated']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@tags.nil? && @tags.length > 500
        invalid_properties.push('invalid value for "tags", number of items must be less than or equal to 500.')
      end

      if !@tags.nil? && @tags.length < 0
        invalid_properties.push('invalid value for "tags", number of items must be greater than or equal to 0.')
      end

      if !@description.nil? && @description.to_s.length > 65000
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 65000.')
      end

      if !@description.nil? && @description.to_s.length < 1
        invalid_properties.push('invalid value for "description", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@tags.nil? && @tags.length > 500
      return false if !@tags.nil? && @tags.length < 0
      status_validator = EnumAttributeValidator.new('String', ["creating", "pending_upload", "available"])
      return false unless status_validator.valid?(@status)
      type_validator = EnumAttributeValidator.new('String', ["manual", "automatic"])
      return false unless type_validator.valid?(@type)
      return false if !@description.nil? && @description.to_s.length > 65000
      return false if !@description.nil? && @description.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] tags Value to be assigned
    def tags=(tags)
      if tags.nil?
        fail ArgumentError, 'tags cannot be nil'
      end

      if tags.length > 500
        fail ArgumentError, 'invalid value for "tags", number of items must be less than or equal to 500.'
      end

      if tags.length < 0
        fail ArgumentError, 'invalid value for "tags", number of items must be greater than or equal to 0.'
      end

      @tags = tags
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["creating", "pending_upload", "available"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["manual", "automatic"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 65000
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 65000.'
      end

      if !description.nil? && description.to_s.length < 1
        fail ArgumentError, 'invalid value for "description", the character length must be great than or equal to 1.'
      end

      @description = description
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          total_size == o.total_size &&
          id == o.id &&
          tags == o.tags &&
          deprecated == o.deprecated &&
          created == o.created &&
          created_by == o.created_by &&
          is_public == o.is_public &&
          size == o.size &&
          capabilities == o.capabilities &&
          status == o.status &&
          expiry == o.expiry &&
          type == o.type &&
          description == o.description &&
          label == o.label &&
          regions == o.regions &&
          eol == o.eol &&
          vendor == o.vendor &&
          updated == o.updated
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [total_size, id, tags, deprecated, created, created_by, is_public, size, capabilities, status, expiry, type, description, label, regions, eol, vendor, updated].hash
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
