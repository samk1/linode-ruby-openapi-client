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
  # A StackScript enables you to quickly deploy a fully-configured application in an automated manner.
  class GetStackScripts200ResponseDataInner
    # __Read-only__ The date this StackScript was last updated.
    attr_accessor :updated

    # __Filterable__ The StackScript's label is for display purposes only.
    attr_accessor :label

    # __Filterable__ A description for the StackScript.
    attr_accessor :description

    # __Read-only__ The Gravatar ID for the User who created the StackScript.
    attr_accessor :user_gravatar_id

    # __Read-only__ Count of currently active, deployed Linodes created from this StackScript.
    attr_accessor :deployments_active

    # __Filterable__, __Read-only__ The total number of times this StackScript has been deployed.
    attr_accessor :deployments_total

    # An array of Image IDs. These are the Images that can be deployed with this StackScript.  `any/all` indicates that all available Images, including private Images, are accepted.
    attr_accessor :images

    # The script to execute when provisioning a new Linode with this StackScript.
    attr_accessor :script

    # __Read-only__ This is a list of fields defined with a special syntax inside this StackScript that allow for supplying customized parameters during deployment. See [Declare User-Defined Fields (UDFs)](https://www.linode.com/docs/products/tools/stackscripts/guides/write-a-custom-script/#declare-user-defined-fields-udfs) for more information.
    attr_accessor :user_defined_fields

    # __Filterable__ This field allows you to add notes for the set of revisions made to this StackScript.
    attr_accessor :rev_note

    # __Read-only__ The User who created the StackScript.
    attr_accessor :username

    # __Filterable__ This determines whether other users can use your StackScript. __Once a StackScript is made public, it cannot be made private.__
    attr_accessor :is_public

    # __Read-only__ The date this StackScript was created.
    attr_accessor :created

    # __Read-only__ The unique ID of this StackScript.
    attr_accessor :id

    # __Filterable__, __Read-only__ Returns `true` if this StackScript is owned by the account of the user making the request, and the user making the request is unrestricted or has access to this StackScript.
    attr_accessor :mine

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'updated' => :'updated',
        :'label' => :'label',
        :'description' => :'description',
        :'user_gravatar_id' => :'user_gravatar_id',
        :'deployments_active' => :'deployments_active',
        :'deployments_total' => :'deployments_total',
        :'images' => :'images',
        :'script' => :'script',
        :'user_defined_fields' => :'user_defined_fields',
        :'rev_note' => :'rev_note',
        :'username' => :'username',
        :'is_public' => :'is_public',
        :'created' => :'created',
        :'id' => :'id',
        :'mine' => :'mine'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'updated' => :'Time',
        :'label' => :'String',
        :'description' => :'String',
        :'user_gravatar_id' => :'String',
        :'deployments_active' => :'Integer',
        :'deployments_total' => :'Integer',
        :'images' => :'Array<String>',
        :'script' => :'String',
        :'user_defined_fields' => :'Array<GetStackScripts200ResponseDataInnerUserDefinedFieldsInner>',
        :'rev_note' => :'String',
        :'username' => :'String',
        :'is_public' => :'Boolean',
        :'created' => :'Time',
        :'id' => :'Integer',
        :'mine' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `LinodeOpenapiClient::GetStackScripts200ResponseDataInner` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LinodeOpenapiClient::GetStackScripts200ResponseDataInner`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'updated')
        self.updated = attributes[:'updated']
      end

      if attributes.key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'user_gravatar_id')
        self.user_gravatar_id = attributes[:'user_gravatar_id']
      end

      if attributes.key?(:'deployments_active')
        self.deployments_active = attributes[:'deployments_active']
      end

      if attributes.key?(:'deployments_total')
        self.deployments_total = attributes[:'deployments_total']
      end

      if attributes.key?(:'images')
        if (value = attributes[:'images']).is_a?(Array)
          self.images = value
        end
      end

      if attributes.key?(:'script')
        self.script = attributes[:'script']
      end

      if attributes.key?(:'user_defined_fields')
        if (value = attributes[:'user_defined_fields']).is_a?(Array)
          self.user_defined_fields = value
        end
      end

      if attributes.key?(:'rev_note')
        self.rev_note = attributes[:'rev_note']
      end

      if attributes.key?(:'username')
        self.username = attributes[:'username']
      end

      if attributes.key?(:'is_public')
        self.is_public = attributes[:'is_public']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'mine')
        self.mine = attributes[:'mine']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@label.nil? && @label.to_s.length > 128
        invalid_properties.push('invalid value for "label", the character length must be smaller than or equal to 128.')
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
      return false if !@label.nil? && @label.to_s.length > 128
      return false if !@label.nil? && @label.to_s.length < 3
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] label Value to be assigned
    def label=(label)
      if label.nil?
        fail ArgumentError, 'label cannot be nil'
      end

      if label.to_s.length > 128
        fail ArgumentError, 'invalid value for "label", the character length must be smaller than or equal to 128.'
      end

      if label.to_s.length < 3
        fail ArgumentError, 'invalid value for "label", the character length must be great than or equal to 3.'
      end

      @label = label
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          updated == o.updated &&
          label == o.label &&
          description == o.description &&
          user_gravatar_id == o.user_gravatar_id &&
          deployments_active == o.deployments_active &&
          deployments_total == o.deployments_total &&
          images == o.images &&
          script == o.script &&
          user_defined_fields == o.user_defined_fields &&
          rev_note == o.rev_note &&
          username == o.username &&
          is_public == o.is_public &&
          created == o.created &&
          id == o.id &&
          mine == o.mine
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [updated, label, description, user_gravatar_id, deployments_active, deployments_total, images, script, user_defined_fields, rev_note, username, is_public, created, id, mine].hash
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
