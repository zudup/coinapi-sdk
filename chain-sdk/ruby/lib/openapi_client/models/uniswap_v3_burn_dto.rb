=begin
#On Chain - REST API

# This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

The version of the OpenAPI document: v1
Contact: support@coinapi.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module OpenapiClient
  # Burn entities are created for every emitted Burn event on the Uniswap core contracts. The Burn entity stores key data about the event like token amounts, who burned, who received tokens, and more. This entity can be used to track liquidity removals on pairs.
  class UniswapV3BurnDTO
    attr_accessor :entry_time

    attr_accessor :recv_time

    # Number of block in which entity was recorded.
    attr_accessor :block_number

    # Transaction hash + '#' + index in mints Transaction array.
    attr_accessor :id

    # Transaction burn was included in.
    attr_accessor :transaction

    # Pool position is within.
    attr_accessor :pool

    # Reference to token0 as stored in pool contract.
    attr_accessor :token_0

    # Reference to token1 as stored in pool contract.
    attr_accessor :token_1

    # Timestamp.
    attr_accessor :timestamp

    # Owner of position where liquidity was burned.
    attr_accessor :owner

    # Transaction origin: the EOA (Externally Owned Account) that initiated the transaction.
    attr_accessor :origin

    # Amount of liquidity burned.
    attr_accessor :amount

    # Amount of token 0 burned.
    attr_accessor :amount_0

    # Amount of token 1 burned.
    attr_accessor :amount_1

    # Derived amount based on available prices of tokens.
    attr_accessor :amount_usd

    # Lower tick of position.
    attr_accessor :tick_lower

    # Upper tick of position.
    attr_accessor :tick_upper

    # Position within the transactions.
    attr_accessor :log_index

    # 
    attr_accessor :vid

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'entry_time' => :'entry_time',
        :'recv_time' => :'recv_time',
        :'block_number' => :'block_number',
        :'id' => :'id',
        :'transaction' => :'transaction',
        :'pool' => :'pool',
        :'token_0' => :'token_0',
        :'token_1' => :'token_1',
        :'timestamp' => :'timestamp',
        :'owner' => :'owner',
        :'origin' => :'origin',
        :'amount' => :'amount',
        :'amount_0' => :'amount_0',
        :'amount_1' => :'amount_1',
        :'amount_usd' => :'amount_usd',
        :'tick_lower' => :'tick_lower',
        :'tick_upper' => :'tick_upper',
        :'log_index' => :'log_index',
        :'vid' => :'vid'
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
        :'id' => :'String',
        :'transaction' => :'String',
        :'pool' => :'String',
        :'token_0' => :'String',
        :'token_1' => :'String',
        :'timestamp' => :'String',
        :'owner' => :'String',
        :'origin' => :'String',
        :'amount' => :'String',
        :'amount_0' => :'String',
        :'amount_1' => :'String',
        :'amount_usd' => :'String',
        :'tick_lower' => :'String',
        :'tick_upper' => :'String',
        :'log_index' => :'String',
        :'vid' => :'Integer'
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
        :'timestamp',
        :'owner',
        :'origin',
        :'amount',
        :'amount_0',
        :'amount_1',
        :'amount_usd',
        :'tick_lower',
        :'tick_upper',
        :'log_index',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::UniswapV3BurnDTO` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::UniswapV3BurnDTO`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'transaction')
        self.transaction = attributes[:'transaction']
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

      if attributes.key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.key?(:'owner')
        self.owner = attributes[:'owner']
      end

      if attributes.key?(:'origin')
        self.origin = attributes[:'origin']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
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

      if attributes.key?(:'tick_lower')
        self.tick_lower = attributes[:'tick_lower']
      end

      if attributes.key?(:'tick_upper')
        self.tick_upper = attributes[:'tick_upper']
      end

      if attributes.key?(:'log_index')
        self.log_index = attributes[:'log_index']
      end

      if attributes.key?(:'vid')
        self.vid = attributes[:'vid']
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
          id == o.id &&
          transaction == o.transaction &&
          pool == o.pool &&
          token_0 == o.token_0 &&
          token_1 == o.token_1 &&
          timestamp == o.timestamp &&
          owner == o.owner &&
          origin == o.origin &&
          amount == o.amount &&
          amount_0 == o.amount_0 &&
          amount_1 == o.amount_1 &&
          amount_usd == o.amount_usd &&
          tick_lower == o.tick_lower &&
          tick_upper == o.tick_upper &&
          log_index == o.log_index &&
          vid == o.vid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [entry_time, recv_time, block_number, id, transaction, pool, token_0, token_1, timestamp, owner, origin, amount, amount_0, amount_1, amount_usd, tick_lower, tick_upper, log_index, vid].hash
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
