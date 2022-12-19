=begin
#On Chain Dapps - REST API

# This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

The version of the OpenAPI document: v1
Contact: support@coinapi.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module OpenapiClient
  # Information about a pair. Includes references to each token within the pair, volume information, liquidity information, and more. The pair entity mirrors the pair smart contract, and also contains aggregated information about use.
  class UniswapV2PairDTO
    attr_accessor :entry_time

    attr_accessor :recv_time

    # Number of block in which entity was recorded.
    attr_accessor :block_number

    # 
    attr_accessor :vid

    # Pair contract address.
    attr_accessor :id

    # Reference to token0 as stored in pair contract.
    attr_accessor :token_0

    # Reference to token1 as stored in pair contract.
    attr_accessor :token_1

    # Reserve of token0.
    attr_accessor :reserve_0

    # Reserve of token1.
    attr_accessor :reserve_1

    # Total supply of liquidity token distributed to LPs.
    attr_accessor :total_supply

    # Total liquidity in pair stored as an amount of ETH.
    attr_accessor :reserve_eth

    # Total liquidity amount in pair stored as an amount of USD.
    attr_accessor :reserve_usd

    # Total liquidity with only tracked amount.
    attr_accessor :tracked_reserve_eth

    # Token0 per token1.
    attr_accessor :token_0_price

    # Token1 per token0.
    attr_accessor :token_1_price

    # Amount of token0 swapped on this pair.
    attr_accessor :volume_token_0

    # Amount of token1 swapped on this pair.
    attr_accessor :volume_token_1

    # Total amount swapped all time in this pair stored in USD (only tracked if USD liquidity is above minimum threshold).
    attr_accessor :volume_usd

    # Total amount swapped all time in this pair stored in USD, no minimum liquidity threshold.
    attr_accessor :untracked_volume_usd

    attr_accessor :tx_count

    # Timestamp contract was created.
    attr_accessor :created_at_timestamp

    # Total number of LPs.
    attr_accessor :liquidity_provider_count

    attr_accessor :evaluated_ask

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'entry_time' => :'entry_time',
        :'recv_time' => :'recv_time',
        :'block_number' => :'block_number',
        :'vid' => :'vid',
        :'id' => :'id',
        :'token_0' => :'token_0',
        :'token_1' => :'token_1',
        :'reserve_0' => :'reserve_0',
        :'reserve_1' => :'reserve_1',
        :'total_supply' => :'total_supply',
        :'reserve_eth' => :'reserve_eth',
        :'reserve_usd' => :'reserve_usd',
        :'tracked_reserve_eth' => :'tracked_reserve_eth',
        :'token_0_price' => :'token_0_price',
        :'token_1_price' => :'token_1_price',
        :'volume_token_0' => :'volume_token_0',
        :'volume_token_1' => :'volume_token_1',
        :'volume_usd' => :'volume_usd',
        :'untracked_volume_usd' => :'untracked_volume_usd',
        :'tx_count' => :'tx_count',
        :'created_at_timestamp' => :'created_at_timestamp',
        :'liquidity_provider_count' => :'liquidity_provider_count',
        :'evaluated_ask' => :'evaluated_ask'
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
        :'token_0' => :'String',
        :'token_1' => :'String',
        :'reserve_0' => :'String',
        :'reserve_1' => :'String',
        :'total_supply' => :'String',
        :'reserve_eth' => :'String',
        :'reserve_usd' => :'String',
        :'tracked_reserve_eth' => :'String',
        :'token_0_price' => :'String',
        :'token_1_price' => :'String',
        :'volume_token_0' => :'String',
        :'volume_token_1' => :'String',
        :'volume_usd' => :'String',
        :'untracked_volume_usd' => :'String',
        :'tx_count' => :'NumericsBigInteger',
        :'created_at_timestamp' => :'Time',
        :'liquidity_provider_count' => :'String',
        :'evaluated_ask' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'id',
        :'token_0',
        :'token_1',
        :'reserve_0',
        :'reserve_1',
        :'total_supply',
        :'reserve_eth',
        :'reserve_usd',
        :'tracked_reserve_eth',
        :'token_0_price',
        :'token_1_price',
        :'volume_token_0',
        :'volume_token_1',
        :'volume_usd',
        :'untracked_volume_usd',
        :'liquidity_provider_count',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::UniswapV2PairDTO` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::UniswapV2PairDTO`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'token_0')
        self.token_0 = attributes[:'token_0']
      end

      if attributes.key?(:'token_1')
        self.token_1 = attributes[:'token_1']
      end

      if attributes.key?(:'reserve_0')
        self.reserve_0 = attributes[:'reserve_0']
      end

      if attributes.key?(:'reserve_1')
        self.reserve_1 = attributes[:'reserve_1']
      end

      if attributes.key?(:'total_supply')
        self.total_supply = attributes[:'total_supply']
      end

      if attributes.key?(:'reserve_eth')
        self.reserve_eth = attributes[:'reserve_eth']
      end

      if attributes.key?(:'reserve_usd')
        self.reserve_usd = attributes[:'reserve_usd']
      end

      if attributes.key?(:'tracked_reserve_eth')
        self.tracked_reserve_eth = attributes[:'tracked_reserve_eth']
      end

      if attributes.key?(:'token_0_price')
        self.token_0_price = attributes[:'token_0_price']
      end

      if attributes.key?(:'token_1_price')
        self.token_1_price = attributes[:'token_1_price']
      end

      if attributes.key?(:'volume_token_0')
        self.volume_token_0 = attributes[:'volume_token_0']
      end

      if attributes.key?(:'volume_token_1')
        self.volume_token_1 = attributes[:'volume_token_1']
      end

      if attributes.key?(:'volume_usd')
        self.volume_usd = attributes[:'volume_usd']
      end

      if attributes.key?(:'untracked_volume_usd')
        self.untracked_volume_usd = attributes[:'untracked_volume_usd']
      end

      if attributes.key?(:'tx_count')
        self.tx_count = attributes[:'tx_count']
      end

      if attributes.key?(:'created_at_timestamp')
        self.created_at_timestamp = attributes[:'created_at_timestamp']
      end

      if attributes.key?(:'liquidity_provider_count')
        self.liquidity_provider_count = attributes[:'liquidity_provider_count']
      end

      if attributes.key?(:'evaluated_ask')
        self.evaluated_ask = attributes[:'evaluated_ask']
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
          token_0 == o.token_0 &&
          token_1 == o.token_1 &&
          reserve_0 == o.reserve_0 &&
          reserve_1 == o.reserve_1 &&
          total_supply == o.total_supply &&
          reserve_eth == o.reserve_eth &&
          reserve_usd == o.reserve_usd &&
          tracked_reserve_eth == o.tracked_reserve_eth &&
          token_0_price == o.token_0_price &&
          token_1_price == o.token_1_price &&
          volume_token_0 == o.volume_token_0 &&
          volume_token_1 == o.volume_token_1 &&
          volume_usd == o.volume_usd &&
          untracked_volume_usd == o.untracked_volume_usd &&
          tx_count == o.tx_count &&
          created_at_timestamp == o.created_at_timestamp &&
          liquidity_provider_count == o.liquidity_provider_count &&
          evaluated_ask == o.evaluated_ask
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [entry_time, recv_time, block_number, vid, id, token_0, token_1, reserve_0, reserve_1, total_supply, reserve_eth, reserve_usd, tracked_reserve_eth, token_0_price, token_1_price, volume_token_0, volume_token_1, volume_usd, untracked_volume_usd, tx_count, created_at_timestamp, liquidity_provider_count, evaluated_ask].hash
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