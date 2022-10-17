=begin
#OnChain API

# This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

The version of the OpenAPI document: v1
Contact: support@coinapi.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'date'
require 'time'

module OpenapiClient
  class SwapV3DTO
    attr_accessor :entry_time

    attr_accessor :recv_time

    attr_accessor :block_number

    attr_accessor :vid

    attr_accessor :id

    attr_accessor :transaction

    attr_accessor :timestamp

    attr_accessor :pool

    attr_accessor :token_0

    attr_accessor :token_1

    attr_accessor :sender

    attr_accessor :recipient

    attr_accessor :origin

    attr_accessor :amount_0

    attr_accessor :amount_1

    attr_accessor :amount_usd

    attr_accessor :sqrt_price_x96

    attr_accessor :tick

    attr_accessor :log_index

    attr_accessor :evaluated_price

    attr_accessor :evaluated_amount

    attr_accessor :evaluated_aggressor

    attr_accessor :pool_id

    attr_accessor :transaction_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'entry_time' => :'entry_time',
        :'recv_time' => :'recv_time',
        :'block_number' => :'block_number',
        :'vid' => :'vid',
        :'id' => :'id',
        :'transaction' => :'transaction',
        :'timestamp' => :'timestamp',
        :'pool' => :'pool',
        :'token_0' => :'token_0',
        :'token_1' => :'token_1',
        :'sender' => :'sender',
        :'recipient' => :'recipient',
        :'origin' => :'origin',
        :'amount_0' => :'amount_0',
        :'amount_1' => :'amount_1',
        :'amount_usd' => :'amount_usd',
        :'sqrt_price_x96' => :'sqrt_price_x96',
        :'tick' => :'tick',
        :'log_index' => :'log_index',
        :'evaluated_price' => :'evaluated_price',
        :'evaluated_amount' => :'evaluated_amount',
        :'evaluated_aggressor' => :'evaluated_aggressor',
        :'pool_id' => :'pool_id',
        :'transaction_id' => :'transaction_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'entry_time' => :'Time',
        :'recv_time' => :'Time',
        :'block_number' => :'Integer',
        :'vid' => :'Integer',
        :'id' => :'String',
        :'transaction' => :'String',
        :'timestamp' => :'Time',
        :'pool' => :'String',
        :'token_0' => :'String',
        :'token_1' => :'String',
        :'sender' => :'String',
        :'recipient' => :'String',
        :'origin' => :'String',
        :'amount_0' => :'String',
        :'amount_1' => :'String',
        :'amount_usd' => :'String',
        :'sqrt_price_x96' => :'BigInteger',
        :'tick' => :'BigInteger',
        :'log_index' => :'BigInteger',
        :'evaluated_price' => :'Float',
        :'evaluated_amount' => :'Float',
        :'evaluated_aggressor' => :'ETradeAggressiveSide',
        :'pool_id' => :'String',
        :'transaction_id' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'id',
        :'transaction',
        :'pool',
        :'token_0',
        :'token_1',
        :'sender',
        :'recipient',
        :'origin',
        :'amount_0',
        :'amount_1',
        :'amount_usd',
        :'pool_id',
        :'transaction_id'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::SwapV3DTO` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::SwapV3DTO`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'entry_time')
        self.entry_time = attributes[:'entry_time']
      end

      if attributes.key?(:'recv_time')
        self.recv_time = attributes[:'recv_time']
      end

      if attributes.key?(:'block_number')
        self.block_number = attributes[:'block_number']
      end

      if attributes.key?(:'vid')
        self.vid = attributes[:'vid']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'transaction')
        self.transaction = attributes[:'transaction']
      end

      if attributes.key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.key?(:'pool')
        self.pool = attributes[:'pool']
      end

      if attributes.key?(:'token_0')
        self.token_0 = attributes[:'token_0']
      end

      if attributes.key?(:'token_1')
        self.token_1 = attributes[:'token_1']
      end

      if attributes.key?(:'sender')
        self.sender = attributes[:'sender']
      end

      if attributes.key?(:'recipient')
        self.recipient = attributes[:'recipient']
      end

      if attributes.key?(:'origin')
        self.origin = attributes[:'origin']
      end

      if attributes.key?(:'amount_0')
        self.amount_0 = attributes[:'amount_0']
      end

      if attributes.key?(:'amount_1')
        self.amount_1 = attributes[:'amount_1']
      end

      if attributes.key?(:'amount_usd')
        self.amount_usd = attributes[:'amount_usd']
      end

      if attributes.key?(:'sqrt_price_x96')
        self.sqrt_price_x96 = attributes[:'sqrt_price_x96']
      end

      if attributes.key?(:'tick')
        self.tick = attributes[:'tick']
      end

      if attributes.key?(:'log_index')
        self.log_index = attributes[:'log_index']
      end

      if attributes.key?(:'evaluated_price')
        self.evaluated_price = attributes[:'evaluated_price']
      end

      if attributes.key?(:'evaluated_amount')
        self.evaluated_amount = attributes[:'evaluated_amount']
      end

      if attributes.key?(:'evaluated_aggressor')
        self.evaluated_aggressor = attributes[:'evaluated_aggressor']
      end

      if attributes.key?(:'pool_id')
        self.pool_id = attributes[:'pool_id']
      end

      if attributes.key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          entry_time == o.entry_time &&
          recv_time == o.recv_time &&
          block_number == o.block_number &&
          vid == o.vid &&
          id == o.id &&
          transaction == o.transaction &&
          timestamp == o.timestamp &&
          pool == o.pool &&
          token_0 == o.token_0 &&
          token_1 == o.token_1 &&
          sender == o.sender &&
          recipient == o.recipient &&
          origin == o.origin &&
          amount_0 == o.amount_0 &&
          amount_1 == o.amount_1 &&
          amount_usd == o.amount_usd &&
          sqrt_price_x96 == o.sqrt_price_x96 &&
          tick == o.tick &&
          log_index == o.log_index &&
          evaluated_price == o.evaluated_price &&
          evaluated_amount == o.evaluated_amount &&
          evaluated_aggressor == o.evaluated_aggressor &&
          pool_id == o.pool_id &&
          transaction_id == o.transaction_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [entry_time, recv_time, block_number, vid, id, transaction, timestamp, pool, token_0, token_1, sender, recipient, origin, amount_0, amount_1, amount_usd, sqrt_price_x96, tick, log_index, evaluated_price, evaluated_amount, evaluated_aggressor, pool_id, transaction_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
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
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
