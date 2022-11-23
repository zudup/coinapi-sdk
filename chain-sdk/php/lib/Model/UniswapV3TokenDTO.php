<?php
/**
 * UniswapV3TokenDTO
 *
 * PHP version 7.4
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */

/**
 * On Chain - REST API
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
 * UniswapV3TokenDTO Class Doc Comment
 *
 * @category Class
 * @description Stores aggregated information for a specific token across all pairs that token is included in.
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<string, mixed>
 */
class UniswapV3TokenDTO implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'UniswapV3.TokenDTO';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'entry_time' => '\DateTime',
        'recv_time' => '\DateTime',
        'block_number' => 'int',
        'vid' => 'int',
        'id' => 'string',
        'symbol' => 'string',
        'name' => 'string',
        'decimals' => 'int',
        'total_supply' => '\OpenAPI\Client\Model\NumericsBigInteger',
        'volume' => 'string',
        'volume_usd' => 'string',
        'untracked_volume_usd' => 'string',
        'fees_usd' => 'string',
        'tx_count' => '\OpenAPI\Client\Model\NumericsBigInteger',
        'pool_count' => '\OpenAPI\Client\Model\NumericsBigInteger',
        'total_value_locked' => 'string',
        'total_value_locked_usd' => 'string',
        'total_value_locked_usd_untracked' => 'string',
        'derived_eth' => 'string',
        'whitelist_pools' => 'string[]',
        'token_symbol' => 'string'
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
        'vid' => 'int64',
        'id' => null,
        'symbol' => null,
        'name' => null,
        'decimals' => 'int32',
        'total_supply' => null,
        'volume' => null,
        'volume_usd' => null,
        'untracked_volume_usd' => null,
        'fees_usd' => null,
        'tx_count' => null,
        'pool_count' => null,
        'total_value_locked' => null,
        'total_value_locked_usd' => null,
        'total_value_locked_usd_untracked' => null,
        'derived_eth' => null,
        'whitelist_pools' => null,
        'token_symbol' => null
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
		'vid' => false,
		'id' => true,
		'symbol' => true,
		'name' => true,
		'decimals' => false,
		'total_supply' => false,
		'volume' => true,
		'volume_usd' => true,
		'untracked_volume_usd' => true,
		'fees_usd' => true,
		'tx_count' => false,
		'pool_count' => false,
		'total_value_locked' => true,
		'total_value_locked_usd' => true,
		'total_value_locked_usd_untracked' => true,
		'derived_eth' => true,
		'whitelist_pools' => true,
		'token_symbol' => true
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
        'vid' => 'vid',
        'id' => 'id',
        'symbol' => 'symbol',
        'name' => 'name',
        'decimals' => 'decimals',
        'total_supply' => 'total_supply',
        'volume' => 'volume',
        'volume_usd' => 'volume_usd',
        'untracked_volume_usd' => 'untracked_volume_usd',
        'fees_usd' => 'fees_usd',
        'tx_count' => 'tx_count',
        'pool_count' => 'pool_count',
        'total_value_locked' => 'total_value_locked',
        'total_value_locked_usd' => 'total_value_locked_usd',
        'total_value_locked_usd_untracked' => 'total_value_locked_usd_untracked',
        'derived_eth' => 'derived_eth',
        'whitelist_pools' => 'whitelist_pools',
        'token_symbol' => 'token_symbol'
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
        'vid' => 'setVid',
        'id' => 'setId',
        'symbol' => 'setSymbol',
        'name' => 'setName',
        'decimals' => 'setDecimals',
        'total_supply' => 'setTotalSupply',
        'volume' => 'setVolume',
        'volume_usd' => 'setVolumeUsd',
        'untracked_volume_usd' => 'setUntrackedVolumeUsd',
        'fees_usd' => 'setFeesUsd',
        'tx_count' => 'setTxCount',
        'pool_count' => 'setPoolCount',
        'total_value_locked' => 'setTotalValueLocked',
        'total_value_locked_usd' => 'setTotalValueLockedUsd',
        'total_value_locked_usd_untracked' => 'setTotalValueLockedUsdUntracked',
        'derived_eth' => 'setDerivedEth',
        'whitelist_pools' => 'setWhitelistPools',
        'token_symbol' => 'setTokenSymbol'
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
        'vid' => 'getVid',
        'id' => 'getId',
        'symbol' => 'getSymbol',
        'name' => 'getName',
        'decimals' => 'getDecimals',
        'total_supply' => 'getTotalSupply',
        'volume' => 'getVolume',
        'volume_usd' => 'getVolumeUsd',
        'untracked_volume_usd' => 'getUntrackedVolumeUsd',
        'fees_usd' => 'getFeesUsd',
        'tx_count' => 'getTxCount',
        'pool_count' => 'getPoolCount',
        'total_value_locked' => 'getTotalValueLocked',
        'total_value_locked_usd' => 'getTotalValueLockedUsd',
        'total_value_locked_usd_untracked' => 'getTotalValueLockedUsdUntracked',
        'derived_eth' => 'getDerivedEth',
        'whitelist_pools' => 'getWhitelistPools',
        'token_symbol' => 'getTokenSymbol'
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
        $this->setIfExists('vid', $data ?? [], null);
        $this->setIfExists('id', $data ?? [], null);
        $this->setIfExists('symbol', $data ?? [], null);
        $this->setIfExists('name', $data ?? [], null);
        $this->setIfExists('decimals', $data ?? [], null);
        $this->setIfExists('total_supply', $data ?? [], null);
        $this->setIfExists('volume', $data ?? [], null);
        $this->setIfExists('volume_usd', $data ?? [], null);
        $this->setIfExists('untracked_volume_usd', $data ?? [], null);
        $this->setIfExists('fees_usd', $data ?? [], null);
        $this->setIfExists('tx_count', $data ?? [], null);
        $this->setIfExists('pool_count', $data ?? [], null);
        $this->setIfExists('total_value_locked', $data ?? [], null);
        $this->setIfExists('total_value_locked_usd', $data ?? [], null);
        $this->setIfExists('total_value_locked_usd_untracked', $data ?? [], null);
        $this->setIfExists('derived_eth', $data ?? [], null);
        $this->setIfExists('whitelist_pools', $data ?? [], null);
        $this->setIfExists('token_symbol', $data ?? [], null);
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
     * @param string|null $id Token address.
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
     * Gets symbol
     *
     * @return string|null
     */
    public function getSymbol()
    {
        return $this->container['symbol'];
    }

    /**
     * Sets symbol
     *
     * @param string|null $symbol Token symbol.
     *
     * @return self
     */
    public function setSymbol($symbol)
    {

        if (is_null($symbol)) {
            array_push($this->openAPINullablesSetToNull, 'symbol');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('symbol', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['symbol'] = $symbol;

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
     * @param string|null $name Token name.
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
     * Gets decimals
     *
     * @return int|null
     */
    public function getDecimals()
    {
        return $this->container['decimals'];
    }

    /**
     * Sets decimals
     *
     * @param int|null $decimals Token decimals.
     *
     * @return self
     */
    public function setDecimals($decimals)
    {

        if (is_null($decimals)) {
            throw new \InvalidArgumentException('non-nullable decimals cannot be null');
        }

        $this->container['decimals'] = $decimals;

        return $this;
    }

    /**
     * Gets total_supply
     *
     * @return \OpenAPI\Client\Model\NumericsBigInteger|null
     */
    public function getTotalSupply()
    {
        return $this->container['total_supply'];
    }

    /**
     * Sets total_supply
     *
     * @param \OpenAPI\Client\Model\NumericsBigInteger|null $total_supply total_supply
     *
     * @return self
     */
    public function setTotalSupply($total_supply)
    {

        if (is_null($total_supply)) {
            throw new \InvalidArgumentException('non-nullable total_supply cannot be null');
        }

        $this->container['total_supply'] = $total_supply;

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
     * @param string|null $volume Volume in token units.
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
     * @param string|null $volume_usd Volume in derived USD.
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
     * @param string|null $untracked_volume_usd Volume in USD even on pools with less reliable USD values.
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
     * @param string|null $fees_usd Fees in USD.
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
     * Gets tx_count
     *
     * @return \OpenAPI\Client\Model\NumericsBigInteger|null
     */
    public function getTxCount()
    {
        return $this->container['tx_count'];
    }

    /**
     * Sets tx_count
     *
     * @param \OpenAPI\Client\Model\NumericsBigInteger|null $tx_count tx_count
     *
     * @return self
     */
    public function setTxCount($tx_count)
    {

        if (is_null($tx_count)) {
            throw new \InvalidArgumentException('non-nullable tx_count cannot be null');
        }

        $this->container['tx_count'] = $tx_count;

        return $this;
    }

    /**
     * Gets pool_count
     *
     * @return \OpenAPI\Client\Model\NumericsBigInteger|null
     */
    public function getPoolCount()
    {
        return $this->container['pool_count'];
    }

    /**
     * Sets pool_count
     *
     * @param \OpenAPI\Client\Model\NumericsBigInteger|null $pool_count pool_count
     *
     * @return self
     */
    public function setPoolCount($pool_count)
    {

        if (is_null($pool_count)) {
            throw new \InvalidArgumentException('non-nullable pool_count cannot be null');
        }

        $this->container['pool_count'] = $pool_count;

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
     * @param string|null $total_value_locked Liquidity across all pools in token units.
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
     * @param string|null $total_value_locked_usd Liquidity across all pools in derived USD.
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
     * Gets total_value_locked_usd_untracked
     *
     * @return string|null
     */
    public function getTotalValueLockedUsdUntracked()
    {
        return $this->container['total_value_locked_usd_untracked'];
    }

    /**
     * Sets total_value_locked_usd_untracked
     *
     * @param string|null $total_value_locked_usd_untracked TVL derived in USD untracked.
     *
     * @return self
     */
    public function setTotalValueLockedUsdUntracked($total_value_locked_usd_untracked)
    {

        if (is_null($total_value_locked_usd_untracked)) {
            array_push($this->openAPINullablesSetToNull, 'total_value_locked_usd_untracked');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('total_value_locked_usd_untracked', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['total_value_locked_usd_untracked'] = $total_value_locked_usd_untracked;

        return $this;
    }

    /**
     * Gets derived_eth
     *
     * @return string|null
     */
    public function getDerivedEth()
    {
        return $this->container['derived_eth'];
    }

    /**
     * Sets derived_eth
     *
     * @param string|null $derived_eth Derived price in ETH.
     *
     * @return self
     */
    public function setDerivedEth($derived_eth)
    {

        if (is_null($derived_eth)) {
            array_push($this->openAPINullablesSetToNull, 'derived_eth');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('derived_eth', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['derived_eth'] = $derived_eth;

        return $this;
    }

    /**
     * Gets whitelist_pools
     *
     * @return string[]|null
     */
    public function getWhitelistPools()
    {
        return $this->container['whitelist_pools'];
    }

    /**
     * Sets whitelist_pools
     *
     * @param string[]|null $whitelist_pools Pools token is in that are white listed for USD pricing.
     *
     * @return self
     */
    public function setWhitelistPools($whitelist_pools)
    {

        if (is_null($whitelist_pools)) {
            array_push($this->openAPINullablesSetToNull, 'whitelist_pools');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('whitelist_pools', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['whitelist_pools'] = $whitelist_pools;

        return $this;
    }

    /**
     * Gets token_symbol
     *
     * @return string|null
     */
    public function getTokenSymbol()
    {
        return $this->container['token_symbol'];
    }

    /**
     * Sets token_symbol
     *
     * @param string|null $token_symbol token_symbol
     *
     * @return self
     */
    public function setTokenSymbol($token_symbol)
    {

        if (is_null($token_symbol)) {
            array_push($this->openAPINullablesSetToNull, 'token_symbol');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('token_symbol', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }

        $this->container['token_symbol'] = $token_symbol;

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


