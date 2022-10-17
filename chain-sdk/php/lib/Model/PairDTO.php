<?php
/**
 * PairDTO
 *
 * PHP version 7.4
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */

/**
 * OnChain API
 *
 * This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 * Generated by: https://openapi-generator.tech
 * OpenAPI Generator version: 6.2.0
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace OpenAPI\Client\Model;

use \ArrayAccess;
use \OpenAPI\Client\ObjectSerializer;

/**
 * PairDTO Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<string, mixed>
 */
class PairDTO implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'PairDTO';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'entry_time' => '\DateTime',
        'recv_time' => '\DateTime',
        'block_number' => 'int',
        'id' => 'string',
        'factory' => 'string',
        'name' => 'string',
        'token_0' => 'string',
        'token_1' => 'string',
        'reserve_0' => 'string',
        'reserve_1' => 'string',
        'total_supply' => 'string',
        'reserve_eth' => 'string',
        'reserve_usd' => 'string',
        'tracked_reserve_eth' => 'string',
        'token_0_price' => 'string',
        'token_1_price' => 'string',
        'volume_token_0' => 'string',
        'volume_token_1' => 'string',
        'volume_usd' => 'string',
        'untracked_volume_usd' => 'string',
        'tx_count' => 'string',
        'liquidity_provider_count' => 'string',
        'timestamp' => 'string',
        'block' => 'string',
        'vid' => 'int',
        'evaluated_ask' => 'float'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'entry_time' => 'date-time',
        'recv_time' => 'date-time',
        'block_number' => 'int64',
        'id' => null,
        'factory' => null,
        'name' => null,
        'token_0' => null,
        'token_1' => null,
        'reserve_0' => null,
        'reserve_1' => null,
        'total_supply' => null,
        'reserve_eth' => null,
        'reserve_usd' => null,
        'tracked_reserve_eth' => null,
        'token_0_price' => null,
        'token_1_price' => null,
        'volume_token_0' => null,
        'volume_token_1' => null,
        'volume_usd' => null,
        'untracked_volume_usd' => null,
        'tx_count' => null,
        'liquidity_provider_count' => null,
        'timestamp' => null,
        'block' => null,
        'vid' => 'int64',
        'evaluated_ask' => 'double'
    ];

    /**
      * Array of nullable properties. Used for (de)serialization
      *
      * @var boolean[]
      */
    protected static array $openAPINullables = [
        'entry_time' => false,
		'recv_time' => false,
		'block_number' => false,
		'id' => true,
		'factory' => true,
		'name' => true,
		'token_0' => true,
		'token_1' => true,
		'reserve_0' => true,
		'reserve_1' => true,
		'total_supply' => true,
		'reserve_eth' => true,
		'reserve_usd' => true,
		'tracked_reserve_eth' => true,
		'token_0_price' => true,
		'token_1_price' => true,
		'volume_token_0' => true,
		'volume_token_1' => true,
		'volume_usd' => true,
		'untracked_volume_usd' => true,
		'tx_count' => true,
		'liquidity_provider_count' => true,
		'timestamp' => true,
		'block' => true,
		'vid' => false,
		'evaluated_ask' => false
    ];

    /**
      * If a nullable field gets set to null, insert it here
      *
      * @var boolean[]
      */
    protected array $openAPINullablesSetToNull = [];

    /**
     * Array of property to type mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPITypes()
    {
        return self::$openAPITypes;
    }

    /**
     * Array of property to format mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPIFormats()
    {
        return self::$openAPIFormats;
    }

    /**
     * Array of nullable properties
     *
     * @return array
     */
    protected static function openAPINullables(): array
    {
        return self::$openAPINullables;
    }

    /**
     * Array of nullable field names deliberately set to null
     *
     * @return boolean[]
     */
    private function getOpenAPINullablesSetToNull(): array
    {
        return $this->openAPINullablesSetToNull;
    }

    /**
     * Checks if a property is nullable
     *
     * @param string $property
     * @return bool
     */
    public static function isNullable(string $property): bool
    {
        return self::openAPINullables()[$property] ?? false;
    }

    /**
     * Checks if a nullable property is set to null.
     *
     * @param string $property
     * @return bool
     */
    public function isNullableSetToNull(string $property): bool
    {
        return in_array($property, $this->getOpenAPINullablesSetToNull(), true);
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'entry_time' => 'entry_time',
        'recv_time' => 'recv_time',
        'block_number' => 'block_number',
        'id' => 'id',
        'factory' => 'factory',
        'name' => 'name',
        'token_0' => 'token_0',
        'token_1' => 'token_1',
        'reserve_0' => 'reserve_0',
        'reserve_1' => 'reserve_1',
        'total_supply' => 'total_supply',
        'reserve_eth' => 'reserve_eth',
        'reserve_usd' => 'reserve_usd',
        'tracked_reserve_eth' => 'tracked_reserve_eth',
        'token_0_price' => 'token_0_price',
        'token_1_price' => 'token_1_price',
        'volume_token_0' => 'volume_token_0',
        'volume_token_1' => 'volume_token_1',
        'volume_usd' => 'volume_usd',
        'untracked_volume_usd' => 'untracked_volume_usd',
        'tx_count' => 'tx_count',
        'liquidity_provider_count' => 'liquidity_provider_count',
        'timestamp' => 'timestamp',
        'block' => 'block',
        'vid' => 'vid',
        'evaluated_ask' => 'evaluated_ask'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'entry_time' => 'setEntryTime',
        'recv_time' => 'setRecvTime',
        'block_number' => 'setBlockNumber',
        'id' => 'setId',
        'factory' => 'setFactory',
        'name' => 'setName',
        'token_0' => 'setToken0',
        'token_1' => 'setToken1',
        'reserve_0' => 'setReserve0',
        'reserve_1' => 'setReserve1',
        'total_supply' => 'setTotalSupply',
        'reserve_eth' => 'setReserveEth',
        'reserve_usd' => 'setReserveUsd',
        'tracked_reserve_eth' => 'setTrackedReserveEth',
        'token_0_price' => 'setToken0Price',
        'token_1_price' => 'setToken1Price',
        'volume_token_0' => 'setVolumeToken0',
        'volume_token_1' => 'setVolumeToken1',
        'volume_usd' => 'setVolumeUsd',
        'untracked_volume_usd' => 'setUntrackedVolumeUsd',
        'tx_count' => 'setTxCount',
        'liquidity_provider_count' => 'setLiquidityProviderCount',
        'timestamp' => 'setTimestamp',
        'block' => 'setBlock',
        'vid' => 'setVid',
        'evaluated_ask' => 'setEvaluatedAsk'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'entry_time' => 'getEntryTime',
        'recv_time' => 'getRecvTime',
        'block_number' => 'getBlockNumber',
        'id' => 'getId',
        'factory' => 'getFactory',
        'name' => 'getName',
        'token_0' => 'getToken0',
        'token_1' => 'getToken1',
        'reserve_0' => 'getReserve0',
        'reserve_1' => 'getReserve1',
        'total_supply' => 'getTotalSupply',
        'reserve_eth' => 'getReserveEth',
        'reserve_usd' => 'getReserveUsd',
        'tracked_reserve_eth' => 'getTrackedReserveEth',
        'token_0_price' => 'getToken0Price',
        'token_1_price' => 'getToken1Price',
        'volume_token_0' => 'getVolumeToken0',
        'volume_token_1' => 'getVolumeToken1',
        'volume_usd' => 'getVolumeUsd',
        'untracked_volume_usd' => 'getUntrackedVolumeUsd',
        'tx_count' => 'getTxCount',
        'liquidity_provider_count' => 'getLiquidityProviderCount',
        'timestamp' => 'getTimestamp',
        'block' => 'getBlock',
        'vid' => 'getVid',
        'evaluated_ask' => 'getEvaluatedAsk'
    ];

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @return array
     */
    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @return array
     */
    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @return array
     */
    public static function getters()
    {
        return self::$getters;
    }

    /**
     * The original name of the model.
     *
     * @return string
     */
    public function getModelName()
    {
        return self::$openAPIModelName;
    }


    /**
     * Associative array for storing property values
     *
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor
     *
     * @param mixed[] $data Associated array of property values
     *                      initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->setIfExists('entry_time', $data ?? [], null);
        $this->setIfExists('recv_time', $data ?? [], null);
        $this->setIfExists('block_number', $data ?? [], null);
        $this->setIfExists('id', $data ?? [], null);
        $this->setIfExists('factory', $data ?? [], null);
        $this->setIfExists('name', $data ?? [], null);
        $this->setIfExists('token_0', $data ?? [], null);
        $this->setIfExists('token_1', $data ?? [], null);
        $this->setIfExists('reserve_0', $data ?? [], null);
        $this->setIfExists('reserve_1', $data ?? [], null);
        $this->setIfExists('total_supply', $data ?? [], null);
        $this->setIfExists('reserve_eth', $data ?? [], null);
        $this->setIfExists('reserve_usd', $data ?? [], null);
        $this->setIfExists('tracked_reserve_eth', $data ?? [], null);
        $this->setIfExists('token_0_price', $data ?? [], null);
        $this->setIfExists('token_1_price', $data ?? [], null);
        $this->setIfExists('volume_token_0', $data ?? [], null);
        $this->setIfExists('volume_token_1', $data ?? [], null);
        $this->setIfExists('volume_usd', $data ?? [], null);
        $this->setIfExists('untracked_volume_usd', $data ?? [], null);
        $this->setIfExists('tx_count', $data ?? [], null);
        $this->setIfExists('liquidity_provider_count', $data ?? [], null);
        $this->setIfExists('timestamp', $data ?? [], null);
        $this->setIfExists('block', $data ?? [], null);
        $this->setIfExists('vid', $data ?? [], null);
        $this->setIfExists('evaluated_ask', $data ?? [], null);
    }

    /**
    * Sets $this->container[$variableName] to the given data or to the given default Value; if $variableName
    * is nullable and its value is set to null in the $fields array, then mark it as "set to null" in the
    * $this->openAPINullablesSetToNull array
    *
    * @param string $variableName
    * @param array  $fields
    * @param mixed  $defaultValue
    */
    private function setIfExists(string $variableName, array $fields, $defaultValue): void
    {
        if (self::isNullable($variableName) && array_key_exists($variableName, $fields) && is_null($fields[$variableName])) {
            $this->openAPINullablesSetToNull[] = $variableName;
        }

        $this->container[$variableName] = $fields[$variableName] ?? $defaultValue;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        return $invalidProperties;
    }

    /**
     * Validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {
        return count($this->listInvalidProperties()) === 0;
    }


    /**
     * Gets entry_time
     *
     * @return \DateTime|null
     */
    public function getEntryTime()
    {
        return $this->container['entry_time'];
    }

    /**
     * Sets entry_time
     *
     * @param \DateTime|null $entry_time entry_time
     *
     * @return self
     */
    public function setEntryTime($entry_time)
    {

        if (is_null($entry_time)) {
            throw new \InvalidArgumentException('non-nullable entry_time cannot be null');
        }

        $this->container['entry_time'] = $entry_time;

        return $this;
    }

    /**
     * Gets recv_time
     *
     * @return \DateTime|null
     */
    public function getRecvTime()
    {
        return $this->container['recv_time'];
    }

    /**
     * Sets recv_time
     *
     * @param \DateTime|null $recv_time recv_time
     *
     * @return self
     */
    public function setRecvTime($recv_time)
    {

        if (is_null($recv_time)) {
            throw new \InvalidArgumentException('non-nullable recv_time cannot be null');
        }

        $this->container['recv_time'] = $recv_time;

        return $this;
    }

    /**
     * Gets block_number
     *
     * @return int|null
     */
    public function getBlockNumber()
    {
        return $this->container['block_number'];
    }

    /**
     * Sets block_number
     *
     * @param int|null $block_number block_number
     *
     * @return self
     */
    public function setBlockNumber($block_number)
    {

        if (is_null($block_number)) {
            throw new \InvalidArgumentException('non-nullable block_number cannot be null');
        }

        $this->container['block_number'] = $block_number;

        return $this;
    }

    /**
     * Gets id
     *
     * @return string|null
     */
    public function getId()
    {
        return $this->container['id'];
    }

    /**
     * Sets id
     *
     * @param string|null $id id
     *
     * @return self
     */
    public function setId($id)
    {

        if (is_null($id)) {
            array_push($this->openAPINullablesSetToNull, 'id');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('id', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['id'] = $id;

        return $this;
    }

    /**
     * Gets factory
     *
     * @return string|null
     */
    public function getFactory()
    {
        return $this->container['factory'];
    }

    /**
     * Sets factory
     *
     * @param string|null $factory factory
     *
     * @return self
     */
    public function setFactory($factory)
    {

        if (is_null($factory)) {
            array_push($this->openAPINullablesSetToNull, 'factory');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('factory', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['factory'] = $factory;

        return $this;
    }

    /**
     * Gets name
     *
     * @return string|null
     */
    public function getName()
    {
        return $this->container['name'];
    }

    /**
     * Sets name
     *
     * @param string|null $name name
     *
     * @return self
     */
    public function setName($name)
    {

        if (is_null($name)) {
            array_push($this->openAPINullablesSetToNull, 'name');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('name', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['name'] = $name;

        return $this;
    }

    /**
     * Gets token_0
     *
     * @return string|null
     */
    public function getToken0()
    {
        return $this->container['token_0'];
    }

    /**
     * Sets token_0
     *
     * @param string|null $token_0 token_0
     *
     * @return self
     */
    public function setToken0($token_0)
    {

        if (is_null($token_0)) {
            array_push($this->openAPINullablesSetToNull, 'token_0');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('token_0', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['token_0'] = $token_0;

        return $this;
    }

    /**
     * Gets token_1
     *
     * @return string|null
     */
    public function getToken1()
    {
        return $this->container['token_1'];
    }

    /**
     * Sets token_1
     *
     * @param string|null $token_1 token_1
     *
     * @return self
     */
    public function setToken1($token_1)
    {

        if (is_null($token_1)) {
            array_push($this->openAPINullablesSetToNull, 'token_1');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('token_1', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['token_1'] = $token_1;

        return $this;
    }

    /**
     * Gets reserve_0
     *
     * @return string|null
     */
    public function getReserve0()
    {
        return $this->container['reserve_0'];
    }

    /**
     * Sets reserve_0
     *
     * @param string|null $reserve_0 reserve_0
     *
     * @return self
     */
    public function setReserve0($reserve_0)
    {

        if (is_null($reserve_0)) {
            array_push($this->openAPINullablesSetToNull, 'reserve_0');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('reserve_0', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['reserve_0'] = $reserve_0;

        return $this;
    }

    /**
     * Gets reserve_1
     *
     * @return string|null
     */
    public function getReserve1()
    {
        return $this->container['reserve_1'];
    }

    /**
     * Sets reserve_1
     *
     * @param string|null $reserve_1 reserve_1
     *
     * @return self
     */
    public function setReserve1($reserve_1)
    {

        if (is_null($reserve_1)) {
            array_push($this->openAPINullablesSetToNull, 'reserve_1');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('reserve_1', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['reserve_1'] = $reserve_1;

        return $this;
    }

    /**
     * Gets total_supply
     *
     * @return string|null
     */
    public function getTotalSupply()
    {
        return $this->container['total_supply'];
    }

    /**
     * Sets total_supply
     *
     * @param string|null $total_supply total_supply
     *
     * @return self
     */
    public function setTotalSupply($total_supply)
    {

        if (is_null($total_supply)) {
            array_push($this->openAPINullablesSetToNull, 'total_supply');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('total_supply', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['total_supply'] = $total_supply;

        return $this;
    }

    /**
     * Gets reserve_eth
     *
     * @return string|null
     */
    public function getReserveEth()
    {
        return $this->container['reserve_eth'];
    }

    /**
     * Sets reserve_eth
     *
     * @param string|null $reserve_eth reserve_eth
     *
     * @return self
     */
    public function setReserveEth($reserve_eth)
    {

        if (is_null($reserve_eth)) {
            array_push($this->openAPINullablesSetToNull, 'reserve_eth');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('reserve_eth', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['reserve_eth'] = $reserve_eth;

        return $this;
    }

    /**
     * Gets reserve_usd
     *
     * @return string|null
     */
    public function getReserveUsd()
    {
        return $this->container['reserve_usd'];
    }

    /**
     * Sets reserve_usd
     *
     * @param string|null $reserve_usd reserve_usd
     *
     * @return self
     */
    public function setReserveUsd($reserve_usd)
    {

        if (is_null($reserve_usd)) {
            array_push($this->openAPINullablesSetToNull, 'reserve_usd');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('reserve_usd', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['reserve_usd'] = $reserve_usd;

        return $this;
    }

    /**
     * Gets tracked_reserve_eth
     *
     * @return string|null
     */
    public function getTrackedReserveEth()
    {
        return $this->container['tracked_reserve_eth'];
    }

    /**
     * Sets tracked_reserve_eth
     *
     * @param string|null $tracked_reserve_eth tracked_reserve_eth
     *
     * @return self
     */
    public function setTrackedReserveEth($tracked_reserve_eth)
    {

        if (is_null($tracked_reserve_eth)) {
            array_push($this->openAPINullablesSetToNull, 'tracked_reserve_eth');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('tracked_reserve_eth', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['tracked_reserve_eth'] = $tracked_reserve_eth;

        return $this;
    }

    /**
     * Gets token_0_price
     *
     * @return string|null
     */
    public function getToken0Price()
    {
        return $this->container['token_0_price'];
    }

    /**
     * Sets token_0_price
     *
     * @param string|null $token_0_price token_0_price
     *
     * @return self
     */
    public function setToken0Price($token_0_price)
    {

        if (is_null($token_0_price)) {
            array_push($this->openAPINullablesSetToNull, 'token_0_price');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('token_0_price', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['token_0_price'] = $token_0_price;

        return $this;
    }

    /**
     * Gets token_1_price
     *
     * @return string|null
     */
    public function getToken1Price()
    {
        return $this->container['token_1_price'];
    }

    /**
     * Sets token_1_price
     *
     * @param string|null $token_1_price token_1_price
     *
     * @return self
     */
    public function setToken1Price($token_1_price)
    {

        if (is_null($token_1_price)) {
            array_push($this->openAPINullablesSetToNull, 'token_1_price');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('token_1_price', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['token_1_price'] = $token_1_price;

        return $this;
    }

    /**
     * Gets volume_token_0
     *
     * @return string|null
     */
    public function getVolumeToken0()
    {
        return $this->container['volume_token_0'];
    }

    /**
     * Sets volume_token_0
     *
     * @param string|null $volume_token_0 volume_token_0
     *
     * @return self
     */
    public function setVolumeToken0($volume_token_0)
    {

        if (is_null($volume_token_0)) {
            array_push($this->openAPINullablesSetToNull, 'volume_token_0');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('volume_token_0', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['volume_token_0'] = $volume_token_0;

        return $this;
    }

    /**
     * Gets volume_token_1
     *
     * @return string|null
     */
    public function getVolumeToken1()
    {
        return $this->container['volume_token_1'];
    }

    /**
     * Sets volume_token_1
     *
     * @param string|null $volume_token_1 volume_token_1
     *
     * @return self
     */
    public function setVolumeToken1($volume_token_1)
    {

        if (is_null($volume_token_1)) {
            array_push($this->openAPINullablesSetToNull, 'volume_token_1');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('volume_token_1', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['volume_token_1'] = $volume_token_1;

        return $this;
    }

    /**
     * Gets volume_usd
     *
     * @return string|null
     */
    public function getVolumeUsd()
    {
        return $this->container['volume_usd'];
    }

    /**
     * Sets volume_usd
     *
     * @param string|null $volume_usd volume_usd
     *
     * @return self
     */
    public function setVolumeUsd($volume_usd)
    {

        if (is_null($volume_usd)) {
            array_push($this->openAPINullablesSetToNull, 'volume_usd');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('volume_usd', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['volume_usd'] = $volume_usd;

        return $this;
    }

    /**
     * Gets untracked_volume_usd
     *
     * @return string|null
     */
    public function getUntrackedVolumeUsd()
    {
        return $this->container['untracked_volume_usd'];
    }

    /**
     * Sets untracked_volume_usd
     *
     * @param string|null $untracked_volume_usd untracked_volume_usd
     *
     * @return self
     */
    public function setUntrackedVolumeUsd($untracked_volume_usd)
    {

        if (is_null($untracked_volume_usd)) {
            array_push($this->openAPINullablesSetToNull, 'untracked_volume_usd');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('untracked_volume_usd', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['untracked_volume_usd'] = $untracked_volume_usd;

        return $this;
    }

    /**
     * Gets tx_count
     *
     * @return string|null
     */
    public function getTxCount()
    {
        return $this->container['tx_count'];
    }

    /**
     * Sets tx_count
     *
     * @param string|null $tx_count tx_count
     *
     * @return self
     */
    public function setTxCount($tx_count)
    {

        if (is_null($tx_count)) {
            array_push($this->openAPINullablesSetToNull, 'tx_count');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('tx_count', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['tx_count'] = $tx_count;

        return $this;
    }

    /**
     * Gets liquidity_provider_count
     *
     * @return string|null
     */
    public function getLiquidityProviderCount()
    {
        return $this->container['liquidity_provider_count'];
    }

    /**
     * Sets liquidity_provider_count
     *
     * @param string|null $liquidity_provider_count liquidity_provider_count
     *
     * @return self
     */
    public function setLiquidityProviderCount($liquidity_provider_count)
    {

        if (is_null($liquidity_provider_count)) {
            array_push($this->openAPINullablesSetToNull, 'liquidity_provider_count');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('liquidity_provider_count', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['liquidity_provider_count'] = $liquidity_provider_count;

        return $this;
    }

    /**
     * Gets timestamp
     *
     * @return string|null
     */
    public function getTimestamp()
    {
        return $this->container['timestamp'];
    }

    /**
     * Sets timestamp
     *
     * @param string|null $timestamp timestamp
     *
     * @return self
     */
    public function setTimestamp($timestamp)
    {

        if (is_null($timestamp)) {
            array_push($this->openAPINullablesSetToNull, 'timestamp');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('timestamp', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['timestamp'] = $timestamp;

        return $this;
    }

    /**
     * Gets block
     *
     * @return string|null
     */
    public function getBlock()
    {
        return $this->container['block'];
    }

    /**
     * Sets block
     *
     * @param string|null $block block
     *
     * @return self
     */
    public function setBlock($block)
    {

        if (is_null($block)) {
            array_push($this->openAPINullablesSetToNull, 'block');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('block', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['block'] = $block;

        return $this;
    }

    /**
     * Gets vid
     *
     * @return int|null
     */
    public function getVid()
    {
        return $this->container['vid'];
    }

    /**
     * Sets vid
     *
     * @param int|null $vid vid
     *
     * @return self
     */
    public function setVid($vid)
    {

        if (is_null($vid)) {
            throw new \InvalidArgumentException('non-nullable vid cannot be null');
        }

        $this->container['vid'] = $vid;

        return $this;
    }

    /**
     * Gets evaluated_ask
     *
     * @return float|null
     */
    public function getEvaluatedAsk()
    {
        return $this->container['evaluated_ask'];
    }

    /**
     * Sets evaluated_ask
     *
     * @param float|null $evaluated_ask evaluated_ask
     *
     * @return self
     */
    public function setEvaluatedAsk($evaluated_ask)
    {

        if (is_null($evaluated_ask)) {
            throw new \InvalidArgumentException('non-nullable evaluated_ask cannot be null');
        }

        $this->container['evaluated_ask'] = $evaluated_ask;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset): bool
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     *
     * @param integer $offset Offset
     *
     * @return mixed|null
     */
    #[\ReturnTypeWillChange]
    public function offsetGet($offset)
    {
        return $this->container[$offset] ?? null;
    }

    /**
     * Sets value based on offset.
     *
     * @param int|null $offset Offset
     * @param mixed    $value  Value to be set
     *
     * @return void
     */
    public function offsetSet($offset, $value): void
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     *
     * @param integer $offset Offset
     *
     * @return void
     */
    public function offsetUnset($offset): void
    {
        unset($this->container[$offset]);
    }

    /**
     * Serializes the object to a value that can be serialized natively by json_encode().
     * @link https://www.php.net/manual/en/jsonserializable.jsonserialize.php
     *
     * @return mixed Returns data which can be serialized by json_encode(), which is a value
     * of any type other than a resource.
     */
    #[\ReturnTypeWillChange]
    public function jsonSerialize()
    {
       return ObjectSerializer::sanitizeForSerialization($this);
    }

    /**
     * Gets the string presentation of the object
     *
     * @return string
     */
    public function __toString()
    {
        return json_encode(
            ObjectSerializer::sanitizeForSerialization($this),
            JSON_PRETTY_PRINT
        );
    }

    /**
     * Gets a header-safe presentation of the object
     *
     * @return string
     */
    public function toHeaderValue()
    {
        return json_encode(ObjectSerializer::sanitizeForSerialization($this));
    }
}


