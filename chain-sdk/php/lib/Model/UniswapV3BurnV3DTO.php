<?php
/**
 * UniswapV3BurnV3DTO
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
 * OpenAPI Generator version: 6.2.1
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
 * UniswapV3BurnV3DTO Class Doc Comment
 *
 * @category Class
 * @description Burn entities are created for every emitted Burn event on the Uniswap core contracts. The Burn entity stores key data about the event like token amounts, who burned, who received tokens, and more. This entity can be used to track liquidity removals on pairs.
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<string, mixed>
 */
class UniswapV3BurnV3DTO implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'UniswapV3.BurnV3DTO';

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
        'transaction' => 'string',
        'pool' => 'string',
        'token_0' => 'string',
        'token_1' => 'string',
        'timestamp' => 'string',
        'owner' => 'string',
        'origin' => 'string',
        'amount' => 'string',
        'amount_0' => 'string',
        'amount_1' => 'string',
        'amount_usd' => 'string',
        'tick_lower' => 'string',
        'tick_upper' => 'string',
        'log_index' => 'string',
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
        'transaction' => null,
        'pool' => null,
        'token_0' => null,
        'token_1' => null,
        'timestamp' => null,
        'owner' => null,
        'origin' => null,
        'amount' => null,
        'amount_0' => null,
        'amount_1' => null,
        'amount_usd' => null,
        'tick_lower' => null,
        'tick_upper' => null,
        'log_index' => null,
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
		'transaction' => true,
		'pool' => true,
		'token_0' => true,
		'token_1' => true,
		'timestamp' => true,
		'owner' => true,
		'origin' => true,
		'amount' => true,
		'amount_0' => true,
		'amount_1' => true,
		'amount_usd' => true,
		'tick_lower' => true,
		'tick_upper' => true,
		'log_index' => true,
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
     * Setter - Array of nullable field names deliberately set to null
     *
     * @param boolean[] $openAPINullablesSetToNull
     */
    private function setOpenAPINullablesSetToNull(array $openAPINullablesSetToNull): void
    {
        $this->openAPINullablesSetToNull = $openAPINullablesSetToNull;
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
        'transaction' => 'transaction',
        'pool' => 'pool',
        'token_0' => 'token_0',
        'token_1' => 'token_1',
        'timestamp' => 'timestamp',
        'owner' => 'owner',
        'origin' => 'origin',
        'amount' => 'amount',
        'amount_0' => 'amount_0',
        'amount_1' => 'amount_1',
        'amount_usd' => 'amount_usd',
        'tick_lower' => 'tick_lower',
        'tick_upper' => 'tick_upper',
        'log_index' => 'log_index',
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
        'transaction' => 'setTransaction',
        'pool' => 'setPool',
        'token_0' => 'setToken0',
        'token_1' => 'setToken1',
        'timestamp' => 'setTimestamp',
        'owner' => 'setOwner',
        'origin' => 'setOrigin',
        'amount' => 'setAmount',
        'amount_0' => 'setAmount0',
        'amount_1' => 'setAmount1',
        'amount_usd' => 'setAmountUsd',
        'tick_lower' => 'setTickLower',
        'tick_upper' => 'setTickUpper',
        'log_index' => 'setLogIndex',
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
        'transaction' => 'getTransaction',
        'pool' => 'getPool',
        'token_0' => 'getToken0',
        'token_1' => 'getToken1',
        'timestamp' => 'getTimestamp',
        'owner' => 'getOwner',
        'origin' => 'getOrigin',
        'amount' => 'getAmount',
        'amount_0' => 'getAmount0',
        'amount_1' => 'getAmount1',
        'amount_usd' => 'getAmountUsd',
        'tick_lower' => 'getTickLower',
        'tick_upper' => 'getTickUpper',
        'log_index' => 'getLogIndex',
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
        $this->setIfExists('transaction', $data ?? [], null);
        $this->setIfExists('pool', $data ?? [], null);
        $this->setIfExists('token_0', $data ?? [], null);
        $this->setIfExists('token_1', $data ?? [], null);
        $this->setIfExists('timestamp', $data ?? [], null);
        $this->setIfExists('owner', $data ?? [], null);
        $this->setIfExists('origin', $data ?? [], null);
        $this->setIfExists('amount', $data ?? [], null);
        $this->setIfExists('amount_0', $data ?? [], null);
        $this->setIfExists('amount_1', $data ?? [], null);
        $this->setIfExists('amount_usd', $data ?? [], null);
        $this->setIfExists('tick_lower', $data ?? [], null);
        $this->setIfExists('tick_upper', $data ?? [], null);
        $this->setIfExists('log_index', $data ?? [], null);
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
     * @param int|null $block_number Number of block in which entity was recorded.
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
     * @param string|null $id Transaction hash + '#' + index in mints Transaction array.
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
     * Gets transaction
     *
     * @return string|null
     */
    public function getTransaction()
    {
        return $this->container['transaction'];
    }

    /**
     * Sets transaction
     *
     * @param string|null $transaction Transaction burn was included in.
     *
     * @return self
     */
    public function setTransaction($transaction)
    {

        if (is_null($transaction)) {
            array_push($this->openAPINullablesSetToNull, 'transaction');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('transaction', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['transaction'] = $transaction;

        return $this;
    }

    /**
     * Gets pool
     *
     * @return string|null
     */
    public function getPool()
    {
        return $this->container['pool'];
    }

    /**
     * Sets pool
     *
     * @param string|null $pool Pool position is within.
     *
     * @return self
     */
    public function setPool($pool)
    {

        if (is_null($pool)) {
            array_push($this->openAPINullablesSetToNull, 'pool');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('pool', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['pool'] = $pool;

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
     * @param string|null $token_0 Reference to token0 as stored in pool contract.
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
     * @param string|null $token_1 Reference to token1 as stored in pool contract.
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
     * @param string|null $timestamp Timestamp.
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
     * Gets owner
     *
     * @return string|null
     */
    public function getOwner()
    {
        return $this->container['owner'];
    }

    /**
     * Sets owner
     *
     * @param string|null $owner Owner of position where liquidity was burned.
     *
     * @return self
     */
    public function setOwner($owner)
    {

        if (is_null($owner)) {
            array_push($this->openAPINullablesSetToNull, 'owner');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('owner', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['owner'] = $owner;

        return $this;
    }

    /**
     * Gets origin
     *
     * @return string|null
     */
    public function getOrigin()
    {
        return $this->container['origin'];
    }

    /**
     * Sets origin
     *
     * @param string|null $origin Transaction origin: the EOA (Externally Owned Account) that initiated the transaction.
     *
     * @return self
     */
    public function setOrigin($origin)
    {

        if (is_null($origin)) {
            array_push($this->openAPINullablesSetToNull, 'origin');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('origin', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['origin'] = $origin;

        return $this;
    }

    /**
     * Gets amount
     *
     * @return string|null
     */
    public function getAmount()
    {
        return $this->container['amount'];
    }

    /**
     * Sets amount
     *
     * @param string|null $amount Amount of liquidity burned.
     *
     * @return self
     */
    public function setAmount($amount)
    {

        if (is_null($amount)) {
            array_push($this->openAPINullablesSetToNull, 'amount');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('amount', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['amount'] = $amount;

        return $this;
    }

    /**
     * Gets amount_0
     *
     * @return string|null
     */
    public function getAmount0()
    {
        return $this->container['amount_0'];
    }

    /**
     * Sets amount_0
     *
     * @param string|null $amount_0 Amount of token 0 burned.
     *
     * @return self
     */
    public function setAmount0($amount_0)
    {

        if (is_null($amount_0)) {
            array_push($this->openAPINullablesSetToNull, 'amount_0');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('amount_0', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['amount_0'] = $amount_0;

        return $this;
    }

    /**
     * Gets amount_1
     *
     * @return string|null
     */
    public function getAmount1()
    {
        return $this->container['amount_1'];
    }

    /**
     * Sets amount_1
     *
     * @param string|null $amount_1 Amount of token 1 burned.
     *
     * @return self
     */
    public function setAmount1($amount_1)
    {

        if (is_null($amount_1)) {
            array_push($this->openAPINullablesSetToNull, 'amount_1');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('amount_1', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['amount_1'] = $amount_1;

        return $this;
    }

    /**
     * Gets amount_usd
     *
     * @return string|null
     */
    public function getAmountUsd()
    {
        return $this->container['amount_usd'];
    }

    /**
     * Sets amount_usd
     *
     * @param string|null $amount_usd Derived amount based on available prices of tokens.
     *
     * @return self
     */
    public function setAmountUsd($amount_usd)
    {

        if (is_null($amount_usd)) {
            array_push($this->openAPINullablesSetToNull, 'amount_usd');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('amount_usd', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['amount_usd'] = $amount_usd;

        return $this;
    }

    /**
     * Gets tick_lower
     *
     * @return string|null
     */
    public function getTickLower()
    {
        return $this->container['tick_lower'];
    }

    /**
     * Sets tick_lower
     *
     * @param string|null $tick_lower Lower tick of position.
     *
     * @return self
     */
    public function setTickLower($tick_lower)
    {

        if (is_null($tick_lower)) {
            array_push($this->openAPINullablesSetToNull, 'tick_lower');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('tick_lower', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['tick_lower'] = $tick_lower;

        return $this;
    }

    /**
     * Gets tick_upper
     *
     * @return string|null
     */
    public function getTickUpper()
    {
        return $this->container['tick_upper'];
    }

    /**
     * Sets tick_upper
     *
     * @param string|null $tick_upper Upper tick of position.
     *
     * @return self
     */
    public function setTickUpper($tick_upper)
    {

        if (is_null($tick_upper)) {
            array_push($this->openAPINullablesSetToNull, 'tick_upper');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('tick_upper', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['tick_upper'] = $tick_upper;

        return $this;
    }

    /**
     * Gets log_index
     *
     * @return string|null
     */
    public function getLogIndex()
    {
        return $this->container['log_index'];
    }

    /**
     * Sets log_index
     *
     * @param string|null $log_index Position within the transactions.
     *
     * @return self
     */
    public function setLogIndex($log_index)
    {

        if (is_null($log_index)) {
            array_push($this->openAPINullablesSetToNull, 'log_index');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('log_index', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['log_index'] = $log_index;

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
     * @param int|null $vid 
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


