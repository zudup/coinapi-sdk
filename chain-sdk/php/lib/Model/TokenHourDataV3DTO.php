<?php
/**
 * TokenHourDataV3DTO
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
 * TokenHourDataV3DTO Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<string, mixed>
 */
class TokenHourDataV3DTO implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'TokenHourDataV3DTO';

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
        'period_start_unix' => 'int',
        'token' => 'string',
        'volume' => 'string',
        'volume_usd' => 'string',
        'untracked_volume_usd' => 'string',
        'total_value_locked' => 'string',
        'total_value_locked_usd' => 'string',
        'price_usd' => 'string',
        'fees_usd' => 'string',
        'open' => 'string',
        'high' => 'string',
        'low' => 'string',
        'close' => 'string',
        'vid' => 'int'
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
        'period_start_unix' => 'int32',
        'token' => null,
        'volume' => null,
        'volume_usd' => null,
        'untracked_volume_usd' => null,
        'total_value_locked' => null,
        'total_value_locked_usd' => null,
        'price_usd' => null,
        'fees_usd' => null,
        'open' => null,
        'high' => null,
        'low' => null,
        'close' => null,
        'vid' => 'int64'
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
		'period_start_unix' => false,
		'token' => true,
		'volume' => true,
		'volume_usd' => true,
		'untracked_volume_usd' => true,
		'total_value_locked' => true,
		'total_value_locked_usd' => true,
		'price_usd' => true,
		'fees_usd' => true,
		'open' => true,
		'high' => true,
		'low' => true,
		'close' => true,
		'vid' => false
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
        'period_start_unix' => 'period_start_unix',
        'token' => 'token',
        'volume' => 'volume',
        'volume_usd' => 'volume_usd',
        'untracked_volume_usd' => 'untracked_volume_usd',
        'total_value_locked' => 'total_value_locked',
        'total_value_locked_usd' => 'total_value_locked_usd',
        'price_usd' => 'price_usd',
        'fees_usd' => 'fees_usd',
        'open' => 'open',
        'high' => 'high',
        'low' => 'low',
        'close' => 'close',
        'vid' => 'vid'
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
        'period_start_unix' => 'setPeriodStartUnix',
        'token' => 'setToken',
        'volume' => 'setVolume',
        'volume_usd' => 'setVolumeUsd',
        'untracked_volume_usd' => 'setUntrackedVolumeUsd',
        'total_value_locked' => 'setTotalValueLocked',
        'total_value_locked_usd' => 'setTotalValueLockedUsd',
        'price_usd' => 'setPriceUsd',
        'fees_usd' => 'setFeesUsd',
        'open' => 'setOpen',
        'high' => 'setHigh',
        'low' => 'setLow',
        'close' => 'setClose',
        'vid' => 'setVid'
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
        'period_start_unix' => 'getPeriodStartUnix',
        'token' => 'getToken',
        'volume' => 'getVolume',
        'volume_usd' => 'getVolumeUsd',
        'untracked_volume_usd' => 'getUntrackedVolumeUsd',
        'total_value_locked' => 'getTotalValueLocked',
        'total_value_locked_usd' => 'getTotalValueLockedUsd',
        'price_usd' => 'getPriceUsd',
        'fees_usd' => 'getFeesUsd',
        'open' => 'getOpen',
        'high' => 'getHigh',
        'low' => 'getLow',
        'close' => 'getClose',
        'vid' => 'getVid'
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
        $this->setIfExists('period_start_unix', $data ?? [], null);
        $this->setIfExists('token', $data ?? [], null);
        $this->setIfExists('volume', $data ?? [], null);
        $this->setIfExists('volume_usd', $data ?? [], null);
        $this->setIfExists('untracked_volume_usd', $data ?? [], null);
        $this->setIfExists('total_value_locked', $data ?? [], null);
        $this->setIfExists('total_value_locked_usd', $data ?? [], null);
        $this->setIfExists('price_usd', $data ?? [], null);
        $this->setIfExists('fees_usd', $data ?? [], null);
        $this->setIfExists('open', $data ?? [], null);
        $this->setIfExists('high', $data ?? [], null);
        $this->setIfExists('low', $data ?? [], null);
        $this->setIfExists('close', $data ?? [], null);
        $this->setIfExists('vid', $data ?? [], null);
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
     * Gets period_start_unix
     *
     * @return int|null
     */
    public function getPeriodStartUnix()
    {
        return $this->container['period_start_unix'];
    }

    /**
     * Sets period_start_unix
     *
     * @param int|null $period_start_unix period_start_unix
     *
     * @return self
     */
    public function setPeriodStartUnix($period_start_unix)
    {

        if (is_null($period_start_unix)) {
            throw new \InvalidArgumentException('non-nullable period_start_unix cannot be null');
        }

        $this->container['period_start_unix'] = $period_start_unix;

        return $this;
    }

    /**
     * Gets token
     *
     * @return string|null
     */
    public function getToken()
    {
        return $this->container['token'];
    }

    /**
     * Sets token
     *
     * @param string|null $token token
     *
     * @return self
     */
    public function setToken($token)
    {

        if (is_null($token)) {
            array_push($this->openAPINullablesSetToNull, 'token');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('token', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['token'] = $token;

        return $this;
    }

    /**
     * Gets volume
     *
     * @return string|null
     */
    public function getVolume()
    {
        return $this->container['volume'];
    }

    /**
     * Sets volume
     *
     * @param string|null $volume volume
     *
     * @return self
     */
    public function setVolume($volume)
    {

        if (is_null($volume)) {
            array_push($this->openAPINullablesSetToNull, 'volume');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('volume', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['volume'] = $volume;

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
     * Gets total_value_locked
     *
     * @return string|null
     */
    public function getTotalValueLocked()
    {
        return $this->container['total_value_locked'];
    }

    /**
     * Sets total_value_locked
     *
     * @param string|null $total_value_locked total_value_locked
     *
     * @return self
     */
    public function setTotalValueLocked($total_value_locked)
    {

        if (is_null($total_value_locked)) {
            array_push($this->openAPINullablesSetToNull, 'total_value_locked');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('total_value_locked', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['total_value_locked'] = $total_value_locked;

        return $this;
    }

    /**
     * Gets total_value_locked_usd
     *
     * @return string|null
     */
    public function getTotalValueLockedUsd()
    {
        return $this->container['total_value_locked_usd'];
    }

    /**
     * Sets total_value_locked_usd
     *
     * @param string|null $total_value_locked_usd total_value_locked_usd
     *
     * @return self
     */
    public function setTotalValueLockedUsd($total_value_locked_usd)
    {

        if (is_null($total_value_locked_usd)) {
            array_push($this->openAPINullablesSetToNull, 'total_value_locked_usd');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('total_value_locked_usd', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['total_value_locked_usd'] = $total_value_locked_usd;

        return $this;
    }

    /**
     * Gets price_usd
     *
     * @return string|null
     */
    public function getPriceUsd()
    {
        return $this->container['price_usd'];
    }

    /**
     * Sets price_usd
     *
     * @param string|null $price_usd price_usd
     *
     * @return self
     */
    public function setPriceUsd($price_usd)
    {

        if (is_null($price_usd)) {
            array_push($this->openAPINullablesSetToNull, 'price_usd');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('price_usd', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['price_usd'] = $price_usd;

        return $this;
    }

    /**
     * Gets fees_usd
     *
     * @return string|null
     */
    public function getFeesUsd()
    {
        return $this->container['fees_usd'];
    }

    /**
     * Sets fees_usd
     *
     * @param string|null $fees_usd fees_usd
     *
     * @return self
     */
    public function setFeesUsd($fees_usd)
    {

        if (is_null($fees_usd)) {
            array_push($this->openAPINullablesSetToNull, 'fees_usd');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('fees_usd', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['fees_usd'] = $fees_usd;

        return $this;
    }

    /**
     * Gets open
     *
     * @return string|null
     */
    public function getOpen()
    {
        return $this->container['open'];
    }

    /**
     * Sets open
     *
     * @param string|null $open open
     *
     * @return self
     */
    public function setOpen($open)
    {

        if (is_null($open)) {
            array_push($this->openAPINullablesSetToNull, 'open');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('open', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['open'] = $open;

        return $this;
    }

    /**
     * Gets high
     *
     * @return string|null
     */
    public function getHigh()
    {
        return $this->container['high'];
    }

    /**
     * Sets high
     *
     * @param string|null $high high
     *
     * @return self
     */
    public function setHigh($high)
    {

        if (is_null($high)) {
            array_push($this->openAPINullablesSetToNull, 'high');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('high', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['high'] = $high;

        return $this;
    }

    /**
     * Gets low
     *
     * @return string|null
     */
    public function getLow()
    {
        return $this->container['low'];
    }

    /**
     * Sets low
     *
     * @param string|null $low low
     *
     * @return self
     */
    public function setLow($low)
    {

        if (is_null($low)) {
            array_push($this->openAPINullablesSetToNull, 'low');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('low', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['low'] = $low;

        return $this;
    }

    /**
     * Gets close
     *
     * @return string|null
     */
    public function getClose()
    {
        return $this->container['close'];
    }

    /**
     * Sets close
     *
     * @param string|null $close close
     *
     * @return self
     */
    public function setClose($close)
    {

        if (is_null($close)) {
            array_push($this->openAPINullablesSetToNull, 'close');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('close', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['close'] = $close;

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


