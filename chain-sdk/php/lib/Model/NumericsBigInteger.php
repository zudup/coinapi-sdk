<?php
/**
 * NumericsBigInteger
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
 * NumericsBigInteger Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<string, mixed>
 */
class NumericsBigInteger implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'Numerics.BigInteger';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'is_power_of_two' => 'bool',
        'is_zero' => 'bool',
        'is_one' => 'bool',
        'is_even' => 'bool',
        'sign' => 'int'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'is_power_of_two' => null,
        'is_zero' => null,
        'is_one' => null,
        'is_even' => null,
        'sign' => 'int32'
    ];

    /**
      * Array of nullable properties. Used for (de)serialization
      *
      * @var boolean[]
      */
    protected static array $openAPINullables = [
        'is_power_of_two' => false,
		'is_zero' => false,
		'is_one' => false,
		'is_even' => false,
		'sign' => false
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
        'is_power_of_two' => 'is_power_of_two',
        'is_zero' => 'is_zero',
        'is_one' => 'is_one',
        'is_even' => 'is_even',
        'sign' => 'sign'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'is_power_of_two' => 'setIsPowerOfTwo',
        'is_zero' => 'setIsZero',
        'is_one' => 'setIsOne',
        'is_even' => 'setIsEven',
        'sign' => 'setSign'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'is_power_of_two' => 'getIsPowerOfTwo',
        'is_zero' => 'getIsZero',
        'is_one' => 'getIsOne',
        'is_even' => 'getIsEven',
        'sign' => 'getSign'
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
        $this->setIfExists('is_power_of_two', $data ?? [], null);
        $this->setIfExists('is_zero', $data ?? [], null);
        $this->setIfExists('is_one', $data ?? [], null);
        $this->setIfExists('is_even', $data ?? [], null);
        $this->setIfExists('sign', $data ?? [], null);
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
     * Gets is_power_of_two
     *
     * @return bool|null
     */
    public function getIsPowerOfTwo()
    {
        return $this->container['is_power_of_two'];
    }

    /**
     * Sets is_power_of_two
     *
     * @param bool|null $is_power_of_two is_power_of_two
     *
     * @return self
     */
    public function setIsPowerOfTwo($is_power_of_two)
    {

        if (is_null($is_power_of_two)) {
            throw new \InvalidArgumentException('non-nullable is_power_of_two cannot be null');
        }

        $this->container['is_power_of_two'] = $is_power_of_two;

        return $this;
    }

    /**
     * Gets is_zero
     *
     * @return bool|null
     */
    public function getIsZero()
    {
        return $this->container['is_zero'];
    }

    /**
     * Sets is_zero
     *
     * @param bool|null $is_zero is_zero
     *
     * @return self
     */
    public function setIsZero($is_zero)
    {

        if (is_null($is_zero)) {
            throw new \InvalidArgumentException('non-nullable is_zero cannot be null');
        }

        $this->container['is_zero'] = $is_zero;

        return $this;
    }

    /**
     * Gets is_one
     *
     * @return bool|null
     */
    public function getIsOne()
    {
        return $this->container['is_one'];
    }

    /**
     * Sets is_one
     *
     * @param bool|null $is_one is_one
     *
     * @return self
     */
    public function setIsOne($is_one)
    {

        if (is_null($is_one)) {
            throw new \InvalidArgumentException('non-nullable is_one cannot be null');
        }

        $this->container['is_one'] = $is_one;

        return $this;
    }

    /**
     * Gets is_even
     *
     * @return bool|null
     */
    public function getIsEven()
    {
        return $this->container['is_even'];
    }

    /**
     * Sets is_even
     *
     * @param bool|null $is_even is_even
     *
     * @return self
     */
    public function setIsEven($is_even)
    {

        if (is_null($is_even)) {
            throw new \InvalidArgumentException('non-nullable is_even cannot be null');
        }

        $this->container['is_even'] = $is_even;

        return $this;
    }

    /**
     * Gets sign
     *
     * @return int|null
     */
    public function getSign()
    {
        return $this->container['sign'];
    }

    /**
     * Sets sign
     *
     * @param int|null $sign sign
     *
     * @return self
     */
    public function setSign($sign)
    {

        if (is_null($sign)) {
            throw new \InvalidArgumentException('non-nullable sign cannot be null');
        }

        $this->container['sign'] = $sign;

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


