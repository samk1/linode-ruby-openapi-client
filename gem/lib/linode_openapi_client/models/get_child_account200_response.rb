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
  # Child account object.
  class GetChildAccount200Response
    # The tax identification number for this child account. Use this for tax calculations in some countries. If you live in a country that doesn't collect taxes, ensure this is an empty string (`\"\"`).
    attr_accessor :tax_id

    # __Filterable__ The phone number for the owner of this child account.
    attr_accessor :phone

    # __Filterable__ The company name for the owner of this child account. It can't include any of these characters: `<` `>` `(` `)` `\"` `=`. You can't change this value yourself. We use it to create the proxy users that a parent account uses to access a child account. Talk to your account team if you need to change this value.
    attr_accessor :company

    # __Read-only__ The source of service charges for this account, as determined by its relationship with Akamai. The API returns a value of `external` to describe a child account in a parent-child account environment.
    attr_accessor :billing_source

    # __Filterable__ The email address of the owner of this child account.
    attr_accessor :email

    # __Read-only__ This child account's current estimated invoice in US dollars. This is not your final invoice balance. Transfer charges are not included in the estimate.
    attr_accessor :balance_uninvoiced

    # __Filterable__ The last name of the owner of this child account. It can't include any of these characters: `<` `>` `(` `)` `\"` `=`.
    attr_accessor :last_name

    # __Filterable__ The two-letter ISO 3166 country code for this child account's billing address.
    attr_accessor :country

    # __Filterable__ First line of this child account's billing address.
    attr_accessor :address_1

    # __Read-only__ An external, unique identifier that Akamai assigned to the child account.
    attr_accessor :euuid

    attr_accessor :credit_card

    # __Filterable__ The city for this child account's billing address.
    attr_accessor :city

    # __Filterable__ The state or province for the billing address (`address_1` and `address_2, if applicable`). If in the United States (US) or Canada (CA), this is the two-letter ISO 3166 State or Province code.  __Note__. If this is a US military address, use state abbreviations (AA, AE, AP).
    attr_accessor :state

    # __Read-only__ This child account's balance, in US dollars.
    attr_accessor :balance

    # __Read-only__ The activation date and time for the child account.
    attr_accessor :active_since

    # __Filterable__ The first name of the owner of this child account. It can't include any of these characters: `<` `>` `(` `)` `\"` `=`.
    attr_accessor :first_name

    # __Filterable__ Second line of this child account's billing address, if applicable.
    attr_accessor :address_2

    # __Read-only__ A list of the capabilities the child account supports.
    attr_accessor :capabilities

    # __Filterable__ The zip code of this Account's billing address. The following restrictions apply:  - Can only contain ASCII letters, numbers, and hyphens (`-`). - Can't contain more than 9 letter or number characters.
    attr_accessor :zip

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
        :'tax_id' => :'tax_id',
        :'phone' => :'phone',
        :'company' => :'company',
        :'billing_source' => :'billing_source',
        :'email' => :'email',
        :'balance_uninvoiced' => :'balance_uninvoiced',
        :'last_name' => :'last_name',
        :'country' => :'country',
        :'address_1' => :'address_1',
        :'euuid' => :'euuid',
        :'credit_card' => :'credit_card',
        :'city' => :'city',
        :'state' => :'state',
        :'balance' => :'balance',
        :'active_since' => :'active_since',
        :'first_name' => :'first_name',
        :'address_2' => :'address_2',
        :'capabilities' => :'capabilities',
        :'zip' => :'zip'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'tax_id' => :'String',
        :'phone' => :'String',
        :'company' => :'String',
        :'billing_source' => :'String',
        :'email' => :'String',
        :'balance_uninvoiced' => :'Float',
        :'last_name' => :'String',
        :'country' => :'String',
        :'address_1' => :'String',
        :'euuid' => :'String',
        :'credit_card' => :'GetChildAccount200ResponseCreditCard',
        :'city' => :'String',
        :'state' => :'String',
        :'balance' => :'Float',
        :'active_since' => :'Time',
        :'first_name' => :'String',
        :'address_2' => :'String',
        :'capabilities' => :'Array<String>',
        :'zip' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `LinodeOpenapiClient::GetChildAccount200Response` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LinodeOpenapiClient::GetChildAccount200Response`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'tax_id')
        self.tax_id = attributes[:'tax_id']
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.key?(:'billing_source')
        self.billing_source = attributes[:'billing_source']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'balance_uninvoiced')
        self.balance_uninvoiced = attributes[:'balance_uninvoiced']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.key?(:'address_1')
        self.address_1 = attributes[:'address_1']
      end

      if attributes.key?(:'euuid')
        self.euuid = attributes[:'euuid']
      end

      if attributes.key?(:'credit_card')
        self.credit_card = attributes[:'credit_card']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'balance')
        self.balance = attributes[:'balance']
      end

      if attributes.key?(:'active_since')
        self.active_since = attributes[:'active_since']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'address_2')
        self.address_2 = attributes[:'address_2']
      end

      if attributes.key?(:'capabilities')
        if (value = attributes[:'capabilities']).is_a?(Array)
          self.capabilities = value
        end
      end

      if attributes.key?(:'zip')
        self.zip = attributes[:'zip']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@tax_id.nil? && @tax_id.to_s.length > 25
        invalid_properties.push('invalid value for "tax_id", the character length must be smaller than or equal to 25.')
      end

      if !@phone.nil? && @phone.to_s.length > 32
        invalid_properties.push('invalid value for "phone", the character length must be smaller than or equal to 32.')
      end

      if !@company.nil? && @company.to_s.length > 128
        invalid_properties.push('invalid value for "company", the character length must be smaller than or equal to 128.')
      end

      if !@email.nil? && @email.to_s.length > 128
        invalid_properties.push('invalid value for "email", the character length must be smaller than or equal to 128.')
      end

      if !@last_name.nil? && @last_name.to_s.length > 50
        invalid_properties.push('invalid value for "last_name", the character length must be smaller than or equal to 50.')
      end

      if !@address_1.nil? && @address_1.to_s.length > 64
        invalid_properties.push('invalid value for "address_1", the character length must be smaller than or equal to 64.')
      end

      if !@city.nil? && @city.to_s.length > 24
        invalid_properties.push('invalid value for "city", the character length must be smaller than or equal to 24.')
      end

      if !@state.nil? && @state.to_s.length > 24
        invalid_properties.push('invalid value for "state", the character length must be smaller than or equal to 24.')
      end

      if !@first_name.nil? && @first_name.to_s.length > 50
        invalid_properties.push('invalid value for "first_name", the character length must be smaller than or equal to 50.')
      end

      if !@address_2.nil? && @address_2.to_s.length > 64
        invalid_properties.push('invalid value for "address_2", the character length must be smaller than or equal to 64.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@tax_id.nil? && @tax_id.to_s.length > 25
      return false if !@phone.nil? && @phone.to_s.length > 32
      return false if !@company.nil? && @company.to_s.length > 128
      billing_source_validator = EnumAttributeValidator.new('String', ["external"])
      return false unless billing_source_validator.valid?(@billing_source)
      return false if !@email.nil? && @email.to_s.length > 128
      return false if !@last_name.nil? && @last_name.to_s.length > 50
      return false if !@address_1.nil? && @address_1.to_s.length > 64
      return false if !@city.nil? && @city.to_s.length > 24
      return false if !@state.nil? && @state.to_s.length > 24
      return false if !@first_name.nil? && @first_name.to_s.length > 50
      return false if !@address_2.nil? && @address_2.to_s.length > 64
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] tax_id Value to be assigned
    def tax_id=(tax_id)
      if tax_id.nil?
        fail ArgumentError, 'tax_id cannot be nil'
      end

      if tax_id.to_s.length > 25
        fail ArgumentError, 'invalid value for "tax_id", the character length must be smaller than or equal to 25.'
      end

      @tax_id = tax_id
    end

    # Custom attribute writer method with validation
    # @param [Object] phone Value to be assigned
    def phone=(phone)
      if phone.nil?
        fail ArgumentError, 'phone cannot be nil'
      end

      if phone.to_s.length > 32
        fail ArgumentError, 'invalid value for "phone", the character length must be smaller than or equal to 32.'
      end

      @phone = phone
    end

    # Custom attribute writer method with validation
    # @param [Object] company Value to be assigned
    def company=(company)
      if company.nil?
        fail ArgumentError, 'company cannot be nil'
      end

      if company.to_s.length > 128
        fail ArgumentError, 'invalid value for "company", the character length must be smaller than or equal to 128.'
      end

      @company = company
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_source Object to be assigned
    def billing_source=(billing_source)
      validator = EnumAttributeValidator.new('String', ["external"])
      unless validator.valid?(billing_source)
        fail ArgumentError, "invalid value for \"billing_source\", must be one of #{validator.allowable_values}."
      end
      @billing_source = billing_source
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if email.nil?
        fail ArgumentError, 'email cannot be nil'
      end

      if email.to_s.length > 128
        fail ArgumentError, 'invalid value for "email", the character length must be smaller than or equal to 128.'
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      if last_name.nil?
        fail ArgumentError, 'last_name cannot be nil'
      end

      if last_name.to_s.length > 50
        fail ArgumentError, 'invalid value for "last_name", the character length must be smaller than or equal to 50.'
      end

      @last_name = last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] address_1 Value to be assigned
    def address_1=(address_1)
      if address_1.nil?
        fail ArgumentError, 'address_1 cannot be nil'
      end

      if address_1.to_s.length > 64
        fail ArgumentError, 'invalid value for "address_1", the character length must be smaller than or equal to 64.'
      end

      @address_1 = address_1
    end

    # Custom attribute writer method with validation
    # @param [Object] city Value to be assigned
    def city=(city)
      if city.nil?
        fail ArgumentError, 'city cannot be nil'
      end

      if city.to_s.length > 24
        fail ArgumentError, 'invalid value for "city", the character length must be smaller than or equal to 24.'
      end

      @city = city
    end

    # Custom attribute writer method with validation
    # @param [Object] state Value to be assigned
    def state=(state)
      if state.nil?
        fail ArgumentError, 'state cannot be nil'
      end

      if state.to_s.length > 24
        fail ArgumentError, 'invalid value for "state", the character length must be smaller than or equal to 24.'
      end

      @state = state
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      if first_name.nil?
        fail ArgumentError, 'first_name cannot be nil'
      end

      if first_name.to_s.length > 50
        fail ArgumentError, 'invalid value for "first_name", the character length must be smaller than or equal to 50.'
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] address_2 Value to be assigned
    def address_2=(address_2)
      if address_2.nil?
        fail ArgumentError, 'address_2 cannot be nil'
      end

      if address_2.to_s.length > 64
        fail ArgumentError, 'invalid value for "address_2", the character length must be smaller than or equal to 64.'
      end

      @address_2 = address_2
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          tax_id == o.tax_id &&
          phone == o.phone &&
          company == o.company &&
          billing_source == o.billing_source &&
          email == o.email &&
          balance_uninvoiced == o.balance_uninvoiced &&
          last_name == o.last_name &&
          country == o.country &&
          address_1 == o.address_1 &&
          euuid == o.euuid &&
          credit_card == o.credit_card &&
          city == o.city &&
          state == o.state &&
          balance == o.balance &&
          active_since == o.active_since &&
          first_name == o.first_name &&
          address_2 == o.address_2 &&
          capabilities == o.capabilities &&
          zip == o.zip
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [tax_id, phone, company, billing_source, email, balance_uninvoiced, last_name, country, address_1, euuid, credit_card, city, state, balance, active_since, first_name, address_2, capabilities, zip].hash
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
